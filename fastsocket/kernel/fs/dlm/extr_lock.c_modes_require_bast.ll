; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lock.c_modes_require_bast.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lock.c_modes_require_bast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_lkb = type { i64, i64, i64 }

@DLM_LOCK_PR = common dso_local global i64 0, align 8
@DLM_LOCK_CW = common dso_local global i64 0, align 8
@DLM_LOCK_EX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_lkb*, %struct.dlm_lkb*)* @modes_require_bast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @modes_require_bast(%struct.dlm_lkb* %0, %struct.dlm_lkb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dlm_lkb*, align 8
  %5 = alloca %struct.dlm_lkb*, align 8
  store %struct.dlm_lkb* %0, %struct.dlm_lkb** %4, align 8
  store %struct.dlm_lkb* %1, %struct.dlm_lkb** %5, align 8
  %6 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %7 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @DLM_LOCK_PR, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %13 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @DLM_LOCK_CW, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %29, label %17

17:                                               ; preds = %11, %2
  %18 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %19 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @DLM_LOCK_CW, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %17
  %24 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %25 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @DLM_LOCK_PR, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %23, %11
  %30 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %31 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @DLM_LOCK_EX, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 1, i32* %3, align 4
  br label %52

36:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %52

37:                                               ; preds = %23, %17
  %38 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %39 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %42 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp slt i64 %40, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %37
  %46 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %47 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %48 = call i32 @modes_compat(%struct.dlm_lkb* %46, %struct.dlm_lkb* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  store i32 1, i32* %3, align 4
  br label %52

51:                                               ; preds = %45, %37
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %50, %36, %35
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @modes_compat(%struct.dlm_lkb*, %struct.dlm_lkb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
