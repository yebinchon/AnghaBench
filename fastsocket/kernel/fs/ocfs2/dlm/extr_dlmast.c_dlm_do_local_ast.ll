; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmast.c_dlm_do_local_ast.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmast.c_dlm_do_local_ast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i64 }
%struct.dlm_lock_resource = type { i32 }
%struct.dlm_lock = type { i32, %struct.TYPE_2__, i32 (i32)*, %struct.dlm_lockstatus* }
%struct.TYPE_2__ = type { i64 }
%struct.dlm_lockstatus = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dlm_do_local_ast(%struct.dlm_ctxt* %0, %struct.dlm_lock_resource* %1, %struct.dlm_lock* %2) #0 {
  %4 = alloca %struct.dlm_ctxt*, align 8
  %5 = alloca %struct.dlm_lock_resource*, align 8
  %6 = alloca %struct.dlm_lock*, align 8
  %7 = alloca i32 (i32)**, align 8
  %8 = alloca %struct.dlm_lockstatus*, align 8
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %4, align 8
  store %struct.dlm_lock_resource* %1, %struct.dlm_lock_resource** %5, align 8
  store %struct.dlm_lock* %2, %struct.dlm_lock** %6, align 8
  %9 = call i32 (...) @mlog_entry_void()
  %10 = load %struct.dlm_lock*, %struct.dlm_lock** %6, align 8
  %11 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %10, i32 0, i32 3
  %12 = load %struct.dlm_lockstatus*, %struct.dlm_lockstatus** %11, align 8
  store %struct.dlm_lockstatus* %12, %struct.dlm_lockstatus** %8, align 8
  %13 = load %struct.dlm_lock*, %struct.dlm_lock** %6, align 8
  %14 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %13, i32 0, i32 2
  %15 = load i32 (i32)*, i32 (i32)** %14, align 8
  %16 = bitcast i32 (i32)* %15 to i32 (i32)**
  store i32 (i32)** %16, i32 (i32)*** %7, align 8
  %17 = load %struct.dlm_lock*, %struct.dlm_lock** %6, align 8
  %18 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %22 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %20, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %28 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %29 = load %struct.dlm_lock*, %struct.dlm_lock** %6, align 8
  %30 = call i32 @dlm_update_lvb(%struct.dlm_ctxt* %27, %struct.dlm_lock_resource* %28, %struct.dlm_lock* %29)
  %31 = load i32 (i32)**, i32 (i32)*** %7, align 8
  %32 = load i32 (i32)*, i32 (i32)** %31, align 8
  %33 = load %struct.dlm_lock*, %struct.dlm_lock** %6, align 8
  %34 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 %32(i32 %35)
  ret void
}

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dlm_update_lvb(%struct.dlm_ctxt*, %struct.dlm_lock_resource*, %struct.dlm_lock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
