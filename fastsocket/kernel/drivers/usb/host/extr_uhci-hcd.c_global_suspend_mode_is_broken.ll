; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_uhci-hcd.c_global_suspend_mode_is_broken.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_uhci-hcd.c_global_suspend_mode_is_broken.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uhci_hcd = type { i32, i64 }

@global_suspend_mode_is_broken.bad_Asus_board = internal global [6 x i8] c"A7V8X\00", align 1
@DMI_BOARD_NAME = common dso_local global i32 0, align 4
@USBPORTSC1 = common dso_local global i64 0, align 8
@USBPORTSC_CCS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uhci_hcd*)* @global_suspend_mode_is_broken to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @global_suspend_mode_is_broken(%struct.uhci_hcd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uhci_hcd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.uhci_hcd* %0, %struct.uhci_hcd** %3, align 8
  %6 = load i32, i32* @DMI_BOARD_NAME, align 4
  %7 = call i8* @dmi_get_system_info(i32 %6)
  store i8* %7, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %41

10:                                               ; preds = %1
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @global_suspend_mode_is_broken.bad_Asus_board, i64 0, i64 0))
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %41, label %14

14:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %37, %14
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.uhci_hcd*, %struct.uhci_hcd** %3, align 8
  %18 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %40

21:                                               ; preds = %15
  %22 = load %struct.uhci_hcd*, %struct.uhci_hcd** %3, align 8
  %23 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @USBPORTSC1, align 8
  %26 = add nsw i64 %24, %25
  %27 = load i32, i32* %4, align 4
  %28 = mul nsw i32 %27, 2
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %26, %29
  %31 = call i32 @inw(i64 %30)
  %32 = load i32, i32* @USBPORTSC_CCS, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %21
  store i32 1, i32* %2, align 4
  br label %42

36:                                               ; preds = %21
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %15

40:                                               ; preds = %15
  br label %41

41:                                               ; preds = %40, %10, %1
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %35
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i8* @dmi_get_system_info(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @inw(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
