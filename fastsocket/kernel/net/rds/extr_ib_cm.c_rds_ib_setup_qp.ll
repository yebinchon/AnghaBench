; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_ib_cm.c_rds_ib_setup_qp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_ib_cm.c_rds_ib_setup_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_connection = type { %struct.rds_ib_connection* }
%struct.rds_ib_connection = type { i32*, i32*, i32, i32, i8*, %struct.TYPE_5__, i8*, %struct.TYPE_5__, i8*, i32, i8*, i32, i8*, i32, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { %struct.ib_device* }
%struct.ib_device = type { i32 }
%struct.ib_qp_init_attr = type { i32*, i32*, i32, i32, %struct.TYPE_4__, %struct.rds_connection*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.rds_ib_device = type { i32, i32, i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@rds_ib_send_cq_comp_handler = common dso_local global i32 0, align 4
@rds_ib_cq_event_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"ib_create_cq send failed: %d\0A\00", align 1
@rds_ib_recv_cq_comp_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"ib_create_cq recv failed: %d\0A\00", align 1
@IB_CQ_NEXT_COMP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"ib_req_notify_cq send failed: %d\0A\00", align 1
@IB_CQ_SOLICITED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"ib_req_notify_cq recv failed: %d\0A\00", align 1
@rds_ib_qp_event_handler = common dso_local global i32 0, align 4
@RDS_IB_RECV_SGE = common dso_local global i32 0, align 4
@IB_SIGNAL_REQ_WR = common dso_local global i32 0, align 4
@IB_QPT_RC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"rdma_create_qp failed: %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"ib_dma_alloc_coherent send failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"ib_dma_alloc_coherent recv failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"ib_dma_alloc_coherent ack failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"send allocation failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"recv allocation failed\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"conn %p pd %p mr %p cq %p %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rds_connection*)* @rds_ib_setup_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rds_ib_setup_qp(%struct.rds_connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rds_connection*, align 8
  %4 = alloca %struct.rds_ib_connection*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca %struct.ib_qp_init_attr, align 8
  %7 = alloca %struct.rds_ib_device*, align 8
  %8 = alloca i32, align 4
  store %struct.rds_connection* %0, %struct.rds_connection** %3, align 8
  %9 = load %struct.rds_connection*, %struct.rds_connection** %3, align 8
  %10 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %9, i32 0, i32 0
  %11 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %10, align 8
  store %struct.rds_ib_connection* %11, %struct.rds_ib_connection** %4, align 8
  %12 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %13 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %12, i32 0, i32 14
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.ib_device*, %struct.ib_device** %15, align 8
  store %struct.ib_device* %16, %struct.ib_device** %5, align 8
  %17 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %18 = call %struct.rds_ib_device* @rds_ib_get_client_data(%struct.ib_device* %17)
  store %struct.rds_ib_device* %18, %struct.rds_ib_device** %7, align 8
  %19 = load %struct.rds_ib_device*, %struct.rds_ib_device** %7, align 8
  %20 = icmp ne %struct.rds_ib_device* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @EOPNOTSUPP, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %327

24:                                               ; preds = %1
  %25 = load %struct.rds_ib_device*, %struct.rds_ib_device** %7, align 8
  %26 = load %struct.rds_connection*, %struct.rds_connection** %3, align 8
  %27 = call i32 @rds_ib_add_conn(%struct.rds_ib_device* %25, %struct.rds_connection* %26)
  %28 = load %struct.rds_ib_device*, %struct.rds_ib_device** %7, align 8
  %29 = getelementptr inbounds %struct.rds_ib_device, %struct.rds_ib_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %32 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %31, i32 0, i32 7
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  %36 = icmp slt i32 %30, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %24
  %38 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %39 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %38, i32 0, i32 7
  %40 = load %struct.rds_ib_device*, %struct.rds_ib_device** %7, align 8
  %41 = getelementptr inbounds %struct.rds_ib_device, %struct.rds_ib_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %42, 1
  %44 = call i32 @rds_ib_ring_resize(%struct.TYPE_5__* %39, i32 %43)
  br label %45

45:                                               ; preds = %37, %24
  %46 = load %struct.rds_ib_device*, %struct.rds_ib_device** %7, align 8
  %47 = getelementptr inbounds %struct.rds_ib_device, %struct.rds_ib_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %50 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %49, i32 0, i32 5
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, 1
  %54 = icmp slt i32 %48, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %45
  %56 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %57 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %56, i32 0, i32 5
  %58 = load %struct.rds_ib_device*, %struct.rds_ib_device** %7, align 8
  %59 = getelementptr inbounds %struct.rds_ib_device, %struct.rds_ib_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 %60, 1
  %62 = call i32 @rds_ib_ring_resize(%struct.TYPE_5__* %57, i32 %61)
  br label %63

63:                                               ; preds = %55, %45
  %64 = load %struct.rds_ib_device*, %struct.rds_ib_device** %7, align 8
  %65 = getelementptr inbounds %struct.rds_ib_device, %struct.rds_ib_device* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %68 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 4
  %69 = load %struct.rds_ib_device*, %struct.rds_ib_device** %7, align 8
  %70 = getelementptr inbounds %struct.rds_ib_device, %struct.rds_ib_device* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %73 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  %74 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %75 = load i32, i32* @rds_ib_send_cq_comp_handler, align 4
  %76 = load i32, i32* @rds_ib_cq_event_handler, align 4
  %77 = load %struct.rds_connection*, %struct.rds_connection** %3, align 8
  %78 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %79 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %78, i32 0, i32 7
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, 1
  %83 = call i8* @ib_create_cq(%struct.ib_device* %74, i32 %75, i32 %76, %struct.rds_connection* %77, i32 %82, i32 0)
  %84 = bitcast i8* %83 to i32*
  %85 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %86 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %85, i32 0, i32 1
  store i32* %84, i32** %86, align 8
  %87 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %88 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = call i64 @IS_ERR(i32* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %63
  %93 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %94 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = call i32 @PTR_ERR(i32* %95)
  store i32 %96, i32* %8, align 4
  %97 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %98 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %97, i32 0, i32 1
  store i32* null, i32** %98, align 8
  %99 = load i32, i32* %8, align 4
  %100 = call i32 (i8*, ...) @rdsdebug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %99)
  br label %323

101:                                              ; preds = %63
  %102 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %103 = load i32, i32* @rds_ib_recv_cq_comp_handler, align 4
  %104 = load i32, i32* @rds_ib_cq_event_handler, align 4
  %105 = load %struct.rds_connection*, %struct.rds_connection** %3, align 8
  %106 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %107 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %106, i32 0, i32 5
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i8* @ib_create_cq(%struct.ib_device* %102, i32 %103, i32 %104, %struct.rds_connection* %105, i32 %109, i32 0)
  %111 = bitcast i8* %110 to i32*
  %112 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %113 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %112, i32 0, i32 0
  store i32* %111, i32** %113, align 8
  %114 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %115 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = call i64 @IS_ERR(i32* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %101
  %120 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %121 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = call i32 @PTR_ERR(i32* %122)
  store i32 %123, i32* %8, align 4
  %124 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %125 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %124, i32 0, i32 0
  store i32* null, i32** %125, align 8
  %126 = load i32, i32* %8, align 4
  %127 = call i32 (i8*, ...) @rdsdebug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %126)
  br label %323

128:                                              ; preds = %101
  %129 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %130 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* @IB_CQ_NEXT_COMP, align 4
  %133 = call i32 @ib_req_notify_cq(i32* %131, i32 %132)
  store i32 %133, i32* %8, align 4
  %134 = load i32, i32* %8, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %128
  %137 = load i32, i32* %8, align 4
  %138 = call i32 (i8*, ...) @rdsdebug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %137)
  br label %323

139:                                              ; preds = %128
  %140 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %141 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* @IB_CQ_SOLICITED, align 4
  %144 = call i32 @ib_req_notify_cq(i32* %142, i32 %143)
  store i32 %144, i32* %8, align 4
  %145 = load i32, i32* %8, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %139
  %148 = load i32, i32* %8, align 4
  %149 = call i32 (i8*, ...) @rdsdebug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %148)
  br label %323

150:                                              ; preds = %139
  %151 = call i32 @memset(%struct.ib_qp_init_attr* %6, i32 0, i32 56)
  %152 = load i32, i32* @rds_ib_qp_event_handler, align 4
  %153 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %6, i32 0, i32 6
  store i32 %152, i32* %153, align 8
  %154 = load %struct.rds_connection*, %struct.rds_connection** %3, align 8
  %155 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %6, i32 0, i32 5
  store %struct.rds_connection* %154, %struct.rds_connection** %155, align 8
  %156 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %157 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %156, i32 0, i32 7
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = add nsw i32 %159, 1
  %161 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %6, i32 0, i32 4
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  store i32 %160, i32* %162, align 8
  %163 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %164 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %163, i32 0, i32 5
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = add nsw i32 %166, 1
  %168 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %6, i32 0, i32 4
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 1
  store i32 %167, i32* %169, align 4
  %170 = load %struct.rds_ib_device*, %struct.rds_ib_device** %7, align 8
  %171 = getelementptr inbounds %struct.rds_ib_device, %struct.rds_ib_device* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %6, i32 0, i32 4
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 3
  store i32 %172, i32* %174, align 4
  %175 = load i32, i32* @RDS_IB_RECV_SGE, align 4
  %176 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %6, i32 0, i32 4
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 2
  store i32 %175, i32* %177, align 8
  %178 = load i32, i32* @IB_SIGNAL_REQ_WR, align 4
  %179 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %6, i32 0, i32 3
  store i32 %178, i32* %179, align 4
  %180 = load i32, i32* @IB_QPT_RC, align 4
  %181 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %6, i32 0, i32 2
  store i32 %180, i32* %181, align 8
  %182 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %183 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %182, i32 0, i32 1
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %6, i32 0, i32 1
  store i32* %184, i32** %185, align 8
  %186 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %187 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %186, i32 0, i32 0
  %188 = load i32*, i32** %187, align 8
  %189 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %6, i32 0, i32 0
  store i32* %188, i32** %189, align 8
  %190 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %191 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %190, i32 0, i32 14
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %191, align 8
  %193 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %194 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @rdma_create_qp(%struct.TYPE_6__* %192, i32 %195, %struct.ib_qp_init_attr* %6)
  store i32 %196, i32* %8, align 4
  %197 = load i32, i32* %8, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %150
  %200 = load i32, i32* %8, align 4
  %201 = call i32 (i8*, ...) @rdsdebug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %200)
  br label %323

