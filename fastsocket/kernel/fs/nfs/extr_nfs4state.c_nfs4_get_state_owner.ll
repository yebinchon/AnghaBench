; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4state.c_nfs4_get_state_owner.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4state.c_nfs4_get_state_owner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_state_owner = type { %struct.TYPE_2__, %struct.rpc_cred*, %struct.nfs_server* }
%struct.TYPE_2__ = type { i32 }
%struct.nfs_server = type { %struct.nfs_client* }
%struct.nfs_client = type { i32 }
%struct.rpc_cred = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nfs4_state_owner* @nfs4_get_state_owner(%struct.nfs_server* %0, %struct.rpc_cred* %1) #0 {
  %3 = alloca %struct.nfs_server*, align 8
  %4 = alloca %struct.rpc_cred*, align 8
  %5 = alloca %struct.nfs_client*, align 8
  %6 = alloca %struct.nfs4_state_owner*, align 8
  %7 = alloca %struct.nfs4_state_owner*, align 8
  store %struct.nfs_server* %0, %struct.nfs_server** %3, align 8
  store %struct.rpc_cred* %1, %struct.rpc_cred** %4, align 8
  %8 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %9 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %8, i32 0, i32 0
  %10 = load %struct.nfs_client*, %struct.nfs_client** %9, align 8
  store %struct.nfs_client* %10, %struct.nfs_client** %5, align 8
  %11 = load %struct.nfs_client*, %struct.nfs_client** %5, align 8
  %12 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %11, i32 0, i32 0
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %15 = load %struct.rpc_cred*, %struct.rpc_cred** %4, align 8
  %16 = call %struct.nfs4_state_owner* @nfs4_find_state_owner_locked(%struct.nfs_server* %14, %struct.rpc_cred* %15)
  store %struct.nfs4_state_owner* %16, %struct.nfs4_state_owner** %6, align 8
  %17 = load %struct.nfs_client*, %struct.nfs_client** %5, align 8
  %18 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %17, i32 0, i32 0
  %19 = call i32 @spin_unlock(i32* %18)
  %20 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %6, align 8
  %21 = icmp ne %struct.nfs4_state_owner* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %57

23:                                               ; preds = %2
  %24 = call %struct.nfs4_state_owner* (...) @nfs4_alloc_state_owner()
  store %struct.nfs4_state_owner* %24, %struct.nfs4_state_owner** %7, align 8
  %25 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %7, align 8
  %26 = icmp eq %struct.nfs4_state_owner* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %57

28:                                               ; preds = %23
  %29 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %30 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %7, align 8
  %31 = getelementptr inbounds %struct.nfs4_state_owner, %struct.nfs4_state_owner* %30, i32 0, i32 2
  store %struct.nfs_server* %29, %struct.nfs_server** %31, align 8
  %32 = load %struct.rpc_cred*, %struct.rpc_cred** %4, align 8
  %33 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %7, align 8
  %34 = getelementptr inbounds %struct.nfs4_state_owner, %struct.nfs4_state_owner* %33, i32 0, i32 1
  store %struct.rpc_cred* %32, %struct.rpc_cred** %34, align 8
  %35 = load %struct.nfs_client*, %struct.nfs_client** %5, align 8
  %36 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %35, i32 0, i32 0
  %37 = call i32 @spin_lock(i32* %36)
  %38 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %7, align 8
  %39 = call %struct.nfs4_state_owner* @nfs4_insert_state_owner_locked(%struct.nfs4_state_owner* %38)
  store %struct.nfs4_state_owner* %39, %struct.nfs4_state_owner** %6, align 8
  %40 = load %struct.nfs_client*, %struct.nfs_client** %5, align 8
  %41 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %40, i32 0, i32 0
  %42 = call i32 @spin_unlock(i32* %41)
  %43 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %6, align 8
  %44 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %7, align 8
  %45 = icmp eq %struct.nfs4_state_owner* %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %28
  %47 = load %struct.rpc_cred*, %struct.rpc_cred** %4, align 8
  %48 = call i32 @get_rpccred(%struct.rpc_cred* %47)
  br label %56

49:                                               ; preds = %28
  %50 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %7, align 8
  %51 = getelementptr inbounds %struct.nfs4_state_owner, %struct.nfs4_state_owner* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = call i32 @rpc_destroy_wait_queue(i32* %52)
  %54 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %7, align 8
  %55 = call i32 @kfree(%struct.nfs4_state_owner* %54)
  br label %56

56:                                               ; preds = %49, %46
  br label %57

57:                                               ; preds = %56, %27, %22
  %58 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %59 = call i32 @nfs4_gc_state_owners(%struct.nfs_server* %58)
  %60 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %6, align 8
  ret %struct.nfs4_state_owner* %60
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.nfs4_state_owner* @nfs4_find_state_owner_locked(%struct.nfs_server*, %struct.rpc_cred*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.nfs4_state_owner* @nfs4_alloc_state_owner(...) #1

declare dso_local %struct.nfs4_state_owner* @nfs4_insert_state_owner_locked(%struct.nfs4_state_owner*) #1

declare dso_local i32 @get_rpccred(%struct.rpc_cred*) #1

declare dso_local i32 @rpc_destroy_wait_queue(i32*) #1

declare dso_local i32 @kfree(%struct.nfs4_state_owner*) #1

declare dso_local i32 @nfs4_gc_state_owners(%struct.nfs_server*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
