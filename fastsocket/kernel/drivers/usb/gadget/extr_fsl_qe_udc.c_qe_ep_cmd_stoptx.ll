; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_fsl_qe_udc.c_qe_ep_cmd_stoptx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_fsl_qe_udc.c_qe_ep_cmd_stoptx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qe_ep = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@PORT_CPM = common dso_local global i64 0, align 8
@CPM_USB_STOP_TX = common dso_local global i32 0, align 4
@CPM_USB_EP_SHIFT = common dso_local global i32 0, align 4
@CPM_USB_STOP_TX_OPCODE = common dso_local global i32 0, align 4
@QE_USB_STOP_TX = common dso_local global i32 0, align 4
@QE_CR_SUBBLOCK_USB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qe_ep*)* @qe_ep_cmd_stoptx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qe_ep_cmd_stoptx(%struct.qe_ep* %0) #0 {
  %2 = alloca %struct.qe_ep*, align 8
  store %struct.qe_ep* %0, %struct.qe_ep** %2, align 8
  %3 = load %struct.qe_ep*, %struct.qe_ep** %2, align 8
  %4 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %3, i32 0, i32 1
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @PORT_CPM, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load i32, i32* @CPM_USB_STOP_TX, align 4
  %12 = load %struct.qe_ep*, %struct.qe_ep** %2, align 8
  %13 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @CPM_USB_EP_SHIFT, align 4
  %16 = shl i32 %14, %15
  %17 = or i32 %11, %16
  %18 = load i32, i32* @CPM_USB_STOP_TX_OPCODE, align 4
  %19 = call i32 @cpm_command(i32 %17, i32 %18)
  br label %27

20:                                               ; preds = %1
  %21 = load i32, i32* @QE_USB_STOP_TX, align 4
  %22 = load i32, i32* @QE_CR_SUBBLOCK_USB, align 4
  %23 = load %struct.qe_ep*, %struct.qe_ep** %2, align 8
  %24 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @qe_issue_cmd(i32 %21, i32 %22, i32 %25, i32 0)
  br label %27

27:                                               ; preds = %20, %10
  ret i32 0
}

declare dso_local i32 @cpm_command(i32, i32) #1

declare dso_local i32 @qe_issue_cmd(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
