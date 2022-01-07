; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_svc_rdma_sendto.c_send_write_chunks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_svc_rdma_sendto.c_send_write_chunks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svcxprt_rdma = type { i32 }
%struct.rpcrdma_msg = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.svc_rqst = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__*, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.svc_rdma_req_map = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.rpcrdma_write_array = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.rpcrdma_segment }
%struct.rpcrdma_segment = type { i32, i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"svcrdma: RDMA_WRITE failed, ret=%d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svcxprt_rdma*, %struct.rpcrdma_msg*, %struct.rpcrdma_msg*, %struct.svc_rqst*, %struct.svc_rdma_req_map*)* @send_write_chunks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_write_chunks(%struct.svcxprt_rdma* %0, %struct.rpcrdma_msg* %1, %struct.rpcrdma_msg* %2, %struct.svc_rqst* %3, %struct.svc_rdma_req_map* %4) #0 {
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
  %18 = alloca %struct.rpcrdma_write_array*, align 8
  %19 = alloca %struct.rpcrdma_write_array*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.rpcrdma_segment*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  store %struct.svcxprt_rdma* %0, %struct.svcxprt_rdma** %7, align 8
  store %struct.rpcrdma_msg* %1, %struct.rpcrdma_msg** %8, align 8
  store %struct.rpcrdma_msg* %2, %struct.rpcrdma_msg** %9, align 8
  store %struct.svc_rqst* %3, %struct.svc_rqst** %10, align 8
  store %struct.svc_rdma_req_map* %4, %struct.svc_rdma_req_map** %11, align 8
  %24 = load %struct.svc_rqst*, %struct.svc_rqst** %10, align 8
  %25 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.svc_rqst*, %struct.svc_rqst** %10, align 8
  %29 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %27, %34
  store i32 %35, i32* %12, align 4
  %36 = load %struct.rpcrdma_msg*, %struct.rpcrdma_msg** %8, align 8
  %37 = call %struct.rpcrdma_write_array* @svc_rdma_get_write_array(%struct.rpcrdma_msg* %36)
  store %struct.rpcrdma_write_array* %37, %struct.rpcrdma_write_array** %18, align 8
  %38 = load %struct.rpcrdma_write_array*, %struct.rpcrdma_write_array** %18, align 8
  %39 = icmp ne %struct.rpcrdma_write_array* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %167

41:                                               ; preds = %5
  %42 = load %struct.rpcrdma_msg*, %struct.rpcrdma_msg** %9, align 8
  %43 = getelementptr inbounds %struct.rpcrdma_msg, %struct.rpcrdma_msg* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = bitcast i32* %46 to %struct.rpcrdma_write_array*
  store %struct.rpcrdma_write_array* %47, %struct.rpcrdma_write_array** %19, align 8
  %48 = load %struct.svc_rdma_req_map*, %struct.svc_rdma_req_map** %11, align 8
  %49 = getelementptr inbounds %struct.svc_rdma_req_map, %struct.svc_rdma_req_map* %48, i32 0, i32 0
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = icmp ne %struct.TYPE_8__* %50, null
  br i1 %51, label %52, label %58

52:                                               ; preds = %41
  %53 = load %struct.svc_rdma_req_map*, %struct.svc_rdma_req_map** %11, align 8
  %54 = getelementptr inbounds %struct.svc_rdma_req_map, %struct.svc_rdma_req_map* %53, i32 0, i32 0
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %14, align 4
  br label %64

58:                                               ; preds = %41
  %59 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %7, align 8
  %60 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @PAGE_SIZE, align 4
  %63 = mul nsw i32 %61, %62
  store i32 %63, i32* %14, align 4
  br label %64

64:                                               ; preds = %58, %52
  %65 = load %struct.svc_rqst*, %struct.svc_rqst** %10, align 8
  %66 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i64 0
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %15, align 4
  store i32 0, i32* %17, align 4
  br label %72

72:                                               ; preds = %148, %64
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %72
  %76 = load i32, i32* %17, align 4
  %77 = load %struct.rpcrdma_write_array*, %struct.rpcrdma_write_array** %18, align 8
  %78 = getelementptr inbounds %struct.rpcrdma_write_array, %struct.rpcrdma_write_array* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp slt i32 %76, %79
  br label %81

81:                                               ; preds = %75, %72
  %82 = phi i1 [ false, %72 ], [ %80, %75 ]
  br i1 %82, label %83, label %151

83:                                               ; preds = %81
  %84 = load %struct.rpcrdma_write_array*, %struct.rpcrdma_write_array** %18, align 8
  %85 = getelementptr inbounds %struct.rpcrdma_write_array, %struct.rpcrdma_write_array* %84, i32 0, i32 1
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %85, align 8
  %87 = load i32, i32* %17, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  store %struct.rpcrdma_segment* %90, %struct.rpcrdma_segment** %21, align 8
  %91 = load i32, i32* %12, align 4
  %92 = load %struct.rpcrdma_segment*, %struct.rpcrdma_segment** %21, align 8
  %93 = getelementptr inbounds %struct.rpcrdma_segment, %struct.rpcrdma_segment* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @min(i32 %91, i32 %94)
  store i32 %95, i32* %13, align 4
  %96 = load %struct.rpcrdma_segment*, %struct.rpcrdma_segment** %21, align 8
  %97 = getelementptr inbounds %struct.rpcrdma_segment, %struct.rpcrdma_segment* %96, i32 0, i32 2
  %98 = call i64 @get_unaligned(i32* %97)
  store i64 %98, i64* %22, align 8
  %99 = load %struct.rpcrdma_write_array*, %struct.rpcrdma_write_array** %19, align 8
  %100 = load i32, i32* %17, align 4
  %101 = load %struct.rpcrdma_segment*, %struct.rpcrdma_segment** %21, align 8
  %102 = getelementptr inbounds %struct.rpcrdma_segment, %struct.rpcrdma_segment* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i64, i64* %22, align 8
  %105 = load i32, i32* %13, align 4
  %106 = call i32 @svc_rdma_xdr_encode_array_chunk(%struct.rpcrdma_write_array* %99, i32 %100, i32 %103, i64 %104, i32 %105)
  store i32 0, i32* %16, align 4
  br label %107

107:                                              ; preds = %134, %83
  %108 = load i32, i32* %13, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %147

110:                                              ; preds = %107
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* %14, align 4
  %113 = call i32 @min(i32 %111, i32 %112)
  store i32 %113, i32* %23, align 4
  %114 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %7, align 8
  %115 = load %struct.svc_rqst*, %struct.svc_rqst** %10, align 8
  %116 = load %struct.rpcrdma_segment*, %struct.rpcrdma_segment** %21, align 8
  %117 = getelementptr inbounds %struct.rpcrdma_segment, %struct.rpcrdma_segment* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i64, i64* %22, align 8
  %120 = load i32, i32* %16, align 4
  %121 = sext i32 %120 to i64
  %122 = add nsw i64 %119, %121
  %123 = load i32, i32* %15, align 4
  %124 = load i32, i32* %23, align 4
  %125 = load %struct.svc_rdma_req_map*, %struct.svc_rdma_req_map** %11, align 8
  %126 = call i32 @send_write(%struct.svcxprt_rdma* %114, %struct.svc_rqst* %115, i32 %118, i64 %122, i32 %123, i32 %124, %struct.svc_rdma_req_map* %125)
  store i32 %126, i32* %20, align 4
  %127 = load i32, i32* %20, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %110
  %130 = load i32, i32* %20, align 4
  %131 = call i32 @dprintk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %130)
  %132 = load i32, i32* @EIO, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %6, align 4
  br label %167

