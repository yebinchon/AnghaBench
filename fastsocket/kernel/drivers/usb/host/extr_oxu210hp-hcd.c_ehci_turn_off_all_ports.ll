; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_oxu210hp-hcd.c_ehci_turn_off_all_ports.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_oxu210hp-hcd.c_ehci_turn_off_all_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxu_hcd = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32* }

@PORT_RWC_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oxu_hcd*)* @ehci_turn_off_all_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ehci_turn_off_all_ports(%struct.oxu_hcd* %0) #0 {
  %2 = alloca %struct.oxu_hcd*, align 8
  %3 = alloca i32, align 4
  store %struct.oxu_hcd* %0, %struct.oxu_hcd** %2, align 8
  %4 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %5 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @HCS_N_PORTS(i32 %6)
  store i32 %7, i32* %3, align 4
  br label %8

8:                                                ; preds = %12, %1
  %9 = load i32, i32* %3, align 4
  %10 = add nsw i32 %9, -1
  store i32 %10, i32* %3, align 4
  %11 = icmp ne i32 %9, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %8
  %13 = load i32, i32* @PORT_RWC_BITS, align 4
  %14 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %15 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = call i32 @writel(i32 %13, i32* %21)
  br label %8

23:                                               ; preds = %8
  ret void
}

declare dso_local i32 @HCS_N_PORTS(i32) #1

declare dso_local i32 @writel(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
