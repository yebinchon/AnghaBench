; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-mem.c_xhci_get_endpoint_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-mem.c_xhci_get_endpoint_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.usb_host_endpoint = type { i32 }

@CTRL_EP = common dso_local global i32 0, align 4
@BULK_IN_EP = common dso_local global i32 0, align 4
@BULK_OUT_EP = common dso_local global i32 0, align 4
@ISOC_IN_EP = common dso_local global i32 0, align 4
@ISOC_OUT_EP = common dso_local global i32 0, align 4
@INT_IN_EP = common dso_local global i32 0, align 4
@INT_OUT_EP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, %struct.usb_host_endpoint*)* @xhci_get_endpoint_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xhci_get_endpoint_type(%struct.usb_device* %0, %struct.usb_host_endpoint* %1) #0 {
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca %struct.usb_host_endpoint*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %3, align 8
  store %struct.usb_host_endpoint* %1, %struct.usb_host_endpoint** %4, align 8
  %7 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %8 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %7, i32 0, i32 0
  %9 = call i32 @usb_endpoint_dir_in(i32* %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %11 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %10, i32 0, i32 0
  %12 = call i64 @usb_endpoint_xfer_control(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @CTRL_EP, align 4
  %16 = call i32 @EP_TYPE(i32 %15)
  store i32 %16, i32* %6, align 4
  br label %67

17:                                               ; preds = %2
  %18 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %19 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %18, i32 0, i32 0
  %20 = call i64 @usb_endpoint_xfer_bulk(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %17
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* @BULK_IN_EP, align 4
  %27 = call i32 @EP_TYPE(i32 %26)
  store i32 %27, i32* %6, align 4
  br label %31

28:                                               ; preds = %22
  %29 = load i32, i32* @BULK_OUT_EP, align 4
  %30 = call i32 @EP_TYPE(i32 %29)
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %28, %25
  br label %66

32:                                               ; preds = %17
  %33 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %34 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %33, i32 0, i32 0
  %35 = call i64 @usb_endpoint_xfer_isoc(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %32
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* @ISOC_IN_EP, align 4
  %42 = call i32 @EP_TYPE(i32 %41)
  store i32 %42, i32* %6, align 4
  br label %46

43:                                               ; preds = %37
  %44 = load i32, i32* @ISOC_OUT_EP, align 4
  %45 = call i32 @EP_TYPE(i32 %44)
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %43, %40
  br label %65

47:                                               ; preds = %32
  %48 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %49 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %48, i32 0, i32 0
  %50 = call i64 @usb_endpoint_xfer_int(i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %47
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* @INT_IN_EP, align 4
  %57 = call i32 @EP_TYPE(i32 %56)
  store i32 %57, i32* %6, align 4
  br label %61

58:                                               ; preds = %52
  %59 = load i32, i32* @INT_OUT_EP, align 4
  %60 = call i32 @EP_TYPE(i32 %59)
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %58, %55
  br label %64

62:                                               ; preds = %47
  %63 = call i32 (...) @BUG()
  br label %64

64:                                               ; preds = %62, %61
  br label %65

65:                                               ; preds = %64, %46
  br label %66

66:                                               ; preds = %65, %31
  br label %67

67:                                               ; preds = %66, %14
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local i32 @usb_endpoint_dir_in(i32*) #1

declare dso_local i64 @usb_endpoint_xfer_control(i32*) #1

declare dso_local i32 @EP_TYPE(i32) #1

declare dso_local i64 @usb_endpoint_xfer_bulk(i32*) #1

declare dso_local i64 @usb_endpoint_xfer_isoc(i32*) #1

declare dso_local i64 @usb_endpoint_xfer_int(i32*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
