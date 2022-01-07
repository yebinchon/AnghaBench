; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c__nfs4_lookup_root.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c__nfs4_lookup_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_server = type { i32 }
%struct.nfs_fh = type { i32 }
%struct.nfs_fsinfo = type { i32 }
%struct.nfs4_lookup_root_arg = type { i32, i32 }
%struct.nfs4_lookup_res = type { i32, %struct.nfs_fh*, i32, %struct.nfs_server* }
%struct.rpc_message = type { %struct.nfs4_lookup_res*, %struct.nfs4_lookup_root_arg*, i32* }

@nfs4_fattr_bitmap = common dso_local global i32 0, align 4
@nfs4_procedures = common dso_local global i32* null, align 8
@NFSPROC4_CLNT_LOOKUP_ROOT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_server*, %struct.nfs_fh*, %struct.nfs_fsinfo*)* @_nfs4_lookup_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_nfs4_lookup_root(%struct.nfs_server* %0, %struct.nfs_fh* %1, %struct.nfs_fsinfo* %2) #0 {
  %4 = alloca %struct.nfs_server*, align 8
  %5 = alloca %struct.nfs_fh*, align 8
  %6 = alloca %struct.nfs_fsinfo*, align 8
  %7 = alloca %struct.nfs4_lookup_root_arg, align 4
  %8 = alloca %struct.nfs4_lookup_res, align 8
  %9 = alloca %struct.rpc_message, align 8
  store %struct.nfs_server* %0, %struct.nfs_server** %4, align 8
  store %struct.nfs_fh* %1, %struct.nfs_fh** %5, align 8
  store %struct.nfs_fsinfo* %2, %struct.nfs_fsinfo** %6, align 8
  %10 = getelementptr inbounds %struct.nfs4_lookup_root_arg, %struct.nfs4_lookup_root_arg* %7, i32 0, i32 0
  store i32 0, i32* %10, align 4
  %11 = getelementptr inbounds %struct.nfs4_lookup_root_arg, %struct.nfs4_lookup_root_arg* %7, i32 0, i32 1
  %12 = load i32, i32* @nfs4_fattr_bitmap, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds %struct.nfs4_lookup_res, %struct.nfs4_lookup_res* %8, i32 0, i32 0
  store i32 0, i32* %13, align 8
  %14 = getelementptr inbounds %struct.nfs4_lookup_res, %struct.nfs4_lookup_res* %8, i32 0, i32 1
  %15 = load %struct.nfs_fh*, %struct.nfs_fh** %5, align 8
  store %struct.nfs_fh* %15, %struct.nfs_fh** %14, align 8
  %16 = getelementptr inbounds %struct.nfs4_lookup_res, %struct.nfs4_lookup_res* %8, i32 0, i32 2
  %17 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %6, align 8
  %18 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %16, align 8
  %20 = getelementptr inbounds %struct.nfs4_lookup_res, %struct.nfs4_lookup_res* %8, i32 0, i32 3
  %21 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  store %struct.nfs_server* %21, %struct.nfs_server** %20, align 8
  %22 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %9, i32 0, i32 0
  store %struct.nfs4_lookup_res* %8, %struct.nfs4_lookup_res** %22, align 8
  %23 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %9, i32 0, i32 1
  store %struct.nfs4_lookup_root_arg* %7, %struct.nfs4_lookup_root_arg** %23, align 8
  %24 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %9, i32 0, i32 2
  %25 = load i32*, i32** @nfs4_procedures, align 8
  %26 = load i64, i64* @NFSPROC4_CLNT_LOOKUP_ROOT, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  store i32* %27, i32** %24, align 8
  %28 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %6, align 8
  %29 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @nfs_fattr_init(i32 %30)
  %32 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %33 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %36 = getelementptr inbounds %struct.nfs4_lookup_root_arg, %struct.nfs4_lookup_root_arg* %7, i32 0, i32 0
  %37 = getelementptr inbounds %struct.nfs4_lookup_res, %struct.nfs4_lookup_res* %8, i32 0, i32 0
  %38 = call i32 @nfs4_call_sync(i32 %34, %struct.nfs_server* %35, %struct.rpc_message* %9, i32* %36, i32* %37, i32 0)
  ret i32 %38
}

declare dso_local i32 @nfs_fattr_init(i32) #1

declare dso_local i32 @nfs4_call_sync(i32, %struct.nfs_server*, %struct.rpc_message*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
