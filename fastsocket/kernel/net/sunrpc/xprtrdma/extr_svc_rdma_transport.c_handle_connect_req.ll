; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_svc_rdma_transport.c_handle_connect_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_svc_rdma_transport.c_handle_connect_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_cm_id = type { %struct.TYPE_7__, %struct.svcxprt_rdma* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.svcxprt_rdma = type { i64, %struct.TYPE_8__, i32, i32, %struct.rdma_cm_id* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"svcrdma: failed to create new transport\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"svcrdma: Creating newxprt=%p, cm_id=%p, listenxprt=%p\0A\00", align 1
@XPT_CONN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rdma_cm_id*, i64)* @handle_connect_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_connect_req(%struct.rdma_cm_id* %0, i64 %1) #0 {
  %3 = alloca %struct.rdma_cm_id*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.svcxprt_rdma*, align 8
  %6 = alloca %struct.svcxprt_rdma*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  store %struct.rdma_cm_id* %0, %struct.rdma_cm_id** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %9 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %8, i32 0, i32 1
  %10 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %9, align 8
  store %struct.svcxprt_rdma* %10, %struct.svcxprt_rdma** %5, align 8
  %11 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %5, align 8
  %12 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.svcxprt_rdma* @rdma_create_xprt(i32 %14, i32 0)
  store %struct.svcxprt_rdma* %15, %struct.svcxprt_rdma** %6, align 8
  %16 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %6, align 8
  %17 = icmp ne %struct.svcxprt_rdma* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %81

20:                                               ; preds = %2
  %21 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %22 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %6, align 8
  %23 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %22, i32 0, i32 4
  store %struct.rdma_cm_id* %21, %struct.rdma_cm_id** %23, align 8
  %24 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %6, align 8
  %25 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %26 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %25, i32 0, i32 1
  store %struct.svcxprt_rdma* %24, %struct.svcxprt_rdma** %26, align 8
  %27 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %6, align 8
  %28 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %6, align 8
  %29 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %28, i32 0, i32 4
  %30 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %29, align 8
  %31 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %5, align 8
  %32 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), %struct.svcxprt_rdma* %27, %struct.rdma_cm_id* %30, %struct.svcxprt_rdma* %31)
  %33 = load i64, i64* %4, align 8
  %34 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %6, align 8
  %35 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %6, align 8
  %37 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %36, i32 0, i32 4
  %38 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %37, align 8
  %39 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = bitcast i32* %41 to %struct.sockaddr*
  store %struct.sockaddr* %42, %struct.sockaddr** %7, align 8
  %43 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %6, align 8
  %44 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %43, i32 0, i32 1
  %45 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %46 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %47 = call i32 @svc_addr_len(%struct.sockaddr* %46)
  %48 = call i32 @svc_xprt_set_remote(%struct.TYPE_8__* %44, %struct.sockaddr* %45, i32 %47)
  %49 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %6, align 8
  %50 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %49, i32 0, i32 4
  %51 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %50, align 8
  %52 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = bitcast i32* %54 to %struct.sockaddr*
  store %struct.sockaddr* %55, %struct.sockaddr** %7, align 8
  %56 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %6, align 8
  %57 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %56, i32 0, i32 1
  %58 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %59 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %60 = call i32 @svc_addr_len(%struct.sockaddr* %59)
  %61 = call i32 @svc_xprt_set_local(%struct.TYPE_8__* %57, %struct.sockaddr* %58, i32 %60)
  %62 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %5, align 8
  %63 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %62, i32 0, i32 2
  %64 = call i32 @spin_lock_bh(i32* %63)
  %65 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %6, align 8
  %66 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %65, i32 0, i32 3
  %67 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %5, align 8
  %68 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %67, i32 0, i32 3
  %69 = call i32 @list_add_tail(i32* %66, i32* %68)
  %70 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %5, align 8
  %71 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %70, i32 0, i32 2
  %72 = call i32 @spin_unlock_bh(i32* %71)
  %73 = load i32, i32* @XPT_CONN, align 4
  %74 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %5, align 8
  %75 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = call i32 @set_bit(i32 %73, i32* %76)
  %78 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %5, align 8
  %79 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %78, i32 0, i32 1
  %80 = call i32 @svc_xprt_enqueue(%struct.TYPE_8__* %79)
  br label %81

81:                                               ; preds = %20, %18
  ret void
}

declare dso_local %struct.svcxprt_rdma* @rdma_create_xprt(i32, i32) #1

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32 @svc_xprt_set_remote(%struct.TYPE_8__*, %struct.sockaddr*, i32) #1

declare dso_local i32 @svc_addr_len(%struct.sockaddr*) #1

declare dso_local i32 @svc_xprt_set_local(%struct.TYPE_8__*, %struct.sockaddr*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @svc_xprt_enqueue(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
