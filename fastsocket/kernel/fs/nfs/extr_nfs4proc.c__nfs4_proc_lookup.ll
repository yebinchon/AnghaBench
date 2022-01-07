; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c__nfs4_proc_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c__nfs4_proc_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_clnt = type { i32 }
%struct.inode = type { i32 }
%struct.qstr = type { i32 }
%struct.nfs_fh = type { i32 }
%struct.nfs_fattr = type { i32 }
%struct.nfs_server = type { i32 }
%struct.nfs4_lookup_arg = type { i32, %struct.qstr*, i32, i32 }
%struct.nfs4_lookup_res = type { i32, %struct.nfs_fh*, %struct.nfs_fattr*, %struct.nfs_server* }
%struct.rpc_message = type { %struct.nfs4_lookup_res*, %struct.nfs4_lookup_arg*, i32* }

@nfs4_procedures = common dso_local global i32* null, align 8
@NFSPROC4_CLNT_LOOKUP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"NFS call  lookup %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"NFS reply lookup: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_clnt*, %struct.inode*, %struct.qstr*, %struct.nfs_fh*, %struct.nfs_fattr*)* @_nfs4_proc_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_nfs4_proc_lookup(%struct.rpc_clnt* %0, %struct.inode* %1, %struct.qstr* %2, %struct.nfs_fh* %3, %struct.nfs_fattr* %4) #0 {
  %6 = alloca %struct.rpc_clnt*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.qstr*, align 8
  %9 = alloca %struct.nfs_fh*, align 8
  %10 = alloca %struct.nfs_fattr*, align 8
  %11 = alloca %struct.nfs_server*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nfs4_lookup_arg, align 8
  %14 = alloca %struct.nfs4_lookup_res, align 8
  %15 = alloca %struct.rpc_message, align 8
  store %struct.rpc_clnt* %0, %struct.rpc_clnt** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  store %struct.qstr* %2, %struct.qstr** %8, align 8
  store %struct.nfs_fh* %3, %struct.nfs_fh** %9, align 8
  store %struct.nfs_fattr* %4, %struct.nfs_fattr** %10, align 8
  %16 = load %struct.inode*, %struct.inode** %7, align 8
  %17 = call %struct.nfs_server* @NFS_SERVER(%struct.inode* %16)
  store %struct.nfs_server* %17, %struct.nfs_server** %11, align 8
  %18 = getelementptr inbounds %struct.nfs4_lookup_arg, %struct.nfs4_lookup_arg* %13, i32 0, i32 0
  store i32 0, i32* %18, align 8
  %19 = getelementptr inbounds %struct.nfs4_lookup_arg, %struct.nfs4_lookup_arg* %13, i32 0, i32 1
  %20 = load %struct.qstr*, %struct.qstr** %8, align 8
  store %struct.qstr* %20, %struct.qstr** %19, align 8
  %21 = getelementptr inbounds %struct.nfs4_lookup_arg, %struct.nfs4_lookup_arg* %13, i32 0, i32 2
  %22 = load %struct.inode*, %struct.inode** %7, align 8
  %23 = call i32 @NFS_FH(%struct.inode* %22)
  store i32 %23, i32* %21, align 8
  %24 = getelementptr inbounds %struct.nfs4_lookup_arg, %struct.nfs4_lookup_arg* %13, i32 0, i32 3
  %25 = load %struct.nfs_server*, %struct.nfs_server** %11, align 8
  %26 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %24, align 4
  %28 = getelementptr inbounds %struct.nfs4_lookup_res, %struct.nfs4_lookup_res* %14, i32 0, i32 0
  store i32 0, i32* %28, align 8
  %29 = getelementptr inbounds %struct.nfs4_lookup_res, %struct.nfs4_lookup_res* %14, i32 0, i32 1
  %30 = load %struct.nfs_fh*, %struct.nfs_fh** %9, align 8
  store %struct.nfs_fh* %30, %struct.nfs_fh** %29, align 8
  %31 = getelementptr inbounds %struct.nfs4_lookup_res, %struct.nfs4_lookup_res* %14, i32 0, i32 2
  %32 = load %struct.nfs_fattr*, %struct.nfs_fattr** %10, align 8
  store %struct.nfs_fattr* %32, %struct.nfs_fattr** %31, align 8
  %33 = getelementptr inbounds %struct.nfs4_lookup_res, %struct.nfs4_lookup_res* %14, i32 0, i32 3
  %34 = load %struct.nfs_server*, %struct.nfs_server** %11, align 8
  store %struct.nfs_server* %34, %struct.nfs_server** %33, align 8
  %35 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %15, i32 0, i32 0
  store %struct.nfs4_lookup_res* %14, %struct.nfs4_lookup_res** %35, align 8
  %36 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %15, i32 0, i32 1
  store %struct.nfs4_lookup_arg* %13, %struct.nfs4_lookup_arg** %36, align 8
  %37 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %15, i32 0, i32 2
  %38 = load i32*, i32** @nfs4_procedures, align 8
  %39 = load i64, i64* @NFSPROC4_CLNT_LOOKUP, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  store i32* %40, i32** %37, align 8
  %41 = load %struct.nfs_fattr*, %struct.nfs_fattr** %10, align 8
  %42 = call i32 @nfs_fattr_init(%struct.nfs_fattr* %41)
  %43 = load %struct.qstr*, %struct.qstr** %8, align 8
  %44 = getelementptr inbounds %struct.qstr, %struct.qstr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dprintk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load %struct.rpc_clnt*, %struct.rpc_clnt** %6, align 8
  %48 = load %struct.nfs_server*, %struct.nfs_server** %11, align 8
  %49 = getelementptr inbounds %struct.nfs4_lookup_arg, %struct.nfs4_lookup_arg* %13, i32 0, i32 0
  %50 = getelementptr inbounds %struct.nfs4_lookup_res, %struct.nfs4_lookup_res* %14, i32 0, i32 0
  %51 = call i32 @nfs4_call_sync(%struct.rpc_clnt* %47, %struct.nfs_server* %48, %struct.rpc_message* %15, i32* %49, i32* %50, i32 0)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @dprintk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %12, align 4
  ret i32 %54
}

declare dso_local %struct.nfs_server* @NFS_SERVER(%struct.inode*) #1

declare dso_local i32 @NFS_FH(%struct.inode*) #1

declare dso_local i32 @nfs_fattr_init(%struct.nfs_fattr*) #1

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @nfs4_call_sync(%struct.rpc_clnt*, %struct.nfs_server*, %struct.rpc_message*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
