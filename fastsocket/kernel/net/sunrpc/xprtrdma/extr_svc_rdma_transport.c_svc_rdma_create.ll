; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_svc_rdma_transport.c_svc_rdma_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_svc_rdma_transport.c_svc_rdma_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_xprt = type { i32 }
%struct.svc_serv = type { i32 }
%struct.net = type { i32 }
%struct.sockaddr = type { i64 }
%struct.rdma_cm_id = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.svcxprt_rdma = type { %struct.svc_xprt, %struct.rdma_cm_id* }

@.str = private unnamed_addr constant [31 x i8] c"svcrdma: Creating RDMA socket\0A\00", align 1
@AF_INET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"svcrdma: Address family %d is not supported.\0A\00", align 1
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rdma_listen_handler = common dso_local global i32 0, align 4
@RDMA_PS_TCP = common dso_local global i32 0, align 4
@IB_QPT_RC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"svcrdma: rdma_create_id failed = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"svcrdma: rdma_bind_addr failed = %d\0A\00", align 1
@RPCRDMA_LISTEN_BACKLOG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"svcrdma: rdma_listen failed = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.svc_xprt* (%struct.svc_serv*, %struct.net*, %struct.sockaddr*, i32, i32)* @svc_rdma_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.svc_xprt* @svc_rdma_create(%struct.svc_serv* %0, %struct.net* %1, %struct.sockaddr* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.svc_xprt*, align 8
  %7 = alloca %struct.svc_serv*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.rdma_cm_id*, align 8
  %13 = alloca %struct.svcxprt_rdma*, align 8
  %14 = alloca %struct.svc_xprt*, align 8
  %15 = alloca i32, align 4
  store %struct.svc_serv* %0, %struct.svc_serv** %7, align 8
  store %struct.net* %1, %struct.net** %8, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %18 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @AF_INET, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %5
  %23 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %24 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 %25)
  %27 = load i32, i32* @EAFNOSUPPORT, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.svc_xprt* @ERR_PTR(i32 %28)
  store %struct.svc_xprt* %29, %struct.svc_xprt** %6, align 8
  br label %99

30:                                               ; preds = %5
  %31 = load %struct.svc_serv*, %struct.svc_serv** %7, align 8
  %32 = call %struct.svcxprt_rdma* @rdma_create_xprt(%struct.svc_serv* %31, i32 1)
  store %struct.svcxprt_rdma* %32, %struct.svcxprt_rdma** %13, align 8
  %33 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %13, align 8
  %34 = icmp ne %struct.svcxprt_rdma* %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  %38 = call %struct.svc_xprt* @ERR_PTR(i32 %37)
  store %struct.svc_xprt* %38, %struct.svc_xprt** %6, align 8
  br label %99

39:                                               ; preds = %30
  %40 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %13, align 8
  %41 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %40, i32 0, i32 0
  store %struct.svc_xprt* %41, %struct.svc_xprt** %14, align 8
  %42 = load i32, i32* @rdma_listen_handler, align 4
  %43 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %13, align 8
  %44 = load i32, i32* @RDMA_PS_TCP, align 4
  %45 = load i32, i32* @IB_QPT_RC, align 4
  %46 = call %struct.rdma_cm_id* @rdma_create_id(i32 %42, %struct.svcxprt_rdma* %43, i32 %44, i32 %45)
  store %struct.rdma_cm_id* %46, %struct.rdma_cm_id** %12, align 8
  %47 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %12, align 8
  %48 = call i64 @IS_ERR(%struct.rdma_cm_id* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %39
  %51 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %12, align 8
  %52 = call i32 @PTR_ERR(%struct.rdma_cm_id* %51)
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %15, align 4
  %54 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  br label %94

55:                                               ; preds = %39
  %56 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %12, align 8
  %57 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %58 = call i32 @rdma_bind_addr(%struct.rdma_cm_id* %56, %struct.sockaddr* %57)
  store i32 %58, i32* %15, align 4
  %59 = load i32, i32* %15, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load i32, i32* %15, align 4
  %63 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %62)
  br label %91

64:                                               ; preds = %55
  %65 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %12, align 8
  %66 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %13, align 8
  %67 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %66, i32 0, i32 1
  store %struct.rdma_cm_id* %65, %struct.rdma_cm_id** %67, align 8
  %68 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %12, align 8
  %69 = load i32, i32* @RPCRDMA_LISTEN_BACKLOG, align 4
  %70 = call i32 @rdma_listen(%struct.rdma_cm_id* %68, i32 %69)
  store i32 %70, i32* %15, align 4
  %71 = load i32, i32* %15, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %64
  %74 = load i32, i32* %15, align 4
  %75 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %74)
  br label %91

76:                                               ; preds = %64
  %77 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %13, align 8
  %78 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %77, i32 0, i32 1
  %79 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %78, align 8
  %80 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = bitcast i32* %82 to %struct.sockaddr*
  store %struct.sockaddr* %83, %struct.sockaddr** %9, align 8
  %84 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %13, align 8
  %85 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %84, i32 0, i32 0
  %86 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @svc_xprt_set_local(%struct.svc_xprt* %85, %struct.sockaddr* %86, i32 %87)
  %89 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %13, align 8
  %90 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %89, i32 0, i32 0
  store %struct.svc_xprt* %90, %struct.svc_xprt** %6, align 8
  br label %99

91:                                               ; preds = %73, %61
  %92 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %12, align 8
  %93 = call i32 @rdma_destroy_id(%struct.rdma_cm_id* %92)
  br label %94

94:                                               ; preds = %91, %50
  %95 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %13, align 8
  %96 = call i32 @kfree(%struct.svcxprt_rdma* %95)
  %97 = load i32, i32* %15, align 4
  %98 = call %struct.svc_xprt* @ERR_PTR(i32 %97)
  store %struct.svc_xprt* %98, %struct.svc_xprt** %6, align 8
  br label %99

99:                                               ; preds = %94, %76, %35, %22
  %100 = load %struct.svc_xprt*, %struct.svc_xprt** %6, align 8
  ret %struct.svc_xprt* %100
}

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local %struct.svc_xprt* @ERR_PTR(i32) #1

declare dso_local %struct.svcxprt_rdma* @rdma_create_xprt(%struct.svc_serv*, i32) #1

declare dso_local %struct.rdma_cm_id* @rdma_create_id(i32, %struct.svcxprt_rdma*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.rdma_cm_id*) #1

declare dso_local i32 @PTR_ERR(%struct.rdma_cm_id*) #1

declare dso_local i32 @rdma_bind_addr(%struct.rdma_cm_id*, %struct.sockaddr*) #1

declare dso_local i32 @rdma_listen(%struct.rdma_cm_id*, i32) #1

declare dso_local i32 @svc_xprt_set_local(%struct.svc_xprt*, %struct.sockaddr*, i32) #1

declare dso_local i32 @rdma_destroy_id(%struct.rdma_cm_id*) #1

declare dso_local i32 @kfree(%struct.svcxprt_rdma*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
