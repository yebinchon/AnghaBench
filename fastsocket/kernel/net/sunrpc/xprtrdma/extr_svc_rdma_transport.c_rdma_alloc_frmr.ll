; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_svc_rdma_transport.c_rdma_alloc_frmr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_svc_rdma_transport.c_rdma_alloc_frmr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rdma_fastreg_mr = type { i32, %struct.ib_mr*, %struct.ib_mr* }
%struct.ib_mr = type { i32 }
%struct.svcxprt_rdma = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ib_fast_reg_page_list = type opaque

@GFP_KERNEL = common dso_local global i32 0, align 4
@RPCSVC_MAXPAGES = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.svc_rdma_fastreg_mr* (%struct.svcxprt_rdma*)* @rdma_alloc_frmr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.svc_rdma_fastreg_mr* @rdma_alloc_frmr(%struct.svcxprt_rdma* %0) #0 {
  %2 = alloca %struct.svc_rdma_fastreg_mr*, align 8
  %3 = alloca %struct.svcxprt_rdma*, align 8
  %4 = alloca %struct.ib_mr*, align 8
  %5 = alloca %struct.ib_fast_reg_page_list*, align 8
  %6 = alloca %struct.svc_rdma_fastreg_mr*, align 8
  store %struct.svcxprt_rdma* %0, %struct.svcxprt_rdma** %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.svc_rdma_fastreg_mr* @kmalloc(i32 24, i32 %7)
  store %struct.svc_rdma_fastreg_mr* %8, %struct.svc_rdma_fastreg_mr** %6, align 8
  %9 = load %struct.svc_rdma_fastreg_mr*, %struct.svc_rdma_fastreg_mr** %6, align 8
  %10 = icmp ne %struct.svc_rdma_fastreg_mr* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %54

12:                                               ; preds = %1
  %13 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %3, align 8
  %14 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @RPCSVC_MAXPAGES, align 4
  %17 = call %struct.ib_mr* @ib_alloc_fast_reg_mr(i32 %15, i32 %16)
  store %struct.ib_mr* %17, %struct.ib_mr** %4, align 8
  %18 = load %struct.ib_mr*, %struct.ib_mr** %4, align 8
  %19 = call i64 @IS_ERR(%struct.ib_mr* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  br label %51

22:                                               ; preds = %12
  %23 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %3, align 8
  %24 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @RPCSVC_MAXPAGES, align 4
  %29 = call %struct.ib_mr* @ib_alloc_fast_reg_page_list(i32 %27, i32 %28)
  %30 = bitcast %struct.ib_mr* %29 to %struct.ib_fast_reg_page_list*
  store %struct.ib_fast_reg_page_list* %30, %struct.ib_fast_reg_page_list** %5, align 8
  %31 = load %struct.ib_fast_reg_page_list*, %struct.ib_fast_reg_page_list** %5, align 8
  %32 = bitcast %struct.ib_fast_reg_page_list* %31 to %struct.ib_mr*
  %33 = call i64 @IS_ERR(%struct.ib_mr* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %22
  br label %48

36:                                               ; preds = %22
  %37 = load %struct.ib_mr*, %struct.ib_mr** %4, align 8
  %38 = load %struct.svc_rdma_fastreg_mr*, %struct.svc_rdma_fastreg_mr** %6, align 8
  %39 = getelementptr inbounds %struct.svc_rdma_fastreg_mr, %struct.svc_rdma_fastreg_mr* %38, i32 0, i32 2
  store %struct.ib_mr* %37, %struct.ib_mr** %39, align 8
  %40 = load %struct.ib_fast_reg_page_list*, %struct.ib_fast_reg_page_list** %5, align 8
  %41 = bitcast %struct.ib_fast_reg_page_list* %40 to %struct.ib_mr*
  %42 = load %struct.svc_rdma_fastreg_mr*, %struct.svc_rdma_fastreg_mr** %6, align 8
  %43 = getelementptr inbounds %struct.svc_rdma_fastreg_mr, %struct.svc_rdma_fastreg_mr* %42, i32 0, i32 1
  store %struct.ib_mr* %41, %struct.ib_mr** %43, align 8
  %44 = load %struct.svc_rdma_fastreg_mr*, %struct.svc_rdma_fastreg_mr** %6, align 8
  %45 = getelementptr inbounds %struct.svc_rdma_fastreg_mr, %struct.svc_rdma_fastreg_mr* %44, i32 0, i32 0
  %46 = call i32 @INIT_LIST_HEAD(i32* %45)
  %47 = load %struct.svc_rdma_fastreg_mr*, %struct.svc_rdma_fastreg_mr** %6, align 8
  store %struct.svc_rdma_fastreg_mr* %47, %struct.svc_rdma_fastreg_mr** %2, align 8
  br label %58

48:                                               ; preds = %35
  %49 = load %struct.ib_mr*, %struct.ib_mr** %4, align 8
  %50 = call i32 @ib_dereg_mr(%struct.ib_mr* %49)
  br label %51

51:                                               ; preds = %48, %21
  %52 = load %struct.svc_rdma_fastreg_mr*, %struct.svc_rdma_fastreg_mr** %6, align 8
  %53 = call i32 @kfree(%struct.svc_rdma_fastreg_mr* %52)
  br label %54

54:                                               ; preds = %51, %11
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  %57 = call %struct.svc_rdma_fastreg_mr* @ERR_PTR(i32 %56)
  store %struct.svc_rdma_fastreg_mr* %57, %struct.svc_rdma_fastreg_mr** %2, align 8
  br label %58

58:                                               ; preds = %54, %36
  %59 = load %struct.svc_rdma_fastreg_mr*, %struct.svc_rdma_fastreg_mr** %2, align 8
  ret %struct.svc_rdma_fastreg_mr* %59
}

declare dso_local %struct.svc_rdma_fastreg_mr* @kmalloc(i32, i32) #1

declare dso_local %struct.ib_mr* @ib_alloc_fast_reg_mr(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.ib_mr*) #1

declare dso_local %struct.ib_mr* @ib_alloc_fast_reg_page_list(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ib_dereg_mr(%struct.ib_mr*) #1

declare dso_local i32 @kfree(%struct.svc_rdma_fastreg_mr*) #1

declare dso_local %struct.svc_rdma_fastreg_mr* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
