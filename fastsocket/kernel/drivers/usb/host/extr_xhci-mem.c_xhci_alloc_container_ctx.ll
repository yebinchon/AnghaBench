; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-mem.c_xhci_alloc_container_ctx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-mem.c_xhci_alloc_container_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_container_ctx = type { i32, i32, i32, i32 }
%struct.xhci_hcd = type { i32, i32 }

@XHCI_CTX_TYPE_DEVICE = common dso_local global i32 0, align 4
@XHCI_CTX_TYPE_INPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xhci_container_ctx* (%struct.xhci_hcd*, i32, i32)* @xhci_alloc_container_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xhci_container_ctx* @xhci_alloc_container_ctx(%struct.xhci_hcd* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.xhci_container_ctx*, align 8
  %5 = alloca %struct.xhci_hcd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.xhci_container_ctx*, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = call %struct.xhci_container_ctx* @kzalloc(i32 16, i32 %9)
  store %struct.xhci_container_ctx* %10, %struct.xhci_container_ctx** %8, align 8
  %11 = load %struct.xhci_container_ctx*, %struct.xhci_container_ctx** %8, align 8
  %12 = icmp ne %struct.xhci_container_ctx* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store %struct.xhci_container_ctx* null, %struct.xhci_container_ctx** %4, align 8
  br label %70

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @XHCI_CTX_TYPE_DEVICE, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @XHCI_CTX_TYPE_INPUT, align 4
  %21 = icmp ne i32 %19, %20
  br label %22

22:                                               ; preds = %18, %14
  %23 = phi i1 [ false, %14 ], [ %21, %18 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @BUG_ON(i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.xhci_container_ctx*, %struct.xhci_container_ctx** %8, align 8
  %28 = getelementptr inbounds %struct.xhci_container_ctx, %struct.xhci_container_ctx* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %30 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @HCC_64BYTE_CONTEXT(i32 %31)
  %33 = icmp ne i64 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 2048, i32 1024
  %36 = load %struct.xhci_container_ctx*, %struct.xhci_container_ctx** %8, align 8
  %37 = getelementptr inbounds %struct.xhci_container_ctx, %struct.xhci_container_ctx* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @XHCI_CTX_TYPE_INPUT, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %22
  %42 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %43 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @CTX_SIZE(i32 %44)
  %46 = load %struct.xhci_container_ctx*, %struct.xhci_container_ctx** %8, align 8
  %47 = getelementptr inbounds %struct.xhci_container_ctx, %struct.xhci_container_ctx* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %49, %45
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %47, align 4
  br label %52

52:                                               ; preds = %41, %22
  %53 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %54 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.xhci_container_ctx*, %struct.xhci_container_ctx** %8, align 8
  %58 = getelementptr inbounds %struct.xhci_container_ctx, %struct.xhci_container_ctx* %57, i32 0, i32 3
  %59 = call i32 @dma_pool_alloc(i32 %55, i32 %56, i32* %58)
  %60 = load %struct.xhci_container_ctx*, %struct.xhci_container_ctx** %8, align 8
  %61 = getelementptr inbounds %struct.xhci_container_ctx, %struct.xhci_container_ctx* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  %62 = load %struct.xhci_container_ctx*, %struct.xhci_container_ctx** %8, align 8
  %63 = getelementptr inbounds %struct.xhci_container_ctx, %struct.xhci_container_ctx* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.xhci_container_ctx*, %struct.xhci_container_ctx** %8, align 8
  %66 = getelementptr inbounds %struct.xhci_container_ctx, %struct.xhci_container_ctx* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @memset(i32 %64, i32 0, i32 %67)
  %69 = load %struct.xhci_container_ctx*, %struct.xhci_container_ctx** %8, align 8
  store %struct.xhci_container_ctx* %69, %struct.xhci_container_ctx** %4, align 8
  br label %70

70:                                               ; preds = %52, %13
  %71 = load %struct.xhci_container_ctx*, %struct.xhci_container_ctx** %4, align 8
  ret %struct.xhci_container_ctx* %71
}

declare dso_local %struct.xhci_container_ctx* @kzalloc(i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @HCC_64BYTE_CONTEXT(i32) #1

declare dso_local i64 @CTX_SIZE(i32) #1

declare dso_local i32 @dma_pool_alloc(i32, i32, i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
