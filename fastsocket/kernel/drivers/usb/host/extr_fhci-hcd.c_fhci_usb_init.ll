; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_fhci-hcd.c_fhci_usb_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_fhci-hcd.c_fhci_usb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fhci_hcd = type { %struct.TYPE_5__*, %struct.fhci_usb* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.fhci_usb = type { i32, %struct.TYPE_7__*, %struct.TYPE_8__*, i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@FHCI_PRAM_SIZE = common dso_local global i32 0, align 4
@FHCI_PORT_DISABLED = common dso_local global i32 0, align 4
@FRAME_TIME_USAGE = common dso_local global i32 0, align 4
@SW_FIX_TIME_BETWEEN_TRANSACTION = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USB_E_TXB_MASK = common dso_local global i32 0, align 4
@USB_E_TXE1_MASK = common dso_local global i32 0, align 4
@USB_E_IDLE_MASK = common dso_local global i32 0, align 4
@USB_E_RESET_MASK = common dso_local global i32 0, align 4
@USB_E_SFT_MASK = common dso_local global i32 0, align 4
@USB_E_MSF_MASK = common dso_local global i32 0, align 4
@USB_MODE_HOST = common dso_local global i32 0, align 4
@USB_MODE_EN = common dso_local global i32 0, align 4
@DEFAULT_DATA_MEM = common dso_local global i32 0, align 4
@DEFAULT_RING_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fhci_hcd*)* @fhci_usb_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fhci_usb_init(%struct.fhci_hcd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fhci_hcd*, align 8
  %4 = alloca %struct.fhci_usb*, align 8
  store %struct.fhci_hcd* %0, %struct.fhci_hcd** %3, align 8
  %5 = load %struct.fhci_hcd*, %struct.fhci_hcd** %3, align 8
  %6 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %5, i32 0, i32 1
  %7 = load %struct.fhci_usb*, %struct.fhci_usb** %6, align 8
  store %struct.fhci_usb* %7, %struct.fhci_usb** %4, align 8
  %8 = load %struct.fhci_usb*, %struct.fhci_usb** %4, align 8
  %9 = getelementptr inbounds %struct.fhci_usb, %struct.fhci_usb* %8, i32 0, i32 1
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @FHCI_PRAM_SIZE, align 4
  %14 = call i32 @memset_io(i32 %12, i32 0, i32 %13)
  %15 = load i32, i32* @FHCI_PORT_DISABLED, align 4
  %16 = load %struct.fhci_usb*, %struct.fhci_usb** %4, align 8
  %17 = getelementptr inbounds %struct.fhci_usb, %struct.fhci_usb* %16, i32 0, i32 5
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* @FRAME_TIME_USAGE, align 4
  %19 = load %struct.fhci_usb*, %struct.fhci_usb** %4, align 8
  %20 = getelementptr inbounds %struct.fhci_usb, %struct.fhci_usb* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @SW_FIX_TIME_BETWEEN_TRANSACTION, align 4
  %22 = load %struct.fhci_usb*, %struct.fhci_usb** %4, align 8
  %23 = getelementptr inbounds %struct.fhci_usb, %struct.fhci_usb* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.TYPE_8__* @kzalloc(i32 4, i32 %24)
  %26 = load %struct.fhci_usb*, %struct.fhci_usb** %4, align 8
  %27 = getelementptr inbounds %struct.fhci_usb, %struct.fhci_usb* %26, i32 0, i32 2
  store %struct.TYPE_8__* %25, %struct.TYPE_8__** %27, align 8
  %28 = load %struct.fhci_usb*, %struct.fhci_usb** %4, align 8
  %29 = getelementptr inbounds %struct.fhci_usb, %struct.fhci_usb* %28, i32 0, i32 2
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = icmp ne %struct.TYPE_8__* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %1
  %33 = load %struct.fhci_usb*, %struct.fhci_usb** %4, align 8
  %34 = call i32 @fhci_usb_free(%struct.fhci_usb* %33)
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %101

37:                                               ; preds = %1
  %38 = load %struct.fhci_usb*, %struct.fhci_usb** %4, align 8
  %39 = getelementptr inbounds %struct.fhci_usb, %struct.fhci_usb* %38, i32 0, i32 2
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = call i32 @INIT_LIST_HEAD(i32* %41)
  %43 = load %struct.fhci_hcd*, %struct.fhci_hcd** %3, align 8
  %44 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = call i32 @out_be16(i32* %46, i32 0)
  %48 = load %struct.fhci_hcd*, %struct.fhci_hcd** %3, align 8
  %49 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = call i32 @out_be32(i32* %51, i32 0)
  %53 = load i32, i32* @USB_E_TXB_MASK, align 4
  %54 = load i32, i32* @USB_E_TXE1_MASK, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @USB_E_IDLE_MASK, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @USB_E_RESET_MASK, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @USB_E_SFT_MASK, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @USB_E_MSF_MASK, align 4
  %63 = or i32 %61, %62
  %64 = load %struct.fhci_usb*, %struct.fhci_usb** %4, align 8
  %65 = getelementptr inbounds %struct.fhci_usb, %struct.fhci_usb* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.fhci_usb*, %struct.fhci_usb** %4, align 8
  %67 = getelementptr inbounds %struct.fhci_usb, %struct.fhci_usb* %66, i32 0, i32 1
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  %72 = load i32, i32* @USB_MODE_HOST, align 4
  %73 = load i32, i32* @USB_MODE_EN, align 4
  %74 = or i32 %72, %73
  %75 = call i32 @out_8(i32* %71, i32 %74)
  %76 = load %struct.fhci_usb*, %struct.fhci_usb** %4, align 8
  %77 = getelementptr inbounds %struct.fhci_usb, %struct.fhci_usb* %76, i32 0, i32 1
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = call i32 @out_be16(i32* %81, i32 0)
  %83 = load %struct.fhci_usb*, %struct.fhci_usb** %4, align 8
  %84 = getelementptr inbounds %struct.fhci_usb, %struct.fhci_usb* %83, i32 0, i32 1
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = call i32 @out_be16(i32* %88, i32 65535)
  %90 = load %struct.fhci_usb*, %struct.fhci_usb** %4, align 8
  %91 = load i32, i32* @DEFAULT_DATA_MEM, align 4
  %92 = load i32, i32* @DEFAULT_RING_LEN, align 4
  %93 = call i64 @endpoint_zero_init(%struct.fhci_usb* %90, i32 %91, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %37
  %96 = load %struct.fhci_usb*, %struct.fhci_usb** %4, align 8
  %97 = call i32 @fhci_usb_free(%struct.fhci_usb* %96)
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %2, align 4
  br label %101

100:                                              ; preds = %37
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %100, %95, %32
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @memset_io(i32, i32, i32) #1

declare dso_local %struct.TYPE_8__* @kzalloc(i32, i32) #1

declare dso_local i32 @fhci_usb_free(%struct.fhci_usb*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @out_be16(i32*, i32) #1

declare dso_local i32 @out_be32(i32*, i32) #1

declare dso_local i32 @out_8(i32*, i32) #1

declare dso_local i64 @endpoint_zero_init(%struct.fhci_usb*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
