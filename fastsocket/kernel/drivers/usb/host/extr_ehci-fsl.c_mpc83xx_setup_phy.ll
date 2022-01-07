; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-fsl.c_mpc83xx_setup_phy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-fsl.c_mpc83xx_setup_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehci_hcd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@PORT_PTS_ULPI = common dso_local global i32 0, align 4
@PORT_PTS_SERIAL = common dso_local global i32 0, align 4
@PORT_PTS_PTW = common dso_local global i32 0, align 4
@PORT_PTS_UTMI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ehci_hcd*, i32, i32)* @mpc83xx_setup_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpc83xx_setup_phy(%struct.ehci_hcd* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ehci_hcd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ehci_hcd* %0, %struct.ehci_hcd** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %26 [
    i32 130, label %9
    i32 131, label %13
    i32 128, label %17
    i32 129, label %21
    i32 132, label %25
  ]

9:                                                ; preds = %3
  %10 = load i32, i32* @PORT_PTS_ULPI, align 4
  %11 = load i32, i32* %7, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %7, align 4
  br label %26

13:                                               ; preds = %3
  %14 = load i32, i32* @PORT_PTS_SERIAL, align 4
  %15 = load i32, i32* %7, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %7, align 4
  br label %26

17:                                               ; preds = %3
  %18 = load i32, i32* @PORT_PTS_PTW, align 4
  %19 = load i32, i32* %7, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %7, align 4
  br label %21

21:                                               ; preds = %3, %17
  %22 = load i32, i32* @PORT_PTS_UTMI, align 4
  %23 = load i32, i32* %7, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %7, align 4
  br label %26

25:                                               ; preds = %3
  br label %26

26:                                               ; preds = %3, %25, %21, %13, %9
  %27 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %30 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = call i32 @ehci_writel(%struct.ehci_hcd* %27, i32 %28, i32* %36)
  ret void
}

declare dso_local i32 @ehci_writel(%struct.ehci_hcd*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
