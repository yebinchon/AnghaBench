; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmunlock.c_dlmunlock_remote.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmunlock.c_dlmunlock_remote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i32 }
%struct.dlm_lock_resource = type { i32 }
%struct.dlm_lock = type { i32 }
%struct.dlm_lockstatus = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ctxt*, %struct.dlm_lock_resource*, %struct.dlm_lock*, %struct.dlm_lockstatus*, i32, i32*)* @dlmunlock_remote to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlmunlock_remote(%struct.dlm_ctxt* %0, %struct.dlm_lock_resource* %1, %struct.dlm_lock* %2, %struct.dlm_lockstatus* %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.dlm_ctxt*, align 8
  %8 = alloca %struct.dlm_lock_resource*, align 8
  %9 = alloca %struct.dlm_lock*, align 8
  %10 = alloca %struct.dlm_lockstatus*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %7, align 8
  store %struct.dlm_lock_resource* %1, %struct.dlm_lock_resource** %8, align 8
  store %struct.dlm_lock* %2, %struct.dlm_lock** %9, align 8
  store %struct.dlm_lockstatus* %3, %struct.dlm_lockstatus** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %13 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %14 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %8, align 8
  %15 = load %struct.dlm_lock*, %struct.dlm_lock** %9, align 8
  %16 = load %struct.dlm_lockstatus*, %struct.dlm_lockstatus** %10, align 8
  %17 = load i32, i32* %11, align 4
  %18 = load i32*, i32** %12, align 8
  %19 = call i32 @dlmunlock_common(%struct.dlm_ctxt* %13, %struct.dlm_lock_resource* %14, %struct.dlm_lock* %15, %struct.dlm_lockstatus* %16, i32 %17, i32* %18, i32 0)
  ret i32 %19
}

declare dso_local i32 @dlmunlock_common(%struct.dlm_ctxt*, %struct.dlm_lock_resource*, %struct.dlm_lock*, %struct.dlm_lockstatus*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
