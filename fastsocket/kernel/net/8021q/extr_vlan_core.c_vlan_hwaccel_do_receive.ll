; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/8021q/extr_vlan_core.c_vlan_hwaccel_do_receive.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/8021q/extr_vlan_core.c_vlan_hwaccel_do_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, i64, i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.vlan_rx_stats = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, %struct.net_device* }
%struct.TYPE_4__ = type { i32 }

@VLAN_VID_MASK = common dso_local global i32 0, align 4
@PACKET_HOST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlan_hwaccel_do_receive(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.vlan_rx_stats*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %7 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %6, i32 0, i32 4
  %8 = load %struct.net_device*, %struct.net_device** %7, align 8
  store %struct.net_device* %8, %struct.net_device** %4, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 4
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  %12 = call i32 @is_vlan_dev(%struct.net_device* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %1
  %15 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @VLAN_VID_MASK, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 1
  store i32 128, i32* %23, align 4
  br label %24

24:                                               ; preds = %21, %14
  store i32 0, i32* %2, align 4
  br label %90

25:                                               ; preds = %1
  %26 = load %struct.net_device*, %struct.net_device** %4, align 8
  %27 = call %struct.TYPE_3__* @vlan_dev_info(%struct.net_device* %26)
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load %struct.net_device*, %struct.net_device** %28, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 4
  store %struct.net_device* %29, %struct.net_device** %31, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %33 = call i32 @netif_nit_deliver(%struct.sk_buff* %32)
  %34 = load %struct.net_device*, %struct.net_device** %4, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 4
  store %struct.net_device* %34, %struct.net_device** %36, align 8
  %37 = load %struct.net_device*, %struct.net_device** %4, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @vlan_get_ingress_priority(%struct.net_device* %37, i32 %40)
  %42 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 0
  store i32 0, i32* %45, align 8
  %46 = load %struct.net_device*, %struct.net_device** %4, align 8
  %47 = call %struct.TYPE_3__* @vlan_dev_info(%struct.net_device* %46)
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 (...) @smp_processor_id()
  %51 = call %struct.vlan_rx_stats* @per_cpu_ptr(i32 %49, i32 %50)
  store %struct.vlan_rx_stats* %51, %struct.vlan_rx_stats** %5, align 8
  %52 = load %struct.vlan_rx_stats*, %struct.vlan_rx_stats** %5, align 8
  %53 = getelementptr inbounds %struct.vlan_rx_stats, %struct.vlan_rx_stats* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 4
  %56 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.vlan_rx_stats*, %struct.vlan_rx_stats** %5, align 8
  %60 = getelementptr inbounds %struct.vlan_rx_stats, %struct.vlan_rx_stats* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %62, %58
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %60, align 4
  %65 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  switch i32 %67, label %89 [
    i32 130, label %68
    i32 129, label %69
    i32 128, label %74
  ]

68:                                               ; preds = %25
  br label %89

69:                                               ; preds = %25
  %70 = load %struct.vlan_rx_stats*, %struct.vlan_rx_stats** %5, align 8
  %71 = getelementptr inbounds %struct.vlan_rx_stats, %struct.vlan_rx_stats* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  br label %89

74:                                               ; preds = %25
  %75 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %76 = call %struct.TYPE_4__* @eth_hdr(%struct.sk_buff* %75)
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.net_device*, %struct.net_device** %4, align 8
  %80 = getelementptr inbounds %struct.net_device, %struct.net_device* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @compare_ether_addr(i32 %78, i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %74
  %85 = load i32, i32* @PACKET_HOST, align 4
  %86 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %87 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  br label %88

88:                                               ; preds = %84, %74
  br label %89

89:                                               ; preds = %25, %88, %69, %68
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %89, %24
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @is_vlan_dev(%struct.net_device*) #1

declare dso_local %struct.TYPE_3__* @vlan_dev_info(%struct.net_device*) #1

declare dso_local i32 @netif_nit_deliver(%struct.sk_buff*) #1

declare dso_local i32 @vlan_get_ingress_priority(%struct.net_device*, i32) #1

declare dso_local %struct.vlan_rx_stats* @per_cpu_ptr(i32, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @compare_ether_addr(i32, i32) #1

declare dso_local %struct.TYPE_4__* @eth_hdr(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
