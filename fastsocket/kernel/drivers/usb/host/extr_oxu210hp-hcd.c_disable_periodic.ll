; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_oxu210hp-hcd.c_disable_periodic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_oxu210hp-hcd.c_disable_periodic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxu_hcd = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@STS_PSS = common dso_local global i32 0, align 4
@HC_STATE_HALT = common dso_local global i32 0, align 4
@CMD_PSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.oxu_hcd*)* @disable_periodic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @disable_periodic(%struct.oxu_hcd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.oxu_hcd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.oxu_hcd* %0, %struct.oxu_hcd** %3, align 8
  %6 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %7 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %8 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load i32, i32* @STS_PSS, align 4
  %12 = load i32, i32* @STS_PSS, align 4
  %13 = call i32 @handshake(%struct.oxu_hcd* %6, i32* %10, i32 %11, i32 %12, i32 1125)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %1
  %17 = load i32, i32* @HC_STATE_HALT, align 4
  %18 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %19 = call %struct.TYPE_5__* @oxu_to_hcd(%struct.oxu_hcd* %18)
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 4
  %21 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %22 = call %struct.TYPE_5__* @oxu_to_hcd(%struct.oxu_hcd* %21)
  %23 = call i32 @usb_hc_died(%struct.TYPE_5__* %22)
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %42

25:                                               ; preds = %1
  %26 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %27 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = call i32 @readl(i32* %29)
  %31 = load i32, i32* @CMD_PSE, align 4
  %32 = xor i32 %31, -1
  %33 = and i32 %30, %32
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %36 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = call i32 @writel(i32 %34, i32* %38)
  %40 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %41 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %40, i32 0, i32 0
  store i32 -1, i32* %41, align 8
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %25, %16
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @handshake(%struct.oxu_hcd*, i32*, i32, i32, i32) #1

declare dso_local %struct.TYPE_5__* @oxu_to_hcd(%struct.oxu_hcd*) #1

declare dso_local i32 @usb_hc_died(%struct.TYPE_5__*) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @writel(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
