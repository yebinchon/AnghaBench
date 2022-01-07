; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_svc_rdma_recvfrom.c_rdma_set_ctxt_sge.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_svc_rdma_recvfrom.c_rdma_set_ctxt_sge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svcxprt_rdma = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.svc_rdma_op_ctxt = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i64, i64, i32 }
%struct.svc_rdma_fastreg_mr = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.kvec = type { i64, i64 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svcxprt_rdma*, %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_fastreg_mr*, %struct.kvec*, i64*, i32)* @rdma_set_ctxt_sge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdma_set_ctxt_sge(%struct.svcxprt_rdma* %0, %struct.svc_rdma_op_ctxt* %1, %struct.svc_rdma_fastreg_mr* %2, %struct.kvec* %3, i64* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.svcxprt_rdma*, align 8
  %9 = alloca %struct.svc_rdma_op_ctxt*, align 8
  %10 = alloca %struct.svc_rdma_fastreg_mr*, align 8
  %11 = alloca %struct.kvec*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.svcxprt_rdma* %0, %struct.svcxprt_rdma** %8, align 8
  store %struct.svc_rdma_op_ctxt* %1, %struct.svc_rdma_op_ctxt** %9, align 8
  store %struct.svc_rdma_fastreg_mr* %2, %struct.svc_rdma_fastreg_mr** %10, align 8
  store %struct.kvec* %3, %struct.kvec** %11, align 8
  store i64* %4, i64** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load i32, i32* %13, align 4
  %17 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %9, align 8
  %18 = getelementptr inbounds %struct.svc_rdma_op_ctxt, %struct.svc_rdma_op_ctxt* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %20 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %9, align 8
  %21 = getelementptr inbounds %struct.svc_rdma_op_ctxt, %struct.svc_rdma_op_ctxt* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  store i32 0, i32* %14, align 4
  br label %22

22:                                               ; preds = %166, %6
  %23 = load i32, i32* %14, align 4
  %24 = load i32, i32* %13, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %169

26:                                               ; preds = %22
  %27 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %9, align 8
  %28 = getelementptr inbounds %struct.svc_rdma_op_ctxt, %struct.svc_rdma_op_ctxt* %27, i32 0, i32 1
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = load i32, i32* %14, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = load %struct.svc_rdma_fastreg_mr*, %struct.svc_rdma_fastreg_mr** %10, align 8
  %35 = icmp ne %struct.svc_rdma_fastreg_mr* %34, null
  br i1 %35, label %116, label %36

36:                                               ; preds = %26
  %37 = load %struct.kvec*, %struct.kvec** %11, align 8
  %38 = load i32, i32* %14, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.kvec, %struct.kvec* %37, i64 %39
  %41 = getelementptr inbounds %struct.kvec, %struct.kvec* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @virt_to_page(i64 %42)
  %44 = icmp eq i64 0, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @BUG_ON(i32 %45)
  %47 = load %struct.kvec*, %struct.kvec** %11, align 8
  %48 = load i32, i32* %14, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.kvec, %struct.kvec* %47, i64 %49
  %51 = getelementptr inbounds %struct.kvec, %struct.kvec* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @PAGE_MASK, align 8
  %54 = xor i64 %53, -1
  %55 = and i64 %52, %54
  store i64 %55, i64* %15, align 8
  %56 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %8, align 8
  %57 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %56, i32 0, i32 2
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.kvec*, %struct.kvec** %11, align 8
  %62 = load i32, i32* %14, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.kvec, %struct.kvec* %61, i64 %63
  %65 = getelementptr inbounds %struct.kvec, %struct.kvec* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = call i64 @virt_to_page(i64 %66)
  %68 = load i64, i64* %15, align 8
  %69 = load %struct.kvec*, %struct.kvec** %11, align 8
  %70 = load i32, i32* %14, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.kvec, %struct.kvec* %69, i64 %71
  %73 = getelementptr inbounds %struct.kvec, %struct.kvec* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %76 = call i64 @ib_dma_map_page(i32 %60, i64 %67, i64 %68, i64 %74, i32 %75)
  %77 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %9, align 8
  %78 = getelementptr inbounds %struct.svc_rdma_op_ctxt, %struct.svc_rdma_op_ctxt* %77, i32 0, i32 1
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = load i32, i32* %14, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  store i64 %76, i64* %83, align 8
  %84 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %8, align 8
  %85 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %84, i32 0, i32 2
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %9, align 8
  %90 = getelementptr inbounds %struct.svc_rdma_op_ctxt, %struct.svc_rdma_op_ctxt* %89, i32 0, i32 1
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = load i32, i32* %14, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i64 @ib_dma_mapping_error(i32 %88, i64 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %36
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %7, align 4
  br label %170

102:                                              ; preds = %36
  %103 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %8, align 8
  %104 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %9, align 8
  %107 = getelementptr inbounds %struct.svc_rdma_op_ctxt, %struct.svc_rdma_op_ctxt* %106, i32 0, i32 1
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = load i32, i32* %14, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 2
  store i32 %105, i32* %112, align 8
  %113 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %8, align 8
  %114 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %113, i32 0, i32 0
  %115 = call i32 @atomic_inc(i32* %114)
  br label %142

116:                                              ; preds = %26
  %117 = load %struct.kvec*, %struct.kvec** %11, align 8
  %118 = load i32, i32* %14, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.kvec, %struct.kvec* %117, i64 %119
  %121 = getelementptr inbounds %struct.kvec, %struct.kvec* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %9, align 8
  %124 = getelementptr inbounds %struct.svc_rdma_op_ctxt, %struct.svc_rdma_op_ctxt* %123, i32 0, i32 1
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = load i32, i32* %14, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  store i64 %122, i64* %129, align 8
  %130 = load %struct.svc_rdma_fastreg_mr*, %struct.svc_rdma_fastreg_mr** %10, align 8
  %131 = getelementptr inbounds %struct.svc_rdma_fastreg_mr, %struct.svc_rdma_fastreg_mr* %130, i32 0, i32 0
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %9, align 8
  %136 = getelementptr inbounds %struct.svc_rdma_op_ctxt, %struct.svc_rdma_op_ctxt* %135, i32 0, i32 1
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %136, align 8
  %138 = load i32, i32* %14, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 2
  store i32 %134, i32* %141, align 8
  br label %142

142:                                              ; preds = %116, %102
  %143 = load %struct.kvec*, %struct.kvec** %11, align 8
  %144 = load i32, i32* %14, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.kvec, %struct.kvec* %143, i64 %145
  %147 = getelementptr inbounds %struct.kvec, %struct.kvec* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %9, align 8
  %150 = getelementptr inbounds %struct.svc_rdma_op_ctxt, %struct.svc_rdma_op_ctxt* %149, i32 0, i32 1
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %150, align 8
  %152 = load i32, i32* %14, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 1
  store i64 %148, i64* %155, align 8
  %156 = load i64*, i64** %12, align 8
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.kvec*, %struct.kvec** %11, align 8
  %159 = load i32, i32* %14, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.kvec, %struct.kvec* %158, i64 %160
  %162 = getelementptr inbounds %struct.kvec, %struct.kvec* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = add nsw i64 %157, %163
  %165 = load i64*, i64** %12, align 8
  store i64 %164, i64* %165, align 8
  br label %166

166:                                              ; preds = %142
  %167 = load i32, i32* %14, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %14, align 4
  br label %22

169:                                              ; preds = %22
  store i32 0, i32* %7, align 4
  br label %170

170:                                              ; preds = %169, %99
  %171 = load i32, i32* %7, align 4
  ret i32 %171
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @virt_to_page(i64) #1

declare dso_local i64 @ib_dma_map_page(i32, i64, i64, i64, i32) #1

declare dso_local i64 @ib_dma_mapping_error(i32, i64) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
