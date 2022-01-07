; ModuleID = '/home/carl/AnghaBench/freebsd/bin/cp/extr_utils.c_copy_fifo.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/cp/extr_utils.c_copy_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }
%struct.stat = type { i32 }

@nflag = common dso_local global i64 0, align 8
@vflag = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"%s not overwritten\0A\00", align 1
@to = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"unlink: %s\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"mkfifo: %s\00", align 1
@pflag = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @copy_fifo(%struct.stat* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stat*, align 8
  %5 = alloca i32, align 4
  store %struct.stat* %0, %struct.stat** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %2
  %9 = load i64, i64* @nflag, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %8
  %12 = load i64, i64* @vflag, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @to, i32 0, i32 0), align 8
  %16 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %15)
  br label %17

17:                                               ; preds = %14, %11
  store i32 1, i32* %3, align 4
  br label %47

18:                                               ; preds = %8, %2
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @to, i32 0, i32 0), align 8
  %23 = call i64 @unlink(i8* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @to, i32 0, i32 0), align 8
  %27 = call i32 @warn(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  store i32 1, i32* %3, align 4
  br label %47

28:                                               ; preds = %21, %18
  %29 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @to, i32 0, i32 0), align 8
  %30 = load %struct.stat*, %struct.stat** %4, align 8
  %31 = getelementptr inbounds %struct.stat, %struct.stat* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @mkfifo(i8* %29, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @to, i32 0, i32 0), align 8
  %37 = call i32 @warn(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %36)
  store i32 1, i32* %3, align 4
  br label %47

38:                                               ; preds = %28
  %39 = load i64, i64* @pflag, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load %struct.stat*, %struct.stat** %4, align 8
  %43 = call i32 @setfile(%struct.stat* %42, i32 -1)
  br label %45

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %44, %41
  %46 = phi i32 [ %43, %41 ], [ 0, %44 ]
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %45, %35, %25, %17
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i64 @unlink(i8*) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i64 @mkfifo(i8*, i32) #1

declare dso_local i32 @setfile(%struct.stat*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
