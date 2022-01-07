; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-hcd.c_ehci_endpoint_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-hcd.c_ehci_endpoint_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.usb_host_endpoint = type { %struct.ehci_qh*, i32 }
%struct.ehci_qh = type { i64, i32, i32 }
%struct.ehci_hcd = type { i32 }

@USB_ENDPOINT_XFER_BULK = common dso_local global i32 0, align 4
@USB_ENDPOINT_XFER_INT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"clear_halt for a busy endpoint\0A\00", align 1
@QH_STATE_LINKED = common dso_local global i64 0, align 8
@QH_STATE_COMPLETING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_hcd*, %struct.usb_host_endpoint*)* @ehci_endpoint_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ehci_endpoint_reset(%struct.usb_hcd* %0, %struct.usb_host_endpoint* %1) #0 {
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.usb_host_endpoint*, align 8
  %5 = alloca %struct.ehci_hcd*, align 8
  %6 = alloca %struct.ehci_qh*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  store %struct.usb_host_endpoint* %1, %struct.usb_host_endpoint** %4, align 8
  %11 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %12 = call %struct.ehci_hcd* @hcd_to_ehci(%struct.usb_hcd* %11)
  store %struct.ehci_hcd* %12, %struct.ehci_hcd** %5, align 8
  %13 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %14 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %13, i32 0, i32 1
  %15 = call i32 @usb_endpoint_type(i32* %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %17 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %16, i32 0, i32 1
  %18 = call i32 @usb_endpoint_num(i32* %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %20 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %19, i32 0, i32 1
  %21 = call i32 @usb_endpoint_dir_out(i32* %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @USB_ENDPOINT_XFER_BULK, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @USB_ENDPOINT_XFER_INT, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %85

30:                                               ; preds = %25, %2
  %31 = load %struct.ehci_hcd*, %struct.ehci_hcd** %5, align 8
  %32 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %31, i32 0, i32 0
  %33 = load i64, i64* %10, align 8
  %34 = call i32 @spin_lock_irqsave(i32* %32, i64 %33)
  %35 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %36 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %35, i32 0, i32 0
  %37 = load %struct.ehci_qh*, %struct.ehci_qh** %36, align 8
  store %struct.ehci_qh* %37, %struct.ehci_qh** %6, align 8
  %38 = load %struct.ehci_qh*, %struct.ehci_qh** %6, align 8
  %39 = icmp ne %struct.ehci_qh* %38, null
  br i1 %39, label %40, label %80

40:                                               ; preds = %30
  %41 = load %struct.ehci_qh*, %struct.ehci_qh** %6, align 8
  %42 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @usb_settoggle(i32 %43, i32 %44, i32 %45, i32 0)
  %47 = load %struct.ehci_qh*, %struct.ehci_qh** %6, align 8
  %48 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %47, i32 0, i32 1
  %49 = call i32 @list_empty(i32* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %40
  %52 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %79

53:                                               ; preds = %40
  %54 = load %struct.ehci_qh*, %struct.ehci_qh** %6, align 8
  %55 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @QH_STATE_LINKED, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %65, label %59

59:                                               ; preds = %53
  %60 = load %struct.ehci_qh*, %struct.ehci_qh** %6, align 8
  %61 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @QH_STATE_COMPLETING, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %78

65:                                               ; preds = %59, %53
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @USB_ENDPOINT_XFER_BULK, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = load %struct.ehci_hcd*, %struct.ehci_hcd** %5, align 8
  %71 = load %struct.ehci_qh*, %struct.ehci_qh** %6, align 8
  %72 = call i32 @unlink_async(%struct.ehci_hcd* %70, %struct.ehci_qh* %71)
  br label %77

73:                                               ; preds = %65
  %74 = load %struct.ehci_hcd*, %struct.ehci_hcd** %5, align 8
  %75 = load %struct.ehci_qh*, %struct.ehci_qh** %6, align 8
  %76 = call i32 @intr_deschedule(%struct.ehci_hcd* %74, %struct.ehci_qh* %75)
  br label %77

77:                                               ; preds = %73, %69
  br label %78

78:                                               ; preds = %77, %59
  br label %79

79:                                               ; preds = %78, %51
  br label %80

80:                                               ; preds = %79, %30
  %81 = load %struct.ehci_hcd*, %struct.ehci_hcd** %5, align 8
  %82 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %81, i32 0, i32 0
  %83 = load i64, i64* %10, align 8
  %84 = call i32 @spin_unlock_irqrestore(i32* %82, i64 %83)
  br label %85

85:                                               ; preds = %80, %29
  ret void
}

declare dso_local %struct.ehci_hcd* @hcd_to_ehci(%struct.usb_hcd*) #1

declare dso_local i32 @usb_endpoint_type(i32*) #1

declare dso_local i32 @usb_endpoint_num(i32*) #1

declare dso_local i32 @usb_endpoint_dir_out(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @usb_settoggle(i32, i32, i32, i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @unlink_async(%struct.ehci_hcd*, %struct.ehci_qh*) #1

declare dso_local i32 @intr_deschedule(%struct.ehci_hcd*, %struct.ehci_qh*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
