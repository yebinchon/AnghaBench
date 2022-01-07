; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/9p/extr_trans_rdma.c_rdma_create_trans.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/9p/extr_trans_rdma.c_rdma_create_trans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_client = type { i32, %struct.p9_trans_rdma* }
%struct.p9_trans_rdma = type { i64, i32, %struct.TYPE_23__*, i32, %struct.TYPE_23__*, %struct.TYPE_23__*, %struct.TYPE_23__*, i32, i32, %struct.TYPE_21__ }
%struct.TYPE_23__ = type { i32, i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_20__, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.p9_rdma_opts = type { i64, i64, i32 }
%struct.rdma_conn_param = type { i32, i32, i64, i32*, %struct.TYPE_23__*, %struct.TYPE_23__*, i32, i32, %struct.TYPE_22__, %struct.p9_client*, i32 }
%struct.TYPE_22__ = type { i32, i32, i64, i64 }
%struct.ib_qp_init_attr = type { i32, i32, i64, i32*, %struct.TYPE_23__*, %struct.TYPE_23__*, i32, i32, %struct.TYPE_22__, %struct.p9_client*, i32 }
%struct.ib_device_attr = type { i32 }
%struct.sockaddr = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@p9_cm_event_handler = common dso_local global i32 0, align 4
@RDMA_PS_TCP = common dso_local global i32 0, align 4
@IB_QPT_RC = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@P9_RDMA_ADDR_RESOLVED = common dso_local global i64 0, align 8
@P9_RDMA_ROUTE_RESOLVED = common dso_local global i64 0, align 8
@cq_comp_handler = common dso_local global i32 0, align 4
@cq_event_handler = common dso_local global i32 0, align 4
@IB_CQ_NEXT_COMP = common dso_local global i32 0, align 4
@IB_DEVICE_LOCAL_DMA_LKEY = common dso_local global i32 0, align 4
@IB_ACCESS_LOCAL_WRITE = common dso_local global i32 0, align 4
@qp_event_handler = common dso_local global i32 0, align 4
@P9_RDMA_SEND_SGE = common dso_local global i32 0, align 4
@P9_RDMA_RECV_SGE = common dso_local global i32 0, align 4
@IB_SIGNAL_REQ_WR = common dso_local global i32 0, align 4
@P9_RDMA_IRD = common dso_local global i32 0, align 4
@P9_RDMA_ORD = common dso_local global i32 0, align 4
@P9_RDMA_CONNECTED = common dso_local global i64 0, align 8
@Connected = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.p9_client*, i8*, i8*)* @rdma_create_trans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdma_create_trans(%struct.p9_client* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.p9_client*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.p9_rdma_opts, align 8
  %10 = alloca %struct.p9_trans_rdma*, align 8
  %11 = alloca %struct.rdma_conn_param, align 8
  %12 = alloca %struct.ib_qp_init_attr, align 8
  %13 = alloca %struct.ib_device_attr, align 4
  store %struct.p9_client* %0, %struct.p9_client** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call i32 @parse_opts(i8* %14, %struct.p9_rdma_opts* %9)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %4, align 4
  br label %293

20:                                               ; preds = %3
  %21 = call %struct.p9_trans_rdma* @alloc_rdma(%struct.p9_rdma_opts* %9)
  store %struct.p9_trans_rdma* %21, %struct.p9_trans_rdma** %10, align 8
  %22 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %10, align 8
  %23 = icmp ne %struct.p9_trans_rdma* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %293

27:                                               ; preds = %20
  %28 = load i32, i32* @p9_cm_event_handler, align 4
  %29 = load %struct.p9_client*, %struct.p9_client** %5, align 8
  %30 = load i32, i32* @RDMA_PS_TCP, align 4
  %31 = load i32, i32* @IB_QPT_RC, align 4
  %32 = call %struct.TYPE_23__* @rdma_create_id(i32 %28, %struct.p9_client* %29, i32 %30, i32 %31)
  %33 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %10, align 8
  %34 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %33, i32 0, i32 2
  store %struct.TYPE_23__* %32, %struct.TYPE_23__** %34, align 8
  %35 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %10, align 8
  %36 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %35, i32 0, i32 2
  %37 = load %struct.TYPE_23__*, %struct.TYPE_23__** %36, align 8
  %38 = call i64 @IS_ERR(%struct.TYPE_23__* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %27
  br label %288

41:                                               ; preds = %27
  %42 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %10, align 8
  %43 = load %struct.p9_client*, %struct.p9_client** %5, align 8
  %44 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %43, i32 0, i32 1
  store %struct.p9_trans_rdma* %42, %struct.p9_trans_rdma** %44, align 8
  %45 = load i32, i32* @AF_INET, align 4
  %46 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %10, align 8
  %47 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %46, i32 0, i32 9
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 2
  store i32 %45, i32* %48, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 @in_aton(i8* %49)
  %51 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %10, align 8
  %52 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %51, i32 0, i32 9
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 0
  store i32 %50, i32* %54, align 4
  %55 = getelementptr inbounds %struct.p9_rdma_opts, %struct.p9_rdma_opts* %9, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @htons(i32 %56)
  %58 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %10, align 8
  %59 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %58, i32 0, i32 9
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 8
  %61 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %10, align 8
  %62 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %61, i32 0, i32 2
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %62, align 8
  %64 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %10, align 8
  %65 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %64, i32 0, i32 9
  %66 = bitcast %struct.TYPE_21__* %65 to %struct.sockaddr*
  %67 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %10, align 8
  %68 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %67, i32 0, i32 8
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @rdma_resolve_addr(%struct.TYPE_23__* %63, i32* null, %struct.sockaddr* %66, i32 %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %41
  br label %288

74:                                               ; preds = %41
  %75 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %10, align 8
  %76 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %75, i32 0, i32 1
  %77 = call i32 @wait_for_completion_interruptible(i32* %76)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %74
  %81 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %10, align 8
  %82 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @P9_RDMA_ADDR_RESOLVED, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %80, %74
  br label %288

87:                                               ; preds = %80
  %88 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %10, align 8
  %89 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %88, i32 0, i32 2
  %90 = load %struct.TYPE_23__*, %struct.TYPE_23__** %89, align 8
  %91 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %10, align 8
  %92 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %91, i32 0, i32 8
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @rdma_resolve_route(%struct.TYPE_23__* %90, i32 %93)
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %87
  br label %288

98:                                               ; preds = %87
  %99 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %10, align 8
  %100 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %99, i32 0, i32 1
  %101 = call i32 @wait_for_completion_interruptible(i32* %100)
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* %8, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %110, label %104

104:                                              ; preds = %98
  %105 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %10, align 8
  %106 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @P9_RDMA_ROUTE_RESOLVED, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %104, %98
  br label %288

111:                                              ; preds = %104
  %112 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %10, align 8
  %113 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %112, i32 0, i32 2
  %114 = load %struct.TYPE_23__*, %struct.TYPE_23__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %114, i32 0, i32 2
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %115, align 8
  %117 = call i32 @ib_query_device(%struct.TYPE_19__* %116, %struct.ib_device_attr* %13)
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* %8, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %111
  br label %288

121:                                              ; preds = %111
  %122 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %10, align 8
  %123 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %122, i32 0, i32 2
  %124 = load %struct.TYPE_23__*, %struct.TYPE_23__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %124, i32 0, i32 2
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %125, align 8
  %127 = load i32, i32* @cq_comp_handler, align 4
  %128 = load i32, i32* @cq_event_handler, align 4
  %129 = load %struct.p9_client*, %struct.p9_client** %5, align 8
  %130 = getelementptr inbounds %struct.p9_rdma_opts, %struct.p9_rdma_opts* %9, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = getelementptr inbounds %struct.p9_rdma_opts, %struct.p9_rdma_opts* %9, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = add nsw i64 %131, %133
  %135 = add nsw i64 %134, 1
  %136 = call %struct.TYPE_23__* @ib_create_cq(%struct.TYPE_19__* %126, i32 %127, i32 %128, %struct.p9_client* %129, i64 %135, i32 0)
  %137 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %10, align 8
  %138 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %137, i32 0, i32 5
  store %struct.TYPE_23__* %136, %struct.TYPE_23__** %138, align 8
  %139 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %10, align 8
  %140 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %139, i32 0, i32 5
  %141 = load %struct.TYPE_23__*, %struct.TYPE_23__** %140, align 8
  %142 = call i64 @IS_ERR(%struct.TYPE_23__* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %121
  br label %288

145:                                              ; preds = %121
  %146 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %10, align 8
  %147 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %146, i32 0, i32 5
  %148 = load %struct.TYPE_23__*, %struct.TYPE_23__** %147, align 8
  %149 = load i32, i32* @IB_CQ_NEXT_COMP, align 4
  %150 = call i32 @ib_req_notify_cq(%struct.TYPE_23__* %148, i32 %149)
  %151 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %10, align 8
  %152 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %151, i32 0, i32 2
  %153 = load %struct.TYPE_23__*, %struct.TYPE_23__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %153, i32 0, i32 2
  %155 = load %struct.TYPE_19__*, %struct.TYPE_19__** %154, align 8
  %156 = call %struct.TYPE_23__* @ib_alloc_pd(%struct.TYPE_19__* %155)
  %157 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %10, align 8
  %158 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %157, i32 0, i32 4
  store %struct.TYPE_23__* %156, %struct.TYPE_23__** %158, align 8
  %159 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %10, align 8
  %160 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %159, i32 0, i32 4
  %161 = load %struct.TYPE_23__*, %struct.TYPE_23__** %160, align 8
  %162 = call i64 @IS_ERR(%struct.TYPE_23__* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %145
  br label %288

165:                                              ; preds = %145
  %166 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %10, align 8
  %167 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %166, i32 0, i32 6
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %167, align 8
  %168 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %13, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @IB_DEVICE_LOCAL_DMA_LKEY, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %183

173:                                              ; preds = %165
  %174 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %10, align 8
  %175 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %174, i32 0, i32 2
  %176 = load %struct.TYPE_23__*, %struct.TYPE_23__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %176, i32 0, i32 2
  %178 = load %struct.TYPE_19__*, %struct.TYPE_19__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %10, align 8
  %182 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %181, i32 0, i32 7
  store i32 %180, i32* %182, align 8
  br label %205

183:                                              ; preds = %165
  %184 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %10, align 8
  %185 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %184, i32 0, i32 4
  %186 = load %struct.TYPE_23__*, %struct.TYPE_23__** %185, align 8
  %187 = load i32, i32* @IB_ACCESS_LOCAL_WRITE, align 4
  %188 = call %struct.TYPE_23__* @ib_get_dma_mr(%struct.TYPE_23__* %186, i32 %187)
  %189 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %10, align 8
  %190 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %189, i32 0, i32 6
  store %struct.TYPE_23__* %188, %struct.TYPE_23__** %190, align 8
  %191 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %10, align 8
  %192 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %191, i32 0, i32 6
  %193 = load %struct.TYPE_23__*, %struct.TYPE_23__** %192, align 8
  %194 = call i64 @IS_ERR(%struct.TYPE_23__* %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %183
  br label %288

197:                                              ; preds = %183
  %198 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %10, align 8
  %199 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %198, i32 0, i32 6
  %200 = load %struct.TYPE_23__*, %struct.TYPE_23__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %10, align 8
  %204 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %203, i32 0, i32 7
  store i32 %202, i32* %204, align 8
  br label %205

205:                                              ; preds = %197, %173
  %206 = bitcast %struct.ib_qp_init_attr* %12 to %struct.rdma_conn_param*
  %207 = call i32 @memset(%struct.rdma_conn_param* %206, i32 0, i32 88)
  %208 = load i32, i32* @qp_event_handler, align 4
  %209 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %12, i32 0, i32 10
  store i32 %208, i32* %209, align 8
  %210 = load %struct.p9_client*, %struct.p9_client** %5, align 8
  %211 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %12, i32 0, i32 9
  store %struct.p9_client* %210, %struct.p9_client** %211, align 8
  %212 = getelementptr inbounds %struct.p9_rdma_opts, %struct.p9_rdma_opts* %9, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %12, i32 0, i32 8
  %215 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %214, i32 0, i32 3
  store i64 %213, i64* %215, align 8
  %216 = getelementptr inbounds %struct.p9_rdma_opts, %struct.p9_rdma_opts* %9, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %12, i32 0, i32 8
  %219 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %218, i32 0, i32 2
  store i64 %217, i64* %219, align 8
  %220 = load i32, i32* @P9_RDMA_SEND_SGE, align 4
  %221 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %12, i32 0, i32 8
  %222 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %221, i32 0, i32 1
  store i32 %220, i32* %222, align 4
  %223 = load i32, i32* @P9_RDMA_RECV_SGE, align 4
  %224 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %12, i32 0, i32 8
  %225 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %224, i32 0, i32 0
  store i32 %223, i32* %225, align 8
  %226 = load i32, i32* @IB_SIGNAL_REQ_WR, align 4
  %227 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %12, i32 0, i32 7
  store i32 %226, i32* %227, align 4
  %228 = load i32, i32* @IB_QPT_RC, align 4
  %229 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %12, i32 0, i32 6
  store i32 %228, i32* %229, align 8
  %230 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %10, align 8
  %231 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %230, i32 0, i32 5
  %232 = load %struct.TYPE_23__*, %struct.TYPE_23__** %231, align 8
  %233 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %12, i32 0, i32 5
  store %struct.TYPE_23__* %232, %struct.TYPE_23__** %233, align 8
  %234 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %10, align 8
  %235 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %234, i32 0, i32 5
  %236 = load %struct.TYPE_23__*, %struct.TYPE_23__** %235, align 8
  %237 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %12, i32 0, i32 4
  store %struct.TYPE_23__* %236, %struct.TYPE_23__** %237, align 8
  %238 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %10, align 8
  %239 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %238, i32 0, i32 2
  %240 = load %struct.TYPE_23__*, %struct.TYPE_23__** %239, align 8
  %241 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %10, align 8
  %242 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %241, i32 0, i32 4
  %243 = load %struct.TYPE_23__*, %struct.TYPE_23__** %242, align 8
  %244 = bitcast %struct.ib_qp_init_attr* %12 to %struct.rdma_conn_param*
  %245 = call i32 @rdma_create_qp(%struct.TYPE_23__* %240, %struct.TYPE_23__* %243, %struct.rdma_conn_param* %244)
  store i32 %245, i32* %8, align 4
  %246 = load i32, i32* %8, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %205
  br label %288

249:                                              ; preds = %205
  %250 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %10, align 8
  %251 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %250, i32 0, i32 2
  %252 = load %struct.TYPE_23__*, %struct.TYPE_23__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %10, align 8
  %256 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %255, i32 0, i32 3
  store i32 %254, i32* %256, align 8
  %257 = call i32 @memset(%struct.rdma_conn_param* %11, i32 0, i32 88)
  %258 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %11, i32 0, i32 3
  store i32* null, i32** %258, align 8
  %259 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %11, i32 0, i32 2
  store i64 0, i64* %259, align 8
  %260 = load i32, i32* @P9_RDMA_IRD, align 4
  %261 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %11, i32 0, i32 1
  store i32 %260, i32* %261, align 4
  %262 = load i32, i32* @P9_RDMA_ORD, align 4
  %263 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %11, i32 0, i32 0
  store i32 %262, i32* %263, align 8
  %264 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %10, align 8
  %265 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %264, i32 0, i32 2
  %266 = load %struct.TYPE_23__*, %struct.TYPE_23__** %265, align 8
  %267 = call i32 @rdma_connect(%struct.TYPE_23__* %266, %struct.rdma_conn_param* %11)
  store i32 %267, i32* %8, align 4
  %268 = load i32, i32* %8, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %271

270:                                              ; preds = %249
  br label %288

271:                                              ; preds = %249
  %272 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %10, align 8
  %273 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %272, i32 0, i32 1
  %274 = call i32 @wait_for_completion_interruptible(i32* %273)
  store i32 %274, i32* %8, align 4
  %275 = load i32, i32* %8, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %283, label %277

277:                                              ; preds = %271
  %278 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %10, align 8
  %279 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %278, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = load i64, i64* @P9_RDMA_CONNECTED, align 8
  %282 = icmp ne i64 %280, %281
  br i1 %282, label %283, label %284

283:                                              ; preds = %277, %271
  br label %288

284:                                              ; preds = %277
  %285 = load i32, i32* @Connected, align 4
  %286 = load %struct.p9_client*, %struct.p9_client** %5, align 8
  %287 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %286, i32 0, i32 0
  store i32 %285, i32* %287, align 8
  store i32 0, i32* %4, align 4
  br label %293

288:                                              ; preds = %283, %270, %248, %196, %164, %144, %120, %110, %97, %86, %73, %40
  %289 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %10, align 8
  %290 = call i32 @rdma_destroy_trans(%struct.p9_trans_rdma* %289)
  %291 = load i32, i32* @ENOTCONN, align 4
  %292 = sub nsw i32 0, %291
  store i32 %292, i32* %4, align 4
  br label %293

293:                                              ; preds = %288, %284, %24, %18
  %294 = load i32, i32* %4, align 4
  ret i32 %294
}

declare dso_local i32 @parse_opts(i8*, %struct.p9_rdma_opts*) #1

declare dso_local %struct.p9_trans_rdma* @alloc_rdma(%struct.p9_rdma_opts*) #1

declare dso_local %struct.TYPE_23__* @rdma_create_id(i32, %struct.p9_client*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_23__*) #1

declare dso_local i32 @in_aton(i8*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @rdma_resolve_addr(%struct.TYPE_23__*, i32*, %struct.sockaddr*, i32) #1

declare dso_local i32 @wait_for_completion_interruptible(i32*) #1

declare dso_local i32 @rdma_resolve_route(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @ib_query_device(%struct.TYPE_19__*, %struct.ib_device_attr*) #1

declare dso_local %struct.TYPE_23__* @ib_create_cq(%struct.TYPE_19__*, i32, i32, %struct.p9_client*, i64, i32) #1

declare dso_local i32 @ib_req_notify_cq(%struct.TYPE_23__*, i32) #1

declare dso_local %struct.TYPE_23__* @ib_alloc_pd(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_23__* @ib_get_dma_mr(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @memset(%struct.rdma_conn_param*, i32, i32) #1

declare dso_local i32 @rdma_create_qp(%struct.TYPE_23__*, %struct.TYPE_23__*, %struct.rdma_conn_param*) #1

declare dso_local i32 @rdma_connect(%struct.TYPE_23__*, %struct.rdma_conn_param*) #1

declare dso_local i32 @rdma_destroy_trans(%struct.p9_trans_rdma*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
