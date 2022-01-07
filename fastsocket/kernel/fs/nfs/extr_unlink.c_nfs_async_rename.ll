; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_unlink.c_nfs_async_rename.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_unlink.c_nfs_async_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32 }
%struct.inode = type { i32, i32 }
%struct.dentry = type { i32 }
%struct.nfs_renamedata = type { %struct.inode*, i32, %struct.TYPE_5__, i32, %struct.TYPE_4__, i8*, i8*, %struct.inode*, i32 }
%struct.TYPE_5__ = type { i32*, i32* }
%struct.TYPE_4__ = type { i32*, i8*, i32*, i8* }
%struct.rpc_message = type { i32, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.rpc_task_setup = type { %struct.nfs_renamedata*, i32, i32, i32, i32*, %struct.rpc_message* }
%struct.TYPE_6__ = type { i32 (%struct.rpc_message*, %struct.inode*)* }

@RPC_TASK_ASYNC = common dso_local global i32 0, align 4
@nfsiod_workqueue = common dso_local global i32 0, align 4
@nfs_rename_ops = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rpc_task* (%struct.inode*, %struct.inode*, %struct.dentry*, %struct.dentry*)* @nfs_async_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rpc_task* @nfs_async_rename(%struct.inode* %0, %struct.inode* %1, %struct.dentry* %2, %struct.dentry* %3) #0 {
  %5 = alloca %struct.rpc_task*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.nfs_renamedata*, align 8
  %11 = alloca %struct.rpc_message, align 8
  %12 = alloca %struct.rpc_task_setup, align 8
  %13 = alloca %struct.rpc_task*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  store %struct.dentry* %2, %struct.dentry** %8, align 8
  store %struct.dentry* %3, %struct.dentry** %9, align 8
  %14 = bitcast %struct.rpc_message* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 24, i1 false)
  %15 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %12, i32 0, i32 0
  store %struct.nfs_renamedata* null, %struct.nfs_renamedata** %15, align 8
  %16 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %12, i32 0, i32 1
  %17 = load i32, i32* @RPC_TASK_ASYNC, align 4
  store i32 %17, i32* %16, align 8
  %18 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %12, i32 0, i32 2
  %19 = load %struct.inode*, %struct.inode** %6, align 8
  %20 = call i32 @NFS_CLIENT(%struct.inode* %19)
  store i32 %20, i32* %18, align 4
  %21 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %12, i32 0, i32 3
  %22 = load i32, i32* @nfsiod_workqueue, align 4
  store i32 %22, i32* %21, align 8
  %23 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %12, i32 0, i32 4
  store i32* @nfs_rename_ops, i32** %23, align 8
  %24 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %12, i32 0, i32 5
  store %struct.rpc_message* %11, %struct.rpc_message** %24, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.nfs_renamedata* @kzalloc(i32 104, i32 %25)
  store %struct.nfs_renamedata* %26, %struct.nfs_renamedata** %10, align 8
  %27 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %10, align 8
  %28 = icmp eq %struct.nfs_renamedata* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %4
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  %32 = call %struct.rpc_task* @ERR_PTR(i32 %31)
  store %struct.rpc_task* %32, %struct.rpc_task** %5, align 8
  br label %132

