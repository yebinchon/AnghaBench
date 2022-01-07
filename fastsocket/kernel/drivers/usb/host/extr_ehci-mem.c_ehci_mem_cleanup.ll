; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-mem.c_ehci_mem_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-mem.c_ehci_mem_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehci_hcd = type { i32, i32*, i32*, i32, i32*, i32*, i32*, i32*, i32*, i32* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ehci_hcd*)* @ehci_mem_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ehci_mem_cleanup(%struct.ehci_hcd* %0) #0 {
  %2 = alloca %struct.ehci_hcd*, align 8
  store %struct.ehci_hcd* %0, %struct.ehci_hcd** %2, align 8
  %3 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %4 = call i32 @free_cached_lists(%struct.ehci_hcd* %3)
  %5 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %6 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %5, i32 0, i32 9
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %11 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %10, i32 0, i32 9
  %12 = load i32*, i32** %11, align 8
  %13 = call i32 @qh_put(i32* %12)
  br label %14

14:                                               ; preds = %9, %1
  %15 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %16 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %15, i32 0, i32 9
  store i32* null, i32** %16, align 8
  %17 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %18 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %17, i32 0, i32 8
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %14
  %22 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %23 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %22, i32 0, i32 8
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @qh_put(i32* %24)
  br label %26

26:                                               ; preds = %21, %14
  %27 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %28 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %27, i32 0, i32 8
  store i32* null, i32** %28, align 8
  %29 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %30 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %29, i32 0, i32 7
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  %34 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %35 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %34, i32 0, i32 7
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @dma_pool_destroy(i32* %36)
  br label %38

38:                                               ; preds = %33, %26
  %39 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %40 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %39, i32 0, i32 7
  store i32* null, i32** %40, align 8
  %41 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %42 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %41, i32 0, i32 6
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %38
  %46 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %47 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %46, i32 0, i32 6
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @dma_pool_destroy(i32* %48)
  %50 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %51 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %50, i32 0, i32 6
  store i32* null, i32** %51, align 8
  br label %52

52:                                               ; preds = %45, %38
  %53 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %54 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %53, i32 0, i32 5
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %59 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %58, i32 0, i32 5
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @dma_pool_destroy(i32* %60)
  br label %62

62:                                               ; preds = %57, %52
  %63 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %64 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %63, i32 0, i32 5
  store i32* null, i32** %64, align 8
  %65 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %66 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %65, i32 0, i32 4
  %67 = load i32*, i32** %66, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %62
  %70 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %71 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %70, i32 0, i32 4
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @dma_pool_destroy(i32* %72)
  br label %74

74:                                               ; preds = %69, %62
  %75 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %76 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %75, i32 0, i32 4
  store i32* null, i32** %76, align 8
  %77 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %78 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %100

81:                                               ; preds = %74
  %82 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %83 = call %struct.TYPE_4__* @ehci_to_hcd(%struct.ehci_hcd* %82)
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %88 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = mul i64 %90, 4
  %92 = trunc i64 %91 to i32
  %93 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %94 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %97 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @dma_free_coherent(i32 %86, i32 %92, i32* %95, i32 %98)
  br label %100

100:                                              ; preds = %81, %74
  %101 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %102 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %101, i32 0, i32 2
  store i32* null, i32** %102, align 8
  %103 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %104 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = call i32 @kfree(i32* %105)
  %107 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %108 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %107, i32 0, i32 1
  store i32* null, i32** %108, align 8
  ret void
}

declare dso_local i32 @free_cached_lists(%struct.ehci_hcd*) #1

declare dso_local i32 @qh_put(i32*) #1

declare dso_local i32 @dma_pool_destroy(i32*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32*, i32) #1

declare dso_local %struct.TYPE_4__* @ehci_to_hcd(%struct.ehci_hcd*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
