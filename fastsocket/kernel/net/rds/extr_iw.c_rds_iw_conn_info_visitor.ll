; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_iw.c_rds_iw_conn_info_visitor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_iw.c_rds_iw_conn_info_visitor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_connection = type { %struct.rds_iw_connection*, i32, i32, i32* }
%struct.rds_iw_connection = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.rdma_dev_addr }
%struct.rdma_dev_addr = type { i32 }
%struct.rds_info_rdma_connection = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.rds_iw_device = type { i32 }
%union.ib_gid = type { i32 }

@rds_iw_transport = common dso_local global i32 0, align 4
@RDS_CONN_UP = common dso_local global i64 0, align 8
@rds_iw_client = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rds_connection*, i8*)* @rds_iw_conn_info_visitor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rds_iw_conn_info_visitor(%struct.rds_connection* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rds_connection*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.rds_info_rdma_connection*, align 8
  %7 = alloca %struct.rds_iw_connection*, align 8
  %8 = alloca %struct.rds_iw_device*, align 8
  %9 = alloca %struct.rdma_dev_addr*, align 8
  store %struct.rds_connection* %0, %struct.rds_connection** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.rds_info_rdma_connection*
  store %struct.rds_info_rdma_connection* %11, %struct.rds_info_rdma_connection** %6, align 8
  %12 = load %struct.rds_connection*, %struct.rds_connection** %4, align 8
  %13 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %12, i32 0, i32 3
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, @rds_iw_transport
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %85

17:                                               ; preds = %2
  %18 = load %struct.rds_connection*, %struct.rds_connection** %4, align 8
  %19 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.rds_info_rdma_connection*, %struct.rds_info_rdma_connection** %6, align 8
  %22 = getelementptr inbounds %struct.rds_info_rdma_connection, %struct.rds_info_rdma_connection* %21, i32 0, i32 6
  store i32 %20, i32* %22, align 4
  %23 = load %struct.rds_connection*, %struct.rds_connection** %4, align 8
  %24 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.rds_info_rdma_connection*, %struct.rds_info_rdma_connection** %6, align 8
  %27 = getelementptr inbounds %struct.rds_info_rdma_connection, %struct.rds_info_rdma_connection* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 4
  %28 = load %struct.rds_info_rdma_connection*, %struct.rds_info_rdma_connection** %6, align 8
  %29 = getelementptr inbounds %struct.rds_info_rdma_connection, %struct.rds_info_rdma_connection* %28, i32 0, i32 4
  %30 = call i32 @memset(i32* %29, i32 0, i32 4)
  %31 = load %struct.rds_info_rdma_connection*, %struct.rds_info_rdma_connection** %6, align 8
  %32 = getelementptr inbounds %struct.rds_info_rdma_connection, %struct.rds_info_rdma_connection* %31, i32 0, i32 3
  %33 = call i32 @memset(i32* %32, i32 0, i32 4)
  %34 = load %struct.rds_connection*, %struct.rds_connection** %4, align 8
  %35 = call i64 @rds_conn_state(%struct.rds_connection* %34)
  %36 = load i64, i64* @RDS_CONN_UP, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %84

38:                                               ; preds = %17
  %39 = load %struct.rds_connection*, %struct.rds_connection** %4, align 8
  %40 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %39, i32 0, i32 0
  %41 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %40, align 8
  store %struct.rds_iw_connection* %41, %struct.rds_iw_connection** %7, align 8
  %42 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %7, align 8
  %43 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %42, i32 0, i32 2
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  store %struct.rdma_dev_addr* %47, %struct.rdma_dev_addr** %9, align 8
  %48 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %9, align 8
  %49 = load %struct.rds_info_rdma_connection*, %struct.rds_info_rdma_connection** %6, align 8
  %50 = getelementptr inbounds %struct.rds_info_rdma_connection, %struct.rds_info_rdma_connection* %49, i32 0, i32 4
  %51 = bitcast i32* %50 to %union.ib_gid*
  %52 = call i32 @rdma_addr_get_sgid(%struct.rdma_dev_addr* %48, %union.ib_gid* %51)
  %53 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %9, align 8
  %54 = load %struct.rds_info_rdma_connection*, %struct.rds_info_rdma_connection** %6, align 8
  %55 = getelementptr inbounds %struct.rds_info_rdma_connection, %struct.rds_info_rdma_connection* %54, i32 0, i32 3
  %56 = bitcast i32* %55 to %union.ib_gid*
  %57 = call i32 @rdma_addr_get_dgid(%struct.rdma_dev_addr* %53, %union.ib_gid* %56)
  %58 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %7, align 8
  %59 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %58, i32 0, i32 2
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call %struct.rds_iw_device* @ib_get_client_data(i32 %62, i32* @rds_iw_client)
  store %struct.rds_iw_device* %63, %struct.rds_iw_device** %8, align 8
  %64 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %7, align 8
  %65 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.rds_info_rdma_connection*, %struct.rds_info_rdma_connection** %6, align 8
  %69 = getelementptr inbounds %struct.rds_info_rdma_connection, %struct.rds_info_rdma_connection* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  %70 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %7, align 8
  %71 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.rds_info_rdma_connection*, %struct.rds_info_rdma_connection** %6, align 8
  %75 = getelementptr inbounds %struct.rds_info_rdma_connection, %struct.rds_info_rdma_connection* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load %struct.rds_iw_device*, %struct.rds_iw_device** %8, align 8
  %77 = getelementptr inbounds %struct.rds_iw_device, %struct.rds_iw_device* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.rds_info_rdma_connection*, %struct.rds_info_rdma_connection** %6, align 8
  %80 = getelementptr inbounds %struct.rds_info_rdma_connection, %struct.rds_info_rdma_connection* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  %81 = load %struct.rds_iw_device*, %struct.rds_iw_device** %8, align 8
  %82 = load %struct.rds_info_rdma_connection*, %struct.rds_info_rdma_connection** %6, align 8
  %83 = call i32 @rds_iw_get_mr_info(%struct.rds_iw_device* %81, %struct.rds_info_rdma_connection* %82)
  br label %84

84:                                               ; preds = %38, %17
  store i32 1, i32* %3, align 4
  br label %85

85:                                               ; preds = %84, %16
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @rds_conn_state(%struct.rds_connection*) #1

declare dso_local i32 @rdma_addr_get_sgid(%struct.rdma_dev_addr*, %union.ib_gid*) #1

declare dso_local i32 @rdma_addr_get_dgid(%struct.rdma_dev_addr*, %union.ib_gid*) #1

declare dso_local %struct.rds_iw_device* @ib_get_client_data(i32, i32*) #1

declare dso_local i32 @rds_iw_get_mr_info(%struct.rds_iw_device*, %struct.rds_info_rdma_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
