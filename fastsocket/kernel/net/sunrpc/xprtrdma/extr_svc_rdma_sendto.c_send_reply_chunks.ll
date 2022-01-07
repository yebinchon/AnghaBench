; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_svc_rdma_sendto.c_send_reply_chunks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_svc_rdma_sendto.c_send_reply_chunks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svcxprt_rdma = type { i32 }
%struct.rpcrdma_msg = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.svc_rqst = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.svc_rdma_req_map = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.rpcrdma_segment = type { i32, i32, i32 }
%struct.rpcrdma_write_array = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.rpcrdma_segment }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"svcrdma: RDMA_WRITE failed, ret=%d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svcxprt_rdma*, %struct.rpcrdma_msg*, %struct.rpcrdma_msg*, %struct.svc_rqst*, %struct.svc_rdma_req_map*)* @send_reply_chunks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_reply_chunks(%struct.svcxprt_rdma* %0, %struct.rpcrdma_msg* %1, %struct.rpcrdma_msg* %2, %struct.svc_rqst* %3, %struct.svc_rdma_req_map* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.svcxprt_rdma*, align 8
  %8 = alloca %struct.rpcrdma_msg*, align 8
  %9 = alloca %struct.rpcrdma_msg*, align 8
  %10 = alloca %struct.svc_rqst*, align 8
  %11 = alloca %struct.svc_rdma_req_map*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.rpcrdma_segment*, align 8
  %19 = alloca %struct.rpcrdma_write_array*, align 8
  %20 = alloca %struct.rpcrdma_write_array*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  store %struct.svcxprt_rdma* %0, %struct.svcxprt_rdma** %7, align 8
  store %struct.rpcrdma_msg* %1, %struct.rpcrdma_msg** %8, align 8
  store %struct.rpcrdma_msg* %2, %struct.rpcrdma_msg** %9, align 8
  store %struct.svc_rqst* %3, %struct.svc_rqst** %10, align 8
  store %struct.svc_rdma_req_map* %4, %struct.svc_rdma_req_map** %11, align 8
  %24 = load %struct.svc_rqst*, %struct.svc_rqst** %10, align 8
  %25 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %12, align 4
  %28 = load %struct.rpcrdma_msg*, %struct.rpcrdma_msg** %8, align 8
  %29 = call %struct.rpcrdma_write_array* @svc_rdma_get_reply_array(%struct.rpcrdma_msg* %28)
  store %struct.rpcrdma_write_array* %29, %struct.rpcrdma_write_array** %19, align 8
  %30 = load %struct.rpcrdma_write_array*, %struct.rpcrdma_write_array** %19, align 8
  %31 = icmp ne %struct.rpcrdma_write_array* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %144

33:                                               ; preds = %5
  %34 = load %struct.rpcrdma_msg*, %struct.rpcrdma_msg** %9, align 8
  %35 = getelementptr inbounds %struct.rpcrdma_msg, %struct.rpcrdma_msg* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 2
  %39 = bitcast i32* %38 to %struct.rpcrdma_write_array*
  store %struct.rpcrdma_write_array* %39, %struct.rpcrdma_write_array** %20, align 8
  %40 = load %struct.svc_rdma_req_map*, %struct.svc_rdma_req_map** %11, align 8
  %41 = getelementptr inbounds %struct.svc_rdma_req_map, %struct.svc_rdma_req_map* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = icmp ne %struct.TYPE_6__* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %33
  %45 = load %struct.svc_rdma_req_map*, %struct.svc_rdma_req_map** %11, align 8
  %46 = getelementptr inbounds %struct.svc_rdma_req_map, %struct.svc_rdma_req_map* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %14, align 4
  br label %56

50:                                               ; preds = %33
  %51 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %7, align 8
  %52 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @PAGE_SIZE, align 4
  %55 = mul nsw i32 %53, %54
  store i32 %55, i32* %14, align 4
  br label %56

56:                                               ; preds = %50, %44
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %57

57:                                               ; preds = %133, %56
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load i32, i32* %16, align 4
  %62 = load %struct.rpcrdma_write_array*, %struct.rpcrdma_write_array** %19, align 8
  %63 = getelementptr inbounds %struct.rpcrdma_write_array, %struct.rpcrdma_write_array* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %61, %64
  br label %66

66:                                               ; preds = %60, %57
  %67 = phi i1 [ false, %57 ], [ %65, %60 ]
  br i1 %67, label %68, label %136

