; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmcommon.h___dlm_lockres_state_to_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmcommon.h___dlm_lockres_state_to_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_lock_resource = type { i32, i32 }

@DLM_NORMAL = common dso_local global i32 0, align 4
@DLM_LOCK_RES_RECOVERING = common dso_local global i32 0, align 4
@DLM_RECOVERING = common dso_local global i32 0, align 4
@DLM_LOCK_RES_MIGRATING = common dso_local global i32 0, align 4
@DLM_MIGRATING = common dso_local global i32 0, align 4
@DLM_LOCK_RES_IN_PROGRESS = common dso_local global i32 0, align 4
@DLM_FORWARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_lock_resource*)* @__dlm_lockres_state_to_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__dlm_lockres_state_to_status(%struct.dlm_lock_resource* %0) #0 {
  %2 = alloca %struct.dlm_lock_resource*, align 8
  %3 = alloca i32, align 4
  store %struct.dlm_lock_resource* %0, %struct.dlm_lock_resource** %2, align 8
  %4 = load i32, i32* @DLM_NORMAL, align 4
  store i32 %4, i32* %3, align 4
  %5 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %2, align 8
  %6 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %5, i32 0, i32 1
  %7 = call i32 @assert_spin_locked(i32* %6)
  %8 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %2, align 8
  %9 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @DLM_LOCK_RES_RECOVERING, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @DLM_RECOVERING, align 4
  store i32 %15, i32* %3, align 4
  br label %36

16:                                               ; preds = %1
  %17 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %2, align 8
  %18 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @DLM_LOCK_RES_MIGRATING, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* @DLM_MIGRATING, align 4
  store i32 %24, i32* %3, align 4
  br label %35

25:                                               ; preds = %16
  %26 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %2, align 8
  %27 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @DLM_LOCK_RES_IN_PROGRESS, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* @DLM_FORWARD, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %32, %25
  br label %35

35:                                               ; preds = %34, %23
  br label %36

36:                                               ; preds = %35, %14
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @assert_spin_locked(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
