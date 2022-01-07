; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_iw_rdma.c_rds_iw_update_cm_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_iw_rdma.c_rds_iw_update_cm_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_iw_device = type { i32 }
%struct.rdma_cm_id = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.sockaddr_in = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.rds_sock = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rds_iw_update_cm_id(%struct.rds_iw_device* %0, %struct.rdma_cm_id* %1) #0 {
  %3 = alloca %struct.rds_iw_device*, align 8
  %4 = alloca %struct.rdma_cm_id*, align 8
  %5 = alloca %struct.sockaddr_in*, align 8
  %6 = alloca %struct.sockaddr_in*, align 8
  %7 = alloca %struct.rds_iw_device*, align 8
  %8 = alloca %struct.rds_sock, align 4
  %9 = alloca %struct.rdma_cm_id*, align 8
  %10 = alloca i32, align 4
  store %struct.rds_iw_device* %0, %struct.rds_iw_device** %3, align 8
  store %struct.rdma_cm_id* %1, %struct.rdma_cm_id** %4, align 8
  %11 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %12 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = bitcast i32* %14 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %15, %struct.sockaddr_in** %5, align 8
  %16 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %17 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = bitcast i32* %19 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %20, %struct.sockaddr_in** %6, align 8
  %21 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %22 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %8, i32 0, i32 3
  store i32 %24, i32* %25, align 4
  %26 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %27 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %8, i32 0, i32 2
  store i32 %28, i32* %29, align 4
  %30 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %31 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %8, i32 0, i32 1
  store i32 %33, i32* %34, align 4
  %35 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %36 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %8, i32 0, i32 0
  store i32 %37, i32* %38, align 4
  %39 = call i32 @rds_iw_get_device(%struct.rds_sock* %8, %struct.rds_iw_device** %7, %struct.rdma_cm_id** %9)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %2
  %43 = load %struct.rds_iw_device*, %struct.rds_iw_device** %3, align 8
  %44 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %45 = call i32 @rds_iw_remove_cm_id(%struct.rds_iw_device* %43, %struct.rdma_cm_id* %44)
  br label %46

46:                                               ; preds = %42, %2
  %47 = load %struct.rds_iw_device*, %struct.rds_iw_device** %3, align 8
  %48 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %49 = call i32 @rds_iw_add_cm_id(%struct.rds_iw_device* %47, %struct.rdma_cm_id* %48)
  ret i32 %49
}

declare dso_local i32 @rds_iw_get_device(%struct.rds_sock*, %struct.rds_iw_device**, %struct.rdma_cm_id**) #1

declare dso_local i32 @rds_iw_remove_cm_id(%struct.rds_iw_device*, %struct.rdma_cm_id*) #1

declare dso_local i32 @rds_iw_add_cm_id(%struct.rds_iw_device*, %struct.rdma_cm_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
