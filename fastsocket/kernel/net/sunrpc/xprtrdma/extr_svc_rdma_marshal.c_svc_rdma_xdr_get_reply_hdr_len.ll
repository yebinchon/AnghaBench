; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_svc_rdma_marshal.c_svc_rdma_xdr_get_reply_hdr_len.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_svc_rdma_marshal.c_svc_rdma_xdr_get_reply_hdr_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpcrdma_msg = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.rpcrdma_write_array = type { i32, %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svc_rdma_xdr_get_reply_hdr_len(%struct.rpcrdma_msg* %0) #0 {
  %2 = alloca %struct.rpcrdma_msg*, align 8
  %3 = alloca %struct.rpcrdma_write_array*, align 8
  store %struct.rpcrdma_msg* %0, %struct.rpcrdma_msg** %2, align 8
  %4 = load %struct.rpcrdma_msg*, %struct.rpcrdma_msg** %2, align 8
  %5 = getelementptr inbounds %struct.rpcrdma_msg, %struct.rpcrdma_msg* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 1
  %9 = bitcast i32* %8 to %struct.rpcrdma_write_array*
  store %struct.rpcrdma_write_array* %9, %struct.rpcrdma_write_array** %3, align 8
  %10 = load %struct.rpcrdma_write_array*, %struct.rpcrdma_write_array** %3, align 8
  %11 = getelementptr inbounds %struct.rpcrdma_write_array, %struct.rpcrdma_write_array* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %1
  %15 = load %struct.rpcrdma_write_array*, %struct.rpcrdma_write_array** %3, align 8
  %16 = getelementptr inbounds %struct.rpcrdma_write_array, %struct.rpcrdma_write_array* %15, i32 0, i32 1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = load %struct.rpcrdma_write_array*, %struct.rpcrdma_write_array** %3, align 8
  %19 = getelementptr inbounds %struct.rpcrdma_write_array, %struct.rpcrdma_write_array* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @ntohl(i32 %20)
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = bitcast i32* %24 to %struct.rpcrdma_write_array*
  store %struct.rpcrdma_write_array* %25, %struct.rpcrdma_write_array** %3, align 8
  br label %30

26:                                               ; preds = %1
  %27 = load %struct.rpcrdma_write_array*, %struct.rpcrdma_write_array** %3, align 8
  %28 = getelementptr inbounds %struct.rpcrdma_write_array, %struct.rpcrdma_write_array* %27, i32 0, i32 0
  %29 = bitcast i32* %28 to %struct.rpcrdma_write_array*
  store %struct.rpcrdma_write_array* %29, %struct.rpcrdma_write_array** %3, align 8
  br label %30

30:                                               ; preds = %26, %14
  %31 = load %struct.rpcrdma_write_array*, %struct.rpcrdma_write_array** %3, align 8
  %32 = getelementptr inbounds %struct.rpcrdma_write_array, %struct.rpcrdma_write_array* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %30
  %36 = load %struct.rpcrdma_write_array*, %struct.rpcrdma_write_array** %3, align 8
  %37 = getelementptr inbounds %struct.rpcrdma_write_array, %struct.rpcrdma_write_array* %36, i32 0, i32 1
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = load %struct.rpcrdma_write_array*, %struct.rpcrdma_write_array** %3, align 8
  %40 = getelementptr inbounds %struct.rpcrdma_write_array, %struct.rpcrdma_write_array* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @ntohl(i32 %41)
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i64 %42
  %44 = bitcast %struct.TYPE_6__* %43 to %struct.rpcrdma_write_array*
  store %struct.rpcrdma_write_array* %44, %struct.rpcrdma_write_array** %3, align 8
  br label %49

45:                                               ; preds = %30
  %46 = load %struct.rpcrdma_write_array*, %struct.rpcrdma_write_array** %3, align 8
  %47 = getelementptr inbounds %struct.rpcrdma_write_array, %struct.rpcrdma_write_array* %46, i32 0, i32 0
  %48 = bitcast i32* %47 to %struct.rpcrdma_write_array*
  store %struct.rpcrdma_write_array* %48, %struct.rpcrdma_write_array** %3, align 8
  br label %49

49:                                               ; preds = %45, %35
  %50 = load %struct.rpcrdma_write_array*, %struct.rpcrdma_write_array** %3, align 8
  %51 = ptrtoint %struct.rpcrdma_write_array* %50 to i64
  %52 = load %struct.rpcrdma_msg*, %struct.rpcrdma_msg** %2, align 8
  %53 = ptrtoint %struct.rpcrdma_msg* %52 to i64
  %54 = sub i64 %51, %53
  %55 = trunc i64 %54 to i32
  ret i32 %55
}

declare dso_local i64 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