202:                                              ; preds = %150
  %203 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %204 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %205 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %204, i32 0, i32 7
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = sext i32 %207 to i64
  %209 = mul i64 %208, 4
  %210 = trunc i64 %209 to i32
  %211 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %212 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %211, i32 0, i32 13
  %213 = load i32, i32* @GFP_KERNEL, align 4
  %214 = call i8* @ib_dma_alloc_coherent(%struct.ib_device* %203, i32 %210, i32* %212, i32 %213)
  %215 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %216 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %215, i32 0, i32 12
  store i8* %214, i8** %216, align 8
  %217 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %218 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %217, i32 0, i32 12
  %219 = load i8*, i8** %218, align 8
  %220 = icmp ne i8* %219, null
  br i1 %220, label %225, label %221

221:                                              ; preds = %202
  %222 = load i32, i32* @ENOMEM, align 4
  %223 = sub nsw i32 0, %222
  store i32 %223, i32* %8, align 4
  %224 = call i32 (i8*, ...) @rdsdebug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  br label %323

225:                                              ; preds = %202
  %226 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %227 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %228 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %227, i32 0, i32 5
  %229 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = sext i32 %230 to i64
  %232 = mul i64 %231, 4
  %233 = trunc i64 %232 to i32
  %234 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %235 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %234, i32 0, i32 11
  %236 = load i32, i32* @GFP_KERNEL, align 4
  %237 = call i8* @ib_dma_alloc_coherent(%struct.ib_device* %226, i32 %233, i32* %235, i32 %236)
  %238 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %239 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %238, i32 0, i32 10
  store i8* %237, i8** %239, align 8
  %240 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %241 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %240, i32 0, i32 10
  %242 = load i8*, i8** %241, align 8
  %243 = icmp ne i8* %242, null
  br i1 %243, label %248, label %244

