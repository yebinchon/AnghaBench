; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-hub.c_xhci_usb2_hub_descriptor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-hub.c_xhci_usb2_hub_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.xhci_hcd = type { i32, i32* }
%struct.usb_hub_descriptor = type { %struct.TYPE_4__, i64, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i32* }

@USB_MAXCHILDREN = common dso_local global i32 0, align 4
@USB_DT_HUB = common dso_local global i32 0, align 4
@USB_DT_HUB_NONVAR_SIZE = common dso_local global i64 0, align 8
@PORT_DEV_REMOVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_hcd*, %struct.xhci_hcd*, %struct.usb_hub_descriptor*)* @xhci_usb2_hub_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xhci_usb2_hub_descriptor(%struct.usb_hcd* %0, %struct.xhci_hcd* %1, %struct.usb_hub_descriptor* %2) #0 {
  %4 = alloca %struct.usb_hcd*, align 8
  %5 = alloca %struct.xhci_hcd*, align 8
  %6 = alloca %struct.usb_hub_descriptor*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %4, align 8
  store %struct.xhci_hcd* %1, %struct.xhci_hcd** %5, align 8
  store %struct.usb_hub_descriptor* %2, %struct.usb_hub_descriptor** %6, align 8
  %13 = load i32, i32* @USB_MAXCHILDREN, align 4
  %14 = add nsw i32 %13, 1
  %15 = add nsw i32 %14, 7
  %16 = sdiv i32 %15, 8
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %9, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %10, align 8
  %20 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %21 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %7, align 4
  %23 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %24 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @xhci_common_hub_descriptor(%struct.xhci_hcd* %23, %struct.usb_hub_descriptor* %24, i32 %25)
  %27 = load i32, i32* @USB_DT_HUB, align 4
  %28 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %6, align 8
  %29 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sdiv i32 %30, 8
  %32 = add nsw i32 1, %31
  store i32 %32, i32* %8, align 4
  %33 = load i64, i64* @USB_DT_HUB_NONVAR_SIZE, align 8
  %34 = load i32, i32* %8, align 4
  %35 = mul nsw i32 2, %34
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %33, %36
  %38 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %6, align 8
  %39 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %38, i32 0, i32 1
  store i64 %37, i64* %39, align 8
  %40 = mul nuw i64 4, %17
  %41 = trunc i64 %40 to i32
  %42 = call i32 @memset(i32* %19, i32 0, i32 %41)
  store i32 0, i32* %12, align 4
  br label %43

43:                                               ; preds = %74, %3
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %47, label %77

47:                                               ; preds = %43
  %48 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %49 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %50 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %12, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @xhci_readl(%struct.xhci_hcd* %48, i32 %55)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @PORT_DEV_REMOVE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %47
  %62 = load i32, i32* %12, align 4
  %63 = add i32 %62, 1
  %64 = urem i32 %63, 8
  %65 = shl i32 1, %64
  %66 = load i32, i32* %12, align 4
  %67 = add i32 %66, 1
  %68 = udiv i32 %67, 8
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %19, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %65
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %61, %47
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %12, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %12, align 4
  br label %43

77:                                               ; preds = %43
  %78 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %6, align 8
  %79 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @memset(i32* %82, i32 255, i32 8)
  %84 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %6, align 8
  %85 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @memset(i32* %88, i32 255, i32 8)
  store i32 0, i32* %12, align 4
  br label %90

90:                                               ; preds = %111, %77
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* %7, align 4
  %93 = add nsw i32 %92, 1
  %94 = add nsw i32 %93, 7
  %95 = sdiv i32 %94, 8
  %96 = icmp ult i32 %91, %95
  br i1 %96, label %97, label %114

97:                                               ; preds = %90
  %98 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %6, align 8
  %99 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %12, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %12, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %19, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @memset(i32* %105, i32 %109, i32 4)
  br label %111

111:                                              ; preds = %97
  %112 = load i32, i32* %12, align 4
  %113 = add i32 %112, 1
  store i32 %113, i32* %12, align 4
  br label %90

114:                                              ; preds = %90
  %115 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %115)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @xhci_common_hub_descriptor(%struct.xhci_hcd*, %struct.usb_hub_descriptor*, i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @xhci_readl(%struct.xhci_hcd*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
