; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_iw_cm.c_rds_iw_cm_handle_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_iw_cm.c_rds_iw_cm_handle_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_cm_id = type { i32, i32, %struct.rdma_cm_id*, %struct.rds_iw_connection* }
%struct.rds_iw_connection = type { i32, %struct.rds_connection* }
%struct.rds_connection = type { i32, i32, %struct.rds_connection*, %struct.rds_iw_connection* }
%struct.rdma_cm_event = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.rds_iw_connect_private* }
%struct.rds_iw_connect_private = type { i64, i32, i32, i32 }
%struct.rdma_conn_param = type { i32 }
%struct.rds_iw_device = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"saddr %pI4 daddr %pI4 RDSv%u.%u\0A\00", align 1
@rds_iw_transport = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"rds_conn_create failed (%ld)\0A\00", align 1
@RDS_CONN_DOWN = common dso_local global i32 0, align 4
@RDS_CONN_CONNECTING = common dso_local global i64 0, align 8
@RDS_CONN_UP = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"incoming connect while connecting\0A\00", align 1
@s_iw_listen_closed_stale = common dso_local global i32 0, align 4
@s_iw_connect_raced = common dso_local global i32 0, align 4
@rds_iw_client = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"rds_iw_setup_qp failed (%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"rdma_accept failed (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rds_iw_cm_handle_connect(%struct.rdma_cm_id* %0, %struct.rdma_cm_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rdma_cm_id*, align 8
  %5 = alloca %struct.rdma_cm_event*, align 8
  %6 = alloca %struct.rds_iw_connect_private*, align 8
  %7 = alloca %struct.rds_iw_connect_private, align 8
  %8 = alloca %struct.rds_connection*, align 8
  %9 = alloca %struct.rds_iw_connection*, align 8
  %10 = alloca %struct.rdma_conn_param, align 4
  %11 = alloca %struct.rds_iw_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.rdma_cm_id* %0, %struct.rdma_cm_id** %4, align 8
  store %struct.rdma_cm_event* %1, %struct.rdma_cm_event** %5, align 8
  %15 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %5, align 8
  %16 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.rds_iw_connect_private*, %struct.rds_iw_connect_private** %18, align 8
  store %struct.rds_iw_connect_private* %19, %struct.rds_iw_connect_private** %6, align 8
  store %struct.rds_connection* null, %struct.rds_connection** %8, align 8
  store %struct.rds_iw_connection* null, %struct.rds_iw_connection** %9, align 8
  store i32 1, i32* %14, align 4
  %20 = load %struct.rds_iw_connect_private*, %struct.rds_iw_connect_private** %6, align 8
  %21 = call i32 @rds_iw_protocol_compatible(%struct.rds_iw_connect_private* %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  br label %162

25:                                               ; preds = %2
  %26 = load %struct.rds_iw_connect_private*, %struct.rds_iw_connect_private** %6, align 8
  %27 = getelementptr inbounds %struct.rds_iw_connect_private, %struct.rds_iw_connect_private* %26, i32 0, i32 2
  %28 = load %struct.rds_iw_connect_private*, %struct.rds_iw_connect_private** %6, align 8
  %29 = getelementptr inbounds %struct.rds_iw_connect_private, %struct.rds_iw_connect_private* %28, i32 0, i32 3
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @RDS_PROTOCOL_MAJOR(i32 %30)
  %32 = load i32, i32* %12, align 4
  %33 = call i32 @RDS_PROTOCOL_MINOR(i32 %32)
  %34 = call i32 (i8*, ...) @rdsdebug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32* %27, i32* %29, i32 %31, i32 %33)
  %35 = load %struct.rds_iw_connect_private*, %struct.rds_iw_connect_private** %6, align 8
  %36 = getelementptr inbounds %struct.rds_iw_connect_private, %struct.rds_iw_connect_private* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.rds_iw_connect_private*, %struct.rds_iw_connect_private** %6, align 8
  %39 = getelementptr inbounds %struct.rds_iw_connect_private, %struct.rds_iw_connect_private* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call %struct.rds_connection* @rds_conn_create(i32 %37, i32 %40, i32* @rds_iw_transport, i32 %41)
  store %struct.rds_connection* %42, %struct.rds_connection** %8, align 8
  %43 = load %struct.rds_connection*, %struct.rds_connection** %8, align 8
  %44 = call i64 @IS_ERR(%struct.rds_connection* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %25
  %47 = load %struct.rds_connection*, %struct.rds_connection** %8, align 8
  %48 = call i32 @PTR_ERR(%struct.rds_connection* %47)
  %49 = call i32 (i8*, ...) @rdsdebug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  store %struct.rds_connection* null, %struct.rds_connection** %8, align 8
  br label %162

50:                                               ; preds = %25
  %51 = load %struct.rds_connection*, %struct.rds_connection** %8, align 8
  %52 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %51, i32 0, i32 0
  %53 = call i32 @mutex_lock(i32* %52)
  %54 = load %struct.rds_connection*, %struct.rds_connection** %8, align 8
  %55 = load i32, i32* @RDS_CONN_DOWN, align 4
  %56 = load i64, i64* @RDS_CONN_CONNECTING, align 8
  %57 = call i32 @rds_conn_transition(%struct.rds_connection* %54, i32 %55, i64 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %83, label %59

59:                                               ; preds = %50
  %60 = load %struct.rds_connection*, %struct.rds_connection** %8, align 8
  %61 = call i64 @rds_conn_state(%struct.rds_connection* %60)
  %62 = load i64, i64* @RDS_CONN_UP, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = call i32 (i8*, ...) @rdsdebug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %66 = load %struct.rds_connection*, %struct.rds_connection** %8, align 8
  %67 = call i32 @rds_conn_drop(%struct.rds_connection* %66)
  %68 = load i32, i32* @s_iw_listen_closed_stale, align 4
  %69 = call i32 @rds_iw_stats_inc(i32 %68)
  br label %79

70:                                               ; preds = %59
  %71 = load %struct.rds_connection*, %struct.rds_connection** %8, align 8
  %72 = call i64 @rds_conn_state(%struct.rds_connection* %71)
  %73 = load i64, i64* @RDS_CONN_CONNECTING, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i32, i32* @s_iw_connect_raced, align 4
  %77 = call i32 @rds_iw_stats_inc(i32 %76)
  br label %78

78:                                               ; preds = %75, %70
  br label %79

79:                                               ; preds = %78, %64
  %80 = load %struct.rds_connection*, %struct.rds_connection** %8, align 8
  %81 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %80, i32 0, i32 0
  %82 = call i32 @mutex_unlock(i32* %81)
  br label %162

83:                                               ; preds = %50
  %84 = load %struct.rds_connection*, %struct.rds_connection** %8, align 8
  %85 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %84, i32 0, i32 3
  %86 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %85, align 8
  store %struct.rds_iw_connection* %86, %struct.rds_iw_connection** %9, align 8
  %87 = load %struct.rds_connection*, %struct.rds_connection** %8, align 8
  %88 = load i32, i32* %12, align 4
  %89 = call i32 @rds_iw_set_protocol(%struct.rds_connection* %87, i32 %88)
  %90 = load %struct.rds_connection*, %struct.rds_connection** %8, align 8
  %91 = load %struct.rds_iw_connect_private*, %struct.rds_iw_connect_private** %6, align 8
  %92 = getelementptr inbounds %struct.rds_iw_connect_private, %struct.rds_iw_connect_private* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @be32_to_cpu(i32 %93)
  %95 = call i32 @rds_iw_set_flow_control(%struct.rds_connection* %90, i32 %94)
  %96 = load %struct.rds_iw_connect_private*, %struct.rds_iw_connect_private** %6, align 8
  %97 = getelementptr inbounds %struct.rds_iw_connect_private, %struct.rds_iw_connect_private* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %83
  %101 = load %struct.rds_connection*, %struct.rds_connection** %8, align 8
  %102 = load %struct.rds_iw_connect_private*, %struct.rds_iw_connect_private** %6, align 8
  %103 = getelementptr inbounds %struct.rds_iw_connect_private, %struct.rds_iw_connect_private* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @be64_to_cpu(i64 %104)
  %106 = call i32 @rds_send_drop_acked(%struct.rds_connection* %101, i32 %105, i32* null)
  br label %107

107:                                              ; preds = %100, %83
  %108 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %109 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %108, i32 0, i32 2
  %110 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %109, align 8
  %111 = bitcast %struct.rdma_cm_id* %110 to %struct.rds_connection*
  %112 = call i32 @BUG_ON(%struct.rds_connection* %111)
  %113 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %9, align 8
  %114 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %113, i32 0, i32 1
  %115 = load %struct.rds_connection*, %struct.rds_connection** %114, align 8
  %116 = call i32 @BUG_ON(%struct.rds_connection* %115)
  %117 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %118 = bitcast %struct.rdma_cm_id* %117 to %struct.rds_connection*
  %119 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %9, align 8
  %120 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %119, i32 0, i32 1
  store %struct.rds_connection* %118, %struct.rds_connection** %120, align 8
  %121 = load %struct.rds_connection*, %struct.rds_connection** %8, align 8
  %122 = bitcast %struct.rds_connection* %121 to %struct.rdma_cm_id*
  %123 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %124 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %123, i32 0, i32 2
  store %struct.rdma_cm_id* %122, %struct.rdma_cm_id** %124, align 8
  %125 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %126 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call %struct.rds_iw_device* @ib_get_client_data(i32 %127, i32* @rds_iw_client)
  store %struct.rds_iw_device* %128, %struct.rds_iw_device** %11, align 8
  %129 = load %struct.rds_iw_device*, %struct.rds_iw_device** %11, align 8
  %130 = getelementptr inbounds %struct.rds_iw_device, %struct.rds_iw_device* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %9, align 8
  %133 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 8
  store i32 0, i32* %14, align 4
  %134 = load %struct.rds_connection*, %struct.rds_connection** %8, align 8
  %135 = call i32 @rds_iw_setup_qp(%struct.rds_connection* %134)
  store i32 %135, i32* %13, align 4
  %136 = load i32, i32* %13, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %107
  %139 = load %struct.rds_connection*, %struct.rds_connection** %8, align 8
  %140 = load i32, i32* %13, align 4
  %141 = call i32 @rds_iw_conn_error(%struct.rds_connection* %139, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %140)
  %142 = load %struct.rds_connection*, %struct.rds_connection** %8, align 8
  %143 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %142, i32 0, i32 0
  %144 = call i32 @mutex_unlock(i32* %143)
  br label %162

145:                                              ; preds = %107
  %146 = load %struct.rds_connection*, %struct.rds_connection** %8, align 8
  %147 = load i32, i32* %12, align 4
  %148 = call i32 @rds_iw_cm_fill_conn_param(%struct.rds_connection* %146, %struct.rdma_conn_param* %10, %struct.rds_iw_connect_private* %7, i32 %147)
  %149 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %150 = bitcast %struct.rdma_cm_id* %149 to %struct.rds_connection*
  %151 = call i32 @rdma_accept(%struct.rds_connection* %150, %struct.rdma_conn_param* %10)
  store i32 %151, i32* %13, align 4
  %152 = load %struct.rds_connection*, %struct.rds_connection** %8, align 8
  %153 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %152, i32 0, i32 0
  %154 = call i32 @mutex_unlock(i32* %153)
  %155 = load i32, i32* %13, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %145
  %158 = load %struct.rds_connection*, %struct.rds_connection** %8, align 8
  %159 = load i32, i32* %13, align 4
  %160 = call i32 @rds_iw_conn_error(%struct.rds_connection* %158, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %159)
  br label %162

161:                                              ; preds = %145
  store i32 0, i32* %3, align 4
  br label %167

162:                                              ; preds = %157, %138, %79, %46, %24
  %163 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %164 = bitcast %struct.rdma_cm_id* %163 to %struct.rds_connection*
  %165 = call i32 @rdma_reject(%struct.rds_connection* %164, i32* null, i32 0)
  %166 = load i32, i32* %14, align 4
  store i32 %166, i32* %3, align 4
  br label %167

167:                                              ; preds = %162, %161
  %168 = load i32, i32* %3, align 4
  ret i32 %168
}

declare dso_local i32 @rds_iw_protocol_compatible(%struct.rds_iw_connect_private*) #1

declare dso_local i32 @rdsdebug(i8*, ...) #1

declare dso_local i32 @RDS_PROTOCOL_MAJOR(i32) #1

declare dso_local i32 @RDS_PROTOCOL_MINOR(i32) #1

declare dso_local %struct.rds_connection* @rds_conn_create(i32, i32, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.rds_connection*) #1

declare dso_local i32 @PTR_ERR(%struct.rds_connection*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rds_conn_transition(%struct.rds_connection*, i32, i64) #1

declare dso_local i64 @rds_conn_state(%struct.rds_connection*) #1

declare dso_local i32 @rds_conn_drop(%struct.rds_connection*) #1

declare dso_local i32 @rds_iw_stats_inc(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @rds_iw_set_protocol(%struct.rds_connection*, i32) #1

declare dso_local i32 @rds_iw_set_flow_control(%struct.rds_connection*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @rds_send_drop_acked(%struct.rds_connection*, i32, i32*) #1

declare dso_local i32 @be64_to_cpu(i64) #1

declare dso_local i32 @BUG_ON(%struct.rds_connection*) #1

declare dso_local %struct.rds_iw_device* @ib_get_client_data(i32, i32*) #1

declare dso_local i32 @rds_iw_setup_qp(%struct.rds_connection*) #1

declare dso_local i32 @rds_iw_conn_error(%struct.rds_connection*, i8*, i32) #1

declare dso_local i32 @rds_iw_cm_fill_conn_param(%struct.rds_connection*, %struct.rdma_conn_param*, %struct.rds_iw_connect_private*, i32) #1

declare dso_local i32 @rdma_accept(%struct.rds_connection*, %struct.rdma_conn_param*) #1

declare dso_local i32 @rdma_reject(%struct.rds_connection*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
