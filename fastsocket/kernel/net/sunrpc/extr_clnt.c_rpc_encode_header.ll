; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_clnt.c_rpc_encode_header.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_clnt.c_rpc_encode_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { %struct.TYPE_5__, i32, %struct.rpc_rqst*, %struct.rpc_clnt* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.rpc_rqst = type { %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i32* }
%struct.rpc_clnt = type { i32, i32 }

@RPC_CALL = common dso_local global i32 0, align 4
@RPC_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.rpc_task*)* @rpc_encode_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @rpc_encode_header(%struct.rpc_task* %0) #0 {
  %2 = alloca %struct.rpc_task*, align 8
  %3 = alloca %struct.rpc_clnt*, align 8
  %4 = alloca %struct.rpc_rqst*, align 8
  %5 = alloca i32*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %2, align 8
  %6 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %7 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %6, i32 0, i32 3
  %8 = load %struct.rpc_clnt*, %struct.rpc_clnt** %7, align 8
  store %struct.rpc_clnt* %8, %struct.rpc_clnt** %3, align 8
  %9 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %10 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %9, i32 0, i32 2
  %11 = load %struct.rpc_rqst*, %struct.rpc_rqst** %10, align 8
  store %struct.rpc_rqst* %11, %struct.rpc_rqst** %4, align 8
  %12 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %13 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i64 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %5, align 8
  %18 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %19 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i32* @xprt_skip_transport_header(i32 %20, i32* %21)
  store i32* %22, i32** %5, align 8
  %23 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %24 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %27, i32** %5, align 8
  store i32 %25, i32* %26, align 4
  %28 = load i32, i32* @RPC_CALL, align 4
  %29 = call i8* @htonl(i32 %28)
  %30 = ptrtoint i8* %29 to i32
  %31 = load i32*, i32** %5, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %5, align 8
  store i32 %30, i32* %31, align 4
  %33 = load i32, i32* @RPC_VERSION, align 4
  %34 = call i8* @htonl(i32 %33)
  %35 = ptrtoint i8* %34 to i32
  %36 = load i32*, i32** %5, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %5, align 8
  store i32 %35, i32* %36, align 4
  %38 = load %struct.rpc_clnt*, %struct.rpc_clnt** %3, align 8
  %39 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @htonl(i32 %40)
  %42 = ptrtoint i8* %41 to i32
  %43 = load i32*, i32** %5, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** %5, align 8
  store i32 %42, i32* %43, align 4
  %45 = load %struct.rpc_clnt*, %struct.rpc_clnt** %3, align 8
  %46 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @htonl(i32 %47)
  %49 = ptrtoint i8* %48 to i32
  %50 = load i32*, i32** %5, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** %5, align 8
  store i32 %49, i32* %50, align 4
  %52 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %53 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @htonl(i32 %57)
  %59 = ptrtoint i8* %58 to i32
  %60 = load i32*, i32** %5, align 8
  %61 = getelementptr inbounds i32, i32* %60, i32 1
  store i32* %61, i32** %5, align 8
  store i32 %59, i32* %60, align 4
  %62 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %63 = load i32*, i32** %5, align 8
  %64 = call i32* @rpcauth_marshcred(%struct.rpc_task* %62, i32* %63)
  store i32* %64, i32** %5, align 8
  %65 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %66 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i64 0
  %69 = load i32*, i32** %5, align 8
  %70 = call i32 @xdr_adjust_iovec(%struct.TYPE_6__* %68, i32* %69)
  %71 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %72 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 8
  %73 = load i32*, i32** %5, align 8
  ret i32* %73
}

declare dso_local i32* @xprt_skip_transport_header(i32, i32*) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32* @rpcauth_marshcred(%struct.rpc_task*, i32*) #1

declare dso_local i32 @xdr_adjust_iovec(%struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
