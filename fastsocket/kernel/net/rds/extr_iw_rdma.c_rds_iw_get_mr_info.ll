; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_iw_rdma.c_rds_iw_get_mr_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_iw_rdma.c_rds_iw_get_mr_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_iw_device = type { %struct.rds_iw_mr_pool* }
%struct.rds_iw_mr_pool = type { i32, i32 }
%struct.rds_info_rdma_connection = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rds_iw_get_mr_info(%struct.rds_iw_device* %0, %struct.rds_info_rdma_connection* %1) #0 {
  %3 = alloca %struct.rds_iw_device*, align 8
  %4 = alloca %struct.rds_info_rdma_connection*, align 8
  %5 = alloca %struct.rds_iw_mr_pool*, align 8
  store %struct.rds_iw_device* %0, %struct.rds_iw_device** %3, align 8
  store %struct.rds_info_rdma_connection* %1, %struct.rds_info_rdma_connection** %4, align 8
  %6 = load %struct.rds_iw_device*, %struct.rds_iw_device** %3, align 8
  %7 = getelementptr inbounds %struct.rds_iw_device, %struct.rds_iw_device* %6, i32 0, i32 0
  %8 = load %struct.rds_iw_mr_pool*, %struct.rds_iw_mr_pool** %7, align 8
  store %struct.rds_iw_mr_pool* %8, %struct.rds_iw_mr_pool** %5, align 8
  %9 = load %struct.rds_iw_mr_pool*, %struct.rds_iw_mr_pool** %5, align 8
  %10 = getelementptr inbounds %struct.rds_iw_mr_pool, %struct.rds_iw_mr_pool* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.rds_info_rdma_connection*, %struct.rds_info_rdma_connection** %4, align 8
  %13 = getelementptr inbounds %struct.rds_info_rdma_connection, %struct.rds_info_rdma_connection* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  %14 = load %struct.rds_iw_mr_pool*, %struct.rds_iw_mr_pool** %5, align 8
  %15 = getelementptr inbounds %struct.rds_iw_mr_pool, %struct.rds_iw_mr_pool* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.rds_info_rdma_connection*, %struct.rds_info_rdma_connection** %4, align 8
  %18 = getelementptr inbounds %struct.rds_info_rdma_connection, %struct.rds_info_rdma_connection* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
