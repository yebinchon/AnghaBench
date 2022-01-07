; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs3proc.c_nfs3_proc_rename.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs3proc.c_nfs3_proc_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.qstr = type { i32 }
%struct.nfs_renameargs = type { %struct.qstr*, i32, %struct.qstr*, i32 }
%struct.nfs_renameres = type { i32*, i32* }
%struct.rpc_message = type { %struct.nfs_renameres*, %struct.nfs_renameargs*, i32* }

@nfs3_procedures = common dso_local global i32* null, align 8
@NFS3PROC_RENAME = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"NFS call  rename %s -> %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"NFS reply rename: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.qstr*, %struct.inode*, %struct.qstr*)* @nfs3_proc_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs3_proc_rename(%struct.inode* %0, %struct.qstr* %1, %struct.inode* %2, %struct.qstr* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.qstr*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.qstr*, align 8
  %9 = alloca %struct.nfs_renameargs, align 8
  %10 = alloca %struct.nfs_renameres, align 8
  %11 = alloca %struct.rpc_message, align 8
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.qstr* %1, %struct.qstr** %6, align 8
  store %struct.inode* %2, %struct.inode** %7, align 8
  store %struct.qstr* %3, %struct.qstr** %8, align 8
  %13 = getelementptr inbounds %struct.nfs_renameargs, %struct.nfs_renameargs* %9, i32 0, i32 0
  %14 = load %struct.qstr*, %struct.qstr** %8, align 8
  store %struct.qstr* %14, %struct.qstr** %13, align 8
  %15 = getelementptr inbounds %struct.nfs_renameargs, %struct.nfs_renameargs* %9, i32 0, i32 1
  %16 = load %struct.inode*, %struct.inode** %7, align 8
  %17 = call i32 @NFS_FH(%struct.inode* %16)
  store i32 %17, i32* %15, align 8
  %18 = getelementptr inbounds %struct.nfs_renameargs, %struct.nfs_renameargs* %9, i32 0, i32 2
  %19 = load %struct.qstr*, %struct.qstr** %6, align 8
  store %struct.qstr* %19, %struct.qstr** %18, align 8
  %20 = getelementptr inbounds %struct.nfs_renameargs, %struct.nfs_renameargs* %9, i32 0, i32 3
  %21 = load %struct.inode*, %struct.inode** %5, align 8
  %22 = call i32 @NFS_FH(%struct.inode* %21)
  store i32 %22, i32* %20, align 8
  %23 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %11, i32 0, i32 0
  store %struct.nfs_renameres* %10, %struct.nfs_renameres** %23, align 8
  %24 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %11, i32 0, i32 1
  store %struct.nfs_renameargs* %9, %struct.nfs_renameargs** %24, align 8
  %25 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %11, i32 0, i32 2
  %26 = load i32*, i32** @nfs3_procedures, align 8
  %27 = load i64, i64* @NFS3PROC_RENAME, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  store i32* %28, i32** %25, align 8
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %12, align 4
  %31 = load %struct.qstr*, %struct.qstr** %6, align 8
  %32 = getelementptr inbounds %struct.qstr, %struct.qstr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.qstr*, %struct.qstr** %8, align 8
  %35 = getelementptr inbounds %struct.qstr, %struct.qstr* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %36)
  %38 = call i8* (...) @nfs_alloc_fattr()
  %39 = bitcast i8* %38 to i32*
  %40 = getelementptr inbounds %struct.nfs_renameres, %struct.nfs_renameres* %10, i32 0, i32 1
  store i32* %39, i32** %40, align 8
  %41 = call i8* (...) @nfs_alloc_fattr()
  %42 = bitcast i8* %41 to i32*
  %43 = getelementptr inbounds %struct.nfs_renameres, %struct.nfs_renameres* %10, i32 0, i32 0
  store i32* %42, i32** %43, align 8
  %44 = getelementptr inbounds %struct.nfs_renameres, %struct.nfs_renameres* %10, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %4
  %48 = getelementptr inbounds %struct.nfs_renameres, %struct.nfs_renameres* %10, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %47, %4
  br label %64

52:                                               ; preds = %47
  %53 = load %struct.inode*, %struct.inode** %5, align 8
  %54 = call i32 @NFS_CLIENT(%struct.inode* %53)
  %55 = call i32 @rpc_call_sync(i32 %54, %struct.rpc_message* %11, i32 0)
  store i32 %55, i32* %12, align 4
  %56 = load %struct.inode*, %struct.inode** %5, align 8
  %57 = getelementptr inbounds %struct.nfs_renameres, %struct.nfs_renameres* %10, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @nfs_post_op_update_inode(%struct.inode* %56, i32* %58)
  %60 = load %struct.inode*, %struct.inode** %7, align 8
  %61 = getelementptr inbounds %struct.nfs_renameres, %struct.nfs_renameres* %10, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @nfs_post_op_update_inode(%struct.inode* %60, i32* %62)
  br label %64

64:                                               ; preds = %52, %51
  %65 = getelementptr inbounds %struct.nfs_renameres, %struct.nfs_renameres* %10, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @nfs_free_fattr(i32* %66)
  %68 = getelementptr inbounds %struct.nfs_renameres, %struct.nfs_renameres* %10, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @nfs_free_fattr(i32* %69)
  %71 = load i32, i32* %12, align 4
  %72 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* %12, align 4
  ret i32 %73
}

declare dso_local i32 @NFS_FH(%struct.inode*) #1

declare dso_local i32 @dprintk(i8*, i32, ...) #1

declare dso_local i8* @nfs_alloc_fattr(...) #1

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
