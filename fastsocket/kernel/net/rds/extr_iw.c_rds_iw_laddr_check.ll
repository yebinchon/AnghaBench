; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_iw.c_rds_iw_laddr_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_iw.c_rds_iw_laddr_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_cm_id = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.sockaddr_in = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sockaddr = type { i32 }

@RDMA_PS_TCP = common dso_local global i32 0, align 4
@IB_QPT_RC = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@RDMA_NODE_RNIC = common dso_local global i64 0, align 8
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"addr %pI4 ret %d node type %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @rds_iw_laddr_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rds_iw_laddr_check(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.rdma_cm_id*, align 8
  %6 = alloca %struct.sockaddr_in, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* @RDMA_PS_TCP, align 4
  %8 = load i32, i32* @IB_QPT_RC, align 4
  %9 = call %struct.rdma_cm_id* @rdma_create_id(i32* null, i32* null, i32 %7, i32 %8)
  store %struct.rdma_cm_id* %9, %struct.rdma_cm_id** %5, align 8
  %10 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %5, align 8
  %11 = call i64 @IS_ERR(%struct.rdma_cm_id* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %5, align 8
  %15 = call i32 @PTR_ERR(%struct.rdma_cm_id* %14)
  store i32 %15, i32* %2, align 4
  br label %59

16:                                               ; preds = %1
  %17 = call i32 @memset(%struct.sockaddr_in* %6, i32 0, i32 8)
  %18 = load i32, i32* @AF_INET, align 4
  %19 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 1
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* %3, align 4
  %21 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %5, align 8
  %24 = bitcast %struct.sockaddr_in* %6 to %struct.sockaddr*
  %25 = call i32 @rdma_bind_addr(%struct.rdma_cm_id* %23, %struct.sockaddr* %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %16
  %29 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %5, align 8
  %30 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @RDMA_NODE_RNIC, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %28, %16
  %37 = load i32, i32* @EADDRNOTAVAIL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %36, %28
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %5, align 8
  %42 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = icmp ne %struct.TYPE_4__* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %5, align 8
  %47 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  br label %52

51:                                               ; preds = %39
  br label %52

52:                                               ; preds = %51, %45
  %53 = phi i64 [ %50, %45 ], [ -1, %51 ]
  %54 = trunc i64 %53 to i32
  %55 = call i32 @rdsdebug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32* %3, i32 %40, i32 %54)
  %56 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %5, align 8
  %57 = call i32 @rdma_destroy_id(%struct.rdma_cm_id* %56)
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %52, %13
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.rdma_cm_id* @rdma_create_id(i32*, i32*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.rdma_cm_id*) #1

declare dso_local i32 @PTR_ERR(%struct.rdma_cm_id*) #1

declare dso_local i32 @memset(%struct.sockaddr_in*, i32, i32) #1

declare dso_local i32 @rdma_bind_addr(%struct.rdma_cm_id*, %struct.sockaddr*) #1

declare dso_local i32 @rdsdebug(i8*, i32*, i32, i32) #1

declare dso_local i32 @rdma_destroy_id(%struct.rdma_cm_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
