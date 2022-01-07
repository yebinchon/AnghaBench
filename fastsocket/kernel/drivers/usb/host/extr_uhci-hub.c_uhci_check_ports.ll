; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_uhci-hub.c_uhci_check_ports.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_uhci-hub.c_uhci_check_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uhci_hcd = type { i32, i32, i64, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@USBPORTSC1 = common dso_local global i32 0, align 4
@USBPORTSC_PR = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@USBPORTSC_CSC = common dso_local global i32 0, align 4
@USBPORTSC_PEC = common dso_local global i32 0, align 4
@USBPORTSC_PE = common dso_local global i32 0, align 4
@USBPORTSC_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uhci_hcd*)* @uhci_check_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uhci_check_ports(%struct.uhci_hcd* %0) #0 {
  %2 = alloca %struct.uhci_hcd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.uhci_hcd* %0, %struct.uhci_hcd** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %99, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.uhci_hcd*, %struct.uhci_hcd** %2, align 8
  %9 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ult i32 %7, %10
  br i1 %11, label %12, label %102

12:                                               ; preds = %6
  %13 = load %struct.uhci_hcd*, %struct.uhci_hcd** %2, align 8
  %14 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @USBPORTSC1, align 4
  %17 = add nsw i32 %15, %16
  %18 = load i32, i32* %3, align 4
  %19 = mul i32 2, %18
  %20 = add i32 %17, %19
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %4, align 8
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @inw(i64 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @USBPORTSC_PR, align 4
  %26 = and i32 %24, %25
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %55

29:                                               ; preds = %12
  %30 = load i64, i64* @jiffies, align 8
  %31 = load %struct.uhci_hcd*, %struct.uhci_hcd** %2, align 8
  %32 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @time_after_eq(i64 %30, i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %54

36:                                               ; preds = %29
  %37 = load i32, i32* @USBPORTSC_PR, align 4
  %38 = call i32 @CLR_RH_PORTSTAT(i32 %37)
  %39 = call i32 @udelay(i32 10)
  %40 = load %struct.uhci_hcd*, %struct.uhci_hcd** %2, align 8
  %41 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = load i64, i64* %4, align 8
  %46 = call i32 @wait_for_HP(i64 %45)
  br label %47

47:                                               ; preds = %44, %36
  %48 = load i32, i32* @USBPORTSC_CSC, align 4
  %49 = load i32, i32* @USBPORTSC_PEC, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @CLR_RH_PORTSTAT(i32 %50)
  %52 = load i32, i32* @USBPORTSC_PE, align 4
  %53 = call i32 @SET_RH_PORTSTAT(i32 %52)
  br label %54

54:                                               ; preds = %47, %29
  br label %55

55:                                               ; preds = %54, %12
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @USBPORTSC_RD, align 4
  %58 = and i32 %56, %57
  %59 = call i64 @unlikely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %98

61:                                               ; preds = %55
  %62 = load i32, i32* %3, align 4
  %63 = load %struct.uhci_hcd*, %struct.uhci_hcd** %2, align 8
  %64 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %63, i32 0, i32 3
  %65 = call i32 @test_bit(i32 %62, i32* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %84, label %67

67:                                               ; preds = %61
  %68 = load i32, i32* %3, align 4
  %69 = load %struct.uhci_hcd*, %struct.uhci_hcd** %2, align 8
  %70 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %69, i32 0, i32 3
  %71 = call i32 @set_bit(i32 %68, i32* %70)
  %72 = load i64, i64* @jiffies, align 8
  %73 = call i64 @msecs_to_jiffies(i32 25)
  %74 = add nsw i64 %72, %73
  %75 = load %struct.uhci_hcd*, %struct.uhci_hcd** %2, align 8
  %76 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %75, i32 0, i32 2
  store i64 %74, i64* %76, align 8
  %77 = load %struct.uhci_hcd*, %struct.uhci_hcd** %2, align 8
  %78 = call %struct.TYPE_2__* @uhci_to_hcd(%struct.uhci_hcd* %77)
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load %struct.uhci_hcd*, %struct.uhci_hcd** %2, align 8
  %81 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @mod_timer(i32* %79, i64 %82)
  br label %97

84:                                               ; preds = %61
  %85 = load i64, i64* @jiffies, align 8
  %86 = load %struct.uhci_hcd*, %struct.uhci_hcd** %2, align 8
  %87 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = call i64 @time_after_eq(i64 %85, i64 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %84
  %92 = load %struct.uhci_hcd*, %struct.uhci_hcd** %2, align 8
  %93 = load i32, i32* %3, align 4
  %94 = load i64, i64* %4, align 8
  %95 = call i32 @uhci_finish_suspend(%struct.uhci_hcd* %92, i32 %93, i64 %94)
  br label %96

96:                                               ; preds = %91, %84
  br label %97

97:                                               ; preds = %96, %67
  br label %98

98:                                               ; preds = %97, %55
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %3, align 4
  %101 = add i32 %100, 1
  store i32 %101, i32* %3, align 4
  br label %6

102:                                              ; preds = %6
  ret void
}

declare dso_local i32 @inw(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @time_after_eq(i64, i64) #1

declare dso_local i32 @CLR_RH_PORTSTAT(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @wait_for_HP(i64) #1

declare dso_local i32 @SET_RH_PORTSTAT(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local %struct.TYPE_2__* @uhci_to_hcd(%struct.uhci_hcd*) #1

declare dso_local i32 @uhci_finish_suspend(%struct.uhci_hcd*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
