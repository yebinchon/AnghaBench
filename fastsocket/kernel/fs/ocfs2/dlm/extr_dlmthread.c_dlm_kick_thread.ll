; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmthread.c_dlm_kick_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmthread.c_dlm_kick_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i32, i32 }
%struct.dlm_lock_resource = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"dlm=%p, res=%p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dlm_kick_thread(%struct.dlm_ctxt* %0, %struct.dlm_lock_resource* %1) #0 {
  %3 = alloca %struct.dlm_ctxt*, align 8
  %4 = alloca %struct.dlm_lock_resource*, align 8
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %3, align 8
  store %struct.dlm_lock_resource* %1, %struct.dlm_lock_resource** %4, align 8
  %5 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %6 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %7 = call i32 @mlog_entry(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.dlm_ctxt* %5, %struct.dlm_lock_resource* %6)
  %8 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %9 = icmp ne %struct.dlm_lock_resource* %8, null
  br i1 %9, label %10, label %26

10:                                               ; preds = %2
  %11 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %12 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %11, i32 0, i32 1
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %15 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %14, i32 0, i32 0
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %18 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %19 = call i32 @__dlm_dirty_lockres(%struct.dlm_ctxt* %17, %struct.dlm_lock_resource* %18)
  %20 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %21 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %20, i32 0, i32 0
  %22 = call i32 @spin_unlock(i32* %21)
  %23 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %24 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %23, i32 0, i32 1
  %25 = call i32 @spin_unlock(i32* %24)
  br label %26

26:                                               ; preds = %10, %2
  %27 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %28 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %27, i32 0, i32 0
  %29 = call i32 @wake_up(i32* %28)
  ret void
}

declare dso_local i32 @mlog_entry(i8*, %struct.dlm_ctxt*, %struct.dlm_lock_resource*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__dlm_dirty_lockres(%struct.dlm_ctxt*, %struct.dlm_lock_resource*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
