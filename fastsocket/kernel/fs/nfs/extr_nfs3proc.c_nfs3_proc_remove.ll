; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs3proc.c_nfs3_proc_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs3proc.c_nfs3_proc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.qstr = type { i32, i32 }
%struct.nfs_removeargs = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.nfs_removeres = type { i32* }
%struct.rpc_message = type { %struct.nfs_removeres*, %struct.nfs_removeargs*, i32* }

@nfs3_procedures = common dso_local global i32* null, align 8
@NFS3PROC_REMOVE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"NFS call  remove %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"NFS reply remove: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.qstr*)* @nfs3_proc_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs3_proc_remove(%struct.inode* %0, %struct.qstr* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.qstr*, align 8
  %5 = alloca %struct.nfs_removeargs, align 4
  %6 = alloca %struct.nfs_removeres, align 8
  %7 = alloca %struct.rpc_message, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.qstr* %1, %struct.qstr** %4, align 8
  %9 = getelementptr inbounds %struct.nfs_removeargs, %struct.nfs_removeargs* %5, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.qstr*, %struct.qstr** %4, align 8
  %12 = getelementptr inbounds %struct.qstr, %struct.qstr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %10, align 4
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %15 = load %struct.qstr*, %struct.qstr** %4, align 8
  %16 = getelementptr inbounds %struct.qstr, %struct.qstr* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %14, align 4
  %18 = getelementptr inbounds %struct.nfs_removeargs, %struct.nfs_removeargs* %5, i32 0, i32 1
  %19 = load %struct.inode*, %struct.inode** %3, align 8
  %20 = call i32 @NFS_FH(%struct.inode* %19)
  store i32 %20, i32* %18, align 4
  %21 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %7, i32 0, i32 0
  store %struct.nfs_removeres* %6, %struct.nfs_removeres** %21, align 8
  %22 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %7, i32 0, i32 1
  store %struct.nfs_removeargs* %5, %struct.nfs_removeargs** %22, align 8
  %23 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %7, i32 0, i32 2
  %24 = load i32*, i32** @nfs3_procedures, align 8
  %25 = load i64, i64* @NFS3PROC_REMOVE, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  store i32* %26, i32** %23, align 8
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %8, align 4
  %29 = load %struct.qstr*, %struct.qstr** %4, align 8
  %30 = getelementptr inbounds %struct.qstr, %struct.qstr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dprintk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = call i32* (...) @nfs_alloc_fattr()
  %34 = getelementptr inbounds %struct.nfs_removeres, %struct.nfs_removeres* %6, i32 0, i32 0
  store i32* %33, i32** %34, align 8
  %35 = getelementptr inbounds %struct.nfs_removeres, %struct.nfs_removeres* %6, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %2
  br label %50

39:                                               ; preds = %2
  %40 = load %struct.inode*, %struct.inode** %3, align 8
  %41 = call i32 @NFS_CLIENT(%struct.inode* %40)
  %42 = call i32 @rpc_call_sync(i32 %41, %struct.rpc_message* %7, i32 0)
  store i32 %42, i32* %8, align 4
  %43 = load %struct.inode*, %struct.inode** %3, align 8
  %44 = getelementptr inbounds %struct.nfs_removeres, %struct.nfs_removeres* %6, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @nfs_post_op_update_inode(%struct.inode* %43, i32* %45)
  %47 = getelementptr inbounds %struct.nfs_removeres, %struct.nfs_removeres* %6, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @nfs_free_fattr(i32* %48)
  br label %50

50:                                               ; preds = %39, %38
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @dprintk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %8, align 4
  ret i32 %53
}

declare dso_local i32 @NFS_FH(%struct.inode*) #1

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32* @nfs_alloc_fattr(...) #1

declare dso_local i32 @rpc_call_sync(i32, %struct.rpc_message*, i32) #1

declare dso_local i32 @NFS_CLIENT(%struct.inode*) #1

declare dso_local i32 @nfs_post_op_update_inode(%struct.inode*, i32*) #1

declare dso_local i32 @nfs_free_fattr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
