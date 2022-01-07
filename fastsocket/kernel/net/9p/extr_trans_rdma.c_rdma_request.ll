; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/9p/extr_trans_rdma.c_rdma_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/9p/extr_trans_rdma.c_rdma_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_client = type { i32, %struct.p9_trans_rdma* }
%struct.p9_trans_rdma = type { i64, i64, i32, %struct.TYPE_4__*, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.p9_req_t = type { %struct.TYPE_3__*, %struct.p9_rdma_context* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.p9_rdma_context = type { i8*, i32, i32, %struct.p9_req_t*, i32, %struct.p9_rdma_context* }
%struct.ib_send_wr = type { i64, i32, %struct.ib_sge*, i32, i32, i32* }
%struct.ib_sge = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@IB_WC_SEND = common dso_local global i32 0, align 4
@IB_WR_SEND = common dso_local global i32 0, align 4
@IB_SEND_SIGNALED = common dso_local global i32 0, align 4
@P9_DEBUG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"EIO\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@P9_RDMA_CLOSING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.p9_client*, %struct.p9_req_t*)* @rdma_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdma_request(%struct.p9_client* %0, %struct.p9_req_t* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.p9_client*, align 8
  %5 = alloca %struct.p9_req_t*, align 8
  %6 = alloca %struct.p9_trans_rdma*, align 8
  %7 = alloca %struct.ib_send_wr, align 8
  %8 = alloca %struct.ib_send_wr*, align 8
  %9 = alloca %struct.ib_sge, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.p9_rdma_context*, align 8
  %13 = alloca %struct.p9_rdma_context*, align 8
  store %struct.p9_client* %0, %struct.p9_client** %4, align 8
  store %struct.p9_req_t* %1, %struct.p9_req_t** %5, align 8
  %14 = load %struct.p9_client*, %struct.p9_client** %4, align 8
  %15 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %14, i32 0, i32 1
  %16 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %15, align 8
  store %struct.p9_trans_rdma* %16, %struct.p9_trans_rdma** %6, align 8
  store i32 0, i32* %10, align 4
  store %struct.p9_rdma_context* null, %struct.p9_rdma_context** %12, align 8
  store %struct.p9_rdma_context* null, %struct.p9_rdma_context** %13, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i8* @kmalloc(i32 40, i32 %17)
  %19 = bitcast i8* %18 to %struct.p9_rdma_context*
  store %struct.p9_rdma_context* %19, %struct.p9_rdma_context** %13, align 8
  %20 = load %struct.p9_rdma_context*, %struct.p9_rdma_context** %13, align 8
  %21 = icmp ne %struct.p9_rdma_context* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  br label %193

23:                                               ; preds = %2
  %24 = load %struct.p9_req_t*, %struct.p9_req_t** %5, align 8
  %25 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %24, i32 0, i32 1
  %26 = load %struct.p9_rdma_context*, %struct.p9_rdma_context** %25, align 8
  %27 = icmp ne %struct.p9_rdma_context* %26, null
  br i1 %27, label %62, label %28

28:                                               ; preds = %23
  %29 = load %struct.p9_client*, %struct.p9_client** %4, align 8
  %30 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = add i64 4, %32
  %34 = trunc i64 %33 to i32
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i8* @kmalloc(i32 %34, i32 %35)
  %37 = bitcast i8* %36 to %struct.p9_rdma_context*
  %38 = load %struct.p9_req_t*, %struct.p9_req_t** %5, align 8
  %39 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %38, i32 0, i32 1
  store %struct.p9_rdma_context* %37, %struct.p9_rdma_context** %39, align 8
  %40 = load %struct.p9_req_t*, %struct.p9_req_t** %5, align 8
  %41 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %40, i32 0, i32 1
  %42 = load %struct.p9_rdma_context*, %struct.p9_rdma_context** %41, align 8
  %43 = icmp ne %struct.p9_rdma_context* %42, null
  br i1 %43, label %44, label %61

44:                                               ; preds = %28
  %45 = load %struct.p9_req_t*, %struct.p9_req_t** %5, align 8
  %46 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %45, i32 0, i32 1
  %47 = load %struct.p9_rdma_context*, %struct.p9_rdma_context** %46, align 8
  %48 = bitcast %struct.p9_rdma_context* %47 to i8*
  %49 = getelementptr inbounds i8, i8* %48, i64 4
  %50 = load %struct.p9_req_t*, %struct.p9_req_t** %5, align 8
  %51 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %50, i32 0, i32 1
  %52 = load %struct.p9_rdma_context*, %struct.p9_rdma_context** %51, align 8
  %53 = getelementptr inbounds %struct.p9_rdma_context, %struct.p9_rdma_context* %52, i32 0, i32 0
  store i8* %49, i8** %53, align 8
  %54 = load %struct.p9_client*, %struct.p9_client** %4, align 8
  %55 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.p9_req_t*, %struct.p9_req_t** %5, align 8
  %58 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %57, i32 0, i32 1
  %59 = load %struct.p9_rdma_context*, %struct.p9_rdma_context** %58, align 8
  %60 = getelementptr inbounds %struct.p9_rdma_context, %struct.p9_rdma_context* %59, i32 0, i32 1
  store i32 %56, i32* %60, align 8
  br label %61

61:                                               ; preds = %44, %28
  br label %62

62:                                               ; preds = %61, %23
  %63 = load %struct.p9_req_t*, %struct.p9_req_t** %5, align 8
  %64 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %63, i32 0, i32 1
  %65 = load %struct.p9_rdma_context*, %struct.p9_rdma_context** %64, align 8
  %66 = load %struct.p9_rdma_context*, %struct.p9_rdma_context** %13, align 8
  %67 = getelementptr inbounds %struct.p9_rdma_context, %struct.p9_rdma_context* %66, i32 0, i32 5
  store %struct.p9_rdma_context* %65, %struct.p9_rdma_context** %67, align 8
  %68 = load %struct.p9_rdma_context*, %struct.p9_rdma_context** %13, align 8
  %69 = getelementptr inbounds %struct.p9_rdma_context, %struct.p9_rdma_context* %68, i32 0, i32 5
  %70 = load %struct.p9_rdma_context*, %struct.p9_rdma_context** %69, align 8
  %71 = icmp ne %struct.p9_rdma_context* %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %62
  %73 = load %struct.p9_rdma_context*, %struct.p9_rdma_context** %13, align 8
  %74 = call i32 @kfree(%struct.p9_rdma_context* %73)
  br label %193

75:                                               ; preds = %62
  %76 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %6, align 8
  %77 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %76, i32 0, i32 7
  %78 = call i64 @atomic_inc_return(i32* %77)
  %79 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %6, align 8
  %80 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp sle i64 %78, %81
  br i1 %82, label %83, label %97

83:                                               ; preds = %75
  %84 = load %struct.p9_client*, %struct.p9_client** %4, align 8
  %85 = load %struct.p9_rdma_context*, %struct.p9_rdma_context** %13, align 8
  %86 = call i32 @post_recv(%struct.p9_client* %84, %struct.p9_rdma_context* %85)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %83
  %90 = load %struct.p9_rdma_context*, %struct.p9_rdma_context** %13, align 8
  %91 = getelementptr inbounds %struct.p9_rdma_context, %struct.p9_rdma_context* %90, i32 0, i32 5
  %92 = load %struct.p9_rdma_context*, %struct.p9_rdma_context** %91, align 8
  %93 = call i32 @kfree(%struct.p9_rdma_context* %92)
  %94 = load %struct.p9_rdma_context*, %struct.p9_rdma_context** %13, align 8
  %95 = call i32 @kfree(%struct.p9_rdma_context* %94)
  br label %193

96:                                               ; preds = %83
  br label %101

97:                                               ; preds = %75
  %98 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %6, align 8
  %99 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %98, i32 0, i32 7
  %100 = call i32 @atomic_dec(i32* %99)
  br label %101

101:                                              ; preds = %97, %96
  %102 = load %struct.p9_req_t*, %struct.p9_req_t** %5, align 8
  %103 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %102, i32 0, i32 1
  store %struct.p9_rdma_context* null, %struct.p9_rdma_context** %103, align 8
  %104 = load i32, i32* @GFP_KERNEL, align 4
  %105 = call i8* @kmalloc(i32 40, i32 %104)
  %106 = bitcast i8* %105 to %struct.p9_rdma_context*
  store %struct.p9_rdma_context* %106, %struct.p9_rdma_context** %12, align 8
  %107 = load %struct.p9_rdma_context*, %struct.p9_rdma_context** %12, align 8
  %108 = icmp ne %struct.p9_rdma_context* %107, null
  br i1 %108, label %110, label %109

109:                                              ; preds = %101
  br label %193

110:                                              ; preds = %101
  %111 = load %struct.p9_req_t*, %struct.p9_req_t** %5, align 8
  %112 = load %struct.p9_rdma_context*, %struct.p9_rdma_context** %12, align 8
  %113 = getelementptr inbounds %struct.p9_rdma_context, %struct.p9_rdma_context* %112, i32 0, i32 3
  store %struct.p9_req_t* %111, %struct.p9_req_t** %113, align 8
  %114 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %6, align 8
  %115 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %114, i32 0, i32 3
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.p9_rdma_context*, %struct.p9_rdma_context** %12, align 8
  %120 = getelementptr inbounds %struct.p9_rdma_context, %struct.p9_rdma_context* %119, i32 0, i32 3
  %121 = load %struct.p9_req_t*, %struct.p9_req_t** %120, align 8
  %122 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %121, i32 0, i32 0
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.p9_rdma_context*, %struct.p9_rdma_context** %12, align 8
  %127 = getelementptr inbounds %struct.p9_rdma_context, %struct.p9_rdma_context* %126, i32 0, i32 3
  %128 = load %struct.p9_req_t*, %struct.p9_req_t** %127, align 8
  %129 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %128, i32 0, i32 0
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @DMA_TO_DEVICE, align 4
  %134 = call i32 @ib_dma_map_single(i32 %118, i32 %125, i32 %132, i32 %133)
  %135 = load %struct.p9_rdma_context*, %struct.p9_rdma_context** %12, align 8
  %136 = getelementptr inbounds %struct.p9_rdma_context, %struct.p9_rdma_context* %135, i32 0, i32 4
  store i32 %134, i32* %136, align 8
  %137 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %6, align 8
  %138 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %137, i32 0, i32 3
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.p9_rdma_context*, %struct.p9_rdma_context** %12, align 8
  %143 = getelementptr inbounds %struct.p9_rdma_context, %struct.p9_rdma_context* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 8
  %145 = call i64 @ib_dma_mapping_error(i32 %141, i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %110
  br label %188

148:                                              ; preds = %110
  %149 = load %struct.p9_rdma_context*, %struct.p9_rdma_context** %12, align 8
  %150 = getelementptr inbounds %struct.p9_rdma_context, %struct.p9_rdma_context* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 8
  %152 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %9, i32 0, i32 2
  store i32 %151, i32* %152, align 4
  %153 = load %struct.p9_rdma_context*, %struct.p9_rdma_context** %12, align 8
  %154 = getelementptr inbounds %struct.p9_rdma_context, %struct.p9_rdma_context* %153, i32 0, i32 3
  %155 = load %struct.p9_req_t*, %struct.p9_req_t** %154, align 8
  %156 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %155, i32 0, i32 0
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %9, i32 0, i32 1
  store i32 %159, i32* %160, align 4
  %161 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %6, align 8
  %162 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %161, i32 0, i32 6
  %163 = load i32, i32* %162, align 8
  %164 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %9, i32 0, i32 0
  store i32 %163, i32* %164, align 4
  %165 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %7, i32 0, i32 5
  store i32* null, i32** %165, align 8
  %166 = load i32, i32* @IB_WC_SEND, align 4
  %167 = load %struct.p9_rdma_context*, %struct.p9_rdma_context** %12, align 8
  %168 = getelementptr inbounds %struct.p9_rdma_context, %struct.p9_rdma_context* %167, i32 0, i32 2
  store i32 %166, i32* %168, align 4
  %169 = load %struct.p9_rdma_context*, %struct.p9_rdma_context** %12, align 8
  %170 = ptrtoint %struct.p9_rdma_context* %169 to i64
  %171 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %7, i32 0, i32 0
  store i64 %170, i64* %171, align 8
  %172 = load i32, i32* @IB_WR_SEND, align 4
  %173 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %7, i32 0, i32 4
  store i32 %172, i32* %173, align 4
  %174 = load i32, i32* @IB_SEND_SIGNALED, align 4
  %175 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %7, i32 0, i32 3
  store i32 %174, i32* %175, align 8
  %176 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %7, i32 0, i32 2
  store %struct.ib_sge* %9, %struct.ib_sge** %176, align 8
  %177 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %7, i32 0, i32 1
  store i32 1, i32* %177, align 8
  %178 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %6, align 8
  %179 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %178, i32 0, i32 5
  %180 = call i64 @down_interruptible(i32* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %148
  br label %188

183:                                              ; preds = %148
  %184 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %6, align 8
  %185 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %184, i32 0, i32 4
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @ib_post_send(i32 %186, %struct.ib_send_wr* %7, %struct.ib_send_wr** %8)
  store i32 %187, i32* %3, align 4
  br label %222

188:                                              ; preds = %182, %147
  %189 = load i32, i32* @P9_DEBUG_ERROR, align 4
  %190 = call i32 @P9_DPRINTK(i32 %189, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %191 = load i32, i32* @EIO, align 4
  %192 = sub nsw i32 0, %191
  store i32 %192, i32* %3, align 4
  br label %222

193:                                              ; preds = %109, %89, %72, %22
  %194 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %6, align 8
  %195 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %194, i32 0, i32 2
  %196 = load i64, i64* %11, align 8
  %197 = call i32 @spin_lock_irqsave(i32* %195, i64 %196)
  %198 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %6, align 8
  %199 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @P9_RDMA_CLOSING, align 8
  %202 = icmp slt i64 %200, %201
  br i1 %202, label %203, label %215

203:                                              ; preds = %193
  %204 = load i64, i64* @P9_RDMA_CLOSING, align 8
  %205 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %6, align 8
  %206 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %205, i32 0, i32 1
  store i64 %204, i64* %206, align 8
  %207 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %6, align 8
  %208 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %207, i32 0, i32 2
  %209 = load i64, i64* %11, align 8
  %210 = call i32 @spin_unlock_irqrestore(i32* %208, i64 %209)
  %211 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %6, align 8
  %212 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %211, i32 0, i32 3
  %213 = load %struct.TYPE_4__*, %struct.TYPE_4__** %212, align 8
  %214 = call i32 @rdma_disconnect(%struct.TYPE_4__* %213)
  br label %220

215:                                              ; preds = %193
  %216 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %6, align 8
  %217 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %216, i32 0, i32 2
  %218 = load i64, i64* %11, align 8
  %219 = call i32 @spin_unlock_irqrestore(i32* %217, i64 %218)
  br label %220

220:                                              ; preds = %215, %203
  %221 = load i32, i32* %10, align 4
  store i32 %221, i32* %3, align 4
  br label %222

222:                                              ; preds = %220, %188, %183
  %223 = load i32, i32* %3, align 4
  ret i32 %223
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.p9_rdma_context*) #1

declare dso_local i64 @atomic_inc_return(i32*) #1

declare dso_local i32 @post_recv(%struct.p9_client*, %struct.p9_rdma_context*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @ib_dma_map_single(i32, i32, i32, i32) #1

declare dso_local i64 @ib_dma_mapping_error(i32, i32) #1

declare dso_local i64 @down_interruptible(i32*) #1

declare dso_local i32 @ib_post_send(i32, %struct.ib_send_wr*, %struct.ib_send_wr**) #1

declare dso_local i32 @P9_DPRINTK(i32, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @rdma_disconnect(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
