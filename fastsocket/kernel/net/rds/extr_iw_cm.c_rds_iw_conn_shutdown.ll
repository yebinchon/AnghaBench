; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_iw_cm.c_rds_iw_conn_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_iw_cm.c_rds_iw_conn_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_connection = type { %struct.rds_iw_connection* }
%struct.rds_iw_connection = type { i32*, i32*, %struct.TYPE_7__*, %struct.TYPE_8__, %struct.TYPE_8__, i32, i64, i64, i64, i32, i32*, i64, i32*, i32*, i32*, i32*, i32*, i32*, i32*, %struct.TYPE_9__*, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32*, %struct.ib_device* }
%struct.ib_device = type { i32 }
%struct.ib_qp_attr = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"cm %p pd %p cq %p %p qp %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"disconnecting cm %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"rds_iw_conn_shutdown: failed to disconnect, cm: %p err %d\0A\00", align 1
@IB_QPS_ERR = common dso_local global i32 0, align 4
@IB_QP_STATE = common dso_local global i32 0, align 4
@rds_iw_ring_empty_wait = common dso_local global i32 0, align 4
@IB_ACK_IN_FLIGHT = common dso_local global i32 0, align 4
@rds_iw_sysctl_max_send_wr = common dso_local global i32 0, align 4
@rds_iw_sysctl_max_recv_wr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"shutdown complete\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rds_iw_conn_shutdown(%struct.rds_connection* %0) #0 {
  %2 = alloca %struct.rds_connection*, align 8
  %3 = alloca %struct.rds_iw_connection*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_qp_attr, align 4
  %6 = alloca %struct.ib_device*, align 8
  store %struct.rds_connection* %0, %struct.rds_connection** %2, align 8
  %7 = load %struct.rds_connection*, %struct.rds_connection** %2, align 8
  %8 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %7, i32 0, i32 0
  %9 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %8, align 8
  store %struct.rds_iw_connection* %9, %struct.rds_iw_connection** %3, align 8
  store i32 0, i32* %4, align 4
  %10 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %3, align 8
  %11 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %10, i32 0, i32 19
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %13 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %3, align 8
  %14 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %13, i32 0, i32 18
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %3, align 8
  %17 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %16, i32 0, i32 16
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %3, align 8
  %20 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %19, i32 0, i32 15
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %3, align 8
  %23 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %22, i32 0, i32 19
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = icmp ne %struct.TYPE_9__* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %1
  %27 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %3, align 8
  %28 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %27, i32 0, i32 19
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  br label %33

32:                                               ; preds = %1
  br label %33

33:                                               ; preds = %32, %26
  %34 = phi i32* [ %31, %26 ], [ null, %32 ]
  %35 = call i32 (i8*, ...) @rdsdebug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.TYPE_9__* %12, i32* %15, i32* %18, i32* %21, i32* %34)
  %36 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %3, align 8
  %37 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %36, i32 0, i32 19
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = icmp ne %struct.TYPE_9__* %38, null
  br i1 %39, label %40, label %229

40:                                               ; preds = %33
  %41 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %3, align 8
  %42 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %41, i32 0, i32 19
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = load %struct.ib_device*, %struct.ib_device** %44, align 8
  store %struct.ib_device* %45, %struct.ib_device** %6, align 8
  %46 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %3, align 8
  %47 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %46, i32 0, i32 19
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = call i32 (i8*, ...) @rdsdebug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_9__* %48)
  %50 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %3, align 8
  %51 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %50, i32 0, i32 19
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = call i32 @rdma_disconnect(%struct.TYPE_9__* %52)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %40
  %57 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %3, align 8
  %58 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %57, i32 0, i32 19
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = call i32 (i8*, ...) @rdsdebug(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_9__* %59, i32 %60)
  br label %62

62:                                               ; preds = %56, %40
  %63 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %3, align 8
  %64 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %63, i32 0, i32 19
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %79

