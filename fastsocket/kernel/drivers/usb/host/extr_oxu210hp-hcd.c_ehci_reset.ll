; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_oxu210hp-hcd.c_ehci_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_oxu210hp-hcd.c_ehci_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxu_hcd = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@CMD_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@HC_STATE_HALT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.oxu_hcd*)* @ehci_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehci_reset(%struct.oxu_hcd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.oxu_hcd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.oxu_hcd* %0, %struct.oxu_hcd** %3, align 8
  %6 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %7 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = call i32 @readl(i32* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @CMD_RESET, align 4
  %12 = load i32, i32* %5, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %5, align 4
  %14 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @dbg_cmd(%struct.oxu_hcd* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %19 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = call i32 @writel(i32 %17, i32* %21)
  %23 = load i32, i32* @HC_STATE_HALT, align 4
  %24 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %25 = call %struct.TYPE_4__* @oxu_to_hcd(%struct.oxu_hcd* %24)
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 4
  %27 = load i32, i32* @jiffies, align 4
  %28 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %29 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  %30 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %31 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %32 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* @CMD_RESET, align 4
  %36 = call i32 @handshake(%struct.oxu_hcd* %30, i32* %34, i32 %35, i32 0, i32 250000)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %1
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %45

41:                                               ; preds = %1
  %42 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %43 = call i32 @tdi_reset(%struct.oxu_hcd* %42)
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %41, %39
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @dbg_cmd(%struct.oxu_hcd*, i8*, i32) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local %struct.TYPE_4__* @oxu_to_hcd(%struct.oxu_hcd*) #1

declare dso_local i32 @handshake(%struct.oxu_hcd*, i32*, i32, i32, i32) #1

declare dso_local i32 @tdi_reset(%struct.oxu_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
