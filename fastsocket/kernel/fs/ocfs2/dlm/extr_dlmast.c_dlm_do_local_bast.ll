; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmast.c_dlm_do_local_bast.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmast.c_dlm_do_local_bast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i64 }
%struct.dlm_lock_resource = type { i32 }
%struct.dlm_lock = type { i32, %struct.TYPE_2__, i32 (i32, i32)* }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dlm_do_local_bast(%struct.dlm_ctxt* %0, %struct.dlm_lock_resource* %1, %struct.dlm_lock* %2, i32 %3) #0 {
  %5 = alloca %struct.dlm_ctxt*, align 8
  %6 = alloca %struct.dlm_lock_resource*, align 8
  %7 = alloca %struct.dlm_lock*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32 (i32, i32)**, align 8
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %5, align 8
  store %struct.dlm_lock_resource* %1, %struct.dlm_lock_resource** %6, align 8
  store %struct.dlm_lock* %2, %struct.dlm_lock** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.dlm_lock*, %struct.dlm_lock** %7, align 8
  %11 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %10, i32 0, i32 2
  %12 = load i32 (i32, i32)*, i32 (i32, i32)** %11, align 8
  %13 = bitcast i32 (i32, i32)* %12 to i32 (i32, i32)**
  store i32 (i32, i32)** %13, i32 (i32, i32)*** %9, align 8
  %14 = call i32 (...) @mlog_entry_void()
  %15 = load %struct.dlm_lock*, %struct.dlm_lock** %7, align 8
  %16 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %20 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %18, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load i32 (i32, i32)**, i32 (i32, i32)*** %9, align 8
  %26 = load i32 (i32, i32)*, i32 (i32, i32)** %25, align 8
  %27 = load %struct.dlm_lock*, %struct.dlm_lock** %7, align 8
  %28 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 %26(i32 %29, i32 %30)
  ret void
}

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