69:                                               ; preds = %62
  %70 = load i32, i32* @IB_QPS_ERR, align 4
  %71 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %5, i32 0, i32 0
  store i32 %70, i32* %71, align 4
  %72 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %3, align 8
  %73 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %72, i32 0, i32 19
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* @IB_QP_STATE, align 4
  %78 = call i32 @ib_modify_qp(i32* %76, %struct.ib_qp_attr* %5, i32 %77)
  br label %79

79:                                               ; preds = %69, %62
  %80 = load i32, i32* @rds_iw_ring_empty_wait, align 4
  %81 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %3, align 8
  %82 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %81, i32 0, i32 4
  %83 = call i64 @rds_iw_ring_empty(%struct.TYPE_8__* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %79
  %86 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %3, align 8
  %87 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %86, i32 0, i32 3
  %88 = call i64 @rds_iw_ring_empty(%struct.TYPE_8__* %87)
  %89 = icmp ne i64 %88, 0
  br label %90

90:                                               ; preds = %85, %79
  %91 = phi i1 [ false, %79 ], [ %89, %85 ]
  %92 = zext i1 %91 to i32
  %93 = call i32 @wait_event(i32 %80, i32 %92)
  %94 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %3, align 8
  %95 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %94, i32 0, i32 14
  %96 = load i32*, i32** %95, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %114

98:                                               ; preds = %90
  %99 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %100 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %3, align 8
  %101 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %100, i32 0, i32 4
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = sext i32 %103 to i64
  %105 = mul i64 %104, 4
  %106 = trunc i64 %105 to i32
  %107 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %3, align 8
  %108 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %107, i32 0, i32 14
  %109 = load i32*, i32** %108, align 8
  %110 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %3, align 8
  %111 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %110, i32 0, i32 22
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @ib_dma_free_coherent(%struct.ib_device* %99, i32 %106, i32* %109, i32 %112)
  br label %114

114:                                              ; preds = %98, %90
  %115 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %3, align 8
  %116 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %115, i32 0, i32 13
  %117 = load i32*, i32** %116, align 8
  %118 = icmp ne i32* %117, null
  br i1 %118, label %119, label %135

119:                                              ; preds = %114
  %120 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %121 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %3, align 8
  %122 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = sext i32 %124 to i64
  %126 = mul i64 %125, 4
  %127 = trunc i64 %126 to i32
  %128 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %3, align 8
  %129 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %128, i32 0, i32 13
  %130 = load i32*, i32** %129, align 8
  %131 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %3, align 8
  %132 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %131, i32 0, i32 21
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @ib_dma_free_coherent(%struct.ib_device* %120, i32 %127, i32* %130, i32 %133)
  br label %135

135:                                              ; preds = %119, %114
  %136 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %3, align 8
  %137 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %136, i32 0, i32 12
  %138 = load i32*, i32** %137, align 8
  %139 = icmp ne i32* %138, null
  br i1 %139, label %140, label %149

140:                                              ; preds = %135
  %141 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %142 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %3, align 8
  %143 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %142, i32 0, i32 12
  %144 = load i32*, i32** %143, align 8
  %145 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %3, align 8
  %146 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %145, i32 0, i32 20
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @ib_dma_free_coherent(%struct.ib_device* %141, i32 4, i32* %144, i32 %147)
  br label %149

149:                                              ; preds = %140, %135
  %150 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %3, align 8
  %151 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = icmp ne i32* %152, null
  br i1 %153, label %154, label %157

154:                                              ; preds = %149
  %155 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %3, align 8
  %156 = call i32 @rds_iw_send_clear_ring(%struct.rds_iw_connection* %155)
  br label %157

157:                                              ; preds = %154, %149
  %158 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %3, align 8
  %159 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %158, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = icmp ne i32* %160, null
  br i1 %161, label %162, label %165

162:                                              ; preds = %157
  %163 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %3, align 8
  %164 = call i32 @rds_iw_recv_clear_ring(%struct.rds_iw_connection* %163)
  br label %165

165:                                              ; preds = %162, %157
  %166 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %3, align 8
  %167 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %166, i32 0, i32 19
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = icmp ne i32* %170, null
  br i1 %171, label %172, label %177

172:                                              ; preds = %165
  %173 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %3, align 8
  %174 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %173, i32 0, i32 19
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %174, align 8
  %176 = call i32 @rdma_destroy_qp(%struct.TYPE_9__* %175)
  br label %177

177:                                              ; preds = %172, %165
  %178 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %3, align 8
  %179 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %178, i32 0, i32 16
  %180 = load i32*, i32** %179, align 8
  %181 = icmp ne i32* %180, null
  br i1 %181, label %182, label %187

182:                                              ; preds = %177
  %183 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %3, align 8
  %184 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %183, i32 0, i32 16
  %185 = load i32*, i32** %184, align 8
  %186 = call i32 @ib_destroy_cq(i32* %185)
  br label %187

187:                                              ; preds = %182, %177
  %188 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %3, align 8
  %189 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %188, i32 0, i32 15
  %190 = load i32*, i32** %189, align 8
  %191 = icmp ne i32* %190, null
  br i1 %191, label %192, label %197

192:                                              ; preds = %187
  %193 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %3, align 8
  %194 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %193, i32 0, i32 15
  %195 = load i32*, i32** %194, align 8
  %196 = call i32 @ib_destroy_cq(i32* %195)
  br label %197

197:                                              ; preds = %192, %187
  %198 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %3, align 8
  %199 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %198, i32 0, i32 11
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %208

202:                                              ; preds = %197
  %203 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %3, align 8
  %204 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %203, i32 0, i32 11
  %205 = load i64, i64* %204, align 8
  %206 = load %struct.rds_connection*, %struct.rds_connection** %2, align 8
  %207 = call i32 @rds_iw_remove_conn(i64 %205, %struct.rds_connection* %206)
  br label %208

208:                                              ; preds = %202, %197
  %209 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %3, align 8
  %210 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %209, i32 0, i32 19
  %211 = load %struct.TYPE_9__*, %struct.TYPE_9__** %210, align 8
  %212 = call i32 @rdma_destroy_id(%struct.TYPE_9__* %211)
  %213 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %3, align 8
  %214 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %213, i32 0, i32 19
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %214, align 8
  %215 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %3, align 8
  %216 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %215, i32 0, i32 18
  store i32* null, i32** %216, align 8
  %217 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %3, align 8
  %218 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %217, i32 0, i32 17
  store i32* null, i32** %218, align 8
  %219 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %3, align 8
  %220 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %219, i32 0, i32 16
  store i32* null, i32** %220, align 8
  %221 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %3, align 8
  %222 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %221, i32 0, i32 15
  store i32* null, i32** %222, align 8
  %223 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %3, align 8
  %224 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %223, i32 0, i32 14
  store i32* null, i32** %224, align 8
  %225 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %3, align 8
  %226 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %225, i32 0, i32 13
  store i32* null, i32** %226, align 8
  %227 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %3, align 8
  %228 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %227, i32 0, i32 12
  store i32* null, i32** %228, align 8
  br label %229

229:                                              ; preds = %208, %33
  %230 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %3, align 8
  %231 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %230, i32 0, i32 11
  %232 = load i64, i64* %231, align 8
  %233 = call i32 @BUG_ON(i64 %232)
  %234 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %3, align 8
  %235 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %234, i32 0, i32 10
  %236 = load i32*, i32** %235, align 8
  %237 = icmp ne i32* %236, null
  br i1 %237, label %238, label %245

238:                                              ; preds = %229
  %239 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %3, align 8
  %240 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %239, i32 0, i32 10
  %241 = load i32*, i32** %240, align 8
  %242 = call i32 @rds_message_put(i32* %241)
  %243 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %3, align 8
  %244 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %243, i32 0, i32 10
  store i32* null, i32** %244, align 8
  br label %245

245:                                              ; preds = %238, %229
  %246 = load i32, i32* @IB_ACK_IN_FLIGHT, align 4
  %247 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %3, align 8
  %248 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %247, i32 0, i32 9
  %249 = call i32 @clear_bit(i32 %246, i32* %248)
  %250 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %3, align 8
  %251 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %250, i32 0, i32 8
  store i64 0, i64* %251, align 8
  %252 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %3, align 8
  %253 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %252, i32 0, i32 7
  store i64 0, i64* %253, align 8
  %254 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %3, align 8
  %255 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %254, i32 0, i32 6
  store i64 0, i64* %255, align 8
  %256 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %3, align 8
  %257 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %256, i32 0, i32 5
  %258 = call i32 @atomic_set(i32* %257, i32 0)
  %259 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %3, align 8
  %260 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %259, i32 0, i32 4
  %261 = load i32, i32* @rds_iw_sysctl_max_send_wr, align 4
  %262 = call i32 @rds_iw_ring_init(%struct.TYPE_8__* %260, i32 %261)
  %263 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %3, align 8
  %264 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %263, i32 0, i32 3
  %265 = load i32, i32* @rds_iw_sysctl_max_recv_wr, align 4
  %266 = call i32 @rds_iw_ring_init(%struct.TYPE_8__* %264, i32 %265)
  %267 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %3, align 8
  %268 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %267, i32 0, i32 2
  %269 = load %struct.TYPE_7__*, %struct.TYPE_7__** %268, align 8
  %270 = icmp ne %struct.TYPE_7__* %269, null
  br i1 %270, label %271, label %279

271:                                              ; preds = %245
  %272 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %3, align 8
  %273 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %272, i32 0, i32 2
  %274 = load %struct.TYPE_7__*, %struct.TYPE_7__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %274, i32 0, i32 0
  %276 = call i32 @rds_inc_put(i32* %275)
  %277 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %3, align 8
  %278 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %277, i32 0, i32 2
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %278, align 8
  br label %279

279:                                              ; preds = %271, %245
  %280 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %3, align 8
  %281 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %280, i32 0, i32 1
  %282 = load i32*, i32** %281, align 8
  %283 = call i32 @vfree(i32* %282)
  %284 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %3, align 8
  %285 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %284, i32 0, i32 1
  store i32* null, i32** %285, align 8
  %286 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %3, align 8
  %287 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %286, i32 0, i32 0
  %288 = load i32*, i32** %287, align 8
  %289 = call i32 @vfree(i32* %288)
  %290 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %3, align 8
  %291 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %290, i32 0, i32 0
  store i32* null, i32** %291, align 8
  %292 = call i32 (i8*, ...) @rdsdebug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @rdsdebug(i8*, ...) #1

declare dso_local i32 @rdma_disconnect(%struct.TYPE_9__*) #1

declare dso_local i32 @ib_modify_qp(i32*, %struct.ib_qp_attr*, i32) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i64 @rds_iw_ring_empty(%struct.TYPE_8__*) #1

declare dso_local i32 @ib_dma_free_coherent(%struct.ib_device*, i32, i32*, i32) #1

declare dso_local i32 @rds_iw_send_clear_ring(%struct.rds_iw_connection*) #1

declare dso_local i32 @rds_iw_recv_clear_ring(%struct.rds_iw_connection*) #1

declare dso_local i32 @rdma_destroy_qp(%struct.TYPE_9__*) #1

declare dso_local i32 @ib_destroy_cq(i32*) #1

declare dso_local i32 @rds_iw_remove_conn(i64, %struct.rds_connection*) #1

declare dso_local i32 @rdma_destroy_id(%struct.TYPE_9__*) #1

declare dso_local i32 @BUG_ON(i64) #1

declare dso_local i32 @rds_message_put(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @rds_iw_ring_init(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @rds_inc_put(i32*) #1

declare dso_local i32 @vfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
