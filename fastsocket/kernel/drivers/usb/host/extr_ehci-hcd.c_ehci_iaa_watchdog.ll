; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-hcd.c_ehci_iaa_watchdog.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-hcd.c_ehci_iaa_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehci_hcd = type { i32, %struct.TYPE_5__*, %struct.TYPE_4__, i32, i64 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@CMD_IAAD = common dso_local global i32 0, align 4
@STS_IAA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"IAA watchdog: status %x cmd %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @ehci_iaa_watchdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ehci_iaa_watchdog(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ehci_hcd*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = inttoptr i64 %7 to %struct.ehci_hcd*
  store %struct.ehci_hcd* %8, %struct.ehci_hcd** %3, align 8
  %9 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %10 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %9, i32 0, i32 0
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %14 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %87

17:                                               ; preds = %1
  %18 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %19 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %18, i32 0, i32 3
  %20 = call i32 @timer_pending(i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %87, label %22

22:                                               ; preds = %17
  %23 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %24 = call %struct.TYPE_6__* @ehci_to_hcd(%struct.ehci_hcd* %23)
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @HC_IS_RUNNING(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %87

29:                                               ; preds = %22
  %30 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %31 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %32 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %31, i32 0, i32 1
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = call i32 @ehci_readl(%struct.ehci_hcd* %30, i32* %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @CMD_IAAD, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %29
  %41 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @CMD_IAAD, align 4
  %44 = xor i32 %43, -1
  %45 = and i32 %42, %44
  %46 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %47 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %46, i32 0, i32 1
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = call i32 @ehci_writel(%struct.ehci_hcd* %41, i32 %45, i32* %49)
  br label %51

51:                                               ; preds = %40, %29
  %52 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %53 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %54 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %53, i32 0, i32 1
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = call i32 @ehci_readl(%struct.ehci_hcd* %52, i32* %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @STS_IAA, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %51
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @CMD_IAAD, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %80, label %67

67:                                               ; preds = %62, %51
  %68 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %69 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @COUNT(i32 %71)
  %73 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %74 = load i32, i32* @STS_IAA, align 4
  %75 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %76 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %75, i32 0, i32 1
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = call i32 @ehci_writel(%struct.ehci_hcd* %73, i32 %74, i32* %78)
  br label %80

80:                                               ; preds = %67, %62
  %81 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @ehci_vdbg(%struct.ehci_hcd* %81, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %82, i32 %83)
  %85 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %86 = call i32 @end_unlink_async(%struct.ehci_hcd* %85)
  br label %87

87:                                               ; preds = %80, %22, %17, %1
  %88 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %89 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %88, i32 0, i32 0
  %90 = load i64, i64* %4, align 8
  %91 = call i32 @spin_unlock_irqrestore(i32* %89, i64 %90)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @timer_pending(i32*) #1

declare dso_local i64 @HC_IS_RUNNING(i32) #1

declare dso_local %struct.TYPE_6__* @ehci_to_hcd(%struct.ehci_hcd*) #1

declare dso_local i32 @ehci_readl(%struct.ehci_hcd*, i32*) #1

declare dso_local i32 @ehci_writel(%struct.ehci_hcd*, i32, i32*) #1

declare dso_local i32 @COUNT(i32) #1

declare dso_local i32 @ehci_vdbg(%struct.ehci_hcd*, i8*, i32, i32) #1

declare dso_local i32 @end_unlink_async(%struct.ehci_hcd*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
