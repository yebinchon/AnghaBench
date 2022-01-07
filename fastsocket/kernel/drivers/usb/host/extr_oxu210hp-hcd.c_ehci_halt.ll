; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_oxu210hp-hcd.c_ehci_halt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_oxu210hp-hcd.c_ehci_halt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxu_hcd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@STS_HALT = common dso_local global i32 0, align 4
@CMD_RUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.oxu_hcd*)* @ehci_halt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehci_halt(%struct.oxu_hcd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.oxu_hcd*, align 8
  %4 = alloca i32, align 4
  store %struct.oxu_hcd* %0, %struct.oxu_hcd** %3, align 8
  %5 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %6 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = call i32 @readl(i32* %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %11 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  %14 = call i32 @writel(i32 0, i32* %13)
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @STS_HALT, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %44

20:                                               ; preds = %1
  %21 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %22 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = call i32 @readl(i32* %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* @CMD_RUN, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %32 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = call i32 @writel(i32 %30, i32* %34)
  %36 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %37 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %38 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* @STS_HALT, align 4
  %42 = load i32, i32* @STS_HALT, align 4
  %43 = call i32 @handshake(%struct.oxu_hcd* %36, i32* %40, i32 %41, i32 %42, i32 2000)
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %20, %19
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @handshake(%struct.oxu_hcd*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
