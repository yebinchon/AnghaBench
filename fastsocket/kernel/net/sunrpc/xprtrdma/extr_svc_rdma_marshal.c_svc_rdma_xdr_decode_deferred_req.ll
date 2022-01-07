; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_svc_rdma_marshal.c_svc_rdma_xdr_decode_deferred_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_svc_rdma_marshal.c_svc_rdma_xdr_decode_deferred_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32*, i32 }
%struct.rpcrdma_msg = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.rpcrdma_read_chunk = type { i64, i32 }
%struct.rpcrdma_write_array = type { i64, i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [54 x i8] c"svcrdma: processing deferred RDMA header on rqstp=%p\0A\00", align 1
@RDMA_MSGP = common dso_local global i64 0, align 8
@xdr_zero = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svc_rdma_xdr_decode_deferred_req(%struct.svc_rqst* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.svc_rqst*, align 8
  %4 = alloca %struct.rpcrdma_msg*, align 8
  %5 = alloca %struct.rpcrdma_read_chunk*, align 8
  %6 = alloca %struct.rpcrdma_write_array*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %3, align 8
  store %struct.rpcrdma_msg* null, %struct.rpcrdma_msg** %4, align 8
  %9 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %10 = call i32 @dprintk(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), %struct.svc_rqst* %9)
  %11 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %12 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i64 0
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = bitcast i32* %17 to %struct.rpcrdma_msg*
  store %struct.rpcrdma_msg* %18, %struct.rpcrdma_msg** %4, align 8
  %19 = load %struct.rpcrdma_msg*, %struct.rpcrdma_msg** %4, align 8
  %20 = getelementptr inbounds %struct.rpcrdma_msg, %struct.rpcrdma_msg* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @RDMA_MSGP, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %54

24:                                               ; preds = %1
  %25 = load %struct.rpcrdma_msg*, %struct.rpcrdma_msg** %4, align 8
  %26 = getelementptr inbounds %struct.rpcrdma_msg, %struct.rpcrdma_msg* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 4
  store i32* %30, i32** %7, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %33 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  store i32* %31, i32** %37, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = ptrtoint i32* %38 to i64
  %40 = load %struct.rpcrdma_msg*, %struct.rpcrdma_msg** %4, align 8
  %41 = ptrtoint %struct.rpcrdma_msg* %40 to i64
  %42 = sub i64 %39, %41
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %46 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i64 0
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = sub nsw i32 %51, %44
  store i32 %52, i32* %50, align 8
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %2, align 4
  br label %141

54:                                               ; preds = %1
  %55 = load %struct.rpcrdma_msg*, %struct.rpcrdma_msg** %4, align 8
  %56 = getelementptr inbounds %struct.rpcrdma_msg, %struct.rpcrdma_msg* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  store i32* %59, i32** %7, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = bitcast i32* %60 to %struct.rpcrdma_read_chunk*
  store %struct.rpcrdma_read_chunk* %61, %struct.rpcrdma_read_chunk** %5, align 8
  br label %62

62:                                               ; preds = %69, %54
  %63 = load %struct.rpcrdma_read_chunk*, %struct.rpcrdma_read_chunk** %5, align 8
  %64 = getelementptr inbounds %struct.rpcrdma_read_chunk, %struct.rpcrdma_read_chunk* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @xdr_zero, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %62
  br label %69

69:                                               ; preds = %68
  %70 = load %struct.rpcrdma_read_chunk*, %struct.rpcrdma_read_chunk** %5, align 8
  %71 = getelementptr inbounds %struct.rpcrdma_read_chunk, %struct.rpcrdma_read_chunk* %70, i32 1
  store %struct.rpcrdma_read_chunk* %71, %struct.rpcrdma_read_chunk** %5, align 8
  br label %62

72:                                               ; preds = %62
  %73 = load %struct.rpcrdma_read_chunk*, %struct.rpcrdma_read_chunk** %5, align 8
  %74 = getelementptr inbounds %struct.rpcrdma_read_chunk, %struct.rpcrdma_read_chunk* %73, i32 0, i32 1
  store i32* %74, i32** %7, align 8
  %75 = load i32*, i32** %7, align 8
  %76 = bitcast i32* %75 to %struct.rpcrdma_write_array*
  store %struct.rpcrdma_write_array* %76, %struct.rpcrdma_write_array** %6, align 8
  %77 = load %struct.rpcrdma_write_array*, %struct.rpcrdma_write_array** %6, align 8
  %78 = getelementptr inbounds %struct.rpcrdma_write_array, %struct.rpcrdma_write_array* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @xdr_zero, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %72
  %83 = load %struct.rpcrdma_write_array*, %struct.rpcrdma_write_array** %6, align 8
  %84 = getelementptr inbounds %struct.rpcrdma_write_array, %struct.rpcrdma_write_array* %83, i32 0, i32 1
  %85 = bitcast i64* %84 to i32*
  store i32* %85, i32** %7, align 8
  br label %96

86:                                               ; preds = %72
  %87 = load %struct.rpcrdma_write_array*, %struct.rpcrdma_write_array** %6, align 8
  %88 = getelementptr inbounds %struct.rpcrdma_write_array, %struct.rpcrdma_write_array* %87, i32 0, i32 2
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %88, align 8
  %90 = load %struct.rpcrdma_write_array*, %struct.rpcrdma_write_array** %6, align 8
  %91 = getelementptr inbounds %struct.rpcrdma_write_array, %struct.rpcrdma_write_array* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  store i32* %95, i32** %7, align 8
  br label %96

96:                                               ; preds = %86, %82
  %97 = load i32*, i32** %7, align 8
  %98 = bitcast i32* %97 to %struct.rpcrdma_write_array*
  store %struct.rpcrdma_write_array* %98, %struct.rpcrdma_write_array** %6, align 8
  %99 = load %struct.rpcrdma_write_array*, %struct.rpcrdma_write_array** %6, align 8
  %100 = getelementptr inbounds %struct.rpcrdma_write_array, %struct.rpcrdma_write_array* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @xdr_zero, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %96
  %105 = load %struct.rpcrdma_write_array*, %struct.rpcrdma_write_array** %6, align 8
  %106 = getelementptr inbounds %struct.rpcrdma_write_array, %struct.rpcrdma_write_array* %105, i32 0, i32 1
  %107 = bitcast i64* %106 to i32*
  store i32* %107, i32** %7, align 8
  br label %117

108:                                              ; preds = %96
  %109 = load %struct.rpcrdma_write_array*, %struct.rpcrdma_write_array** %6, align 8
  %110 = getelementptr inbounds %struct.rpcrdma_write_array, %struct.rpcrdma_write_array* %109, i32 0, i32 2
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %110, align 8
  %112 = load %struct.rpcrdma_write_array*, %struct.rpcrdma_write_array** %6, align 8
  %113 = getelementptr inbounds %struct.rpcrdma_write_array, %struct.rpcrdma_write_array* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i64 %114
  %116 = bitcast %struct.TYPE_10__* %115 to i32*
  store i32* %116, i32** %7, align 8
  br label %117

117:                                              ; preds = %108, %104
  %118 = load i32*, i32** %7, align 8
  %119 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %120 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i64 0
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 0
  store i32* %118, i32** %124, align 8
  %125 = load i32*, i32** %7, align 8
  %126 = ptrtoint i32* %125 to i64
  %127 = load %struct.rpcrdma_msg*, %struct.rpcrdma_msg** %4, align 8
  %128 = ptrtoint %struct.rpcrdma_msg* %127 to i64
  %129 = sub i64 %126, %128
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %8, align 4
  %131 = load i32, i32* %8, align 4
  %132 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %133 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i64 0
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = sub nsw i32 %138, %131
  store i32 %139, i32* %137, align 8
  %140 = load i32, i32* %8, align 4
  store i32 %140, i32* %2, align 4
  br label %141

141:                                              ; preds = %117, %24
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local i32 @dprintk(i8*, %struct.svc_rqst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
