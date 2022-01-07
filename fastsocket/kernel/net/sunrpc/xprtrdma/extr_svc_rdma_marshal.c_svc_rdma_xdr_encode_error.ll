; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_svc_rdma_marshal.c_svc_rdma_xdr_encode_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_svc_rdma_marshal.c_svc_rdma_xdr_encode_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svcxprt_rdma = type { i32 }
%struct.rpcrdma_msg = type { i32, i32 }

@RDMA_ERROR = common dso_local global i32 0, align 4
@ERR_VERS = common dso_local global i32 0, align 4
@RPCRDMA_VERSION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svc_rdma_xdr_encode_error(%struct.svcxprt_rdma* %0, %struct.rpcrdma_msg* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.svcxprt_rdma*, align 8
  %6 = alloca %struct.rpcrdma_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.svcxprt_rdma* %0, %struct.svcxprt_rdma** %5, align 8
  store %struct.rpcrdma_msg* %1, %struct.rpcrdma_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %10 = load i32*, i32** %8, align 8
  store i32* %10, i32** %9, align 8
  %11 = load %struct.rpcrdma_msg*, %struct.rpcrdma_msg** %6, align 8
  %12 = getelementptr inbounds %struct.rpcrdma_msg, %struct.rpcrdma_msg* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i8* @htonl(i32 %13)
  %15 = ptrtoint i8* %14 to i32
  %16 = load i32*, i32** %8, align 8
  %17 = getelementptr inbounds i32, i32* %16, i32 1
  store i32* %17, i32** %8, align 8
  store i32 %15, i32* %16, align 4
  %18 = load %struct.rpcrdma_msg*, %struct.rpcrdma_msg** %6, align 8
  %19 = getelementptr inbounds %struct.rpcrdma_msg, %struct.rpcrdma_msg* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i8* @htonl(i32 %20)
  %22 = ptrtoint i8* %21 to i32
  %23 = load i32*, i32** %8, align 8
  %24 = getelementptr inbounds i32, i32* %23, i32 1
  store i32* %24, i32** %8, align 8
  store i32 %22, i32* %23, align 4
  %25 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %5, align 8
  %26 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @htonl(i32 %27)
  %29 = ptrtoint i8* %28 to i32
  %30 = load i32*, i32** %8, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %8, align 8
  store i32 %29, i32* %30, align 4
  %32 = load i32, i32* @RDMA_ERROR, align 4
  %33 = call i8* @htonl(i32 %32)
  %34 = ptrtoint i8* %33 to i32
  %35 = load i32*, i32** %8, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %36, i32** %8, align 8
  store i32 %34, i32* %35, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i8* @htonl(i32 %37)
  %39 = ptrtoint i8* %38 to i32
  %40 = load i32*, i32** %8, align 8
  %41 = getelementptr inbounds i32, i32* %40, i32 1
  store i32* %41, i32** %8, align 8
  store i32 %39, i32* %40, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @ERR_VERS, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %4
  %46 = load i32, i32* @RPCRDMA_VERSION, align 4
  %47 = call i8* @htonl(i32 %46)
  %48 = ptrtoint i8* %47 to i32
  %49 = load i32*, i32** %8, align 8
  %50 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %50, i32** %8, align 8
  store i32 %48, i32* %49, align 4
  %51 = load i32, i32* @RPCRDMA_VERSION, align 4
  %52 = call i8* @htonl(i32 %51)
  %53 = ptrtoint i8* %52 to i32
  %54 = load i32*, i32** %8, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %55, i32** %8, align 8
  store i32 %53, i32* %54, align 4
  br label %56

56:                                               ; preds = %45, %4
  %57 = load i32*, i32** %8, align 8
  %58 = ptrtoint i32* %57 to i64
  %59 = load i32*, i32** %9, align 8
  %60 = ptrtoint i32* %59 to i64
  %61 = sub i64 %58, %60
  %62 = trunc i64 %61 to i32
  ret i32 %62
}

declare dso_local i8* @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
