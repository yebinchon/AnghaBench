; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-mem.c_xhci_get_endpoint_interval.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-mem.c_xhci_get_endpoint_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.usb_host_endpoint = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, %struct.usb_host_endpoint*)* @xhci_get_endpoint_interval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xhci_get_endpoint_interval(%struct.usb_device* %0, %struct.usb_host_endpoint* %1) #0 {
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca %struct.usb_host_endpoint*, align 8
  %5 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %3, align 8
  store %struct.usb_host_endpoint* %1, %struct.usb_host_endpoint** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %7 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %64 [
    i32 130, label %9
    i32 128, label %24
    i32 131, label %39
    i32 129, label %49
  ]

9:                                                ; preds = %2
  %10 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %11 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %10, i32 0, i32 0
  %12 = call i32 @usb_endpoint_xfer_control(i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %9
  %15 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %16 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %15, i32 0, i32 0
  %17 = call i32 @usb_endpoint_xfer_bulk(i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14, %9
  %20 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %21 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %22 = call i32 @xhci_parse_microframe_interval(%struct.usb_device* %20, %struct.usb_host_endpoint* %21)
  store i32 %22, i32* %5, align 4
  br label %66

23:                                               ; preds = %14
  br label %24

24:                                               ; preds = %2, %23
  %25 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %26 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %25, i32 0, i32 0
  %27 = call i32 @usb_endpoint_xfer_int(i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %31 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %30, i32 0, i32 0
  %32 = call i32 @usb_endpoint_xfer_isoc(i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29, %24
  %35 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %36 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %37 = call i32 @xhci_parse_exponent_interval(%struct.usb_device* %35, %struct.usb_host_endpoint* %36)
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %34, %29
  br label %66

39:                                               ; preds = %2
  %40 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %41 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %40, i32 0, i32 0
  %42 = call i32 @usb_endpoint_xfer_isoc(i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %46 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %47 = call i32 @xhci_parse_exponent_interval(%struct.usb_device* %45, %struct.usb_host_endpoint* %46)
  store i32 %47, i32* %5, align 4
  br label %66

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %2, %48
  %50 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %51 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %50, i32 0, i32 0
  %52 = call i32 @usb_endpoint_xfer_int(i32* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %49
  %55 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %56 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %55, i32 0, i32 0
  %57 = call i32 @usb_endpoint_xfer_isoc(i32* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54, %49
  %60 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %61 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %62 = call i32 @xhci_parse_frame_interval(%struct.usb_device* %60, %struct.usb_host_endpoint* %61)
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %59, %54
  br label %66

64:                                               ; preds = %2
  %65 = call i32 (...) @BUG()
  br label %66

66:                                               ; preds = %64, %63, %44, %38, %19
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @EP_INTERVAL(i32 %67)
  ret i32 %68
}

declare dso_local i32 @usb_endpoint_xfer_control(i32*) #1

declare dso_local i32 @usb_endpoint_xfer_bulk(i32*) #1

declare dso_local i32 @xhci_parse_microframe_interval(%struct.usb_device*, %struct.usb_host_endpoint*) #1

declare dso_local i32 @usb_endpoint_xfer_int(i32*) #1

declare dso_local i32 @usb_endpoint_xfer_isoc(i32*) #1

declare dso_local i32 @xhci_parse_exponent_interval(%struct.usb_device*, %struct.usb_host_endpoint*) #1

declare dso_local i32 @xhci_parse_frame_interval(%struct.usb_device*, %struct.usb_host_endpoint*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @EP_INTERVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
