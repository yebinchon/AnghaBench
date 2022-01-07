; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-sched.c_disable_periodic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-sched.c_disable_periodic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehci_hcd = type { i32, i32, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@STS_PSS = common dso_local global i32 0, align 4
@CMD_PSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ehci_hcd*)* @disable_periodic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @disable_periodic(%struct.ehci_hcd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ehci_hcd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.ehci_hcd* %0, %struct.ehci_hcd** %3, align 8
  %9 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %10 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %11, -1
  store i64 %12, i64* %10, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %74

15:                                               ; preds = %1
  %16 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %17 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %15
  %22 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %23 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @ktime_add_us(i32 %24, i32 1000)
  store i32 %25, i32* %6, align 4
  %26 = call i32 (...) @ktime_get_real()
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i64 @ktime_us_delta(i32 %27, i32 %28)
  store i64 %29, i64* %8, align 8
  %30 = load i64, i64* %8, align 8
  %31 = icmp sgt i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %21
  %36 = load i64, i64* %8, align 8
  %37 = call i32 @udelay(i64 %36)
  br label %38

38:                                               ; preds = %35, %21
  br label %39

39:                                               ; preds = %38, %15
  %40 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %41 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %42 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %41, i32 0, i32 2
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* @STS_PSS, align 4
  %46 = load i32, i32* @STS_PSS, align 4
  %47 = call i32 @handshake_on_error_set_halt(%struct.ehci_hcd* %40, i32* %44, i32 %45, i32 %46, i32 1125)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %39
  %51 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %52 = call i32 @ehci_to_hcd(%struct.ehci_hcd* %51)
  %53 = call i32 @usb_hc_died(i32 %52)
  %54 = load i32, i32* %5, align 4
  store i32 %54, i32* %2, align 4
  br label %74

55:                                               ; preds = %39
  %56 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %57 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %58 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %57, i32 0, i32 2
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = call i32 @ehci_readl(%struct.ehci_hcd* %56, i32* %60)
  %62 = load i32, i32* @CMD_PSE, align 4
  %63 = xor i32 %62, -1
  %64 = and i32 %61, %63
  store i32 %64, i32* %4, align 4
  %65 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %66 = load i32, i32* %4, align 4
  %67 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %68 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %67, i32 0, i32 2
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = call i32 @ehci_writel(%struct.ehci_hcd* %65, i32 %66, i32* %70)
  %72 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %73 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %72, i32 0, i32 1
  store i32 -1, i32* %73, align 4
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %55, %50, %14
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ktime_add_us(i32, i32) #1

declare dso_local i32 @ktime_get_real(...) #1

declare dso_local i64 @ktime_us_delta(i32, i32) #1

declare dso_local i32 @udelay(i64) #1

declare dso_local i32 @handshake_on_error_set_halt(%struct.ehci_hcd*, i32*, i32, i32, i32) #1

declare dso_local i32 @usb_hc_died(i32) #1

declare dso_local i32 @ehci_to_hcd(%struct.ehci_hcd*) #1

declare dso_local i32 @ehci_readl(%struct.ehci_hcd*, i32*) #1

declare dso_local i32 @ehci_writel(%struct.ehci_hcd*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
