; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_select.c___estimate_accuracy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_select.c___estimate_accuracy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i32 }

@current = common dso_local global i32 0, align 4
@MAX_SLACK = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.timespec*)* @__estimate_accuracy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__estimate_accuracy(%struct.timespec* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.timespec*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.timespec* %0, %struct.timespec** %3, align 8
  store i32 1000, i32* %5, align 4
  %6 = load %struct.timespec*, %struct.timespec** %3, align 8
  %7 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %57

11:                                               ; preds = %1
  %12 = load i32, i32* @current, align 4
  %13 = call i64 @task_nice(i32 %12)
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load i32, i32* %5, align 4
  %17 = sdiv i32 %16, 5
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %15, %11
  %19 = load %struct.timespec*, %struct.timespec** %3, align 8
  %20 = getelementptr inbounds %struct.timespec, %struct.timespec* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @MAX_SLACK, align 4
  %23 = load i32, i32* @NSEC_PER_SEC, align 4
  %24 = load i32, i32* %5, align 4
  %25 = sdiv i32 %23, %24
  %26 = sdiv i32 %22, %25
  %27 = icmp sgt i32 %21, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %18
  %29 = load i32, i32* @MAX_SLACK, align 4
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %2, align 8
  br label %57

31:                                               ; preds = %18
  %32 = load %struct.timespec*, %struct.timespec** %3, align 8
  %33 = getelementptr inbounds %struct.timespec, %struct.timespec* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %5, align 4
  %36 = sdiv i32 %34, %35
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %4, align 8
  %38 = load %struct.timespec*, %struct.timespec** %3, align 8
  %39 = getelementptr inbounds %struct.timespec, %struct.timespec* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @NSEC_PER_SEC, align 4
  %42 = load i32, i32* %5, align 4
  %43 = sdiv i32 %41, %42
  %44 = mul nsw i32 %40, %43
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* %4, align 8
  %47 = add nsw i64 %46, %45
  store i64 %47, i64* %4, align 8
  %48 = load i64, i64* %4, align 8
  %49 = load i32, i32* @MAX_SLACK, align 4
  %50 = sext i32 %49 to i64
  %51 = icmp sgt i64 %48, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %31
  %53 = load i32, i32* @MAX_SLACK, align 4
  %54 = sext i32 %53 to i64
  store i64 %54, i64* %2, align 8
  br label %57

55:                                               ; preds = %31
  %56 = load i64, i64* %4, align 8
  store i64 %56, i64* %2, align 8
  br label %57

57:                                               ; preds = %55, %52, %28, %10
  %58 = load i64, i64* %2, align 8
  ret i64 %58
}

declare dso_local i64 @task_nice(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
