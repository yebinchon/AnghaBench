; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_unlink.c_nfs_do_call_unlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_unlink.c_nfs_do_call_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, i32, %struct.nfs_unlinkdata*, i32* }
%struct.inode = type { i32 }
%struct.nfs_unlinkdata = type { %struct.TYPE_5__, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.rpc_message = type { i32, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.rpc_task_setup = type { i32, i32, i32, %struct.nfs_unlinkdata*, i32*, %struct.rpc_message* }
%struct.rpc_task = type { i32 }
%struct.TYPE_6__ = type { i32 (%struct.rpc_message*, %struct.inode*)* }

@RPC_TASK_ASYNC = common dso_local global i32 0, align 4
@nfsiod_workqueue = common dso_local global i32 0, align 4
@nfs_unlink_ops = common dso_local global i32 0, align 4
@DCACHE_NFSFS_RENAMED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.inode*, %struct.nfs_unlinkdata*)* @nfs_do_call_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_do_call_unlink(%struct.dentry* %0, %struct.inode* %1, %struct.nfs_unlinkdata* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.nfs_unlinkdata*, align 8
  %8 = alloca %struct.rpc_message, align 8
  %9 = alloca %struct.rpc_task_setup, align 8
  %10 = alloca %struct.rpc_task*, align 8
  %11 = alloca %struct.dentry*, align 8
  %12 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.nfs_unlinkdata* %2, %struct.nfs_unlinkdata** %7, align 8
  %13 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %8, i32 0, i32 0
  %14 = load %struct.nfs_unlinkdata*, %struct.nfs_unlinkdata** %7, align 8
  %15 = getelementptr inbounds %struct.nfs_unlinkdata, %struct.nfs_unlinkdata* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %13, align 8
  %17 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %8, i32 0, i32 1
  %18 = load %struct.nfs_unlinkdata*, %struct.nfs_unlinkdata** %7, align 8
  %19 = getelementptr inbounds %struct.nfs_unlinkdata, %struct.nfs_unlinkdata* %18, i32 0, i32 0
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %17, align 8
  %20 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %8, i32 0, i32 2
  %21 = load %struct.nfs_unlinkdata*, %struct.nfs_unlinkdata** %7, align 8
  %22 = getelementptr inbounds %struct.nfs_unlinkdata, %struct.nfs_unlinkdata* %21, i32 0, i32 1
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %20, align 8
  %23 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %9, i32 0, i32 0
  store i32 0, i32* %23, align 8
  %24 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %9, i32 0, i32 1
  %25 = load i32, i32* @RPC_TASK_ASYNC, align 4
  store i32 %25, i32* %24, align 4
  %26 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %9, i32 0, i32 2
  %27 = load i32, i32* @nfsiod_workqueue, align 4
  store i32 %27, i32* %26, align 8
  %28 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %9, i32 0, i32 3
  %29 = load %struct.nfs_unlinkdata*, %struct.nfs_unlinkdata** %7, align 8
  store %struct.nfs_unlinkdata* %29, %struct.nfs_unlinkdata** %28, align 8
  %30 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %9, i32 0, i32 4
  store i32* @nfs_unlink_ops, i32** %30, align 8
  %31 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %9, i32 0, i32 5
  store %struct.rpc_message* %8, %struct.rpc_message** %31, align 8
  %32 = load %struct.dentry*, %struct.dentry** %5, align 8
  %33 = load %struct.nfs_unlinkdata*, %struct.nfs_unlinkdata** %7, align 8
  %34 = getelementptr inbounds %struct.nfs_unlinkdata, %struct.nfs_unlinkdata* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = call %struct.dentry* @d_lookup(%struct.dentry* %32, i32* %35)
  store %struct.dentry* %36, %struct.dentry** %11, align 8
  %37 = load %struct.dentry*, %struct.dentry** %11, align 8
  %38 = icmp ne %struct.dentry* %37, null
  br i1 %38, label %39, label %81

39:                                               ; preds = %3
  %40 = load %struct.nfs_unlinkdata*, %struct.nfs_unlinkdata** %7, align 8
  %41 = call i32 @nfs_free_dname(%struct.nfs_unlinkdata* %40)
  %42 = load %struct.dentry*, %struct.dentry** %11, align 8
  %43 = load %struct.nfs_unlinkdata*, %struct.nfs_unlinkdata** %7, align 8
  %44 = call i32 @nfs_copy_dname(%struct.dentry* %42, %struct.nfs_unlinkdata* %43)
  store i32 %44, i32* %12, align 4
  %45 = load %struct.dentry*, %struct.dentry** %11, align 8
  %46 = getelementptr inbounds %struct.dentry, %struct.dentry* %45, i32 0, i32 1
  %47 = call i32 @spin_lock(i32* %46)
  %48 = load i32, i32* %12, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %71

50:                                               ; preds = %39
  %51 = load %struct.dentry*, %struct.dentry** %11, align 8
  %52 = getelementptr inbounds %struct.dentry, %struct.dentry* %51, i32 0, i32 3
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %71

55:                                               ; preds = %50
  %56 = load %struct.dentry*, %struct.dentry** %11, align 8
  %57 = getelementptr inbounds %struct.dentry, %struct.dentry* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @DCACHE_NFSFS_RENAMED, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %71, label %62

62:                                               ; preds = %55
  %63 = load %struct.nfs_unlinkdata*, %struct.nfs_unlinkdata** %7, align 8
  %64 = load %struct.dentry*, %struct.dentry** %11, align 8
  %65 = getelementptr inbounds %struct.dentry, %struct.dentry* %64, i32 0, i32 2
  store %struct.nfs_unlinkdata* %63, %struct.nfs_unlinkdata** %65, align 8
  %66 = load i32, i32* @DCACHE_NFSFS_RENAMED, align 4
  %67 = load %struct.dentry*, %struct.dentry** %11, align 8
  %68 = getelementptr inbounds %struct.dentry, %struct.dentry* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 8
  store i32 1, i32* %12, align 4
  br label %72

71:                                               ; preds = %55, %50, %39
  store i32 0, i32* %12, align 4
  br label %72

72:                                               ; preds = %71, %62
  %73 = load %struct.dentry*, %struct.dentry** %11, align 8
  %74 = getelementptr inbounds %struct.dentry, %struct.dentry* %73, i32 0, i32 1
  %75 = call i32 @spin_unlock(i32* %74)
  %76 = load %struct.inode*, %struct.inode** %6, align 8
  %77 = call i32 @nfs_dec_sillycount(%struct.inode* %76)
  %78 = load %struct.dentry*, %struct.dentry** %11, align 8
  %79 = call i32 @dput(%struct.dentry* %78)
  %80 = load i32, i32* %12, align 4
  store i32 %80, i32* %4, align 4
  br label %125

81:                                               ; preds = %3
  %82 = load %struct.inode*, %struct.inode** %6, align 8
  %83 = call i32 @igrab(%struct.inode* %82)
  %84 = load %struct.nfs_unlinkdata*, %struct.nfs_unlinkdata** %7, align 8
  %85 = getelementptr inbounds %struct.nfs_unlinkdata, %struct.nfs_unlinkdata* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 4
  %86 = load %struct.nfs_unlinkdata*, %struct.nfs_unlinkdata** %7, align 8
  %87 = getelementptr inbounds %struct.nfs_unlinkdata, %struct.nfs_unlinkdata* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %81
  %91 = load %struct.inode*, %struct.inode** %6, align 8
  %92 = call i32 @nfs_dec_sillycount(%struct.inode* %91)
  store i32 0, i32* %4, align 4
  br label %125

93:                                               ; preds = %81
  %94 = load %struct.inode*, %struct.inode** %6, align 8
  %95 = getelementptr inbounds %struct.inode, %struct.inode* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @nfs_sb_active(i32 %96)
  %98 = load %struct.inode*, %struct.inode** %6, align 8
  %99 = call i32 @NFS_FH(%struct.inode* %98)
  %100 = load %struct.nfs_unlinkdata*, %struct.nfs_unlinkdata** %7, align 8
  %101 = getelementptr inbounds %struct.nfs_unlinkdata, %struct.nfs_unlinkdata* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  store i32 %99, i32* %102, align 4
  %103 = load %struct.nfs_unlinkdata*, %struct.nfs_unlinkdata** %7, align 8
  %104 = getelementptr inbounds %struct.nfs_unlinkdata, %struct.nfs_unlinkdata* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @nfs_fattr_init(i32 %106)
  %108 = load %struct.inode*, %struct.inode** %6, align 8
  %109 = call %struct.TYPE_6__* @NFS_PROTO(%struct.inode* %108)
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i32 (%struct.rpc_message*, %struct.inode*)*, i32 (%struct.rpc_message*, %struct.inode*)** %110, align 8
  %112 = load %struct.inode*, %struct.inode** %6, align 8
  %113 = call i32 %111(%struct.rpc_message* %8, %struct.inode* %112)
  %114 = load %struct.inode*, %struct.inode** %6, align 8
  %115 = call i32 @NFS_CLIENT(%struct.inode* %114)
  %116 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %9, i32 0, i32 0
  store i32 %115, i32* %116, align 8
  %117 = call %struct.rpc_task* @rpc_run_task(%struct.rpc_task_setup* %9)
  store %struct.rpc_task* %117, %struct.rpc_task** %10, align 8
  %118 = load %struct.rpc_task*, %struct.rpc_task** %10, align 8
  %119 = call i32 @IS_ERR(%struct.rpc_task* %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %93
  %122 = load %struct.rpc_task*, %struct.rpc_task** %10, align 8
  %123 = call i32 @rpc_put_task_async(%struct.rpc_task* %122)
  br label %124

124:                                              ; preds = %121, %93
  store i32 1, i32* %4, align 4
  br label %125

125:                                              ; preds = %124, %90, %72
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local %struct.dentry* @d_lookup(%struct.dentry*, i32*) #1

declare dso_local i32 @nfs_free_dname(%struct.nfs_unlinkdata*) #1

declare dso_local i32 @nfs_copy_dname(%struct.dentry*, %struct.nfs_unlinkdata*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @nfs_dec_sillycount(%struct.inode*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @igrab(%struct.inode*) #1

declare dso_local i32 @nfs_sb_active(i32) #1

declare dso_local i32 @NFS_FH(%struct.inode*) #1

declare dso_local i32 @nfs_fattr_init(i32) #1

declare dso_local %struct.TYPE_6__* @NFS_PROTO(%struct.inode*) #1

declare dso_local i32 @NFS_CLIENT(%struct.inode*) #1

declare dso_local %struct.rpc_task* @rpc_run_task(%struct.rpc_task_setup*) #1

declare dso_local i32 @IS_ERR(%struct.rpc_task*) #1

declare dso_local i32 @rpc_put_task_async(%struct.rpc_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