244:                                              ; preds = %225
  %245 = load i32, i32* @ENOMEM, align 4
  %246 = sub nsw i32 0, %245
  store i32 %246, i32* %8, align 4
  %247 = call i32 (i8*, ...) @rdsdebug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  br label %323

248:                                              ; preds = %225
  %249 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %250 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %251 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %250, i32 0, i32 9
  %252 = load i32, i32* @GFP_KERNEL, align 4
  %253 = call i8* @ib_dma_alloc_coherent(%struct.ib_device* %249, i32 4, i32* %251, i32 %252)
  %254 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %255 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %254, i32 0, i32 8
  store i8* %253, i8** %255, align 8
  %256 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %257 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %256, i32 0, i32 8
  %258 = load i8*, i8** %257, align 8
  %259 = icmp ne i8* %258, null
  br i1 %259, label %264, label %260

260:                                              ; preds = %248
  %261 = load i32, i32* @ENOMEM, align 4
  %262 = sub nsw i32 0, %261
  store i32 %262, i32* %8, align 4
  %263 = call i32 (i8*, ...) @rdsdebug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  br label %323

264:                                              ; preds = %248
  %265 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %266 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %265, i32 0, i32 7
  %267 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = sext i32 %268 to i64
  %270 = mul i64 %269, 4
  %271 = trunc i64 %270 to i32
  %272 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %273 = call i32 @ibdev_to_node(%struct.ib_device* %272)
  %274 = call i8* @vzalloc_node(i32 %271, i32 %273)
  %275 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %276 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %275, i32 0, i32 6
  store i8* %274, i8** %276, align 8
  %277 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %278 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %277, i32 0, i32 6
  %279 = load i8*, i8** %278, align 8
  %280 = icmp ne i8* %279, null
  br i1 %280, label %285, label %281

