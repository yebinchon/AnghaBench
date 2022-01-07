; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_uhci-hub.c_uhci_hub_status_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_uhci-hub.c_uhci_hub_status_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.uhci_hcd = type { i32, i32, i32, i64, i64 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*, i8*)* @uhci_hub_status_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uhci_hub_status_data(%struct.usb_hcd* %0, i8* %1) #0 {
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.uhci_hcd*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %9 = call %struct.uhci_hcd* @hcd_to_uhci(%struct.usb_hcd* %8)
  store %struct.uhci_hcd* %9, %struct.uhci_hcd** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.uhci_hcd*, %struct.uhci_hcd** %5, align 8
  %11 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %10, i32 0, i32 1
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.uhci_hcd*, %struct.uhci_hcd** %5, align 8
  %15 = call i32 @uhci_scan_schedule(%struct.uhci_hcd* %14)
  %16 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %17 = call i32 @HCD_HW_ACCESSIBLE(%struct.usb_hcd* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.uhci_hcd*, %struct.uhci_hcd** %5, align 8
  %21 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19, %2
  br label %87

25:                                               ; preds = %19
  %26 = load %struct.uhci_hcd*, %struct.uhci_hcd** %5, align 8
  %27 = call i32 @uhci_check_ports(%struct.uhci_hcd* %26)
  %28 = load %struct.uhci_hcd*, %struct.uhci_hcd** %5, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @get_hub_status_data(%struct.uhci_hcd* %28, i8* %29)
  store i32 %30, i32* %7, align 4
  %31 = load %struct.uhci_hcd*, %struct.uhci_hcd** %5, align 8
  %32 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %85 [
    i32 128, label %34
    i32 129, label %34
    i32 132, label %41
    i32 131, label %48
    i32 130, label %61
  ]

34:                                               ; preds = %25, %25
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %39 = call i32 @usb_hcd_resume_root_hub(%struct.usb_hcd* %38)
  br label %40

40:                                               ; preds = %37, %34
  br label %86

41:                                               ; preds = %25
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load %struct.uhci_hcd*, %struct.uhci_hcd** %5, align 8
  %46 = call i32 @wakeup_rh(%struct.uhci_hcd* %45)
  br label %47

47:                                               ; preds = %44, %41
  br label %86

48:                                               ; preds = %25
  %49 = load %struct.uhci_hcd*, %struct.uhci_hcd** %5, align 8
  %50 = call i32 @any_ports_active(%struct.uhci_hcd* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %48
  %53 = load %struct.uhci_hcd*, %struct.uhci_hcd** %5, align 8
  %54 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %53, i32 0, i32 0
  store i32 130, i32* %54, align 8
  %55 = load i64, i64* @jiffies, align 8
  %56 = load i64, i64* @HZ, align 8
  %57 = add nsw i64 %55, %56
  %58 = load %struct.uhci_hcd*, %struct.uhci_hcd** %5, align 8
  %59 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %58, i32 0, i32 3
  store i64 %57, i64* %59, align 8
  br label %60

60:                                               ; preds = %52, %48
  br label %86

61:                                               ; preds = %25
  %62 = load %struct.uhci_hcd*, %struct.uhci_hcd** %5, align 8
  %63 = call i32 @any_ports_active(%struct.uhci_hcd* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load %struct.uhci_hcd*, %struct.uhci_hcd** %5, align 8
  %67 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %66, i32 0, i32 0
  store i32 131, i32* %67, align 8
  br label %84

68:                                               ; preds = %61
  %69 = load i64, i64* @jiffies, align 8
  %70 = load %struct.uhci_hcd*, %struct.uhci_hcd** %5, align 8
  %71 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @time_after_eq(i64 %69, i64 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %68
  %76 = load %struct.uhci_hcd*, %struct.uhci_hcd** %5, align 8
  %77 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %75
  %81 = load %struct.uhci_hcd*, %struct.uhci_hcd** %5, align 8
  %82 = call i32 @suspend_rh(%struct.uhci_hcd* %81, i32 132)
  br label %83

83:                                               ; preds = %80, %75, %68
  br label %84

84:                                               ; preds = %83, %65
  br label %86

85:                                               ; preds = %25
  br label %86

86:                                               ; preds = %85, %84, %60, %47, %40
  br label %87

87:                                               ; preds = %86, %24
  %88 = load %struct.uhci_hcd*, %struct.uhci_hcd** %5, align 8
  %89 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %88, i32 0, i32 1
  %90 = load i64, i64* %6, align 8
  %91 = call i32 @spin_unlock_irqrestore(i32* %89, i64 %90)
  %92 = load i32, i32* %7, align 4
  ret i32 %92
}

declare dso_local %struct.uhci_hcd* @hcd_to_uhci(%struct.usb_hcd*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @uhci_scan_schedule(%struct.uhci_hcd*) #1

declare dso_local i32 @HCD_HW_ACCESSIBLE(%struct.usb_hcd*) #1

declare dso_local i32 @uhci_check_ports(%struct.uhci_hcd*) #1

declare dso_local i32 @get_hub_status_data(%struct.uhci_hcd*, i8*) #1

declare dso_local i32 @usb_hcd_resume_root_hub(%struct.usb_hcd*) #1

declare dso_local i32 @wakeup_rh(%struct.uhci_hcd*) #1

declare dso_local i32 @any_ports_active(%struct.uhci_hcd*) #1

declare dso_local i32 @time_after_eq(i64, i64) #1

declare dso_local i32 @suspend_rh(%struct.uhci_hcd*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
