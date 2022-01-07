; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_ib_cm.c_rds_ib_cm_handle_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_ib_cm.c_rds_ib_cm_handle_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_cm_id = type { i32, %struct.rdma_cm_id*, %struct.rds_ib_connection*, %struct.TYPE_14__ }
%struct.rds_ib_connection = type { %struct.rds_connection* }
%struct.rds_connection = type { i32, %struct.rds_connection*, %struct.rds_ib_connection*, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.rdma_cm_event = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32, %struct.rds_ib_connect_private* }
%struct.rds_ib_connect_private = type { i64, i32, i32, i32 }
%struct.rdma_conn_param = type { i32 }

@.str = private unnamed_addr constant [59 x i8] c"saddr %pI4 daddr %pI4 RDSv%u.%u lguid 0x%llx fguid 0x%llx\0A\00", align 1
@rds_ib_transport = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"rds_conn_create failed (%ld)\0A\00", align 1
@RDS_CONN_DOWN = common dso_local global i32 0, align 4
@RDS_CONN_CONNECTING = common dso_local global i64 0, align 8
@RDS_CONN_UP = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"incoming connect while connecting\0A\00", align 1
@s_ib_listen_closed_stale = common dso_local global i32 0, align 4
@s_ib_connect_raced = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"rds_ib_setup_qp failed (%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"rdma_accept failed (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rds_ib_cm_handle_connect(%struct.rdma_cm_id* %0, %struct.rdma_cm_event* %1) #0 {
  %3 = alloca %struct.rdma_cm_id*, align 8
  %4 = alloca %struct.rdma_cm_event*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.rds_ib_connect_private*, align 8
  %8 = alloca %struct.rds_ib_connect_private, align 8
  %9 = alloca %struct.rds_connection*, align 8
  %10 = alloca %struct.rds_ib_connection*, align 8
  %11 = alloca %struct.rdma_conn_param, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.rdma_cm_id* %0, %struct.rdma_cm_id** %3, align 8
  store %struct.rdma_cm_event* %1, %struct.rdma_cm_event** %4, align 8
  %15 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %16 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %5, align 8
  %23 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %24 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %6, align 8
  %31 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %4, align 8
  %32 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 2
  %35 = load %struct.rds_ib_connect_private*, %struct.rds_ib_connect_private** %34, align 8
  store %struct.rds_ib_connect_private* %35, %struct.rds_ib_connect_private** %7, align 8
  store %struct.rds_connection* null, %struct.rds_connection** %9, align 8
  store %struct.rds_ib_connection* null, %struct.rds_ib_connection** %10, align 8
  store i32 1, i32* %13, align 4
  store i32 1, i32* %14, align 4
  %36 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %4, align 8
  %37 = call i32 @rds_ib_protocol_compatible(%struct.rdma_cm_event* %36)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %2
  br label %174

41:                                               ; preds = %2
  %42 = load %struct.rds_ib_connect_private*, %struct.rds_ib_connect_private** %7, align 8
  %43 = getelementptr inbounds %struct.rds_ib_connect_private, %struct.rds_ib_connect_private* %42, i32 0, i32 2
  %44 = load %struct.rds_ib_connect_private*, %struct.rds_ib_connect_private** %7, align 8
  %45 = getelementptr inbounds %struct.rds_ib_connect_private, %struct.rds_ib_connect_private* %44, i32 0, i32 3
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @RDS_PROTOCOL_MAJOR(i32 %46)
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @RDS_PROTOCOL_MINOR(i32 %48)
  %50 = load i64, i64* %5, align 8
  %51 = call i64 @be64_to_cpu(i64 %50)
  %52 = load i64, i64* %6, align 8
  %53 = call i64 @be64_to_cpu(i64 %52)
  %54 = call i32 (i8*, ...) @rdsdebug(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32* %43, i32* %45, i32 %47, i32 %49, i64 %51, i64 %53)
  %55 = load %struct.rds_ib_connect_private*, %struct.rds_ib_connect_private** %7, align 8
  %56 = getelementptr inbounds %struct.rds_ib_connect_private, %struct.rds_ib_connect_private* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.rds_ib_connect_private*, %struct.rds_ib_connect_private** %7, align 8
  %59 = getelementptr inbounds %struct.rds_ib_connect_private, %struct.rds_ib_connect_private* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @GFP_KERNEL, align 4
  %62 = call %struct.rds_connection* @rds_conn_create(i32 %57, i32 %60, i32* @rds_ib_transport, i32 %61)
  store %struct.rds_connection* %62, %struct.rds_connection** %9, align 8
  %63 = load %struct.rds_connection*, %struct.rds_connection** %9, align 8
  %64 = call i64 @IS_ERR(%struct.rds_connection* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %41
  %67 = load %struct.rds_connection*, %struct.rds_connection** %9, align 8
  %68 = call i32 @PTR_ERR(%struct.rds_connection* %67)
  %69 = call i32 (i8*, ...) @rdsdebug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  store %struct.rds_connection* null, %struct.rds_connection** %9, align 8
  br label %174

70:                                               ; preds = %41
  %71 = load %struct.rds_connection*, %struct.rds_connection** %9, align 8
  %72 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %71, i32 0, i32 0
  %73 = call i32 @mutex_lock(i32* %72)
  %74 = load %struct.rds_connection*, %struct.rds_connection** %9, align 8
  %75 = load i32, i32* @RDS_CONN_DOWN, align 4
  %76 = load i64, i64* @RDS_CONN_CONNECTING, align 8
  %77 = call i32 @rds_conn_transition(%struct.rds_connection* %74, i32 %75, i64 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %100, label %79

79:                                               ; preds = %70
  %80 = load %struct.rds_connection*, %struct.rds_connection** %9, align 8
  %81 = call i64 @rds_conn_state(%struct.rds_connection* %80)
  %82 = load i64, i64* @RDS_CONN_UP, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = call i32 (i8*, ...) @rdsdebug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %86 = load %struct.rds_connection*, %struct.rds_connection** %9, align 8
  %87 = call i32 @rds_conn_drop(%struct.rds_connection* %86)
  %88 = load i32, i32* @s_ib_listen_closed_stale, align 4
  %89 = call i32 @rds_ib_stats_inc(i32 %88)
  br label %99

90:                                               ; preds = %79
  %91 = load %struct.rds_connection*, %struct.rds_connection** %9, align 8
  %92 = call i64 @rds_conn_state(%struct.rds_connection* %91)
  %93 = load i64, i64* @RDS_CONN_CONNECTING, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load i32, i32* @s_ib_connect_raced, align 4
  %97 = call i32 @rds_ib_stats_inc(i32 %96)
  br label %98

98:                                               ; preds = %95, %90
  br label %99

99:                                               ; preds = %98, %84
  br label %174

100:                                              ; preds = %70
  %101 = load %struct.rds_connection*, %struct.rds_connection** %9, align 8
  %102 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %101, i32 0, i32 2
  %103 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %102, align 8
  store %struct.rds_ib_connection* %103, %struct.rds_ib_connection** %10, align 8
  %104 = load %struct.rds_connection*, %struct.rds_connection** %9, align 8
  %105 = load i32, i32* %12, align 4
  %106 = call i32 @rds_ib_set_protocol(%struct.rds_connection* %104, i32 %105)
  %107 = load %struct.rds_connection*, %struct.rds_connection** %9, align 8
  %108 = load %struct.rds_ib_connect_private*, %struct.rds_ib_connect_private** %7, align 8
  %109 = getelementptr inbounds %struct.rds_ib_connect_private, %struct.rds_ib_connect_private* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @be32_to_cpu(i32 %110)
  %112 = call i32 @rds_ib_set_flow_control(%struct.rds_connection* %107, i32 %111)
  %113 = load %struct.rds_ib_connect_private*, %struct.rds_ib_connect_private** %7, align 8
  %114 = getelementptr inbounds %struct.rds_ib_connect_private, %struct.rds_ib_connect_private* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %100
  %118 = load %struct.rds_connection*, %struct.rds_connection** %9, align 8
  %119 = load %struct.rds_ib_connect_private*, %struct.rds_ib_connect_private** %7, align 8
  %120 = getelementptr inbounds %struct.rds_ib_connect_private, %struct.rds_ib_connect_private* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = call i64 @be64_to_cpu(i64 %121)
  %123 = call i32 @rds_send_drop_acked(%struct.rds_connection* %118, i64 %122, i32* null)
  br label %124

124:                                              ; preds = %117, %100
  %125 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %126 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %125, i32 0, i32 1
  %127 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %126, align 8
  %128 = bitcast %struct.rdma_cm_id* %127 to %struct.rds_connection*
  %129 = call i32 @BUG_ON(%struct.rds_connection* %128)
  %130 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %10, align 8
  %131 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %130, i32 0, i32 0
  %132 = load %struct.rds_connection*, %struct.rds_connection** %131, align 8
  %133 = call i32 @BUG_ON(%struct.rds_connection* %132)
  %134 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %135 = bitcast %struct.rdma_cm_id* %134 to %struct.rds_connection*
  %136 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %10, align 8
  %137 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %136, i32 0, i32 0
  store %struct.rds_connection* %135, %struct.rds_connection** %137, align 8
  %138 = load %struct.rds_connection*, %struct.rds_connection** %9, align 8
  %139 = bitcast %struct.rds_connection* %138 to %struct.rdma_cm_id*
  %140 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %141 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %140, i32 0, i32 1
  store %struct.rdma_cm_id* %139, %struct.rdma_cm_id** %141, align 8
  store i32 0, i32* %14, align 4
  %142 = load %struct.rds_connection*, %struct.rds_connection** %9, align 8
  %143 = call i32 @rds_ib_setup_qp(%struct.rds_connection* %142)
  store i32 %143, i32* %13, align 4
  %144 = load i32, i32* %13, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %124
  %147 = load %struct.rds_connection*, %struct.rds_connection** %9, align 8
  %148 = load i32, i32* %13, align 4
  %149 = call i32 @rds_ib_conn_error(%struct.rds_connection* %147, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %148)
  br label %174

150:                                              ; preds = %124
  %151 = load %struct.rds_connection*, %struct.rds_connection** %9, align 8
  %152 = load i32, i32* %12, align 4
  %153 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %4, align 8
  %154 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %4, align 8
  %159 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @rds_ib_cm_fill_conn_param(%struct.rds_connection* %151, %struct.rdma_conn_param* %11, %struct.rds_ib_connect_private* %8, i32 %152, i32 %157, i32 %162)
  %164 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %165 = bitcast %struct.rdma_cm_id* %164 to %struct.rds_connection*
  %166 = call i32 @rdma_accept(%struct.rds_connection* %165, %struct.rdma_conn_param* %11)
  store i32 %166, i32* %13, align 4
  %167 = load i32, i32* %13, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %150
  %170 = load %struct.rds_connection*, %struct.rds_connection** %9, align 8
  %171 = load i32, i32* %13, align 4
  %172 = call i32 @rds_ib_conn_error(%struct.rds_connection* %170, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %171)
  br label %173

173:                                              ; preds = %169, %150
  br label %174

174:                                              ; preds = %173, %146, %99, %66, %40
  %175 = load %struct.rds_connection*, %struct.rds_connection** %9, align 8
  %176 = icmp ne %struct.rds_connection* %175, null
  br i1 %176, label %177, label %181

177:                                              ; preds = %174
  %178 = load %struct.rds_connection*, %struct.rds_connection** %9, align 8
  %179 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %178, i32 0, i32 0
  %180 = call i32 @mutex_unlock(i32* %179)
  br label %181

181:                                              ; preds = %177, %174
  %182 = load i32, i32* %13, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %181
  %185 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %186 = bitcast %struct.rdma_cm_id* %185 to %struct.rds_connection*
  %187 = call i32 @rdma_reject(%struct.rds_connection* %186, i32* null, i32 0)
  br label %188

188:                                              ; preds = %184, %181
  %189 = load i32, i32* %14, align 4
  ret i32 %189
}

declare dso_local i32 @rds_ib_protocol_compatible(%struct.rdma_cm_event*) #1

declare dso_local i32 @rdsdebug(i8*, ...) #1

declare dso_local i32 @RDS_PROTOCOL_MAJOR(i32) #1

declare dso_local i32 @RDS_PROTOCOL_MINOR(i32) #1

declare dso_local i64 @be64_to_cpu(i64) #1

declare dso_local %struct.rds_connection* @rds_conn_create(i32, i32, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.rds_connection*) #1

declare dso_local i32 @PTR_ERR(%struct.rds_connection*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rds_conn_transition(%struct.rds_connection*, i32, i64) #1

declare dso_local i64 @rds_conn_state(%struct.rds_connection*) #1

declare dso_local i32 @rds_conn_drop(%struct.rds_connection*) #1

declare dso_local i32 @rds_ib_stats_inc(i32) #1

declare dso_local i32 @rds_ib_set_protocol(%struct.rds_connection*, i32) #1

declare dso_local i32 @rds_ib_set_flow_control(%struct.rds_connection*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @rds_send_drop_acked(%struct.rds_connection*, i64, i32*) #1

declare dso_local i32 @BUG_ON(%struct.rds_connection*) #1

declare dso_local i32 @rds_ib_setup_qp(%struct.rds_connection*) #1

declare dso_local i32 @rds_ib_conn_error(%struct.rds_connection*, i8*, i32) #1

declare dso_local i32 @rds_ib_cm_fill_conn_param(%struct.rds_connection*, %struct.rdma_conn_param*, %struct.rds_ib_connect_private*, i32, i32, i32) #1

declare dso_local i32 @rdma_accept(%struct.rds_connection*, %struct.rdma_conn_param*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @rdma_reject(%struct.rds_connection*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
