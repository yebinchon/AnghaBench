; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_ib_cm.c_rds_ib_cm_initiate_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_ib_cm.c_rds_ib_cm_initiate_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_cm_id = type { %struct.rds_connection* }
%struct.rds_connection = type { %struct.rds_ib_connection* }
%struct.rds_ib_connection = type { %struct.rdma_cm_id*, i32 }
%struct.rdma_conn_param = type { i32 }
%struct.rds_ib_connect_private = type { i32 }

@RDS_PROTOCOL_3_0 = common dso_local global i32 0, align 4
@rds_ib_sysctl_flow_control = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"rds_ib_setup_qp failed (%d)\0A\00", align 1
@RDS_PROTOCOL_VERSION = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"rdma_connect failed (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rds_ib_cm_initiate_connect(%struct.rdma_cm_id* %0) #0 {
  %2 = alloca %struct.rdma_cm_id*, align 8
  %3 = alloca %struct.rds_connection*, align 8
  %4 = alloca %struct.rds_ib_connection*, align 8
  %5 = alloca %struct.rdma_conn_param, align 4
  %6 = alloca %struct.rds_ib_connect_private, align 4
  %7 = alloca i32, align 4
  store %struct.rdma_cm_id* %0, %struct.rdma_cm_id** %2, align 8
  %8 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %2, align 8
  %9 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %8, i32 0, i32 0
  %10 = load %struct.rds_connection*, %struct.rds_connection** %9, align 8
  store %struct.rds_connection* %10, %struct.rds_connection** %3, align 8
  %11 = load %struct.rds_connection*, %struct.rds_connection** %3, align 8
  %12 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %11, i32 0, i32 0
  %13 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %12, align 8
  store %struct.rds_ib_connection* %13, %struct.rds_ib_connection** %4, align 8
  %14 = load %struct.rds_connection*, %struct.rds_connection** %3, align 8
  %15 = load i32, i32* @RDS_PROTOCOL_3_0, align 4
  %16 = call i32 @rds_ib_set_protocol(%struct.rds_connection* %14, i32 %15)
  %17 = load i32, i32* @rds_ib_sysctl_flow_control, align 4
  %18 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %19 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 8
  %20 = load %struct.rds_connection*, %struct.rds_connection** %3, align 8
  %21 = call i32 @rds_ib_setup_qp(%struct.rds_connection* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load %struct.rds_connection*, %struct.rds_connection** %3, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @rds_ib_conn_error(%struct.rds_connection* %25, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %43

28:                                               ; preds = %1
  %29 = load %struct.rds_connection*, %struct.rds_connection** %3, align 8
  %30 = load i32, i32* @RDS_PROTOCOL_VERSION, align 4
  %31 = load i32, i32* @UINT_MAX, align 4
  %32 = load i32, i32* @UINT_MAX, align 4
  %33 = call i32 @rds_ib_cm_fill_conn_param(%struct.rds_connection* %29, %struct.rdma_conn_param* %5, %struct.rds_ib_connect_private* %6, i32 %30, i32 %31, i32 %32)
  %34 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %2, align 8
  %35 = call i32 @rdma_connect(%struct.rdma_cm_id* %34, %struct.rdma_conn_param* %5)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %28
  %39 = load %struct.rds_connection*, %struct.rds_connection** %3, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @rds_ib_conn_error(%struct.rds_connection* %39, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %38, %28
  br label %43

43:                                               ; preds = %42, %24
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %43
  %47 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %48 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %47, i32 0, i32 0
  %49 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %48, align 8
  %50 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %2, align 8
  %51 = icmp eq %struct.rdma_cm_id* %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  store i32 0, i32* %7, align 4
  br label %53

53:                                               ; preds = %52, %46
  br label %54

54:                                               ; preds = %53, %43
  %55 = load i32, i32* %7, align 4
  ret i32 %55
}

declare dso_local i32 @rds_ib_set_protocol(%struct.rds_connection*, i32) #1

declare dso_local i32 @rds_ib_setup_qp(%struct.rds_connection*) #1

declare dso_local i32 @rds_ib_conn_error(%struct.rds_connection*, i8*, i32) #1

declare dso_local i32 @rds_ib_cm_fill_conn_param(%struct.rds_connection*, %struct.rdma_conn_param*, %struct.rds_ib_connect_private*, i32, i32, i32) #1

declare dso_local i32 @rdma_connect(%struct.rdma_cm_id*, %struct.rdma_conn_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