134:                                              ; preds = %110
  %135 = load i32, i32* %23, align 4
  %136 = load i32, i32* %16, align 4
  %137 = add nsw i32 %136, %135
  store i32 %137, i32* %16, align 4
  %138 = load i32, i32* %23, align 4
  %139 = load i32, i32* %15, align 4
  %140 = add nsw i32 %139, %138
  store i32 %140, i32* %15, align 4
  %141 = load i32, i32* %23, align 4
  %142 = load i32, i32* %12, align 4
  %143 = sub nsw i32 %142, %141
  store i32 %143, i32* %12, align 4
  %144 = load i32, i32* %23, align 4
  %145 = load i32, i32* %13, align 4
  %146 = sub nsw i32 %145, %144
  store i32 %146, i32* %13, align 4
  br label %107

147:                                              ; preds = %107
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %17, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %17, align 4
  br label %72

151:                                              ; preds = %81
  %152 = load %struct.rpcrdma_msg*, %struct.rpcrdma_msg** %9, align 8
  %153 = load i32, i32* %17, align 4
  %154 = call i32 @svc_rdma_xdr_encode_write_list(%struct.rpcrdma_msg* %152, i32 %153)
  %155 = load %struct.svc_rqst*, %struct.svc_rqst** %10, align 8
  %156 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.svc_rqst*, %struct.svc_rqst** %10, align 8
  %160 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 1
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i64 0
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = add nsw i32 %158, %165
  store i32 %166, i32* %6, align 4
  br label %167

167:                                              ; preds = %151, %129, %40
  %168 = load i32, i32* %6, align 4
  ret i32 %168
}

declare dso_local %struct.rpcrdma_write_array* @svc_rdma_get_write_array(%struct.rpcrdma_msg*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @get_unaligned(i32*) #1

declare dso_local i32 @svc_rdma_xdr_encode_array_chunk(%struct.rpcrdma_write_array*, i32, i32, i64, i32) #1

declare dso_local i32 @send_write(%struct.svcxprt_rdma*, %struct.svc_rqst*, i32, i64, i32, i32, %struct.svc_rdma_req_map*) #1

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @svc_rdma_xdr_encode_write_list(%struct.rpcrdma_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
