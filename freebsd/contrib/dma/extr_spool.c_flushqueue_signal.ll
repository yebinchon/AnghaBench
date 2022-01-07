; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dma/extr_spool.c_flushqueue_signal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dma/extr_spool.c_flushqueue_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@SPOOL_FLUSHFILE = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"could not open flush file: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @flushqueue_signal() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* null, i8** %2, align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 4
  %5 = load i32, i32* @SPOOL_FLUSHFILE, align 4
  %6 = call i64 @asprintf(i8** %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %4, i32 %5)
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %27

9:                                                ; preds = %0
  %10 = load i8*, i8** %2, align 8
  %11 = load i32, i32* @O_CREAT, align 4
  %12 = load i32, i32* @O_WRONLY, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @O_TRUNC, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @open(i8* %10, i32 %15, i32 432)
  store i32 %16, i32* %3, align 4
  %17 = load i8*, i8** %2, align 8
  %18 = call i32 @free(i8* %17)
  %19 = load i32, i32* %3, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %9
  %22 = load i32, i32* @LOG_ERR, align 4
  %23 = call i32 @syslog(i32 %22, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %27

24:                                               ; preds = %9
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @close(i32 %25)
  store i32 0, i32* %1, align 4
  br label %27

27:                                               ; preds = %24, %21, %8
  %28 = load i32, i32* %1, align 4
  ret i32 %28
}

declare dso_local i64 @asprintf(i8**, i8*, i32, i32) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @syslog(i32, i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
