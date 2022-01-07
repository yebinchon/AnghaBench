; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_svc_rdma_marshal.c_svc_rdma_xdr_encode_write_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_svc_rdma_marshal.c_svc_rdma_xdr_encode_write_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpcrdma_msg = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8** }
%struct.rpcrdma_write_array = type { %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i8* }

@xdr_zero = common dso_local global i8* null, align 8
@xdr_one = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svc_rdma_xdr_encode_write_list(%struct.rpcrdma_msg* %0, i32 %1) #0 {
  %3 = alloca %struct.rpcrdma_msg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rpcrdma_write_array*, align 8
  store %struct.rpcrdma_msg* %0, %struct.rpcrdma_msg** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** @xdr_zero, align 8
  %7 = load %struct.rpcrdma_msg*, %struct.rpcrdma_msg** %3, align 8
  %8 = getelementptr inbounds %struct.rpcrdma_msg, %struct.rpcrdma_msg* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i8**, i8*** %9, align 8
  %11 = getelementptr inbounds i8*, i8** %10, i64 0
  store i8* %6, i8** %11, align 8
  %12 = load %struct.rpcrdma_msg*, %struct.rpcrdma_msg** %3, align 8
  %13 = getelementptr inbounds %struct.rpcrdma_msg, %struct.rpcrdma_msg* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i8**, i8*** %14, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 1
  %17 = bitcast i8** %16 to %struct.rpcrdma_write_array*
  store %struct.rpcrdma_write_array* %17, %struct.rpcrdma_write_array** %5, align 8
  %18 = load i32, i32* @xdr_one, align 4
  %19 = load %struct.rpcrdma_write_array*, %struct.rpcrdma_write_array** %5, align 8
  %20 = getelementptr inbounds %struct.rpcrdma_write_array, %struct.rpcrdma_write_array* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @htonl(i32 %21)
  %23 = load %struct.rpcrdma_write_array*, %struct.rpcrdma_write_array** %5, align 8
  %24 = getelementptr inbounds %struct.rpcrdma_write_array, %struct.rpcrdma_write_array* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 8
  %25 = load i8*, i8** @xdr_zero, align 8
  %26 = load %struct.rpcrdma_write_array*, %struct.rpcrdma_write_array** %5, align 8
  %27 = getelementptr inbounds %struct.rpcrdma_write_array, %struct.rpcrdma_write_array* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  store i8* %25, i8** %33, align 8
  %34 = load i8*, i8** @xdr_zero, align 8
  %35 = load %struct.rpcrdma_write_array*, %struct.rpcrdma_write_array** %5, align 8
  %36 = getelementptr inbounds %struct.rpcrdma_write_array, %struct.rpcrdma_write_array* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i8* %34, i8** %42, align 8
  ret void
}

declare dso_local i32 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
