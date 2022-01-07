; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmdomain.c___dlm_insert_lockres.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmdomain.c___dlm_insert_lockres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i32 }
%struct.dlm_lock_resource = type { i32, %struct.qstr }
%struct.qstr = type { i32 }
%struct.hlist_head = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__dlm_insert_lockres(%struct.dlm_ctxt* %0, %struct.dlm_lock_resource* %1) #0 {
  %3 = alloca %struct.dlm_ctxt*, align 8
  %4 = alloca %struct.dlm_lock_resource*, align 8
  %5 = alloca %struct.hlist_head*, align 8
  %6 = alloca %struct.qstr*, align 8
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %3, align 8
  store %struct.dlm_lock_resource* %1, %struct.dlm_lock_resource** %4, align 8
  %7 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %8 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %7, i32 0, i32 0
  %9 = call i32 @assert_spin_locked(i32* %8)
  %10 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %11 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %10, i32 0, i32 1
  store %struct.qstr* %11, %struct.qstr** %6, align 8
  %12 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %13 = load %struct.qstr*, %struct.qstr** %6, align 8
  %14 = getelementptr inbounds %struct.qstr, %struct.qstr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.hlist_head* @dlm_lockres_hash(%struct.dlm_ctxt* %12, i32 %15)
  store %struct.hlist_head* %16, %struct.hlist_head** %5, align 8
  %17 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %18 = call i32 @dlm_lockres_get(%struct.dlm_lock_resource* %17)
  %19 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %20 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %19, i32 0, i32 0
  %21 = load %struct.hlist_head*, %struct.hlist_head** %5, align 8
  %22 = call i32 @hlist_add_head(i32* %20, %struct.hlist_head* %21)
  ret void
}

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local %struct.hlist_head* @dlm_lockres_hash(%struct.dlm_ctxt*, i32) #1

declare dso_local i32 @dlm_lockres_get(%struct.dlm_lock_resource*) #1

declare dso_local i32 @hlist_add_head(i32*, %struct.hlist_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
