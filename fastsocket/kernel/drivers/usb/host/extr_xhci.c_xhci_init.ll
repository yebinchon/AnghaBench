; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci.c_xhci_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci.c_xhci_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.xhci_hcd = type { i32, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"xhci_init\0A\00", align 1
@link_quirk = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"QUIRK: Not clearing Link TRB chain bits.\0A\00", align 1
@XHCI_LINK_TRB_QUIRK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"xHCI doesn't need link TRB QUIRK\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"Finished xhci_init\0A\00", align 1
@XHCI_COMP_MODE_QUIRK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xhci_init(%struct.usb_hcd* %0) #0 {
  %2 = alloca %struct.usb_hcd*, align 8
  %3 = alloca %struct.xhci_hcd*, align 8
  %4 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %2, align 8
  %5 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %6 = call %struct.xhci_hcd* @hcd_to_xhci(%struct.usb_hcd* %5)
  store %struct.xhci_hcd* %6, %struct.xhci_hcd** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %8 = call i32 @xhci_dbg(%struct.xhci_hcd* %7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %10 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %9, i32 0, i32 2
  %11 = call i32 @spin_lock_init(i32* %10)
  %12 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %13 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 149
  br i1 %15, label %16, label %27

16:                                               ; preds = %1
  %17 = load i64, i64* @link_quirk, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %16
  %20 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %21 = call i32 @xhci_dbg(%struct.xhci_hcd* %20, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* @XHCI_LINK_TRB_QUIRK, align 4
  %23 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %24 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  br label %30

27:                                               ; preds = %16, %1
  %28 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %29 = call i32 @xhci_dbg(%struct.xhci_hcd* %28, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %19
  %31 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i32 @xhci_mem_init(%struct.xhci_hcd* %31, i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %35 = call i32 @xhci_dbg(%struct.xhci_hcd* %34, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %36 = call i64 (...) @compliance_mode_recovery_timer_quirk_check()
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %30
  %39 = load i32, i32* @XHCI_COMP_MODE_QUIRK, align 4
  %40 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %41 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %45 = call i32 @compliance_mode_recovery_timer_init(%struct.xhci_hcd* %44)
  br label %46

46:                                               ; preds = %38, %30
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local %struct.xhci_hcd* @hcd_to_xhci(%struct.usb_hcd*) #1

declare dso_local i32 @xhci_dbg(%struct.xhci_hcd*, i8*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @xhci_mem_init(%struct.xhci_hcd*, i32) #1

declare dso_local i64 @compliance_mode_recovery_timer_quirk_check(...) #1

declare dso_local i32 @compliance_mode_recovery_timer_init(%struct.xhci_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
