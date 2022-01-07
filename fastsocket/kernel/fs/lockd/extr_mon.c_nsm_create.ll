; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_mon.c_nsm_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_mon.c_nsm_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_clnt = type { i32 }
%struct.sockaddr_in = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.rpc_create_args = type { i32, i8*, i32, i32, i32, i32*, %struct.sockaddr*, i32, i32* }
%struct.sockaddr = type { i32 }

@INADDR_LOOPBACK = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"rpc.statd\00", align 1
@RPC_CLNT_CREATE_NOPING = common dso_local global i32 0, align 4
@RPC_AUTH_NULL = common dso_local global i32 0, align 4
@NSM_VERSION = common dso_local global i32 0, align 4
@nsm_program = common dso_local global i32 0, align 4
@XPRT_TRANSPORT_UDP = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rpc_clnt* ()* @nsm_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rpc_clnt* @nsm_create() #0 {
  %1 = alloca %struct.sockaddr_in, align 4
  %2 = alloca %struct.rpc_create_args, align 8
  %3 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %1, i32 0, i32 0
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  %5 = load i32, i32* @INADDR_LOOPBACK, align 4
  %6 = call i32 @htonl(i32 %5)
  store i32 %6, i32* %4, align 4
  %7 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %1, i32 0, i32 1
  %8 = load i32, i32* @AF_INET, align 4
  store i32 %8, i32* %7, align 4
  %9 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %2, i32 0, i32 0
  store i32 8, i32* %9, align 8
  %10 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %2, i32 0, i32 1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %11 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %2, i32 0, i32 2
  %12 = load i32, i32* @RPC_CLNT_CREATE_NOPING, align 4
  store i32 %12, i32* %11, align 8
  %13 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %2, i32 0, i32 3
  %14 = load i32, i32* @RPC_AUTH_NULL, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %2, i32 0, i32 4
  %16 = load i32, i32* @NSM_VERSION, align 4
  store i32 %16, i32* %15, align 8
  %17 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %2, i32 0, i32 5
  store i32* @nsm_program, i32** %17, align 8
  %18 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %2, i32 0, i32 6
  %19 = bitcast %struct.sockaddr_in* %1 to %struct.sockaddr*
  store %struct.sockaddr* %19, %struct.sockaddr** %18, align 8
  %20 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %2, i32 0, i32 7
  %21 = load i32, i32* @XPRT_TRANSPORT_UDP, align 4
  store i32 %21, i32* %20, align 8
  %22 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %2, i32 0, i32 8
  store i32* @init_net, i32** %22, align 8
  %23 = call %struct.rpc_clnt* @rpc_create(%struct.rpc_create_args* %2)
  ret %struct.rpc_clnt* %23
}

declare dso_local i32 @htonl(i32) #1

declare dso_local %struct.rpc_clnt* @rpc_create(%struct.rpc_create_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
