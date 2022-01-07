; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_svc_rdma_recvfrom.c_fast_reg_read_chunks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_svc_rdma_recvfrom.c_fast_reg_read_chunks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svcxprt_rdma = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.svc_rqst = type { %struct.TYPE_12__, i32* }
%struct.TYPE_12__ = type { i32*, i64, i64, i32*, i32* }
%struct.svc_rdma_op_ctxt = type { i64, i64, %struct.TYPE_11__, i32*, %struct.svc_rdma_fastreg_mr* }
%struct.TYPE_11__ = type { i32, i32*, i64, i64, i64, i32*, i32* }
%struct.svc_rdma_fastreg_mr = type { i32, i32, i32, i64, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32* }
%struct.rpcrdma_msg = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32* }
%struct.svc_rdma_req_map = type { %struct.TYPE_15__*, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i64, i64 }
%struct.rpcrdma_read_chunk = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@IB_ACCESS_LOCAL_WRITE = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_WRITE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"svcrdma: error fast registering xdr for xprt %p\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svcxprt_rdma*, %struct.svc_rqst*, %struct.svc_rdma_op_ctxt*, %struct.rpcrdma_msg*, %struct.svc_rdma_req_map*, %struct.svc_rdma_req_map*, i32, i32)* @fast_reg_read_chunks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fast_reg_read_chunks(%struct.svcxprt_rdma* %0, %struct.svc_rqst* %1, %struct.svc_rdma_op_ctxt* %2, %struct.rpcrdma_msg* %3, %struct.svc_rdma_req_map* %4, %struct.svc_rdma_req_map* %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.svcxprt_rdma*, align 8
  %11 = alloca %struct.svc_rqst*, align 8
  %12 = alloca %struct.svc_rdma_op_ctxt*, align 8
  %13 = alloca %struct.rpcrdma_msg*, align 8
  %14 = alloca %struct.svc_rdma_req_map*, align 8
  %15 = alloca %struct.svc_rdma_req_map*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca %struct.rpcrdma_read_chunk*, align 8
  %22 = alloca %struct.svc_rdma_fastreg_mr*, align 8
  %23 = alloca i32, align 4
  store %struct.svcxprt_rdma* %0, %struct.svcxprt_rdma** %10, align 8
  store %struct.svc_rqst* %1, %struct.svc_rqst** %11, align 8
  store %struct.svc_rdma_op_ctxt* %2, %struct.svc_rdma_op_ctxt** %12, align 8
  store %struct.rpcrdma_msg* %3, %struct.rpcrdma_msg** %13, align 8
  store %struct.svc_rdma_req_map* %4, %struct.svc_rdma_req_map** %14, align 8
  store %struct.svc_rdma_req_map* %5, %struct.svc_rdma_req_map** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 0, i32* %23, align 4
  %24 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %10, align 8
  %25 = call %struct.svc_rdma_fastreg_mr* @svc_rdma_get_frmr(%struct.svcxprt_rdma* %24)
  store %struct.svc_rdma_fastreg_mr* %25, %struct.svc_rdma_fastreg_mr** %22, align 8
  %26 = load %struct.svc_rdma_fastreg_mr*, %struct.svc_rdma_fastreg_mr** %22, align 8
  %27 = call i64 @IS_ERR(%struct.svc_rdma_fastreg_mr* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %8
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %9, align 4
  br label %289

32:                                               ; preds = %8
  %33 = load %struct.svc_rdma_fastreg_mr*, %struct.svc_rdma_fastreg_mr** %22, align 8
  %34 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %12, align 8
  %35 = getelementptr inbounds %struct.svc_rdma_op_ctxt, %struct.svc_rdma_op_ctxt* %34, i32 0, i32 4
  store %struct.svc_rdma_fastreg_mr* %33, %struct.svc_rdma_fastreg_mr** %35, align 8
  %36 = load %struct.svc_rqst*, %struct.svc_rqst** %11, align 8
  %37 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 4
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %12, align 8
  %43 = getelementptr inbounds %struct.svc_rdma_op_ctxt, %struct.svc_rdma_op_ctxt* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 6
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  store i32 %41, i32* %46, align 4
  %47 = load %struct.svc_rqst*, %struct.svc_rqst** %11, align 8
  %48 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 3
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %12, align 8
  %54 = getelementptr inbounds %struct.svc_rdma_op_ctxt, %struct.svc_rdma_op_ctxt* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 5
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  store i32 %52, i32* %57, align 4
  %58 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %12, align 8
  %59 = getelementptr inbounds %struct.svc_rdma_op_ctxt, %struct.svc_rdma_op_ctxt* %58, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %12, align 8
  %62 = getelementptr inbounds %struct.svc_rdma_op_ctxt, %struct.svc_rdma_op_ctxt* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  %65 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %12, align 8
  %66 = getelementptr inbounds %struct.svc_rdma_op_ctxt, %struct.svc_rdma_op_ctxt* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 1
  store i32* %64, i32** %67, align 8
  %68 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %12, align 8
  %69 = getelementptr inbounds %struct.svc_rdma_op_ctxt, %struct.svc_rdma_op_ctxt* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %12, align 8
  %72 = getelementptr inbounds %struct.svc_rdma_op_ctxt, %struct.svc_rdma_op_ctxt* %71, i32 0, i32 1
  store i64 %70, i64* %72, align 8
  %73 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %12, align 8
  %74 = getelementptr inbounds %struct.svc_rdma_op_ctxt, %struct.svc_rdma_op_ctxt* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 4
  store i64 0, i64* %75, align 8
  %76 = load i32, i32* %17, align 4
  %77 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %12, align 8
  %78 = getelementptr inbounds %struct.svc_rdma_op_ctxt, %struct.svc_rdma_op_ctxt* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  store i32 %76, i32* %79, align 8
  %80 = load %struct.svc_rqst*, %struct.svc_rqst** %11, align 8
  %81 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* %17, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %83, %85
  %87 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %12, align 8
  %88 = getelementptr inbounds %struct.svc_rdma_op_ctxt, %struct.svc_rdma_op_ctxt* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 3
  store i64 %86, i64* %89, align 8
  %90 = load %struct.svc_rqst*, %struct.svc_rqst** %11, align 8
  %91 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i32, i32* %17, align 4
  %95 = sext i32 %94 to i64
  %96 = add nsw i64 %93, %95
  %97 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %12, align 8
  %98 = getelementptr inbounds %struct.svc_rdma_op_ctxt, %struct.svc_rdma_op_ctxt* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 2
  store i64 %96, i64* %99, align 8
  %100 = load %struct.svc_rqst*, %struct.svc_rqst** %11, align 8
  %101 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  %105 = load i32, i32* %104, align 4
  %106 = call i64 @page_address(i32 %105)
  %107 = load %struct.svc_rdma_fastreg_mr*, %struct.svc_rdma_fastreg_mr** %22, align 8
  %108 = getelementptr inbounds %struct.svc_rdma_fastreg_mr, %struct.svc_rdma_fastreg_mr* %107, i32 0, i32 3
  store i64 %106, i64* %108, align 8
  %109 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %110 = load %struct.svc_rdma_fastreg_mr*, %struct.svc_rdma_fastreg_mr** %22, align 8
  %111 = getelementptr inbounds %struct.svc_rdma_fastreg_mr, %struct.svc_rdma_fastreg_mr* %110, i32 0, i32 5
  store i32 %109, i32* %111, align 8
  %112 = load i32, i32* @IB_ACCESS_LOCAL_WRITE, align 4
  %113 = load i32, i32* @IB_ACCESS_REMOTE_WRITE, align 4
  %114 = or i32 %112, %113
  %115 = load %struct.svc_rdma_fastreg_mr*, %struct.svc_rdma_fastreg_mr** %22, align 8
  %116 = getelementptr inbounds %struct.svc_rdma_fastreg_mr, %struct.svc_rdma_fastreg_mr* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  %117 = load i32, i32* %17, align 4
  %118 = load %struct.svc_rdma_fastreg_mr*, %struct.svc_rdma_fastreg_mr** %22, align 8
  %119 = getelementptr inbounds %struct.svc_rdma_fastreg_mr, %struct.svc_rdma_fastreg_mr* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 4
  %120 = load i32, i32* %17, align 4
  %121 = call i32 @PAGE_ALIGN(i32 %120)
  %122 = load i32, i32* @PAGE_SHIFT, align 4
  %123 = ashr i32 %121, %122
  %124 = load %struct.svc_rdma_fastreg_mr*, %struct.svc_rdma_fastreg_mr** %22, align 8
  %125 = getelementptr inbounds %struct.svc_rdma_fastreg_mr, %struct.svc_rdma_fastreg_mr* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 8
  store i32 0, i32* %18, align 4
  br label %126

126:                                              ; preds = %193, %32
  %127 = load i32, i32* %18, align 4
  %128 = load %struct.svc_rdma_fastreg_mr*, %struct.svc_rdma_fastreg_mr** %22, align 8
  %129 = getelementptr inbounds %struct.svc_rdma_fastreg_mr, %struct.svc_rdma_fastreg_mr* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = icmp slt i32 %127, %130
  br i1 %131, label %132, label %196

132:                                              ; preds = %126
  %133 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %10, align 8
  %134 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %133, i32 0, i32 1
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.svc_rqst*, %struct.svc_rqst** %11, align 8
  %139 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %18, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @PAGE_SIZE, align 4
  %147 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %148 = call i32 @ib_dma_map_page(i32 %137, i32 %145, i32 0, i32 %146, i32 %147)
  %149 = load %struct.svc_rdma_fastreg_mr*, %struct.svc_rdma_fastreg_mr** %22, align 8
  %150 = getelementptr inbounds %struct.svc_rdma_fastreg_mr, %struct.svc_rdma_fastreg_mr* %149, i32 0, i32 4
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %18, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  store i32 %148, i32* %156, align 4
  %157 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %10, align 8
  %158 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %157, i32 0, i32 1
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.svc_rdma_fastreg_mr*, %struct.svc_rdma_fastreg_mr** %22, align 8
  %163 = getelementptr inbounds %struct.svc_rdma_fastreg_mr, %struct.svc_rdma_fastreg_mr* %162, i32 0, i32 4
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 0
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* %18, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = call i64 @ib_dma_mapping_error(i32 %161, i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %132
  br label %281

174:                                              ; preds = %132
  %175 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %10, align 8
  %176 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %175, i32 0, i32 0
  %177 = call i32 @atomic_inc(i32* %176)
  %178 = load %struct.svc_rqst*, %struct.svc_rqst** %11, align 8
  %179 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = load i32, i32* %18, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %12, align 8
  %187 = getelementptr inbounds %struct.svc_rdma_op_ctxt, %struct.svc_rdma_op_ctxt* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 1
  %189 = load i32*, i32** %188, align 8
  %190 = load i32, i32* %18, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  store i32 %185, i32* %192, align 4
  br label %193

193:                                              ; preds = %174
  %194 = load i32, i32* %18, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %18, align 4
  br label %126

196:                                              ; preds = %126
  %197 = load i32, i32* %18, align 4
  %198 = sext i32 %197 to i64
  %199 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %12, align 8
  %200 = getelementptr inbounds %struct.svc_rdma_op_ctxt, %struct.svc_rdma_op_ctxt* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = add i64 %201, %198
  store i64 %202, i64* %200, align 8
  %203 = load %struct.svc_rqst*, %struct.svc_rqst** %11, align 8
  %204 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 0
  %206 = load i32*, i32** %205, align 8
  %207 = load i32, i32* %18, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  %210 = load %struct.svc_rqst*, %struct.svc_rqst** %11, align 8
  %211 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %210, i32 0, i32 1
  store i32* %209, i32** %211, align 8
  store i64 0, i64* %20, align 8
  %212 = load %struct.rpcrdma_msg*, %struct.rpcrdma_msg** %13, align 8
  %213 = getelementptr inbounds %struct.rpcrdma_msg, %struct.rpcrdma_msg* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %213, i32 0, i32 0
  %215 = load i32*, i32** %214, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 0
  %217 = bitcast i32* %216 to %struct.rpcrdma_read_chunk*
  store %struct.rpcrdma_read_chunk* %217, %struct.rpcrdma_read_chunk** %21, align 8
  store i32 0, i32* %19, align 4
  br label %218

218:                                              ; preds = %269, %196
  %219 = load i32, i32* %19, align 4
  %220 = load i32, i32* %16, align 4
  %221 = icmp slt i32 %219, %220
  br i1 %221, label %222, label %272

222:                                              ; preds = %218
  %223 = load %struct.svc_rdma_fastreg_mr*, %struct.svc_rdma_fastreg_mr** %22, align 8
  %224 = getelementptr inbounds %struct.svc_rdma_fastreg_mr, %struct.svc_rdma_fastreg_mr* %223, i32 0, i32 3
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* %20, align 8
  %227 = add nsw i64 %225, %226
  %228 = load %struct.svc_rdma_req_map*, %struct.svc_rdma_req_map** %14, align 8
  %229 = getelementptr inbounds %struct.svc_rdma_req_map, %struct.svc_rdma_req_map* %228, i32 0, i32 1
  %230 = load %struct.TYPE_14__*, %struct.TYPE_14__** %229, align 8
  %231 = load i32, i32* %19, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %230, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %233, i32 0, i32 1
  store i64 %227, i64* %234, align 8
  %235 = load %struct.rpcrdma_read_chunk*, %struct.rpcrdma_read_chunk** %21, align 8
  %236 = getelementptr inbounds %struct.rpcrdma_read_chunk, %struct.rpcrdma_read_chunk* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = load %struct.svc_rdma_req_map*, %struct.svc_rdma_req_map** %14, align 8
  %240 = getelementptr inbounds %struct.svc_rdma_req_map, %struct.svc_rdma_req_map* %239, i32 0, i32 1
  %241 = load %struct.TYPE_14__*, %struct.TYPE_14__** %240, align 8
  %242 = load i32, i32* %19, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %241, i64 %243
  %245 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %244, i32 0, i32 0
  store i64 %238, i64* %245, align 8
  %246 = load %struct.svc_rdma_req_map*, %struct.svc_rdma_req_map** %15, align 8
  %247 = getelementptr inbounds %struct.svc_rdma_req_map, %struct.svc_rdma_req_map* %246, i32 0, i32 0
  %248 = load %struct.TYPE_15__*, %struct.TYPE_15__** %247, align 8
  %249 = load i32, i32* %19, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %248, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %251, i32 0, i32 0
  store i32 1, i32* %252, align 4
  %253 = load i32, i32* %19, align 4
  %254 = load %struct.svc_rdma_req_map*, %struct.svc_rdma_req_map** %15, align 8
  %255 = getelementptr inbounds %struct.svc_rdma_req_map, %struct.svc_rdma_req_map* %254, i32 0, i32 0
  %256 = load %struct.TYPE_15__*, %struct.TYPE_15__** %255, align 8
  %257 = load i32, i32* %19, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %256, i64 %258
  %260 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %259, i32 0, i32 1
  store i32 %253, i32* %260, align 4
  %261 = load %struct.rpcrdma_read_chunk*, %struct.rpcrdma_read_chunk** %21, align 8
  %262 = getelementptr inbounds %struct.rpcrdma_read_chunk, %struct.rpcrdma_read_chunk* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = load i64, i64* %20, align 8
  %266 = add nsw i64 %265, %264
  store i64 %266, i64* %20, align 8
  %267 = load %struct.rpcrdma_read_chunk*, %struct.rpcrdma_read_chunk** %21, align 8
  %268 = getelementptr inbounds %struct.rpcrdma_read_chunk, %struct.rpcrdma_read_chunk* %267, i32 1
  store %struct.rpcrdma_read_chunk* %268, %struct.rpcrdma_read_chunk** %21, align 8
  br label %269

269:                                              ; preds = %222
  %270 = load i32, i32* %19, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %19, align 4
  br label %218

272:                                              ; preds = %218
  %273 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %10, align 8
  %274 = load %struct.svc_rdma_fastreg_mr*, %struct.svc_rdma_fastreg_mr** %22, align 8
  %275 = call i32 @svc_rdma_fastreg(%struct.svcxprt_rdma* %273, %struct.svc_rdma_fastreg_mr* %274)
  store i32 %275, i32* %23, align 4
  %276 = load i32, i32* %23, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %279

278:                                              ; preds = %272
  br label %281

279:                                              ; preds = %272
  %280 = load i32, i32* %19, align 4
  store i32 %280, i32* %9, align 4
  br label %289

281:                                              ; preds = %278, %173
  %282 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %10, align 8
  %283 = call i32 @printk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), %struct.svcxprt_rdma* %282)
  %284 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %10, align 8
  %285 = load %struct.svc_rdma_fastreg_mr*, %struct.svc_rdma_fastreg_mr** %22, align 8
  %286 = call i32 @svc_rdma_put_frmr(%struct.svcxprt_rdma* %284, %struct.svc_rdma_fastreg_mr* %285)
  %287 = load i32, i32* @EIO, align 4
  %288 = sub nsw i32 0, %287
  store i32 %288, i32* %9, align 4
  br label %289

289:                                              ; preds = %281, %279, %29
  %290 = load i32, i32* %9, align 4
  ret i32 %290
}

declare dso_local %struct.svc_rdma_fastreg_mr* @svc_rdma_get_frmr(%struct.svcxprt_rdma*) #1

declare dso_local i64 @IS_ERR(%struct.svc_rdma_fastreg_mr*) #1

declare dso_local i64 @page_address(i32) #1

declare dso_local i32 @PAGE_ALIGN(i32) #1

declare dso_local i32 @ib_dma_map_page(i32, i32, i32, i32, i32) #1

declare dso_local i64 @ib_dma_mapping_error(i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @svc_rdma_fastreg(%struct.svcxprt_rdma*, %struct.svc_rdma_fastreg_mr*) #1

declare dso_local i32 @printk(i8*, %struct.svcxprt_rdma*) #1

declare dso_local i32 @svc_rdma_put_frmr(%struct.svcxprt_rdma*, %struct.svc_rdma_fastreg_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
