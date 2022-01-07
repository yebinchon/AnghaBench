; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmmaster.c___dlm_insert_mle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmmaster.c___dlm_insert_mle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i32 }
%struct.dlm_master_list_entry = type { i32, i32 }
%struct.hlist_head = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__dlm_insert_mle(%struct.dlm_ctxt* %0, %struct.dlm_master_list_entry* %1) #0 {
  %3 = alloca %struct.dlm_ctxt*, align 8
  %4 = alloca %struct.dlm_master_list_entry*, align 8
  %5 = alloca %struct.hlist_head*, align 8
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %3, align 8
  store %struct.dlm_master_list_entry* %1, %struct.dlm_master_list_entry** %4, align 8
  %6 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %7 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %6, i32 0, i32 0
  %8 = call i32 @assert_spin_locked(i32* %7)
  %9 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %10 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %4, align 8
  %11 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.hlist_head* @dlm_master_hash(%struct.dlm_ctxt* %9, i32 %12)
  store %struct.hlist_head* %13, %struct.hlist_head** %5, align 8
  %14 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %4, align 8
  %15 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %14, i32 0, i32 0
  %16 = load %struct.hlist_head*, %struct.hlist_head** %5, align 8
  %17 = call i32 @hlist_add_head(i32* %15, %struct.hlist_head* %16)
  ret void
}

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local %struct.hlist_head* @dlm_master_hash(%struct.dlm_ctxt*, i32) #1

declare dso_local i32 @hlist_add_head(i32*, %struct.hlist_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
