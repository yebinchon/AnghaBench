; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_proc.c_nfs_proc_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_proc.c_nfs_proc_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_clnt = type { i32 }
%struct.inode = type { i32 }
%struct.qstr = type { i32, i32 }
%struct.nfs_fh = type { i32 }
%struct.nfs_fattr = type { i32 }
%struct.nfs_diropargs = type { i32, i32, i32 }
%struct.nfs_diropok = type { %struct.nfs_fattr*, %struct.nfs_fh* }
%struct.rpc_message = type { %struct.nfs_diropok*, %struct.nfs_diropargs*, i32* }

@nfs_procedures = common dso_local global i32* null, align 8
@NFSPROC_LOOKUP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"NFS call  lookup %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"NFS reply lookup: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_clnt*, %struct.inode*, %struct.qstr*, %struct.nfs_fh*, %struct.nfs_fattr*)* @nfs_proc_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_proc_lookup(%struct.rpc_clnt* %0, %struct.inode* %1, %struct.qstr* %2, %struct.nfs_fh* %3, %struct.nfs_fattr* %4) #0 {
  %6 = alloca %struct.rpc_clnt*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.qstr*, align 8
  %9 = alloca %struct.nfs_fh*, align 8
  %10 = alloca %struct.nfs_fattr*, align 8
  %11 = alloca %struct.nfs_diropargs, align 4
  %12 = alloca %struct.nfs_diropok, align 8
  %13 = alloca %struct.rpc_message, align 8
  %14 = alloca i32, align 4
  store %struct.rpc_clnt* %0, %struct.rpc_clnt** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  store %struct.qstr* %2, %struct.qstr** %8, align 8
  store %struct.nfs_fh* %3, %struct.nfs_fh** %9, align 8
  store %struct.nfs_fattr* %4, %struct.nfs_fattr** %10, align 8
  %15 = getelementptr inbounds %struct.nfs_diropargs, %struct.nfs_diropargs* %11, i32 0, i32 0
  %16 = load %struct.qstr*, %struct.qstr** %8, align 8
  %17 = getelementptr inbounds %struct.qstr, %struct.qstr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %15, align 4
  %19 = getelementptr inbounds %struct.nfs_diropargs, %struct.nfs_diropargs* %11, i32 0, i32 1
  %20 = load %struct.qstr*, %struct.qstr** %8, align 8
  %21 = getelementptr inbounds %struct.qstr, %struct.qstr* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %19, align 4
  %23 = getelementptr inbounds %struct.nfs_diropargs, %struct.nfs_diropargs* %11, i32 0, i32 2
  %24 = load %struct.inode*, %struct.inode** %7, align 8
  %25 = call i32 @NFS_FH(%struct.inode* %24)
  store i32 %25, i32* %23, align 4
  %26 = getelementptr inbounds %struct.nfs_diropok, %struct.nfs_diropok* %12, i32 0, i32 0
  %27 = load %struct.nfs_fattr*, %struct.nfs_fattr** %10, align 8
  store %struct.nfs_fattr* %27, %struct.nfs_fattr** %26, align 8
  %28 = getelementptr inbounds %struct.nfs_diropok, %struct.nfs_diropok* %12, i32 0, i32 1
  %29 = load %struct.nfs_fh*, %struct.nfs_fh** %9, align 8
  store %struct.nfs_fh* %29, %struct.nfs_fh** %28, align 8
  %30 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %13, i32 0, i32 0
  store %struct.nfs_diropok* %12, %struct.nfs_diropok** %30, align 8
  %31 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %13, i32 0, i32 1
  store %struct.nfs_diropargs* %11, %struct.nfs_diropargs** %31, align 8
  %32 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %13, i32 0, i32 2
  %33 = load i32*, i32** @nfs_procedures, align 8
  %34 = load i64, i64* @NFSPROC_LOOKUP, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  store i32* %35, i32** %32, align 8
  %36 = load %struct.qstr*, %struct.qstr** %8, align 8
  %37 = getelementptr inbounds %struct.qstr, %struct.qstr* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dprintk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load %struct.nfs_fattr*, %struct.nfs_fattr** %10, align 8
  %41 = call i32 @nfs_fattr_init(%struct.nfs_fattr* %40)
  %42 = load %struct.inode*, %struct.inode** %7, align 8
  %43 = call i32 @NFS_CLIENT(%struct.inode* %42)
  %44 = call i32 @rpc_call_sync(i32 %43, %struct.rpc_message* %13, i32 0)
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %14, align 4
  %46 = call i32 @dprintk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* %14, align 4
  ret i32 %47
}

declare dso_local i32 @NFS_FH(%struct.inode*) #1

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @nfs_fattr_init(%struct.nfs_fattr*) #1

declare dso_local i32 @rpc_call_sync(i32, %struct.rpc_message*, i32) #1

declare dso_local i32 @NFS_CLIENT(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
