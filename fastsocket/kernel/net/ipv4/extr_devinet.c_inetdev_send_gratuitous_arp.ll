; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_devinet.c_inetdev_send_gratuitous_arp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_devinet.c_inetdev_send_gratuitous_arp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.in_device = type { %struct.in_ifaddr* }
%struct.in_ifaddr = type { i32, %struct.in_ifaddr* }

@ARPOP_REQUEST = common dso_local global i32 0, align 4
@ETH_P_ARP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.in_device*)* @inetdev_send_gratuitous_arp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @inetdev_send_gratuitous_arp(%struct.net_device* %0, %struct.in_device* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.in_device*, align 8
  %5 = alloca %struct.in_ifaddr*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.in_device* %1, %struct.in_device** %4, align 8
  %6 = load %struct.in_device*, %struct.in_device** %4, align 8
  %7 = getelementptr inbounds %struct.in_device, %struct.in_device* %6, i32 0, i32 0
  %8 = load %struct.in_ifaddr*, %struct.in_ifaddr** %7, align 8
  store %struct.in_ifaddr* %8, %struct.in_ifaddr** %5, align 8
  br label %9

9:                                                ; preds = %26, %2
  %10 = load %struct.in_ifaddr*, %struct.in_ifaddr** %5, align 8
  %11 = icmp ne %struct.in_ifaddr* %10, null
  br i1 %11, label %12, label %30

12:                                               ; preds = %9
  %13 = load i32, i32* @ARPOP_REQUEST, align 4
  %14 = load i32, i32* @ETH_P_ARP, align 4
  %15 = load %struct.in_ifaddr*, %struct.in_ifaddr** %5, align 8
  %16 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.net_device*, %struct.net_device** %3, align 8
  %19 = load %struct.in_ifaddr*, %struct.in_ifaddr** %5, align 8
  %20 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.net_device*, %struct.net_device** %3, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @arp_send(i32 %13, i32 %14, i32 %17, %struct.net_device* %18, i32 %21, i32* null, i32 %24, i32* null)
  br label %26

26:                                               ; preds = %12
  %27 = load %struct.in_ifaddr*, %struct.in_ifaddr** %5, align 8
  %28 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %27, i32 0, i32 1
  %29 = load %struct.in_ifaddr*, %struct.in_ifaddr** %28, align 8
  store %struct.in_ifaddr* %29, %struct.in_ifaddr** %5, align 8
  br label %9

30:                                               ; preds = %9
  ret void
}

declare dso_local i32 @arp_send(i32, i32, i32, %struct.net_device*, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
