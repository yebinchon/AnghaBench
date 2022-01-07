; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dma/extr_spool.c_flushqueue_since.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dma/extr_spool.c_flushqueue_since.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.stat = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.timeval = type { i64 }

@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@config = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@SPOOL_FLUSHFILE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @flushqueue_since(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.stat, align 8
  %5 = alloca %struct.timeval, align 8
  %6 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* null, i8** %6, align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @config, i32 0, i32 0), align 4
  %8 = load i32, i32* @SPOOL_FLUSHFILE, align 4
  %9 = call i64 @asprintf(i8** %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %8)
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %37

12:                                               ; preds = %1
  %13 = load i8*, i8** %6, align 8
  %14 = call i64 @stat(i8* %13, %struct.stat* %4)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @free(i8* %17)
  store i32 0, i32* %2, align 4
  br label %37

19:                                               ; preds = %12
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @free(i8* %20)
  store i8* null, i8** %6, align 8
  %22 = call i64 @gettimeofday(%struct.timeval* %5, i32 0)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %37

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %28, %30
  %32 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sge i64 %31, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  store i32 1, i32* %2, align 4
  br label %37

36:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %35, %24, %16, %11
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i64 @asprintf(i8**, i8*, i32, i32) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @gettimeofday(%struct.timeval*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
