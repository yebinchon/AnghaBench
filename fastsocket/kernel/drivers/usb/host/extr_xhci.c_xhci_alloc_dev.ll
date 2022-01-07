; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci.c_xhci_alloc_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci.c_xhci_alloc_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.usb_device = type { i64 }
%struct.xhci_hcd = type { i32, i32, i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %union.xhci_trb* }
%union.xhci_trb = type { i32 }

@TRB_ENABLE_SLOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"FIXME: allocate a command ring segment\0A\00", align 1
@XHCI_CMD_DEFAULT_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"%s while waiting for a slot\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Timeout\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Signal\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Error while assigning device slot ID\0A\00", align 1
@XHCI_EP_LIMIT_QUIRK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [58 x i8] c"Not enough host resources, active endpoint contexts = %u\0A\00", align 1
@GFP_NOIO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [52 x i8] c"Could not allocate xHCI USB device data structures\0A\00", align 1
@TRB_DISABLE_SLOT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xhci_alloc_dev(%struct.usb_hcd* %0, %struct.usb_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_hcd*, align 8
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca %struct.xhci_hcd*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %union.xhci_trb*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %4, align 8
  store %struct.usb_device* %1, %struct.usb_device** %5, align 8
  %11 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %12 = call %struct.xhci_hcd* @hcd_to_xhci(%struct.usb_hcd* %11)
  store %struct.xhci_hcd* %12, %struct.xhci_hcd** %6, align 8
  %13 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %14 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %13, i32 0, i32 1
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %18 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %17, i32 0, i32 5
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %union.xhci_trb*, %union.xhci_trb** %20, align 8
  store %union.xhci_trb* %21, %union.xhci_trb** %10, align 8
  %22 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %23 = load i32, i32* @TRB_ENABLE_SLOT, align 4
  %24 = call i32 @xhci_queue_slot_control(%struct.xhci_hcd* %22, i32 %23, i64 0)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %2
  %28 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %29 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %28, i32 0, i32 1
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i64 %30)
  %32 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %33 = call i32 @xhci_dbg(%struct.xhci_hcd* %32, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %134

34:                                               ; preds = %2
  %35 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %36 = call i32 @xhci_ring_cmd_db(%struct.xhci_hcd* %35)
  %37 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %38 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %37, i32 0, i32 1
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* %38, i64 %39)
  %41 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %42 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %41, i32 0, i32 4
  %43 = load i32, i32* @XHCI_CMD_DEFAULT_TIMEOUT, align 4
  %44 = call i32 @wait_for_completion_interruptible_timeout(i32* %42, i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp sle i32 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %34
  %48 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %49 = load i32, i32* %8, align 4
  %50 = icmp eq i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)
  %53 = call i32 (%struct.xhci_hcd*, i8*, ...) @xhci_warn(%struct.xhci_hcd* %48, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %52)
  %54 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %55 = load %union.xhci_trb*, %union.xhci_trb** %10, align 8
  %56 = call i32 @xhci_cancel_cmd(%struct.xhci_hcd* %54, i32* null, %union.xhci_trb* %55)
  store i32 %56, i32* %3, align 4
  br label %134

57:                                               ; preds = %34
  %58 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %59 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %57
  %63 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %64 = call i32 @xhci_err(%struct.xhci_hcd* %63, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %134

65:                                               ; preds = %57
  %66 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %67 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @XHCI_EP_LIMIT_QUIRK, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %96

72:                                               ; preds = %65
  %73 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %74 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %73, i32 0, i32 1
  %75 = load i64, i64* %7, align 8
  %76 = call i32 @spin_lock_irqsave(i32* %74, i64 %75)
  %77 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %78 = call i32 @xhci_reserve_host_control_ep_resources(%struct.xhci_hcd* %77)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %72
  %82 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %83 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %82, i32 0, i32 1
  %84 = load i64, i64* %7, align 8
  %85 = call i32 @spin_unlock_irqrestore(i32* %83, i64 %84)
  %86 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %87 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %88 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = call i32 (%struct.xhci_hcd*, i8*, ...) @xhci_warn(%struct.xhci_hcd* %86, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0), i32 %89)
  br label %114

91:                                               ; preds = %72
  %92 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %93 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %92, i32 0, i32 1
  %94 = load i64, i64* %7, align 8
  %95 = call i32 @spin_unlock_irqrestore(i32* %93, i64 %94)
  br label %96

96:                                               ; preds = %91, %65
  %97 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %98 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %99 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %102 = load i32, i32* @GFP_NOIO, align 4
  %103 = call i32 @xhci_alloc_virt_device(%struct.xhci_hcd* %97, i64 %100, %struct.usb_device* %101, i32 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %96
  %106 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %107 = call i32 (%struct.xhci_hcd*, i8*, ...) @xhci_warn(%struct.xhci_hcd* %106, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0))
  br label %114

108:                                              ; preds = %96
  %109 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %110 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %113 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %112, i32 0, i32 0
  store i64 %111, i64* %113, align 8
  store i32 1, i32* %3, align 4
  br label %134

114:                                              ; preds = %105, %81
  %115 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %116 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %115, i32 0, i32 1
  %117 = load i64, i64* %7, align 8
  %118 = call i32 @spin_lock_irqsave(i32* %116, i64 %117)
  %119 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %120 = load i32, i32* @TRB_DISABLE_SLOT, align 4
  %121 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %122 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @xhci_queue_slot_control(%struct.xhci_hcd* %119, i32 %120, i64 %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %114
  %127 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %128 = call i32 @xhci_ring_cmd_db(%struct.xhci_hcd* %127)
  br label %129

129:                                              ; preds = %126, %114
  %130 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %131 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %130, i32 0, i32 1
  %132 = load i64, i64* %7, align 8
  %133 = call i32 @spin_unlock_irqrestore(i32* %131, i64 %132)
  store i32 0, i32* %3, align 4
  br label %134

134:                                              ; preds = %129, %108, %62, %47, %27
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local %struct.xhci_hcd* @hcd_to_xhci(%struct.usb_hcd*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @xhci_queue_slot_control(%struct.xhci_hcd*, i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @xhci_dbg(%struct.xhci_hcd*, i8*) #1

declare dso_local i32 @xhci_ring_cmd_db(%struct.xhci_hcd*) #1

declare dso_local i32 @wait_for_completion_interruptible_timeout(i32*, i32) #1

declare dso_local i32 @xhci_warn(%struct.xhci_hcd*, i8*, ...) #1

declare dso_local i32 @xhci_cancel_cmd(%struct.xhci_hcd*, i32*, %union.xhci_trb*) #1

declare dso_local i32 @xhci_err(%struct.xhci_hcd*, i8*) #1

declare dso_local i32 @xhci_reserve_host_control_ep_resources(%struct.xhci_hcd*) #1

declare dso_local i32 @xhci_alloc_virt_device(%struct.xhci_hcd*, i64, %struct.usb_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
