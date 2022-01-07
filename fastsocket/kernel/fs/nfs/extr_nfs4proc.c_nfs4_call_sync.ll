; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_call_sync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_call_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_clnt = type { i32 }
%struct.nfs_server = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { {}* }
%struct.rpc_message = type { i32 }
%struct.nfs4_sequence_args = type { i32 }
%struct.nfs4_sequence_res = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_clnt*, %struct.nfs_server*, %struct.rpc_message*, %struct.nfs4_sequence_args*, %struct.nfs4_sequence_res*, i32)* @nfs4_call_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_call_sync(%struct.rpc_clnt* %0, %struct.nfs_server* %1, %struct.rpc_message* %2, %struct.nfs4_sequence_args* %3, %struct.nfs4_sequence_res* %4, i32 %5) #0 {
  %7 = alloca %struct.rpc_clnt*, align 8
  %8 = alloca %struct.nfs_server*, align 8
  %9 = alloca %struct.rpc_message*, align 8
  %10 = alloca %struct.nfs4_sequence_args*, align 8
  %11 = alloca %struct.nfs4_sequence_res*, align 8
  %12 = alloca i32, align 4
  store %struct.rpc_clnt* %0, %struct.rpc_clnt** %7, align 8
  store %struct.nfs_server* %1, %struct.nfs_server** %8, align 8
  store %struct.rpc_message* %2, %struct.rpc_message** %9, align 8
  store %struct.nfs4_sequence_args* %3, %struct.nfs4_sequence_args** %10, align 8
  store %struct.nfs4_sequence_res* %4, %struct.nfs4_sequence_res** %11, align 8
  store i32 %5, i32* %12, align 4
  %13 = load %struct.nfs_server*, %struct.nfs_server** %8, align 8
  %14 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = bitcast {}** %18 to i32 (%struct.rpc_clnt*, %struct.nfs_server*, %struct.rpc_message*, %struct.nfs4_sequence_args*, %struct.nfs4_sequence_res*, i32)**
  %20 = load i32 (%struct.rpc_clnt*, %struct.nfs_server*, %struct.rpc_message*, %struct.nfs4_sequence_args*, %struct.nfs4_sequence_res*, i32)*, i32 (%struct.rpc_clnt*, %struct.nfs_server*, %struct.rpc_message*, %struct.nfs4_sequence_args*, %struct.nfs4_sequence_res*, i32)** %19, align 8
  %21 = load %struct.rpc_clnt*, %struct.rpc_clnt** %7, align 8
  %22 = load %struct.nfs_server*, %struct.nfs_server** %8, align 8
  %23 = load %struct.rpc_message*, %struct.rpc_message** %9, align 8
  %24 = load %struct.nfs4_sequence_args*, %struct.nfs4_sequence_args** %10, align 8
  %25 = load %struct.nfs4_sequence_res*, %struct.nfs4_sequence_res** %11, align 8
  %26 = load i32, i32* %12, align 4
  %27 = call i32 %20(%struct.rpc_clnt* %21, %struct.nfs_server* %22, %struct.rpc_message* %23, %struct.nfs4_sequence_args* %24, %struct.nfs4_sequence_res* %25, i32 %26)
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
