; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmthread.c___dlm_wait_on_lockres_flags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmthread.c___dlm_wait_on_lockres_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_lock_resource = type { i32, i32, i32 }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__dlm_wait_on_lockres_flags(%struct.dlm_lock_resource* %0, i32 %1) #0 {
  %3 = alloca %struct.dlm_lock_resource*, align 8
  %4 = alloca i32, align 4
  store %struct.dlm_lock_resource* %0, %struct.dlm_lock_resource** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @wait, align 4
  %6 = load i32, i32* @current, align 4
  %7 = call i32 @DECLARE_WAITQUEUE(i32 %5, i32 %6)
  %8 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %3, align 8
  %9 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %8, i32 0, i32 2
  %10 = call i32 @assert_spin_locked(i32* %9)
  %11 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %3, align 8
  %12 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %11, i32 0, i32 1
  %13 = call i32 @add_wait_queue(i32* %12, i32* @wait)
  br label %14

14:                                               ; preds = %23, %2
  %15 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %16 = call i32 @set_current_state(i32 %15)
  %17 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %3, align 8
  %18 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %14
  %24 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %3, align 8
  %25 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %24, i32 0, i32 2
  %26 = call i32 @spin_unlock(i32* %25)
  %27 = call i32 (...) @schedule()
  %28 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %3, align 8
  %29 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %28, i32 0, i32 2
  %30 = call i32 @spin_lock(i32* %29)
  br label %14

31:                                               ; preds = %14
  %32 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %3, align 8
  %33 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %32, i32 0, i32 1
  %34 = call i32 @remove_wait_queue(i32* %33, i32* @wait)
  %35 = load i32, i32* @TASK_RUNNING, align 4
  %36 = call i32 @__set_current_state(i32 %35)
  ret void
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

declare dso_local i32 @__set_current_state(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
