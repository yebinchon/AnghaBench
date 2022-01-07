; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c__nfs4_proc_secinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c__nfs4_proc_secinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.qstr = type { i32 }
%struct.nfs4_secinfo_flavors = type { i32 }
%struct.nfs4_secinfo_arg = type { i32, %struct.qstr*, i32 }
%struct.nfs4_secinfo_res = type { i32, %struct.nfs4_secinfo_flavors* }
%struct.rpc_message = type { %struct.nfs4_secinfo_res*, %struct.nfs4_secinfo_arg*, i32* }
%struct.TYPE_3__ = type { i32 }

@nfs4_procedures = common dso_local global i32* null, align 8
@NFSPROC4_CLNT_SECINFO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"NFS call  secinfo %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"NFS reply  secinfo: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.qstr*, %struct.nfs4_secinfo_flavors*)* @_nfs4_proc_secinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_nfs4_proc_secinfo(%struct.inode* %0, %struct.qstr* %1, %struct.nfs4_secinfo_flavors* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.qstr*, align 8
  %6 = alloca %struct.nfs4_secinfo_flavors*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nfs4_secinfo_arg, align 8
  %9 = alloca %struct.nfs4_secinfo_res, align 8
  %10 = alloca %struct.rpc_message, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.qstr* %1, %struct.qstr** %5, align 8
  store %struct.nfs4_secinfo_flavors* %2, %struct.nfs4_secinfo_flavors** %6, align 8
  %11 = getelementptr inbounds %struct.nfs4_secinfo_arg, %struct.nfs4_secinfo_arg* %8, i32 0, i32 0
  store i32 0, i32* %11, align 8
  %12 = getelementptr inbounds %struct.nfs4_secinfo_arg, %struct.nfs4_secinfo_arg* %8, i32 0, i32 1
  %13 = load %struct.qstr*, %struct.qstr** %5, align 8
  store %struct.qstr* %13, %struct.qstr** %12, align 8
  %14 = getelementptr inbounds %struct.nfs4_secinfo_arg, %struct.nfs4_secinfo_arg* %8, i32 0, i32 2
  %15 = load %struct.inode*, %struct.inode** %4, align 8
  %16 = call i32 @NFS_FH(%struct.inode* %15)
  store i32 %16, i32* %14, align 8
  %17 = getelementptr inbounds %struct.nfs4_secinfo_res, %struct.nfs4_secinfo_res* %9, i32 0, i32 0
  store i32 0, i32* %17, align 8
  %18 = getelementptr inbounds %struct.nfs4_secinfo_res, %struct.nfs4_secinfo_res* %9, i32 0, i32 1
  %19 = load %struct.nfs4_secinfo_flavors*, %struct.nfs4_secinfo_flavors** %6, align 8
  store %struct.nfs4_secinfo_flavors* %19, %struct.nfs4_secinfo_flavors** %18, align 8
  %20 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %10, i32 0, i32 0
  store %struct.nfs4_secinfo_res* %9, %struct.nfs4_secinfo_res** %20, align 8
  %21 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %10, i32 0, i32 1
  store %struct.nfs4_secinfo_arg* %8, %struct.nfs4_secinfo_arg** %21, align 8
  %22 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %10, i32 0, i32 2
  %23 = load i32*, i32** @nfs4_procedures, align 8
  %24 = load i64, i64* @NFSPROC4_CLNT_SECINFO, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  store i32* %25, i32** %22, align 8
  %26 = load %struct.qstr*, %struct.qstr** %5, align 8
  %27 = getelementptr inbounds %struct.qstr, %struct.qstr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dprintk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.inode*, %struct.inode** %4, align 8
  %31 = call %struct.TYPE_3__* @NFS_SERVER(%struct.inode* %30)
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.inode*, %struct.inode** %4, align 8
  %35 = call %struct.TYPE_3__* @NFS_SERVER(%struct.inode* %34)
  %36 = getelementptr inbounds %struct.nfs4_secinfo_arg, %struct.nfs4_secinfo_arg* %8, i32 0, i32 0
  %37 = getelementptr inbounds %struct.nfs4_secinfo_res, %struct.nfs4_secinfo_res* %9, i32 0, i32 0
  %38 = call i32 @nfs4_call_sync(i32 %33, %struct.TYPE_3__* %35, %struct.rpc_message* %10, i32* %36, i32* %37, i32 0)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %7, align 4
  ret i32 %41
}

declare dso_local i32 @NFS_FH(%struct.inode*) #1

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @nfs4_call_sync(i32, %struct.TYPE_3__*, %struct.rpc_message*, i32*, i32*, i32) #1

declare dso_local %struct.TYPE_3__* @NFS_SERVER(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
