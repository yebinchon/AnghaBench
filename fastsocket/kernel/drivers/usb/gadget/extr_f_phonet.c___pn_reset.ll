; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_f_phonet.c___pn_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_f_phonet.c___pn_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_function = type { i32 }
%struct.f_phonet = type { %struct.TYPE_2__, i32, i32, %struct.net_device* }
%struct.TYPE_2__ = type { i32* }
%struct.net_device = type { i32 }
%struct.phonet_port = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_function*)* @__pn_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__pn_reset(%struct.usb_function* %0) #0 {
  %2 = alloca %struct.usb_function*, align 8
  %3 = alloca %struct.f_phonet*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.phonet_port*, align 8
  store %struct.usb_function* %0, %struct.usb_function** %2, align 8
  %6 = load %struct.usb_function*, %struct.usb_function** %2, align 8
  %7 = call %struct.f_phonet* @func_to_pn(%struct.usb_function* %6)
  store %struct.f_phonet* %7, %struct.f_phonet** %3, align 8
  %8 = load %struct.f_phonet*, %struct.f_phonet** %3, align 8
  %9 = getelementptr inbounds %struct.f_phonet, %struct.f_phonet* %8, i32 0, i32 3
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %4, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.phonet_port* @netdev_priv(%struct.net_device* %11)
  store %struct.phonet_port* %12, %struct.phonet_port** %5, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call i32 @netif_carrier_off(%struct.net_device* %13)
  %15 = load %struct.phonet_port*, %struct.phonet_port** %5, align 8
  %16 = getelementptr inbounds %struct.phonet_port, %struct.phonet_port* %15, i32 0, i32 0
  store i32* null, i32** %16, align 8
  %17 = load %struct.f_phonet*, %struct.f_phonet** %3, align 8
  %18 = getelementptr inbounds %struct.f_phonet, %struct.f_phonet* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @usb_ep_disable(i32 %19)
  %21 = load %struct.f_phonet*, %struct.f_phonet** %3, align 8
  %22 = getelementptr inbounds %struct.f_phonet, %struct.f_phonet* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @usb_ep_disable(i32 %23)
  %25 = load %struct.f_phonet*, %struct.f_phonet** %3, align 8
  %26 = getelementptr inbounds %struct.f_phonet, %struct.f_phonet* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %1
  %31 = load %struct.f_phonet*, %struct.f_phonet** %3, align 8
  %32 = getelementptr inbounds %struct.f_phonet, %struct.f_phonet* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @dev_kfree_skb_irq(i32* %34)
  %36 = load %struct.f_phonet*, %struct.f_phonet** %3, align 8
  %37 = getelementptr inbounds %struct.f_phonet, %struct.f_phonet* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32* null, i32** %38, align 8
  br label %39

39:                                               ; preds = %30, %1
  ret void
}

declare dso_local %struct.f_phonet* @func_to_pn(%struct.usb_function*) #1

declare dso_local %struct.phonet_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @usb_ep_disable(i32) #1

declare dso_local i32 @dev_kfree_skb_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
