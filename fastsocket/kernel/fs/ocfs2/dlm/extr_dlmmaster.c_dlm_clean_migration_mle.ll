; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmmaster.c_dlm_clean_migration_mle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmmaster.c_dlm_clean_migration_mle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i32 }
%struct.dlm_master_list_entry = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dlm_ctxt*, %struct.dlm_master_list_entry*)* @dlm_clean_migration_mle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dlm_clean_migration_mle(%struct.dlm_ctxt* %0, %struct.dlm_master_list_entry* %1) #0 {
  %3 = alloca %struct.dlm_ctxt*, align 8
  %4 = alloca %struct.dlm_master_list_entry*, align 8
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %3, align 8
  store %struct.dlm_master_list_entry* %1, %struct.dlm_master_list_entry** %4, align 8
  %5 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %6 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %4, align 8
  %7 = call i32 @__dlm_mle_detach_hb_events(%struct.dlm_ctxt* %5, %struct.dlm_master_list_entry* %6)
  %8 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %4, align 8
  %9 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %8, i32 0, i32 1
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %12 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %4, align 8
  %13 = call i32 @__dlm_unlink_mle(%struct.dlm_ctxt* %11, %struct.dlm_master_list_entry* %12)
  %14 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %4, align 8
  %15 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %14, i32 0, i32 2
  %16 = call i32 @atomic_set(i32* %15, i32 1)
  %17 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %4, align 8
  %18 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %17, i32 0, i32 1
  %19 = call i32 @spin_unlock(i32* %18)
  %20 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %4, align 8
  %21 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %20, i32 0, i32 0
  %22 = call i32 @wake_up(i32* %21)
  ret void
}

declare dso_local i32 @__dlm_mle_detach_hb_events(%struct.dlm_ctxt*, %struct.dlm_master_list_entry*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__dlm_unlink_mle(%struct.dlm_ctxt*, %struct.dlm_master_list_entry*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
