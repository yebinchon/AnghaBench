; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lock.c__grant_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lock.c__grant_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_rsb = type { i32 }
%struct.dlm_lkb = type { i64, i64, i64 }

@DLM_LKSTS_GRANTED = common dso_local global i32 0, align 4
@DLM_LOCK_IV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dlm_rsb*, %struct.dlm_lkb*)* @_grant_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_grant_lock(%struct.dlm_rsb* %0, %struct.dlm_lkb* %1) #0 {
  %3 = alloca %struct.dlm_rsb*, align 8
  %4 = alloca %struct.dlm_lkb*, align 8
  store %struct.dlm_rsb* %0, %struct.dlm_rsb** %3, align 8
  store %struct.dlm_lkb* %1, %struct.dlm_lkb** %4, align 8
  %5 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %6 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %9 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %7, %10
  br i1 %11, label %12, label %33

12:                                               ; preds = %2
  %13 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %14 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %17 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  %18 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %19 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %12
  %23 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %24 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %25 = load i32, i32* @DLM_LKSTS_GRANTED, align 4
  %26 = call i32 @move_lkb(%struct.dlm_rsb* %23, %struct.dlm_lkb* %24, i32 %25)
  br label %32

27:                                               ; preds = %12
  %28 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %29 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %30 = load i32, i32* @DLM_LKSTS_GRANTED, align 4
  %31 = call i32 @add_lkb(%struct.dlm_rsb* %28, %struct.dlm_lkb* %29, i32 %30)
  br label %32

32:                                               ; preds = %27, %22
  br label %33

33:                                               ; preds = %32, %2
  %34 = load i64, i64* @DLM_LOCK_IV, align 8
  %35 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %36 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  ret void
}

declare dso_local i32 @move_lkb(%struct.dlm_rsb*, %struct.dlm_lkb*, i32) #1

declare dso_local i32 @add_lkb(%struct.dlm_rsb*, %struct.dlm_lkb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
