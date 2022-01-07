; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_dmapool.c_pool_alloc_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_dmapool.c_pool_alloc_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_page = type { i64, i64, i32, i64, i32 }
%struct.dma_pool = type { i32, i32, i32 }

@POOL_POISON_FREED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_page* (%struct.dma_pool*, i32)* @pool_alloc_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_page* @pool_alloc_page(%struct.dma_pool* %0, i32 %1) #0 {
  %3 = alloca %struct.dma_page*, align 8
  %4 = alloca %struct.dma_pool*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dma_page*, align 8
  store %struct.dma_pool* %0, %struct.dma_pool** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call %struct.dma_page* @kmalloc(i32 40, i32 %7)
  store %struct.dma_page* %8, %struct.dma_page** %6, align 8
  %9 = load %struct.dma_page*, %struct.dma_page** %6, align 8
  %10 = icmp ne %struct.dma_page* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.dma_page* null, %struct.dma_page** %3, align 8
  br label %47

12:                                               ; preds = %2
  %13 = load %struct.dma_pool*, %struct.dma_pool** %4, align 8
  %14 = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.dma_pool*, %struct.dma_pool** %4, align 8
  %17 = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.dma_page*, %struct.dma_page** %6, align 8
  %20 = getelementptr inbounds %struct.dma_page, %struct.dma_page* %19, i32 0, i32 4
  %21 = load i32, i32* %5, align 4
  %22 = call i64 @dma_alloc_coherent(i32 %15, i32 %18, i32* %20, i32 %21)
  %23 = load %struct.dma_page*, %struct.dma_page** %6, align 8
  %24 = getelementptr inbounds %struct.dma_page, %struct.dma_page* %23, i32 0, i32 3
  store i64 %22, i64* %24, align 8
  %25 = load %struct.dma_page*, %struct.dma_page** %6, align 8
  %26 = getelementptr inbounds %struct.dma_page, %struct.dma_page* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %12
  %30 = load %struct.dma_pool*, %struct.dma_pool** %4, align 8
  %31 = load %struct.dma_page*, %struct.dma_page** %6, align 8
  %32 = call i32 @pool_initialise_page(%struct.dma_pool* %30, %struct.dma_page* %31)
  %33 = load %struct.dma_page*, %struct.dma_page** %6, align 8
  %34 = getelementptr inbounds %struct.dma_page, %struct.dma_page* %33, i32 0, i32 2
  %35 = load %struct.dma_pool*, %struct.dma_pool** %4, align 8
  %36 = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %35, i32 0, i32 0
  %37 = call i32 @list_add(i32* %34, i32* %36)
  %38 = load %struct.dma_page*, %struct.dma_page** %6, align 8
  %39 = getelementptr inbounds %struct.dma_page, %struct.dma_page* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  %40 = load %struct.dma_page*, %struct.dma_page** %6, align 8
  %41 = getelementptr inbounds %struct.dma_page, %struct.dma_page* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  br label %45

42:                                               ; preds = %12
  %43 = load %struct.dma_page*, %struct.dma_page** %6, align 8
  %44 = call i32 @kfree(%struct.dma_page* %43)
  store %struct.dma_page* null, %struct.dma_page** %6, align 8
  br label %45

45:                                               ; preds = %42, %29
  %46 = load %struct.dma_page*, %struct.dma_page** %6, align 8
  store %struct.dma_page* %46, %struct.dma_page** %3, align 8
  br label %47

47:                                               ; preds = %45, %11
  %48 = load %struct.dma_page*, %struct.dma_page** %3, align 8
  ret %struct.dma_page* %48
}

declare dso_local %struct.dma_page* @kmalloc(i32, i32) #1

declare dso_local i64 @dma_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @pool_initialise_page(%struct.dma_pool*, %struct.dma_page*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.dma_page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
