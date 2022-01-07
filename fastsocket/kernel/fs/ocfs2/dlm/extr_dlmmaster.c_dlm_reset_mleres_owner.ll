; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmmaster.c_dlm_reset_mleres_owner.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmmaster.c_dlm_reset_mleres_owner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_lock_resource = type { i32 }
%struct.dlm_ctxt = type { i32 }
%struct.dlm_master_list_entry = type { i32, i32, i32 }

@DLM_LOCK_RES_OWNER_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dlm_lock_resource* (%struct.dlm_ctxt*, %struct.dlm_master_list_entry*)* @dlm_reset_mleres_owner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dlm_lock_resource* @dlm_reset_mleres_owner(%struct.dlm_ctxt* %0, %struct.dlm_master_list_entry* %1) #0 {
  %3 = alloca %struct.dlm_ctxt*, align 8
  %4 = alloca %struct.dlm_master_list_entry*, align 8
  %5 = alloca %struct.dlm_lock_resource*, align 8
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %3, align 8
  store %struct.dlm_master_list_entry* %1, %struct.dlm_master_list_entry** %4, align 8
  %6 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %7 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %4, align 8
  %8 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %4, align 8
  %11 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %4, align 8
  %14 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.dlm_lock_resource* @__dlm_lookup_lockres(%struct.dlm_ctxt* %6, i32 %9, i32 %12, i32 %15)
  store %struct.dlm_lock_resource* %16, %struct.dlm_lock_resource** %5, align 8
  %17 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %18 = icmp ne %struct.dlm_lock_resource* %17, null
  br i1 %18, label %19, label %49

19:                                               ; preds = %2
  %20 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %21 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %20, i32 0, i32 0
  %22 = call i32 @spin_unlock(i32* %21)
  %23 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %24 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %23, i32 0, i32 0
  %25 = call i32 @spin_lock(i32* %24)
  %26 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %27 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %28 = load i32, i32* @DLM_LOCK_RES_OWNER_UNKNOWN, align 4
  %29 = call i32 @dlm_set_lockres_owner(%struct.dlm_ctxt* %26, %struct.dlm_lock_resource* %27, i32 %28)
  %30 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %31 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %32 = call i32 @dlm_move_lockres_to_recovery_list(%struct.dlm_ctxt* %30, %struct.dlm_lock_resource* %31)
  %33 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %34 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %33, i32 0, i32 0
  %35 = call i32 @spin_unlock(i32* %34)
  %36 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %37 = call i32 @dlm_lockres_put(%struct.dlm_lock_resource* %36)
  %38 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %39 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %4, align 8
  %40 = call i32 @__dlm_mle_detach_hb_events(%struct.dlm_ctxt* %38, %struct.dlm_master_list_entry* %39)
  %41 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %42 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %41, i32 0, i32 0
  %43 = call i32 @spin_lock(i32* %42)
  %44 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %4, align 8
  %45 = call i32 @__dlm_put_mle(%struct.dlm_master_list_entry* %44)
  %46 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %47 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %46, i32 0, i32 0
  %48 = call i32 @spin_unlock(i32* %47)
  br label %49

49:                                               ; preds = %19, %2
  %50 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  ret %struct.dlm_lock_resource* %50
}

declare dso_local %struct.dlm_lock_resource* @__dlm_lookup_lockres(%struct.dlm_ctxt*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @dlm_set_lockres_owner(%struct.dlm_ctxt*, %struct.dlm_lock_resource*, i32) #1

declare dso_local i32 @dlm_move_lockres_to_recovery_list(%struct.dlm_ctxt*, %struct.dlm_lock_resource*) #1

declare dso_local i32 @dlm_lockres_put(%struct.dlm_lock_resource*) #1

declare dso_local i32 @__dlm_mle_detach_hb_events(%struct.dlm_ctxt*, %struct.dlm_master_list_entry*) #1

declare dso_local i32 @__dlm_put_mle(%struct.dlm_master_list_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