68:                                               ; preds = %66
  %69 = load %struct.rpcrdma_write_array*, %struct.rpcrdma_write_array** %19, align 8
  %70 = getelementptr inbounds %struct.rpcrdma_write_array, %struct.rpcrdma_write_array* %69, i32 0, i32 1
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = load i32, i32* %16, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  store %struct.rpcrdma_segment* %75, %struct.rpcrdma_segment** %18, align 8
  %76 = load i32, i32* %12, align 4
  %77 = load %struct.rpcrdma_segment*, %struct.rpcrdma_segment** %18, align 8
  %78 = getelementptr inbounds %struct.rpcrdma_segment, %struct.rpcrdma_segment* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @min(i32 %76, i32 %79)
  store i32 %80, i32* %13, align 4
  %81 = load %struct.rpcrdma_segment*, %struct.rpcrdma_segment** %18, align 8
  %82 = getelementptr inbounds %struct.rpcrdma_segment, %struct.rpcrdma_segment* %81, i32 0, i32 2
  %83 = call i64 @get_unaligned(i32* %82)
  store i64 %83, i64* %22, align 8
  %84 = load %struct.rpcrdma_write_array*, %struct.rpcrdma_write_array** %20, align 8
  %85 = load i32, i32* %16, align 4
  %86 = load %struct.rpcrdma_segment*, %struct.rpcrdma_segment** %18, align 8
  %87 = getelementptr inbounds %struct.rpcrdma_segment, %struct.rpcrdma_segment* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i64, i64* %22, align 8
  %90 = load i32, i32* %13, align 4
  %91 = call i32 @svc_rdma_xdr_encode_array_chunk(%struct.rpcrdma_write_array* %84, i32 %85, i32 %88, i64 %89, i32 %90)
  store i32 0, i32* %17, align 4
  br label %92

92:                                               ; preds = %119, %68
  %93 = load i32, i32* %13, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %132

95:                                               ; preds = %92
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* %14, align 4
  %98 = call i32 @min(i32 %96, i32 %97)
  store i32 %98, i32* %23, align 4
  %99 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %7, align 8
  %100 = load %struct.svc_rqst*, %struct.svc_rqst** %10, align 8
  %101 = load %struct.rpcrdma_segment*, %struct.rpcrdma_segment** %18, align 8
  %102 = getelementptr inbounds %struct.rpcrdma_segment, %struct.rpcrdma_segment* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i64, i64* %22, align 8
  %105 = load i32, i32* %17, align 4
  %106 = sext i32 %105 to i64
  %107 = add nsw i64 %104, %106
  %108 = load i32, i32* %15, align 4
  %109 = load i32, i32* %23, align 4
  %110 = load %struct.svc_rdma_req_map*, %struct.svc_rdma_req_map** %11, align 8
  %111 = call i32 @send_write(%struct.svcxprt_rdma* %99, %struct.svc_rqst* %100, i32 %103, i64 %107, i32 %108, i32 %109, %struct.svc_rdma_req_map* %110)
  store i32 %111, i32* %21, align 4
  %112 = load i32, i32* %21, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %95
  %115 = load i32, i32* %21, align 4
  %116 = call i32 @dprintk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* @EIO, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %6, align 4
  br label %144

119:                                              ; preds = %95
  %120 = load i32, i32* %23, align 4
  %121 = load i32, i32* %17, align 4
  %122 = add nsw i32 %121, %120
  store i32 %122, i32* %17, align 4
  %123 = load i32, i32* %23, align 4
  %124 = load i32, i32* %15, align 4
  %125 = add nsw i32 %124, %123
  store i32 %125, i32* %15, align 4
  %126 = load i32, i32* %23, align 4
  %127 = load i32, i32* %12, align 4
  %128 = sub nsw i32 %127, %126
  store i32 %128, i32* %12, align 4
  %129 = load i32, i32* %23, align 4
  %130 = load i32, i32* %13, align 4
  %131 = sub nsw i32 %130, %129
  store i32 %131, i32* %13, align 4
  br label %92

132:                                              ; preds = %92
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %16, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %16, align 4
  br label %57

136:                                              ; preds = %66
  %137 = load %struct.rpcrdma_write_array*, %struct.rpcrdma_write_array** %20, align 8
  %138 = load i32, i32* %16, align 4
  %139 = call i32 @svc_rdma_xdr_encode_reply_array(%struct.rpcrdma_write_array* %137, i32 %138)
  %140 = load %struct.svc_rqst*, %struct.svc_rqst** %10, align 8
  %141 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  store i32 %143, i32* %6, align 4
  br label %144

144:                                              ; preds = %136, %114, %32
  %145 = load i32, i32* %6, align 4
  ret i32 %145
}

declare dso_local %struct.rpcrdma_write_array* @svc_rdma_get_reply_array(%struct.rpcrdma_msg*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @get_unaligned(i32*) #1

declare dso_local i32 @svc_rdma_xdr_encode_array_chunk(%struct.rpcrdma_write_array*, i32, i32, i64, i32) #1

declare dso_local i32 @send_write(%struct.svcxprt_rdma*, %struct.svc_rqst*, i32, i64, i32, i32, %struct.svc_rdma_req_map*) #1

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @svc_rdma_xdr_encode_reply_array(%struct.rpcrdma_write_array*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
