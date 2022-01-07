; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-sched.c_enable_periodic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-sched.c_enable_periodic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehci_hcd = type { i32, i32, i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@STS_PSS = common dso_local global i32 0, align 4
@CMD_PSE = common dso_local global i32 0, align 4
@HC_STATE_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ehci_hcd*)* @enable_periodic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enable_periodic(%struct.ehci_hcd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ehci_hcd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ehci_hcd* %0, %struct.ehci_hcd** %3, align 8
  %6 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %7 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %6, i32 0, i32 5
  %8 = load i32, i32* %7, align 8
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %7, align 8
  %10 = icmp ne i32 %8, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %70

12:                                               ; preds = %1
  %13 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %14 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %15 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %14, i32 0, i32 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  %18 = load i32, i32* @STS_PSS, align 4
  %19 = call i32 @handshake_on_error_set_halt(%struct.ehci_hcd* %13, i32* %17, i32 %18, i32 0, i32 1125)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %12
  %23 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %24 = call %struct.TYPE_5__* @ehci_to_hcd(%struct.ehci_hcd* %23)
  %25 = call i32 @usb_hc_died(%struct.TYPE_5__* %24)
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %2, align 4
  br label %70

27:                                               ; preds = %12
  %28 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %29 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %30 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %29, i32 0, i32 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = call i32 @ehci_readl(%struct.ehci_hcd* %28, i32* %32)
  %34 = load i32, i32* @CMD_PSE, align 4
  %35 = or i32 %33, %34
  store i32 %35, i32* %4, align 4
  %36 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %39 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %38, i32 0, i32 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = call i32 @ehci_writel(%struct.ehci_hcd* %36, i32 %37, i32* %41)
  %43 = load i32, i32* @HC_STATE_RUNNING, align 4
  %44 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %45 = call %struct.TYPE_5__* @ehci_to_hcd(%struct.ehci_hcd* %44)
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 4
  %47 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %48 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %49 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %48, i32 0, i32 4
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = call i32 @ehci_readl(%struct.ehci_hcd* %47, i32* %51)
  %53 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %54 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 %55, 3
  %57 = srem i32 %52, %56
  %58 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %59 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %61 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %27
  %66 = call i32 (...) @ktime_get_real()
  %67 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %68 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  br label %69

69:                                               ; preds = %65, %27
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %69, %22, %11
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @handshake_on_error_set_halt(%struct.ehci_hcd*, i32*, i32, i32, i32) #1

declare dso_local i32 @usb_hc_died(%struct.TYPE_5__*) #1

declare dso_local %struct.TYPE_5__* @ehci_to_hcd(%struct.ehci_hcd*) #1

declare dso_local i32 @ehci_readl(%struct.ehci_hcd*, i32*) #1

declare dso_local i32 @ehci_writel(%struct.ehci_hcd*, i32, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ktime_get_real(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
