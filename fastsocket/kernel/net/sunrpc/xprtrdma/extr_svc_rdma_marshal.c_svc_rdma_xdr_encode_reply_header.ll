; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_svc_rdma_marshal.c_svc_rdma_xdr_encode_reply_header.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_svc_rdma_marshal.c_svc_rdma_xdr_encode_reply_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svcxprt_rdma = type { i32 }
%struct.rpcrdma_msg = type { i32, i32, %struct.TYPE_2__, i8*, i8* }
%struct.TYPE_2__ = type { i8** }

@xdr_zero = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svc_rdma_xdr_encode_reply_header(%struct.svcxprt_rdma* %0, %struct.rpcrdma_msg* %1, %struct.rpcrdma_msg* %2, i32 %3) #0 {
  %5 = alloca %struct.svcxprt_rdma*, align 8
  %6 = alloca %struct.rpcrdma_msg*, align 8
  %7 = alloca %struct.rpcrdma_msg*, align 8
  %8 = alloca i32, align 4
  store %struct.svcxprt_rdma* %0, %struct.svcxprt_rdma** %5, align 8
  store %struct.rpcrdma_msg* %1, %struct.rpcrdma_msg** %6, align 8
  store %struct.rpcrdma_msg* %2, %struct.rpcrdma_msg** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.rpcrdma_msg*, %struct.rpcrdma_msg** %6, align 8
  %10 = getelementptr inbounds %struct.rpcrdma_msg, %struct.rpcrdma_msg* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i8* @htonl(i32 %11)
  %13 = ptrtoint i8* %12 to i32
  %14 = load %struct.rpcrdma_msg*, %struct.rpcrdma_msg** %7, align 8
  %15 = getelementptr inbounds %struct.rpcrdma_msg, %struct.rpcrdma_msg* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.rpcrdma_msg*, %struct.rpcrdma_msg** %6, align 8
  %17 = getelementptr inbounds %struct.rpcrdma_msg, %struct.rpcrdma_msg* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @htonl(i32 %18)
  %20 = ptrtoint i8* %19 to i32
  %21 = load %struct.rpcrdma_msg*, %struct.rpcrdma_msg** %7, align 8
  %22 = getelementptr inbounds %struct.rpcrdma_msg, %struct.rpcrdma_msg* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %5, align 8
  %24 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @htonl(i32 %25)
  %27 = load %struct.rpcrdma_msg*, %struct.rpcrdma_msg** %7, align 8
  %28 = getelementptr inbounds %struct.rpcrdma_msg, %struct.rpcrdma_msg* %27, i32 0, i32 4
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i8* @htonl(i32 %29)
  %31 = load %struct.rpcrdma_msg*, %struct.rpcrdma_msg** %7, align 8
  %32 = getelementptr inbounds %struct.rpcrdma_msg, %struct.rpcrdma_msg* %31, i32 0, i32 3
  store i8* %30, i8** %32, align 8
  %33 = load i8*, i8** @xdr_zero, align 8
  %34 = load %struct.rpcrdma_msg*, %struct.rpcrdma_msg** %7, align 8
  %35 = getelementptr inbounds %struct.rpcrdma_msg, %struct.rpcrdma_msg* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i8**, i8*** %36, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 0
  store i8* %33, i8** %38, align 8
  %39 = load i8*, i8** @xdr_zero, align 8
  %40 = load %struct.rpcrdma_msg*, %struct.rpcrdma_msg** %7, align 8
  %41 = getelementptr inbounds %struct.rpcrdma_msg, %struct.rpcrdma_msg* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i8**, i8*** %42, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 1
  store i8* %39, i8** %44, align 8
  %45 = load i8*, i8** @xdr_zero, align 8
  %46 = load %struct.rpcrdma_msg*, %struct.rpcrdma_msg** %7, align 8
  %47 = getelementptr inbounds %struct.rpcrdma_msg, %struct.rpcrdma_msg* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i8**, i8*** %48, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 2
  store i8* %45, i8** %50, align 8
  ret void
}

declare dso_local i8* @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
