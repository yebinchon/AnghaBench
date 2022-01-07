; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_iw_cm.c_rds_iw_cm_initiate_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_iw_cm.c_rds_iw_cm_initiate_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_cm_id = type { %struct.rds_connection* }
%struct.rds_connection = type { %struct.rds_iw_connection* }
%struct.rds_iw_connection = type { %struct.rdma_cm_id*, i32 }
%struct.rdma_conn_param = type { i32 }
%struct.rds_iw_connect_private = type { i32 }

@RDS_PROTOCOL_3_0 = common dso_local global i32 0, align 4
@rds_iw_sysctl_flow_control = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"rds_iw_setup_qp failed (%d)\0A\00", align 1
@RDS_PROTOCOL_VERSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"rdma_connect failed (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rds_iw_cm_initiate_connect(%struct.rdma_cm_id* %0) #0 {
  %2 = alloca %struct.rdma_cm_id*, align 8
  %3 = alloca %struct.rds_connection*, align 8
  %4 = alloca %struct.rds_iw_connection*, align 8
  %5 = alloca %struct.rdma_conn_param, align 4
  %6 = alloca %struct.rds_iw_connect_private, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rds_iw_connection*, align 8
  store %struct.rdma_cm_id* %0, %struct.rdma_cm_id** %2, align 8
  %9 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %2, align 8
  %10 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %9, i32 0, i32 0
  %11 = load %struct.rds_connection*, %struct.rds_connection** %10, align 8
  store %struct.rds_connection* %11, %struct.rds_connection** %3, align 8
  %12 = load %struct.rds_connection*, %struct.rds_connection** %3, align 8
  %13 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %12, i32 0, i32 0
  %14 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %13, align 8
  store %struct.rds_iw_connection* %14, %struct.rds_iw_connection** %4, align 8
  %15 = load %struct.rds_connection*, %struct.rds_connection** %3, align 8
  %16 = load i32, i32* @RDS_PROTOCOL_3_0, align 4
  %17 = call i32 @rds_iw_set_protocol(%struct.rds_connection* %15, i32 %16)
  %18 = load i32, i32* @rds_iw_sysctl_flow_control, align 4
  %19 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %4, align 8
  %20 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 8
  %21 = load %struct.rds_connection*, %struct.rds_connection** %3, align 8
  %22 = call i32 @rds_iw_setup_qp(%struct.rds_connection* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load %struct.rds_connection*, %struct.rds_connection** %3, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @rds_iw_conn_error(%struct.rds_connection* %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %42

29:                                               ; preds = %1
  %30 = load %struct.rds_connection*, %struct.rds_connection** %3, align 8
  %31 = load i32, i32* @RDS_PROTOCOL_VERSION, align 4
  %32 = call i32 @rds_iw_cm_fill_conn_param(%struct.rds_connection* %30, %struct.rdma_conn_param* %5, %struct.rds_iw_connect_private* %6, i32 %31)
  %33 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %2, align 8
  %34 = call i32 @rdma_connect(%struct.rdma_cm_id* %33, %struct.rdma_conn_param* %5)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = load %struct.rds_connection*, %struct.rds_connection** %3, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @rds_iw_conn_error(%struct.rds_connection* %38, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %37, %29
  br label %42

42:                                               ; preds = %41, %25
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %42
  %46 = load %struct.rds_connection*, %struct.rds_connection** %3, align 8
  %47 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %46, i32 0, i32 0
  %48 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %47, align 8
  store %struct.rds_iw_connection* %48, %struct.rds_iw_connection** %8, align 8
  %49 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %8, align 8
  %50 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %49, i32 0, i32 0
  %51 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %50, align 8
  %52 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %2, align 8
  %53 = icmp eq %struct.rdma_cm_id* %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  store i32 0, i32* %7, align 4
  br label %55

55:                                               ; preds = %54, %45
  br label %56

56:                                               ; preds = %55, %42
  %57 = load i32, i32* %7, align 4
  ret i32 %57
}

declare dso_local i32 @rds_iw_set_protocol(%struct.rds_connection*, i32) #1

declare dso_local i32 @rds_iw_setup_qp(%struct.rds_connection*) #1

declare dso_local i32 @rds_iw_conn_error(%struct.rds_connection*, i8*, i32) #1

declare dso_local i32 @rds_iw_cm_fill_conn_param(%struct.rds_connection*, %struct.rdma_conn_param*, %struct.rds_iw_connect_private*, i32) #1

declare dso_local i32 @rdma_connect(%struct.rdma_cm_id*, %struct.rdma_conn_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
