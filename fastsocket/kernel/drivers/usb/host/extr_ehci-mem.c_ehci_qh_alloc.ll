; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-mem.c_ehci_qh_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-mem.c_ehci_qh_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehci_qh = type { i32, i32, %struct.ehci_qh_hw*, i32*, i32, %struct.ehci_hcd* }
%struct.ehci_qh_hw = type { i32 }
%struct.ehci_hcd = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"no dummy td\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ehci_qh* (%struct.ehci_hcd*, i32)* @ehci_qh_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ehci_qh* @ehci_qh_alloc(%struct.ehci_hcd* %0, i32 %1) #0 {
  %3 = alloca %struct.ehci_qh*, align 8
  %4 = alloca %struct.ehci_hcd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ehci_qh*, align 8
  %7 = alloca i32, align 4
  store %struct.ehci_hcd* %0, %struct.ehci_hcd** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @GFP_ATOMIC, align 4
  %9 = call %struct.ehci_qh* @kzalloc(i32 40, i32 %8)
  store %struct.ehci_qh* %9, %struct.ehci_qh** %6, align 8
  %10 = load %struct.ehci_qh*, %struct.ehci_qh** %6, align 8
  %11 = icmp ne %struct.ehci_qh* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %56

13:                                               ; preds = %2
  %14 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %15 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @dma_pool_alloc(i32 %16, i32 %17, i32* %7)
  %19 = inttoptr i64 %18 to %struct.ehci_qh_hw*
  %20 = load %struct.ehci_qh*, %struct.ehci_qh** %6, align 8
  %21 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %20, i32 0, i32 2
  store %struct.ehci_qh_hw* %19, %struct.ehci_qh_hw** %21, align 8
  %22 = load %struct.ehci_qh*, %struct.ehci_qh** %6, align 8
  %23 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %22, i32 0, i32 2
  %24 = load %struct.ehci_qh_hw*, %struct.ehci_qh_hw** %23, align 8
  %25 = icmp ne %struct.ehci_qh_hw* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %13
  br label %69

27:                                               ; preds = %13
  %28 = load %struct.ehci_qh*, %struct.ehci_qh** %6, align 8
  %29 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %28, i32 0, i32 2
  %30 = load %struct.ehci_qh_hw*, %struct.ehci_qh_hw** %29, align 8
  %31 = call i32 @memset(%struct.ehci_qh_hw* %30, i32 0, i32 4)
  %32 = load %struct.ehci_qh*, %struct.ehci_qh** %6, align 8
  %33 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %35 = load %struct.ehci_qh*, %struct.ehci_qh** %6, align 8
  %36 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %35, i32 0, i32 5
  store %struct.ehci_hcd* %34, %struct.ehci_hcd** %36, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.ehci_qh*, %struct.ehci_qh** %6, align 8
  %39 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.ehci_qh*, %struct.ehci_qh** %6, align 8
  %41 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %40, i32 0, i32 4
  %42 = call i32 @INIT_LIST_HEAD(i32* %41)
  %43 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32* @ehci_qtd_alloc(%struct.ehci_hcd* %43, i32 %44)
  %46 = load %struct.ehci_qh*, %struct.ehci_qh** %6, align 8
  %47 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %46, i32 0, i32 3
  store i32* %45, i32** %47, align 8
  %48 = load %struct.ehci_qh*, %struct.ehci_qh** %6, align 8
  %49 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %48, i32 0, i32 3
  %50 = load i32*, i32** %49, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %27
  %53 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %54 = call i32 @ehci_dbg(%struct.ehci_hcd* %53, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %58

55:                                               ; preds = %27
  br label %56

56:                                               ; preds = %55, %12
  %57 = load %struct.ehci_qh*, %struct.ehci_qh** %6, align 8
  store %struct.ehci_qh* %57, %struct.ehci_qh** %3, align 8
  br label %72

58:                                               ; preds = %52
  %59 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %60 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ehci_qh*, %struct.ehci_qh** %6, align 8
  %63 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %62, i32 0, i32 2
  %64 = load %struct.ehci_qh_hw*, %struct.ehci_qh_hw** %63, align 8
  %65 = load %struct.ehci_qh*, %struct.ehci_qh** %6, align 8
  %66 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @dma_pool_free(i32 %61, %struct.ehci_qh_hw* %64, i32 %67)
  br label %69

69:                                               ; preds = %58, %26
  %70 = load %struct.ehci_qh*, %struct.ehci_qh** %6, align 8
  %71 = call i32 @kfree(%struct.ehci_qh* %70)
  store %struct.ehci_qh* null, %struct.ehci_qh** %3, align 8
  br label %72

72:                                               ; preds = %69, %56
  %73 = load %struct.ehci_qh*, %struct.ehci_qh** %3, align 8
  ret %struct.ehci_qh* %73
}

declare dso_local %struct.ehci_qh* @kzalloc(i32, i32) #1

declare dso_local i64 @dma_pool_alloc(i32, i32, i32*) #1

declare dso_local i32 @memset(%struct.ehci_qh_hw*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32* @ehci_qtd_alloc(%struct.ehci_hcd*, i32) #1

declare dso_local i32 @ehci_dbg(%struct.ehci_hcd*, i8*) #1

declare dso_local i32 @dma_pool_free(i32, %struct.ehci_qh_hw*, i32) #1

declare dso_local i32 @kfree(%struct.ehci_qh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
