; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_verbs.c_rpcrdma_map_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_verbs.c_rpcrdma_map_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpcrdma_ia = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.rpcrdma_mr_seg = type { i32, i32, i32, i32, i64, i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpcrdma_ia*, %struct.rpcrdma_mr_seg*, i32)* @rpcrdma_map_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rpcrdma_map_one(%struct.rpcrdma_ia* %0, %struct.rpcrdma_mr_seg* %1, i32 %2) #0 {
  %4 = alloca %struct.rpcrdma_ia*, align 8
  %5 = alloca %struct.rpcrdma_mr_seg*, align 8
  %6 = alloca i32, align 4
  store %struct.rpcrdma_ia* %0, %struct.rpcrdma_ia** %4, align 8
  store %struct.rpcrdma_mr_seg* %1, %struct.rpcrdma_mr_seg** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = load i32, i32* @DMA_FROM_DEVICE, align 4
  br label %13

11:                                               ; preds = %3
  %12 = load i32, i32* @DMA_TO_DEVICE, align 4
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %10, %9 ], [ %12, %11 ]
  %15 = load %struct.rpcrdma_mr_seg*, %struct.rpcrdma_mr_seg** %5, align 8
  %16 = getelementptr inbounds %struct.rpcrdma_mr_seg, %struct.rpcrdma_mr_seg* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.rpcrdma_mr_seg*, %struct.rpcrdma_mr_seg** %5, align 8
  %18 = getelementptr inbounds %struct.rpcrdma_mr_seg, %struct.rpcrdma_mr_seg* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.rpcrdma_mr_seg*, %struct.rpcrdma_mr_seg** %5, align 8
  %21 = getelementptr inbounds %struct.rpcrdma_mr_seg, %struct.rpcrdma_mr_seg* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.rpcrdma_mr_seg*, %struct.rpcrdma_mr_seg** %5, align 8
  %23 = getelementptr inbounds %struct.rpcrdma_mr_seg, %struct.rpcrdma_mr_seg* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %48

26:                                               ; preds = %13
  %27 = load %struct.rpcrdma_ia*, %struct.rpcrdma_ia** %4, align 8
  %28 = getelementptr inbounds %struct.rpcrdma_ia, %struct.rpcrdma_ia* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.rpcrdma_mr_seg*, %struct.rpcrdma_mr_seg** %5, align 8
  %33 = getelementptr inbounds %struct.rpcrdma_mr_seg, %struct.rpcrdma_mr_seg* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.rpcrdma_mr_seg*, %struct.rpcrdma_mr_seg** %5, align 8
  %36 = getelementptr inbounds %struct.rpcrdma_mr_seg, %struct.rpcrdma_mr_seg* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @offset_in_page(i32 %37)
  %39 = load %struct.rpcrdma_mr_seg*, %struct.rpcrdma_mr_seg** %5, align 8
  %40 = getelementptr inbounds %struct.rpcrdma_mr_seg, %struct.rpcrdma_mr_seg* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.rpcrdma_mr_seg*, %struct.rpcrdma_mr_seg** %5, align 8
  %43 = getelementptr inbounds %struct.rpcrdma_mr_seg, %struct.rpcrdma_mr_seg* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @ib_dma_map_page(i32 %31, i64 %34, i32 %38, i32 %41, i32 %44)
  %46 = load %struct.rpcrdma_mr_seg*, %struct.rpcrdma_mr_seg** %5, align 8
  %47 = getelementptr inbounds %struct.rpcrdma_mr_seg, %struct.rpcrdma_mr_seg* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  br label %66

48:                                               ; preds = %13
  %49 = load %struct.rpcrdma_ia*, %struct.rpcrdma_ia** %4, align 8
  %50 = getelementptr inbounds %struct.rpcrdma_ia, %struct.rpcrdma_ia* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.rpcrdma_mr_seg*, %struct.rpcrdma_mr_seg** %5, align 8
  %55 = getelementptr inbounds %struct.rpcrdma_mr_seg, %struct.rpcrdma_mr_seg* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.rpcrdma_mr_seg*, %struct.rpcrdma_mr_seg** %5, align 8
  %58 = getelementptr inbounds %struct.rpcrdma_mr_seg, %struct.rpcrdma_mr_seg* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.rpcrdma_mr_seg*, %struct.rpcrdma_mr_seg** %5, align 8
  %61 = getelementptr inbounds %struct.rpcrdma_mr_seg, %struct.rpcrdma_mr_seg* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @ib_dma_map_single(i32 %53, i32 %56, i32 %59, i32 %62)
  %64 = load %struct.rpcrdma_mr_seg*, %struct.rpcrdma_mr_seg** %5, align 8
  %65 = getelementptr inbounds %struct.rpcrdma_mr_seg, %struct.rpcrdma_mr_seg* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  br label %66

66:                                               ; preds = %48, %26
  ret void
}

declare dso_local i32 @ib_dma_map_page(i32, i64, i32, i32, i32) #1

declare dso_local i32 @offset_in_page(i32) #1

declare dso_local i32 @ib_dma_map_single(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
