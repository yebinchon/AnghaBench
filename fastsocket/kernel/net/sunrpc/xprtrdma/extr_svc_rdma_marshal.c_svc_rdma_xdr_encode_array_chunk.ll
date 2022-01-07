; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_svc_rdma_marshal.c_svc_rdma_xdr_encode_array_chunk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_svc_rdma_marshal.c_svc_rdma_xdr_encode_array_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpcrdma_write_array = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.rpcrdma_segment }
%struct.rpcrdma_segment = type { i32, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svc_rdma_xdr_encode_array_chunk(%struct.rpcrdma_write_array* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.rpcrdma_write_array*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.rpcrdma_segment*, align 8
  store %struct.rpcrdma_write_array* %0, %struct.rpcrdma_write_array** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.rpcrdma_write_array*, %struct.rpcrdma_write_array** %6, align 8
  %13 = getelementptr inbounds %struct.rpcrdma_write_array, %struct.rpcrdma_write_array* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store %struct.rpcrdma_segment* %18, %struct.rpcrdma_segment** %11, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i8* @htonl(i32 %19)
  %21 = load %struct.rpcrdma_segment*, %struct.rpcrdma_segment** %11, align 8
  %22 = getelementptr inbounds %struct.rpcrdma_segment, %struct.rpcrdma_segment* %21, i32 0, i32 2
  store i8* %20, i8** %22, align 8
  %23 = load i32, i32* %10, align 4
  %24 = call i8* @htonl(i32 %23)
  %25 = load %struct.rpcrdma_segment*, %struct.rpcrdma_segment** %11, align 8
  %26 = getelementptr inbounds %struct.rpcrdma_segment, %struct.rpcrdma_segment* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  %27 = load %struct.rpcrdma_segment*, %struct.rpcrdma_segment** %11, align 8
  %28 = getelementptr inbounds %struct.rpcrdma_segment, %struct.rpcrdma_segment* %27, i32 0, i32 0
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @xdr_encode_hyper(i32* %28, i32 %29)
  ret void
}

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @xdr_encode_hyper(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
