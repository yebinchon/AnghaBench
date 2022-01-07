; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs3proc.c_nfs3_proc_readlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs3proc.c_nfs3_proc_readlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.page = type { i32 }
%struct.nfs_fattr = type { i32 }
%struct.nfs3_readlinkargs = type { i32, i32, %struct.page**, i32 }
%struct.rpc_message = type { %struct.nfs_fattr*, %struct.nfs3_readlinkargs*, i32* }

@nfs3_procedures = common dso_local global i32* null, align 8
@NFS3PROC_READLINK = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"NFS call  readlink\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"NFS reply readlink: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.page*, i32, i32)* @nfs3_proc_readlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs3_proc_readlink(%struct.inode* %0, %struct.page* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nfs_fattr*, align 8
  %10 = alloca %struct.nfs3_readlinkargs, align 8
  %11 = alloca %struct.rpc_message, align 8
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.page* %1, %struct.page** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = getelementptr inbounds %struct.nfs3_readlinkargs, %struct.nfs3_readlinkargs* %10, i32 0, i32 0
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %13, align 8
  %15 = getelementptr inbounds %struct.nfs3_readlinkargs, %struct.nfs3_readlinkargs* %10, i32 0, i32 1
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds %struct.nfs3_readlinkargs, %struct.nfs3_readlinkargs* %10, i32 0, i32 2
  store %struct.page** %6, %struct.page*** %17, align 8
  %18 = getelementptr inbounds %struct.nfs3_readlinkargs, %struct.nfs3_readlinkargs* %10, i32 0, i32 3
  %19 = load %struct.inode*, %struct.inode** %5, align 8
  %20 = call i32 @NFS_FH(%struct.inode* %19)
  store i32 %20, i32* %18, align 8
  %21 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %11, i32 0, i32 0
  store %struct.nfs_fattr* null, %struct.nfs_fattr** %21, align 8
  %22 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %11, i32 0, i32 1
  store %struct.nfs3_readlinkargs* %10, %struct.nfs3_readlinkargs** %22, align 8
  %23 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %11, i32 0, i32 2
  %24 = load i32*, i32** @nfs3_procedures, align 8
  %25 = load i64, i64* @NFS3PROC_READLINK, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  store i32* %26, i32** %23, align 8
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %12, align 4
  %29 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %30 = call %struct.nfs_fattr* (...) @nfs_alloc_fattr()
  store %struct.nfs_fattr* %30, %struct.nfs_fattr** %9, align 8
  %31 = load %struct.nfs_fattr*, %struct.nfs_fattr** %9, align 8
  %32 = icmp eq %struct.nfs_fattr* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %4
  br label %45

34:                                               ; preds = %4
  %35 = load %struct.nfs_fattr*, %struct.nfs_fattr** %9, align 8
  %36 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %11, i32 0, i32 0
  store %struct.nfs_fattr* %35, %struct.nfs_fattr** %36, align 8
  %37 = load %struct.inode*, %struct.inode** %5, align 8
  %38 = call i32 @NFS_CLIENT(%struct.inode* %37)
  %39 = call i32 @rpc_call_sync(i32 %38, %struct.rpc_message* %11, i32 0)
  store i32 %39, i32* %12, align 4
  %40 = load %struct.inode*, %struct.inode** %5, align 8
  %41 = load %struct.nfs_fattr*, %struct.nfs_fattr** %9, align 8
  %42 = call i32 @nfs_refresh_inode(%struct.inode* %40, %struct.nfs_fattr* %41)
  %43 = load %struct.nfs_fattr*, %struct.nfs_fattr** %9, align 8
  %44 = call i32 @nfs_free_fattr(%struct.nfs_fattr* %43)
  br label %45

45:                                               ; preds = %34, %33
  %46 = load i32, i32* %12, align 4
  %47 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %12, align 4
  ret i32 %48
}

declare dso_local i32 @NFS_FH(%struct.inode*) #1

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local %struct.nfs_fattr* @nfs_alloc_fattr(...) #1

declare dso_local i32 @rpc_call_sync(i32, %struct.rpc_message*, i32) #1

declare dso_local i32 @NFS_CLIENT(%struct.inode*) #1

declare dso_local i32 @nfs_refresh_inode(%struct.inode*, %struct.nfs_fattr*) #1

declare dso_local i32 @nfs_free_fattr(%struct.nfs_fattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
