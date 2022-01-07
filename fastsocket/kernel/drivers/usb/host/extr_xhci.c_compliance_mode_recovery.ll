; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci.c_compliance_mode_recovery.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci.c_compliance_mode_recovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32, i32, i32, %struct.usb_hcd*, i32* }
%struct.usb_hcd = type { i64 }

@PORT_PLS_MASK = common dso_local global i32 0, align 4
@USB_SS_PORT_LS_COMP_MOD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Compliance mode detected->port %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Attempting compliance mode recovery\0A\00", align 1
@HC_STATE_SUSPENDED = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@COMP_MODE_RCVRY_MSECS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @compliance_mode_recovery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compliance_mode_recovery(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.xhci_hcd*, align 8
  %4 = alloca %struct.usb_hcd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = inttoptr i64 %7 to %struct.xhci_hcd*
  store %struct.xhci_hcd* %8, %struct.xhci_hcd** %3, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %52, %1
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %12 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %55

15:                                               ; preds = %9
  %16 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %17 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %18 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %17, i32 0, i32 4
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @xhci_readl(%struct.xhci_hcd* %16, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @PORT_PLS_MASK, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @USB_SS_PORT_LS_COMP_MOD, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %51

30:                                               ; preds = %15
  %31 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  %34 = call i32 (%struct.xhci_hcd*, i8*, ...) @xhci_dbg(%struct.xhci_hcd* %31, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %36 = call i32 (%struct.xhci_hcd*, i8*, ...) @xhci_dbg(%struct.xhci_hcd* %35, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %38 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %37, i32 0, i32 3
  %39 = load %struct.usb_hcd*, %struct.usb_hcd** %38, align 8
  store %struct.usb_hcd* %39, %struct.usb_hcd** %4, align 8
  %40 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %41 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @HC_STATE_SUSPENDED, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %30
  %46 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %47 = call i32 @usb_hcd_resume_root_hub(%struct.usb_hcd* %46)
  br label %48

48:                                               ; preds = %45, %30
  %49 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %50 = call i32 @usb_hcd_poll_rh_status(%struct.usb_hcd* %49)
  br label %51

51:                                               ; preds = %48, %15
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %9

55:                                               ; preds = %9
  %56 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %57 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %60 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = shl i32 1, %61
  %63 = sub nsw i32 %62, 1
  %64 = icmp ne i32 %58, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %55
  %66 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %67 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %66, i32 0, i32 2
  %68 = load i64, i64* @jiffies, align 8
  %69 = load i32, i32* @COMP_MODE_RCVRY_MSECS, align 4
  %70 = call i64 @msecs_to_jiffies(i32 %69)
  %71 = add nsw i64 %68, %70
  %72 = call i32 @mod_timer(i32* %67, i64 %71)
  br label %73

73:                                               ; preds = %65, %55
  ret void
}

declare dso_local i32 @xhci_readl(%struct.xhci_hcd*, i32) #1

declare dso_local i32 @xhci_dbg(%struct.xhci_hcd*, i8*, ...) #1

declare dso_local i32 @usb_hcd_resume_root_hub(%struct.usb_hcd*) #1

declare dso_local i32 @usb_hcd_poll_rh_status(%struct.usb_hcd*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
