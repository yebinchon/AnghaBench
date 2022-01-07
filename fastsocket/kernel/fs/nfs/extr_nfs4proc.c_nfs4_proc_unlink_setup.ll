; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_proc_unlink_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_proc_unlink_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_message = type { i32*, %struct.nfs_removeres*, %struct.nfs_removeargs* }
%struct.nfs_removeres = type { i32, %struct.nfs_server* }
%struct.nfs_server = type { i32 }
%struct.nfs_removeargs = type { i32 }
%struct.inode = type { i32 }

@nfs4_procedures = common dso_local global i32* null, align 8
@NFSPROC4_CLNT_REMOVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_message*, %struct.inode*)* @nfs4_proc_unlink_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs4_proc_unlink_setup(%struct.rpc_message* %0, %struct.inode* %1) #0 {
  %3 = alloca %struct.rpc_message*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.nfs_server*, align 8
  %6 = alloca %struct.nfs_removeargs*, align 8
  %7 = alloca %struct.nfs_removeres*, align 8
  store %struct.rpc_message* %0, %struct.rpc_message** %3, align 8
  store %struct.inode* %1, %struct.inode** %4, align 8
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = call %struct.nfs_server* @NFS_SERVER(%struct.inode* %8)
  store %struct.nfs_server* %9, %struct.nfs_server** %5, align 8
  %10 = load %struct.rpc_message*, %struct.rpc_message** %3, align 8
  %11 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %10, i32 0, i32 2
  %12 = load %struct.nfs_removeargs*, %struct.nfs_removeargs** %11, align 8
  store %struct.nfs_removeargs* %12, %struct.nfs_removeargs** %6, align 8
  %13 = load %struct.rpc_message*, %struct.rpc_message** %3, align 8
  %14 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %13, i32 0, i32 1
  %15 = load %struct.nfs_removeres*, %struct.nfs_removeres** %14, align 8
  store %struct.nfs_removeres* %15, %struct.nfs_removeres** %7, align 8
  %16 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %17 = load %struct.nfs_removeres*, %struct.nfs_removeres** %7, align 8
  %18 = getelementptr inbounds %struct.nfs_removeres, %struct.nfs_removeres* %17, i32 0, i32 1
  store %struct.nfs_server* %16, %struct.nfs_server** %18, align 8
  %19 = load i32*, i32** @nfs4_procedures, align 8
  %20 = load i64, i64* @NFSPROC4_CLNT_REMOVE, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load %struct.rpc_message*, %struct.rpc_message** %3, align 8
  %23 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %22, i32 0, i32 0
  store i32* %21, i32** %23, align 8
  %24 = load %struct.nfs_removeargs*, %struct.nfs_removeargs** %6, align 8
  %25 = getelementptr inbounds %struct.nfs_removeargs, %struct.nfs_removeargs* %24, i32 0, i32 0
  %26 = load %struct.nfs_removeres*, %struct.nfs_removeres** %7, align 8
  %27 = getelementptr inbounds %struct.nfs_removeres, %struct.nfs_removeres* %26, i32 0, i32 0
  %28 = call i32 @nfs41_init_sequence(i32* %25, i32* %27, i32 1)
  ret void
}

declare dso_local %struct.nfs_server* @NFS_SERVER(%struct.inode*) #1

declare dso_local i32 @nfs41_init_sequence(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
