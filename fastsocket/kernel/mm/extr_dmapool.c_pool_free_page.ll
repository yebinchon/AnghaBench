; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_dmapool.c_pool_free_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_dmapool.c_pool_free_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_pool = type { i32, i32 }
%struct.dma_page = type { i32, i32, i32 }

@POOL_POISON_FREED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_pool*, %struct.dma_page*)* @pool_free_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pool_free_page(%struct.dma_pool* %0, %struct.dma_page* %1) #0 {
  %3 = alloca %struct.dma_pool*, align 8
  %4 = alloca %struct.dma_page*, align 8
  %5 = alloca i32, align 4
  store %struct.dma_pool* %0, %struct.dma_pool** %3, align 8
  store %struct.dma_page* %1, %struct.dma_page** %4, align 8
  %6 = load %struct.dma_page*, %struct.dma_page** %4, align 8
  %7 = getelementptr inbounds %struct.dma_page, %struct.dma_page* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.dma_pool*, %struct.dma_pool** %3, align 8
  %10 = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.dma_pool*, %struct.dma_pool** %3, align 8
  %13 = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.dma_page*, %struct.dma_page** %4, align 8
  %16 = getelementptr inbounds %struct.dma_page, %struct.dma_page* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @dma_free_coherent(i32 %11, i32 %14, i32 %17, i32 %18)
  %20 = load %struct.dma_page*, %struct.dma_page** %4, align 8
  %21 = getelementptr inbounds %struct.dma_page, %struct.dma_page* %20, i32 0, i32 0
  %22 = call i32 @list_del(i32* %21)
  %23 = load %struct.dma_page*, %struct.dma_page** %4, align 8
  %24 = call i32 @kfree(%struct.dma_page* %23)
  ret void
}

declare dso_local i32 @dma_free_coherent(i32, i32, i32, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.dma_page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