33:                                               ; preds = %4
  %34 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %10, align 8
  %35 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %12, i32 0, i32 0
  store %struct.nfs_renamedata* %34, %struct.nfs_renamedata** %35, align 8
  %36 = call i32 (...) @rpc_lookup_cred()
  %37 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %10, align 8
  %38 = getelementptr inbounds %struct.nfs_renamedata, %struct.nfs_renamedata* %37, i32 0, i32 8
  store i32 %36, i32* %38, align 8
  %39 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %10, align 8
  %40 = getelementptr inbounds %struct.nfs_renamedata, %struct.nfs_renamedata* %39, i32 0, i32 8
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @IS_ERR(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %33
  %45 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %10, align 8
  %46 = getelementptr inbounds %struct.nfs_renamedata, %struct.nfs_renamedata* %45, i32 0, i32 8
  %47 = load i32, i32* %46, align 8
  %48 = call %struct.rpc_task* @ERR_CAST(i32 %47)
  store %struct.rpc_task* %48, %struct.rpc_task** %13, align 8
  %49 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %10, align 8
  %50 = call i32 @kfree(%struct.nfs_renamedata* %49)
  %51 = load %struct.rpc_task*, %struct.rpc_task** %13, align 8
  store %struct.rpc_task* %51, %struct.rpc_task** %5, align 8
  br label %132

52:                                               ; preds = %33
  %53 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %10, align 8
  %54 = getelementptr inbounds %struct.nfs_renamedata, %struct.nfs_renamedata* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %11, i32 0, i32 2
  store %struct.TYPE_4__* %54, %struct.TYPE_4__** %55, align 8
  %56 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %10, align 8
  %57 = getelementptr inbounds %struct.nfs_renamedata, %struct.nfs_renamedata* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %11, i32 0, i32 1
  store %struct.TYPE_5__* %57, %struct.TYPE_5__** %58, align 8
  %59 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %10, align 8
  %60 = getelementptr inbounds %struct.nfs_renamedata, %struct.nfs_renamedata* %59, i32 0, i32 8
  %61 = load i32, i32* %60, align 8
  %62 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %11, i32 0, i32 0
  store i32 %61, i32* %62, align 8
  %63 = load %struct.inode*, %struct.inode** %6, align 8
  %64 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %10, align 8
  %65 = getelementptr inbounds %struct.nfs_renamedata, %struct.nfs_renamedata* %64, i32 0, i32 0
  store %struct.inode* %63, %struct.inode** %65, align 8
  %66 = load %struct.inode*, %struct.inode** %6, align 8
  %67 = getelementptr inbounds %struct.inode, %struct.inode* %66, i32 0, i32 1
  %68 = call i32 @atomic_inc(i32* %67)
  %69 = load %struct.inode*, %struct.inode** %7, align 8
  %70 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %10, align 8
  %71 = getelementptr inbounds %struct.nfs_renamedata, %struct.nfs_renamedata* %70, i32 0, i32 7
  store %struct.inode* %69, %struct.inode** %71, align 8
  %72 = load %struct.inode*, %struct.inode** %7, align 8
  %73 = getelementptr inbounds %struct.inode, %struct.inode* %72, i32 0, i32 1
  %74 = call i32 @atomic_inc(i32* %73)
  %75 = load %struct.dentry*, %struct.dentry** %8, align 8
  %76 = call i8* @dget(%struct.dentry* %75)
  %77 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %10, align 8
  %78 = getelementptr inbounds %struct.nfs_renamedata, %struct.nfs_renamedata* %77, i32 0, i32 6
  store i8* %76, i8** %78, align 8
  %79 = load %struct.dentry*, %struct.dentry** %9, align 8
  %80 = call i8* @dget(%struct.dentry* %79)
  %81 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %10, align 8
  %82 = getelementptr inbounds %struct.nfs_renamedata, %struct.nfs_renamedata* %81, i32 0, i32 5
  store i8* %80, i8** %82, align 8
  %83 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %10, align 8
  %84 = getelementptr inbounds %struct.nfs_renamedata, %struct.nfs_renamedata* %83, i32 0, i32 3
  %85 = call i32 @nfs_fattr_init(i32* %84)
  %86 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %10, align 8
  %87 = getelementptr inbounds %struct.nfs_renamedata, %struct.nfs_renamedata* %86, i32 0, i32 1
  %88 = call i32 @nfs_fattr_init(i32* %87)
  %89 = load %struct.inode*, %struct.inode** %6, align 8
  %90 = call i8* @NFS_FH(%struct.inode* %89)
  %91 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %10, align 8
  %92 = getelementptr inbounds %struct.nfs_renamedata, %struct.nfs_renamedata* %91, i32 0, i32 4
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 3
  store i8* %90, i8** %93, align 8
  %94 = load %struct.dentry*, %struct.dentry** %8, align 8
  %95 = getelementptr inbounds %struct.dentry, %struct.dentry* %94, i32 0, i32 0
  %96 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %10, align 8
  %97 = getelementptr inbounds %struct.nfs_renamedata, %struct.nfs_renamedata* %96, i32 0, i32 4
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 2
  store i32* %95, i32** %98, align 8
  %99 = load %struct.inode*, %struct.inode** %7, align 8
  %100 = call i8* @NFS_FH(%struct.inode* %99)
  %101 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %10, align 8
  %102 = getelementptr inbounds %struct.nfs_renamedata, %struct.nfs_renamedata* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  store i8* %100, i8** %103, align 8
  %104 = load %struct.dentry*, %struct.dentry** %9, align 8
  %105 = getelementptr inbounds %struct.dentry, %struct.dentry* %104, i32 0, i32 0
  %106 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %10, align 8
  %107 = getelementptr inbounds %struct.nfs_renamedata, %struct.nfs_renamedata* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  store i32* %105, i32** %108, align 8
  %109 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %10, align 8
  %110 = getelementptr inbounds %struct.nfs_renamedata, %struct.nfs_renamedata* %109, i32 0, i32 3
  %111 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %10, align 8
  %112 = getelementptr inbounds %struct.nfs_renamedata, %struct.nfs_renamedata* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 1
  store i32* %110, i32** %113, align 8
  %114 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %10, align 8
  %115 = getelementptr inbounds %struct.nfs_renamedata, %struct.nfs_renamedata* %114, i32 0, i32 1
  %116 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %10, align 8
  %117 = getelementptr inbounds %struct.nfs_renamedata, %struct.nfs_renamedata* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  store i32* %115, i32** %118, align 8
  %119 = load %struct.inode*, %struct.inode** %6, align 8
  %120 = getelementptr inbounds %struct.inode, %struct.inode* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @nfs_sb_active(i32 %121)
  %123 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %10, align 8
  %124 = getelementptr inbounds %struct.nfs_renamedata, %struct.nfs_renamedata* %123, i32 0, i32 0
  %125 = load %struct.inode*, %struct.inode** %124, align 8
  %126 = call %struct.TYPE_6__* @NFS_PROTO(%struct.inode* %125)
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load i32 (%struct.rpc_message*, %struct.inode*)*, i32 (%struct.rpc_message*, %struct.inode*)** %127, align 8
  %129 = load %struct.inode*, %struct.inode** %6, align 8
  %130 = call i32 %128(%struct.rpc_message* %11, %struct.inode* %129)
  %131 = call %struct.rpc_task* @rpc_run_task(%struct.rpc_task_setup* %12)
  store %struct.rpc_task* %131, %struct.rpc_task** %5, align 8
  br label %132

132:                                              ; preds = %52, %44, %29
  %133 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  ret %struct.rpc_task* %133
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @NFS_CLIENT(%struct.inode*) #2

declare dso_local %struct.nfs_renamedata* @kzalloc(i32, i32) #2

declare dso_local %struct.rpc_task* @ERR_PTR(i32) #2

declare dso_local i32 @rpc_lookup_cred(...) #2

declare dso_local i64 @IS_ERR(i32) #2

declare dso_local %struct.rpc_task* @ERR_CAST(i32) #2

declare dso_local i32 @kfree(%struct.nfs_renamedata*) #2

declare dso_local i32 @atomic_inc(i32*) #2

declare dso_local i8* @dget(%struct.dentry*) #2

declare dso_local i32 @nfs_fattr_init(i32*) #2

declare dso_local i8* @NFS_FH(%struct.inode*) #2

declare dso_local i32 @nfs_sb_active(i32) #2

declare dso_local %struct.TYPE_6__* @NFS_PROTO(%struct.inode*) #2

declare dso_local %struct.rpc_task* @rpc_run_task(%struct.rpc_task_setup*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
