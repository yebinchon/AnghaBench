; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_rpcb_clnt.c_rpcb_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_rpcb_clnt.c_rpcb_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_clnt = type { i32 }
%struct.sockaddr = type { i32 }
%struct.rpc_create_args = type { i32, i64, i8*, i32, i32, i32, i32*, %struct.sockaddr*, i32* }
%struct.sockaddr_in = type { i8* }
%struct.sockaddr_in6 = type { i8* }

@RPC_CLNT_CREATE_NOPING = common dso_local global i32 0, align 4
@RPC_CLNT_CREATE_NONPRIVPORT = common dso_local global i32 0, align 4
@RPC_AUTH_UNIX = common dso_local global i32 0, align 4
@rpcb_program = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@RPCBIND_PORT = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rpc_clnt* (i8*, %struct.sockaddr*, i64, i32, i32)* @rpcb_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rpc_clnt* @rpcb_create(i8* %0, %struct.sockaddr* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.rpc_clnt*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.rpc_create_args, align 8
  store i8* %0, i8** %7, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %12, i32 0, i32 0
  %14 = load i32, i32* %10, align 4
  store i32 %14, i32* %13, align 8
  %15 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %12, i32 0, i32 1
  %16 = load i64, i64* %9, align 8
  store i64 %16, i64* %15, align 8
  %17 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %12, i32 0, i32 2
  %18 = load i8*, i8** %7, align 8
  store i8* %18, i8** %17, align 8
  %19 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %12, i32 0, i32 3
  %20 = load i32, i32* @RPC_CLNT_CREATE_NOPING, align 4
  %21 = load i32, i32* @RPC_CLNT_CREATE_NONPRIVPORT, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %19, align 8
  %23 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %12, i32 0, i32 4
  %24 = load i32, i32* @RPC_AUTH_UNIX, align 4
  store i32 %24, i32* %23, align 4
  %25 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %12, i32 0, i32 5
  %26 = load i32, i32* %11, align 4
  store i32 %26, i32* %25, align 8
  %27 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %12, i32 0, i32 6
  store i32* @rpcb_program, i32** %27, align 8
  %28 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %12, i32 0, i32 7
  %29 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  store %struct.sockaddr* %29, %struct.sockaddr** %28, align 8
  %30 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %12, i32 0, i32 8
  store i32* @init_net, i32** %30, align 8
  %31 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %32 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %46 [
    i32 129, label %34
    i32 128, label %40
  ]

34:                                               ; preds = %5
  %35 = load i32, i32* @RPCBIND_PORT, align 4
  %36 = call i8* @htons(i32 %35)
  %37 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %38 = bitcast %struct.sockaddr* %37 to %struct.sockaddr_in*
  %39 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %38, i32 0, i32 0
  store i8* %36, i8** %39, align 8
  br label %50

40:                                               ; preds = %5
  %41 = load i32, i32* @RPCBIND_PORT, align 4
  %42 = call i8* @htons(i32 %41)
  %43 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %44 = bitcast %struct.sockaddr* %43 to %struct.sockaddr_in6*
  %45 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %44, i32 0, i32 0
  store i8* %42, i8** %45, align 8
  br label %50

46:                                               ; preds = %5
  %47 = load i32, i32* @EAFNOSUPPORT, align 4
  %48 = sub nsw i32 0, %47
  %49 = call %struct.rpc_clnt* @ERR_PTR(i32 %48)
  store %struct.rpc_clnt* %49, %struct.rpc_clnt** %6, align 8
  br label %52

50:                                               ; preds = %40, %34
  %51 = call %struct.rpc_clnt* @rpc_create(%struct.rpc_create_args* %12)
  store %struct.rpc_clnt* %51, %struct.rpc_clnt** %6, align 8
  br label %52

52:                                               ; preds = %50, %46
  %53 = load %struct.rpc_clnt*, %struct.rpc_clnt** %6, align 8
  ret %struct.rpc_clnt* %53
}

declare dso_local i8* @htons(i32) #1

declare dso_local %struct.rpc_clnt* @ERR_PTR(i32) #1

declare dso_local %struct.rpc_clnt* @rpc_create(%struct.rpc_create_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
