; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-mem.c_xhci_free_or_cache_endpoint_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-mem.c_xhci_free_or_cache_endpoint_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32 }
%struct.xhci_virt_device = type { i32, %struct.TYPE_2__*, i32** }
%struct.TYPE_2__ = type { i32* }

@XHCI_MAX_RINGS_CACHED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Cached old ring, %d ring%s cached\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Ring cache full (%d rings), freeing ring\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xhci_free_or_cache_endpoint_ring(%struct.xhci_hcd* %0, %struct.xhci_virt_device* %1, i32 %2) #0 {
  %4 = alloca %struct.xhci_hcd*, align 8
  %5 = alloca %struct.xhci_virt_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %4, align 8
  store %struct.xhci_virt_device* %1, %struct.xhci_virt_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %5, align 8
  %9 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @XHCI_MAX_RINGS_CACHED, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %44

14:                                               ; preds = %3
  %15 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %5, align 8
  %16 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %5, align 8
  %24 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %23, i32 0, i32 2
  %25 = load i32**, i32*** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32*, i32** %25, i64 %27
  store i32* %22, i32** %28, align 8
  %29 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %5, align 8
  %30 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 8
  %33 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %34 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %5, align 8
  %35 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %5, align 8
  %38 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp sgt i32 %39, 1
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %43 = call i32 (%struct.xhci_hcd*, i8*, i32, ...) @xhci_dbg(%struct.xhci_hcd* %33, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %36, i8* %42)
  br label %60

44:                                               ; preds = %3
  %45 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %46 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %5, align 8
  %47 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @xhci_ring_free(%struct.xhci_hcd* %45, i32* %53)
  %55 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %56 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %5, align 8
  %57 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 (%struct.xhci_hcd*, i8*, i32, ...) @xhci_dbg(%struct.xhci_hcd* %55, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %44, %14
  %61 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %5, align 8
  %62 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store i32* null, i32** %67, align 8
  ret void
}

declare dso_local i32 @xhci_dbg(%struct.xhci_hcd*, i8*, i32, ...) #1

declare dso_local i32 @xhci_ring_free(%struct.xhci_hcd*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
