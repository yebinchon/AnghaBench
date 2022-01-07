; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_delegation.c_nfs_inode_reclaim_delegation.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_delegation.c_nfs_inode_reclaim_delegation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.rpc_cred = type { i32 }
%struct.nfs_openres = type { i32, i32, i32 }
%struct.nfs_delegation = type { i32, i32, i32, %struct.rpc_cred*, i32, i32, i32* }
%struct.TYPE_2__ = type { i32, i32 }

@NFS_DELEGATION_NEED_RECLAIM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_inode_reclaim_delegation(%struct.inode* %0, %struct.rpc_cred* %1, %struct.nfs_openres* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.rpc_cred*, align 8
  %6 = alloca %struct.nfs_openres*, align 8
  %7 = alloca %struct.nfs_delegation*, align 8
  %8 = alloca %struct.rpc_cred*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.rpc_cred* %1, %struct.rpc_cred** %5, align 8
  store %struct.nfs_openres* %2, %struct.nfs_openres** %6, align 8
  store %struct.rpc_cred* null, %struct.rpc_cred** %8, align 8
  %9 = call i32 (...) @rcu_read_lock()
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = call %struct.TYPE_2__* @NFS_I(%struct.inode* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.nfs_delegation* @rcu_dereference(i32 %13)
  store %struct.nfs_delegation* %14, %struct.nfs_delegation** %7, align 8
  %15 = load %struct.nfs_delegation*, %struct.nfs_delegation** %7, align 8
  %16 = icmp ne %struct.nfs_delegation* %15, null
  br i1 %16, label %17, label %74

17:                                               ; preds = %3
  %18 = load %struct.nfs_delegation*, %struct.nfs_delegation** %7, align 8
  %19 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %18, i32 0, i32 0
  %20 = call i32 @spin_lock(i32* %19)
  %21 = load %struct.nfs_delegation*, %struct.nfs_delegation** %7, align 8
  %22 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %21, i32 0, i32 6
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %64

25:                                               ; preds = %17
  %26 = load %struct.nfs_delegation*, %struct.nfs_delegation** %7, align 8
  %27 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %26, i32 0, i32 5
  %28 = load %struct.nfs_openres*, %struct.nfs_openres** %6, align 8
  %29 = getelementptr inbounds %struct.nfs_openres, %struct.nfs_openres* %28, i32 0, i32 2
  %30 = call i32 @nfs4_stateid_copy(i32* %27, i32* %29)
  %31 = load %struct.nfs_openres*, %struct.nfs_openres** %6, align 8
  %32 = getelementptr inbounds %struct.nfs_openres, %struct.nfs_openres* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.nfs_delegation*, %struct.nfs_delegation** %7, align 8
  %35 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.nfs_openres*, %struct.nfs_openres** %6, align 8
  %37 = getelementptr inbounds %struct.nfs_openres, %struct.nfs_openres* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.nfs_delegation*, %struct.nfs_delegation** %7, align 8
  %40 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 8
  %41 = load %struct.nfs_delegation*, %struct.nfs_delegation** %7, align 8
  %42 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %41, i32 0, i32 3
  %43 = load %struct.rpc_cred*, %struct.rpc_cred** %42, align 8
  store %struct.rpc_cred* %43, %struct.rpc_cred** %8, align 8
  %44 = load %struct.rpc_cred*, %struct.rpc_cred** %5, align 8
  %45 = call %struct.rpc_cred* @get_rpccred(%struct.rpc_cred* %44)
  %46 = load %struct.nfs_delegation*, %struct.nfs_delegation** %7, align 8
  %47 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %46, i32 0, i32 3
  store %struct.rpc_cred* %45, %struct.rpc_cred** %47, align 8
  %48 = load i32, i32* @NFS_DELEGATION_NEED_RECLAIM, align 4
  %49 = load %struct.nfs_delegation*, %struct.nfs_delegation** %7, align 8
  %50 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %49, i32 0, i32 2
  %51 = call i32 @clear_bit(i32 %48, i32* %50)
  %52 = load %struct.nfs_delegation*, %struct.nfs_delegation** %7, align 8
  %53 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.inode*, %struct.inode** %4, align 8
  %56 = call %struct.TYPE_2__* @NFS_I(%struct.inode* %55)
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 4
  %58 = load %struct.nfs_delegation*, %struct.nfs_delegation** %7, align 8
  %59 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %58, i32 0, i32 0
  %60 = call i32 @spin_unlock(i32* %59)
  %61 = load %struct.rpc_cred*, %struct.rpc_cred** %8, align 8
  %62 = call i32 @put_rpccred(%struct.rpc_cred* %61)
  %63 = call i32 (...) @rcu_read_unlock()
  br label %73

64:                                               ; preds = %17
  %65 = load %struct.nfs_delegation*, %struct.nfs_delegation** %7, align 8
  %66 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %65, i32 0, i32 0
  %67 = call i32 @spin_unlock(i32* %66)
  %68 = call i32 (...) @rcu_read_unlock()
  %69 = load %struct.inode*, %struct.inode** %4, align 8
  %70 = load %struct.rpc_cred*, %struct.rpc_cred** %5, align 8
  %71 = load %struct.nfs_openres*, %struct.nfs_openres** %6, align 8
  %72 = call i32 @nfs_inode_set_delegation(%struct.inode* %69, %struct.rpc_cred* %70, %struct.nfs_openres* %71)
  br label %73

73:                                               ; preds = %64, %25
  br label %76

74:                                               ; preds = %3
  %75 = call i32 (...) @rcu_read_unlock()
  br label %76

76:                                               ; preds = %74, %73
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.nfs_delegation* @rcu_dereference(i32) #1

declare dso_local %struct.TYPE_2__* @NFS_I(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @nfs4_stateid_copy(i32*, i32*) #1

declare dso_local %struct.rpc_cred* @get_rpccred(%struct.rpc_cred*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @put_rpccred(%struct.rpc_cred*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @nfs_inode_set_delegation(%struct.inode*, %struct.rpc_cred*, %struct.nfs_openres*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
