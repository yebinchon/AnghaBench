; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_iw_cm.c_rds_iw_cm_fill_conn_param.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_iw_cm.c_rds_iw_cm_fill_conn_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_connection = type { i32, i32, %struct.rds_iw_connection* }
%struct.rds_iw_connection = type { i32, i64 }
%struct.rdma_conn_param = type { i32, i32, i32, %struct.rdma_conn_param*, i32, i32, i32, i32, i32, i32, i32 }
%struct.rds_iw_connect_private = type { i32, i32, i32, %struct.rds_iw_connect_private*, i32, i32, i32, i32, i32, i32, i32 }

@RDS_IW_SUPPORTED_PROTOCOLS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rds_connection*, %struct.rdma_conn_param*, %struct.rds_iw_connect_private*, i32)* @rds_iw_cm_fill_conn_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rds_iw_cm_fill_conn_param(%struct.rds_connection* %0, %struct.rdma_conn_param* %1, %struct.rds_iw_connect_private* %2, i32 %3) #0 {
  %5 = alloca %struct.rds_connection*, align 8
  %6 = alloca %struct.rdma_conn_param*, align 8
  %7 = alloca %struct.rds_iw_connect_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.rds_iw_connection*, align 8
  %10 = alloca i32, align 4
  store %struct.rds_connection* %0, %struct.rds_connection** %5, align 8
  store %struct.rdma_conn_param* %1, %struct.rdma_conn_param** %6, align 8
  store %struct.rds_iw_connect_private* %2, %struct.rds_iw_connect_private** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.rds_connection*, %struct.rds_connection** %5, align 8
  %12 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %11, i32 0, i32 2
  %13 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %12, align 8
  store %struct.rds_iw_connection* %13, %struct.rds_iw_connection** %9, align 8
  %14 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %6, align 8
  %15 = bitcast %struct.rdma_conn_param* %14 to %struct.rds_iw_connect_private*
  %16 = call i32 @memset(%struct.rds_iw_connect_private* %15, i32 0, i32 56)
  %17 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %6, align 8
  %18 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %6, align 8
  %20 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %19, i32 0, i32 1
  store i32 1, i32* %20, align 4
  %21 = load %struct.rds_iw_connect_private*, %struct.rds_iw_connect_private** %7, align 8
  %22 = icmp ne %struct.rds_iw_connect_private* %21, null
  br i1 %22, label %23, label %77

23:                                               ; preds = %4
  %24 = load %struct.rds_iw_connect_private*, %struct.rds_iw_connect_private** %7, align 8
  %25 = call i32 @memset(%struct.rds_iw_connect_private* %24, i32 0, i32 56)
  %26 = load %struct.rds_connection*, %struct.rds_connection** %5, align 8
  %27 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.rds_iw_connect_private*, %struct.rds_iw_connect_private** %7, align 8
  %30 = getelementptr inbounds %struct.rds_iw_connect_private, %struct.rds_iw_connect_private* %29, i32 0, i32 10
  store i32 %28, i32* %30, align 8
  %31 = load %struct.rds_connection*, %struct.rds_connection** %5, align 8
  %32 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.rds_iw_connect_private*, %struct.rds_iw_connect_private** %7, align 8
  %35 = getelementptr inbounds %struct.rds_iw_connect_private, %struct.rds_iw_connect_private* %34, i32 0, i32 9
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @RDS_PROTOCOL_MAJOR(i32 %36)
  %38 = load %struct.rds_iw_connect_private*, %struct.rds_iw_connect_private** %7, align 8
  %39 = getelementptr inbounds %struct.rds_iw_connect_private, %struct.rds_iw_connect_private* %38, i32 0, i32 8
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @RDS_PROTOCOL_MINOR(i32 %40)
  %42 = load %struct.rds_iw_connect_private*, %struct.rds_iw_connect_private** %7, align 8
  %43 = getelementptr inbounds %struct.rds_iw_connect_private, %struct.rds_iw_connect_private* %42, i32 0, i32 7
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @RDS_IW_SUPPORTED_PROTOCOLS, align 4
  %45 = call i32 @cpu_to_be16(i32 %44)
  %46 = load %struct.rds_iw_connect_private*, %struct.rds_iw_connect_private** %7, align 8
  %47 = getelementptr inbounds %struct.rds_iw_connect_private, %struct.rds_iw_connect_private* %46, i32 0, i32 6
  store i32 %45, i32* %47, align 8
  %48 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %9, align 8
  %49 = call i32 @rds_iw_piggyb_ack(%struct.rds_iw_connection* %48)
  %50 = load %struct.rds_iw_connect_private*, %struct.rds_iw_connect_private** %7, align 8
  %51 = getelementptr inbounds %struct.rds_iw_connect_private, %struct.rds_iw_connect_private* %50, i32 0, i32 5
  store i32 %49, i32* %51, align 4
  %52 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %9, align 8
  %53 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %70

56:                                               ; preds = %23
  %57 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %9, align 8
  %58 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %57, i32 0, i32 0
  %59 = call i32 @atomic_read(i32* %58)
  %60 = call i32 @IB_GET_POST_CREDITS(i32 %59)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @cpu_to_be32(i32 %61)
  %63 = load %struct.rds_iw_connect_private*, %struct.rds_iw_connect_private** %7, align 8
  %64 = getelementptr inbounds %struct.rds_iw_connect_private, %struct.rds_iw_connect_private* %63, i32 0, i32 4
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @IB_SET_POST_CREDITS(i32 %65)
  %67 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %9, align 8
  %68 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %67, i32 0, i32 0
  %69 = call i32 @atomic_sub(i32 %66, i32* %68)
  br label %70

70:                                               ; preds = %56, %23
  %71 = load %struct.rds_iw_connect_private*, %struct.rds_iw_connect_private** %7, align 8
  %72 = bitcast %struct.rds_iw_connect_private* %71 to %struct.rdma_conn_param*
  %73 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %6, align 8
  %74 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %73, i32 0, i32 3
  store %struct.rdma_conn_param* %72, %struct.rdma_conn_param** %74, align 8
  %75 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %6, align 8
  %76 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %75, i32 0, i32 2
  store i32 56, i32* %76, align 8
  br label %77

77:                                               ; preds = %70, %4
  ret void
}

declare dso_local i32 @memset(%struct.rds_iw_connect_private*, i32, i32) #1

declare dso_local i32 @RDS_PROTOCOL_MAJOR(i32) #1

declare dso_local i32 @RDS_PROTOCOL_MINOR(i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @rds_iw_piggyb_ack(%struct.rds_iw_connection*) #1

declare dso_local i32 @IB_GET_POST_CREDITS(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @atomic_sub(i32, i32*) #1

declare dso_local i32 @IB_SET_POST_CREDITS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