281:                                              ; preds = %264
  %282 = load i32, i32* @ENOMEM, align 4
  %283 = sub nsw i32 0, %282
  store i32 %283, i32* %8, align 4
  %284 = call i32 (i8*, ...) @rdsdebug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  br label %323

285:                                              ; preds = %264
  %286 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %287 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %286, i32 0, i32 5
  %288 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = sext i32 %289 to i64
  %291 = mul i64 %290, 4
  %292 = trunc i64 %291 to i32
  %293 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %294 = call i32 @ibdev_to_node(%struct.ib_device* %293)
  %295 = call i8* @vzalloc_node(i32 %292, i32 %294)
  %296 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %297 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %296, i32 0, i32 4
  store i8* %295, i8** %297, align 8
  %298 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %299 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %298, i32 0, i32 4
  %300 = load i8*, i8** %299, align 8
  %301 = icmp ne i8* %300, null
  br i1 %301, label %306, label %302

302:                                              ; preds = %285
  %303 = load i32, i32* @ENOMEM, align 4
  %304 = sub nsw i32 0, %303
  store i32 %304, i32* %8, align 4
  %305 = call i32 (i8*, ...) @rdsdebug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  br label %323

306:                                              ; preds = %285
  %307 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %308 = call i32 @rds_ib_recv_init_ack(%struct.rds_ib_connection* %307)
  %309 = load %struct.rds_connection*, %struct.rds_connection** %3, align 8
  %310 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %311 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %310, i32 0, i32 3
  %312 = load i32, i32* %311, align 4
  %313 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %314 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %313, i32 0, i32 2
  %315 = load i32, i32* %314, align 8
  %316 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %317 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %316, i32 0, i32 1
  %318 = load i32*, i32** %317, align 8
  %319 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %320 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %319, i32 0, i32 0
  %321 = load i32*, i32** %320, align 8
  %322 = call i32 (i8*, ...) @rdsdebug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), %struct.rds_connection* %309, i32 %312, i32 %315, i32* %318, i32* %321)
  br label %323

323:                                              ; preds = %306, %302, %281, %260, %244, %221, %199, %147, %136, %119, %92
  %324 = load %struct.rds_ib_device*, %struct.rds_ib_device** %7, align 8
  %325 = call i32 @rds_ib_dev_put(%struct.rds_ib_device* %324)
  %326 = load i32, i32* %8, align 4
  store i32 %326, i32* %2, align 4
  br label %327

327:                                              ; preds = %323, %21
  %328 = load i32, i32* %2, align 4
  ret i32 %328
}

declare dso_local %struct.rds_ib_device* @rds_ib_get_client_data(%struct.ib_device*) #1

declare dso_local i32 @rds_ib_add_conn(%struct.rds_ib_device*, %struct.rds_connection*) #1

declare dso_local i32 @rds_ib_ring_resize(%struct.TYPE_5__*, i32) #1

declare dso_local i8* @ib_create_cq(%struct.ib_device*, i32, i32, %struct.rds_connection*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @rdsdebug(i8*, ...) #1

declare dso_local i32 @ib_req_notify_cq(i32*, i32) #1

declare dso_local i32 @memset(%struct.ib_qp_init_attr*, i32, i32) #1

declare dso_local i32 @rdma_create_qp(%struct.TYPE_6__*, i32, %struct.ib_qp_init_attr*) #1

declare dso_local i8* @ib_dma_alloc_coherent(%struct.ib_device*, i32, i32*, i32) #1

declare dso_local i8* @vzalloc_node(i32, i32) #1

declare dso_local i32 @ibdev_to_node(%struct.ib_device*) #1

declare dso_local i32 @rds_ib_recv_init_ack(%struct.rds_ib_connection*) #1

declare dso_local i32 @rds_ib_dev_put(%struct.rds_ib_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
