; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmunlock.c_dlm_get_unlock_actions.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmunlock.c_dlm_get_unlock_actions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i32 }
%struct.dlm_lock_resource = type { i32 }
%struct.dlm_lock = type { i32 }
%struct.dlm_lockstatus = type { i32 }

@DLM_DENIED = common dso_local global i32 0, align 4
@DLM_NORMAL = common dso_local global i32 0, align 4
@DLM_UNLOCK_FREE_LOCK = common dso_local global i32 0, align 4
@DLM_UNLOCK_CALL_AST = common dso_local global i32 0, align 4
@DLM_UNLOCK_REMOVE_LOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ctxt*, %struct.dlm_lock_resource*, %struct.dlm_lock*, %struct.dlm_lockstatus*, i32*)* @dlm_get_unlock_actions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlm_get_unlock_actions(%struct.dlm_ctxt* %0, %struct.dlm_lock_resource* %1, %struct.dlm_lock* %2, %struct.dlm_lockstatus* %3, i32* %4) #0 {
  %6 = alloca %struct.dlm_ctxt*, align 8
  %7 = alloca %struct.dlm_lock_resource*, align 8
  %8 = alloca %struct.dlm_lock*, align 8
  %9 = alloca %struct.dlm_lockstatus*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %6, align 8
  store %struct.dlm_lock_resource* %1, %struct.dlm_lock_resource** %7, align 8
  store %struct.dlm_lock* %2, %struct.dlm_lock** %8, align 8
  store %struct.dlm_lockstatus* %3, %struct.dlm_lockstatus** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %13 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %12, i32 0, i32 0
  %14 = load %struct.dlm_lock*, %struct.dlm_lock** %8, align 8
  %15 = call i32 @dlm_lock_on_list(i32* %13, %struct.dlm_lock* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %5
  %18 = load i32, i32* @DLM_DENIED, align 4
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = call i32 @dlm_error(i32 %19)
  %21 = load i32*, i32** %10, align 8
  store i32 0, i32* %21, align 4
  br label %30

22:                                               ; preds = %5
  %23 = load i32, i32* @DLM_NORMAL, align 4
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* @DLM_UNLOCK_FREE_LOCK, align 4
  %25 = load i32, i32* @DLM_UNLOCK_CALL_AST, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @DLM_UNLOCK_REMOVE_LOCK, align 4
  %28 = or i32 %26, %27
  %29 = load i32*, i32** %10, align 8
  store i32 %28, i32* %29, align 4
  br label %30

30:                                               ; preds = %22, %17
  %31 = load i32, i32* %11, align 4
  ret i32 %31
}

declare dso_local i32 @dlm_lock_on_list(i32*, %struct.dlm_lock*) #1

declare dso_local i32 @dlm_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
