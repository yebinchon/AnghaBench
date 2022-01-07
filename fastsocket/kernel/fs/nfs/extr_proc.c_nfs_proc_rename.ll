; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_proc.c_nfs_proc_rename.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_proc.c_nfs_proc_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.qstr = type { i32 }
%struct.nfs_renameargs = type { %struct.qstr*, i32, %struct.qstr*, i32 }
%struct.rpc_message = type { %struct.nfs_renameargs*, i32* }

@nfs_procedures = common dso_local global i32* null, align 8
@NFSPROC_RENAME = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"NFS call  rename %s -> %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"NFS reply rename: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.qstr*, %struct.inode*, %struct.qstr*)* @nfs_proc_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_proc_rename(%struct.inode* %0, %struct.qstr* %1, %struct.inode* %2, %struct.qstr* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.qstr*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.qstr*, align 8
  %9 = alloca %struct.nfs_renameargs, align 8
  %10 = alloca %struct.rpc_message, align 8
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.qstr* %1, %struct.qstr** %6, align 8
  store %struct.inode* %2, %struct.inode** %7, align 8
  store %struct.qstr* %3, %struct.qstr** %8, align 8
  %12 = getelementptr inbounds %struct.nfs_renameargs, %struct.nfs_renameargs* %9, i32 0, i32 0
  %13 = load %struct.qstr*, %struct.qstr** %8, align 8
  store %struct.qstr* %13, %struct.qstr** %12, align 8
  %14 = getelementptr inbounds %struct.nfs_renameargs, %struct.nfs_renameargs* %9, i32 0, i32 1
  %15 = load %struct.inode*, %struct.inode** %7, align 8
  %16 = call i32 @NFS_FH(%struct.inode* %15)
  store i32 %16, i32* %14, align 8
  %17 = getelementptr inbounds %struct.nfs_renameargs, %struct.nfs_renameargs* %9, i32 0, i32 2
  %18 = load %struct.qstr*, %struct.qstr** %6, align 8
  store %struct.qstr* %18, %struct.qstr** %17, align 8
  %19 = getelementptr inbounds %struct.nfs_renameargs, %struct.nfs_renameargs* %9, i32 0, i32 3
  %20 = load %struct.inode*, %struct.inode** %5, align 8
  %21 = call i32 @NFS_FH(%struct.inode* %20)
  store i32 %21, i32* %19, align 8
  %22 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %10, i32 0, i32 0
  store %struct.nfs_renameargs* %9, %struct.nfs_renameargs** %22, align 8
  %23 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %10, i32 0, i32 1
  %24 = load i32*, i32** @nfs_procedures, align 8
  %25 = load i64, i64* @NFSPROC_RENAME, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  store i32* %26, i32** %23, align 8
  %27 = load %struct.qstr*, %struct.qstr** %6, align 8
  %28 = getelementptr inbounds %struct.qstr, %struct.qstr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.qstr*, %struct.qstr** %8, align 8
  %31 = getelementptr inbounds %struct.qstr, %struct.qstr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %32)
  %34 = load %struct.inode*, %struct.inode** %5, align 8
  %35 = call i32 @NFS_CLIENT(%struct.inode* %34)
  %36 = call i32 @rpc_call_sync(i32 %35, %struct.rpc_message* %10, i32 0)
  store i32 %36, i32* %11, align 4
  %37 = load %struct.inode*, %struct.inode** %5, align 8
  %38 = call i32 @nfs_mark_for_revalidate(%struct.inode* %37)
  %39 = load %struct.inode*, %struct.inode** %7, align 8
  %40 = call i32 @nfs_mark_for_revalidate(%struct.inode* %39)
  %41 = load i32, i32* %11, align 4
  %42 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %11, align 4
  ret i32 %43
}

declare dso_local i32 @NFS_FH(%struct.inode*) #1

declare dso_local i32 @dprintk(i8*, i32, ...) #1

declare dso_local i32 @rpc_call_sync(i32, %struct.rpc_message*, i32) #1

declare dso_local i32 @NFS_CLIENT(%struct.inode*) #1

declare dso_local i32 @nfs_mark_for_revalidate(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
