; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c__nfs4_do_fsinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c__nfs4_do_fsinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_server = type { i32, i32 }
%struct.nfs_fh = type { i32 }
%struct.nfs_fsinfo = type { i32 }
%struct.nfs4_fsinfo_arg = type { i32, i32, %struct.nfs_fh* }
%struct.nfs4_fsinfo_res = type { i32, %struct.nfs_fsinfo* }
%struct.rpc_message = type { %struct.nfs4_fsinfo_res*, %struct.nfs4_fsinfo_arg*, i32* }

@nfs4_procedures = common dso_local global i32* null, align 8
@NFSPROC4_CLNT_FSINFO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_server*, %struct.nfs_fh*, %struct.nfs_fsinfo*)* @_nfs4_do_fsinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_nfs4_do_fsinfo(%struct.nfs_server* %0, %struct.nfs_fh* %1, %struct.nfs_fsinfo* %2) #0 {
  %4 = alloca %struct.nfs_server*, align 8
  %5 = alloca %struct.nfs_fh*, align 8
  %6 = alloca %struct.nfs_fsinfo*, align 8
  %7 = alloca %struct.nfs4_fsinfo_arg, align 8
  %8 = alloca %struct.nfs4_fsinfo_res, align 8
  %9 = alloca %struct.rpc_message, align 8
  store %struct.nfs_server* %0, %struct.nfs_server** %4, align 8
  store %struct.nfs_fh* %1, %struct.nfs_fh** %5, align 8
  store %struct.nfs_fsinfo* %2, %struct.nfs_fsinfo** %6, align 8
  %10 = getelementptr inbounds %struct.nfs4_fsinfo_arg, %struct.nfs4_fsinfo_arg* %7, i32 0, i32 0
  store i32 0, i32* %10, align 8
  %11 = getelementptr inbounds %struct.nfs4_fsinfo_arg, %struct.nfs4_fsinfo_arg* %7, i32 0, i32 1
  %12 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %13 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %11, align 4
  %15 = getelementptr inbounds %struct.nfs4_fsinfo_arg, %struct.nfs4_fsinfo_arg* %7, i32 0, i32 2
  %16 = load %struct.nfs_fh*, %struct.nfs_fh** %5, align 8
  store %struct.nfs_fh* %16, %struct.nfs_fh** %15, align 8
  %17 = getelementptr inbounds %struct.nfs4_fsinfo_res, %struct.nfs4_fsinfo_res* %8, i32 0, i32 0
  store i32 0, i32* %17, align 8
  %18 = getelementptr inbounds %struct.nfs4_fsinfo_res, %struct.nfs4_fsinfo_res* %8, i32 0, i32 1
  %19 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %6, align 8
  store %struct.nfs_fsinfo* %19, %struct.nfs_fsinfo** %18, align 8
  %20 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %9, i32 0, i32 0
  store %struct.nfs4_fsinfo_res* %8, %struct.nfs4_fsinfo_res** %20, align 8
  %21 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %9, i32 0, i32 1
  store %struct.nfs4_fsinfo_arg* %7, %struct.nfs4_fsinfo_arg** %21, align 8
  %22 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %9, i32 0, i32 2
  %23 = load i32*, i32** @nfs4_procedures, align 8
  %24 = load i64, i64* @NFSPROC4_CLNT_FSINFO, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  store i32* %25, i32** %22, align 8
  %26 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %27 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %30 = getelementptr inbounds %struct.nfs4_fsinfo_arg, %struct.nfs4_fsinfo_arg* %7, i32 0, i32 0
  %31 = getelementptr inbounds %struct.nfs4_fsinfo_res, %struct.nfs4_fsinfo_res* %8, i32 0, i32 0
  %32 = call i32 @nfs4_call_sync(i32 %28, %struct.nfs_server* %29, %struct.rpc_message* %9, i32* %30, i32* %31, i32 0)
  ret i32 %32
}

declare dso_local i32 @nfs4_call_sync(i32, %struct.nfs_server*, %struct.rpc_message*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
