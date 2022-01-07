; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmthread.c_dlm_lockres_calc_usage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmthread.c_dlm_lockres_calc_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i32 }
%struct.dlm_lock_resource = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"%.*s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dlm_lockres_calc_usage(%struct.dlm_ctxt* %0, %struct.dlm_lock_resource* %1) #0 {
  %3 = alloca %struct.dlm_ctxt*, align 8
  %4 = alloca %struct.dlm_lock_resource*, align 8
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %3, align 8
  store %struct.dlm_lock_resource* %1, %struct.dlm_lock_resource** %4, align 8
  %5 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %6 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %10 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @mlog_entry(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %12)
  %14 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %15 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %14, i32 0, i32 0
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %18 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %17, i32 0, i32 0
  %19 = call i32 @spin_lock(i32* %18)
  %20 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %21 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %22 = call i32 @__dlm_lockres_calc_usage(%struct.dlm_ctxt* %20, %struct.dlm_lock_resource* %21)
  %23 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %24 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %23, i32 0, i32 0
  %25 = call i32 @spin_unlock(i32* %24)
  %26 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %27 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %26, i32 0, i32 0
  %28 = call i32 @spin_unlock(i32* %27)
  ret void
}

declare dso_local i32 @mlog_entry(i8*, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__dlm_lockres_calc_usage(%struct.dlm_ctxt*, %struct.dlm_lock_resource*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
