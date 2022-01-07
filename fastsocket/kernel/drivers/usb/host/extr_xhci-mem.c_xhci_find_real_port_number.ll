; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-mem.c_xhci_find_real_port_number.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-mem.c_xhci_find_real_port_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32*, i32 }
%struct.usb_device = type { i32, i64, %struct.usb_device* }

@DUPLICATE_ENTRY = common dso_local global i32 0, align 4
@USB_SPEED_SUPER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xhci_hcd*, %struct.usb_device*)* @xhci_find_real_port_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xhci_find_real_port_number(%struct.xhci_hcd* %0, %struct.usb_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xhci_hcd*, align 8
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %4, align 8
  store %struct.usb_device* %1, %struct.usb_device** %5, align 8
  %11 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  store %struct.usb_device* %11, %struct.usb_device** %6, align 8
  br label %12

12:                                               ; preds = %27, %2
  %13 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %14 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %13, i32 0, i32 2
  %15 = load %struct.usb_device*, %struct.usb_device** %14, align 8
  %16 = icmp ne %struct.usb_device* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %19 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %18, i32 0, i32 2
  %20 = load %struct.usb_device*, %struct.usb_device** %19, align 8
  %21 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %20, i32 0, i32 2
  %22 = load %struct.usb_device*, %struct.usb_device** %21, align 8
  %23 = icmp ne %struct.usb_device* %22, null
  br label %24

24:                                               ; preds = %17, %12
  %25 = phi i1 [ false, %12 ], [ %23, %17 ]
  br i1 %25, label %26, label %31

26:                                               ; preds = %24
  br label %27

27:                                               ; preds = %26
  %28 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %29 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %28, i32 0, i32 2
  %30 = load %struct.usb_device*, %struct.usb_device** %29, align 8
  store %struct.usb_device* %30, %struct.usb_device** %6, align 8
  br label %12

31:                                               ; preds = %24
  %32 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %33 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %79, %31
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %38 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @HCS_MAX_PORTS(i32 %39)
  %41 = icmp slt i32 %36, %40
  br i1 %41, label %42, label %82

42:                                               ; preds = %35
  %43 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %44 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %42
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @DUPLICATE_ENTRY, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52, %42
  br label %79

57:                                               ; preds = %52
  %58 = load i32, i32* %10, align 4
  %59 = icmp eq i32 %58, 3
  %60 = zext i1 %59 to i32
  %61 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %62 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @USB_SPEED_SUPER, align 8
  %65 = icmp eq i64 %63, %64
  %66 = zext i1 %65 to i32
  %67 = icmp eq i32 %60, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %57
  %69 = load i32, i32* %7, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %68, %57
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %3, align 4
  br label %83

78:                                               ; preds = %71
  br label %79

79:                                               ; preds = %78, %56
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %9, align 4
  br label %35

82:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %82, %75
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @HCS_MAX_PORTS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
