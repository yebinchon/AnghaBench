; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ieee802154/extr_af_ieee802154.c_ieee802154_rcv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ieee802154/extr_af_ieee802154.c_ieee802154_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32, i32 }
%struct.packet_type = type { i32 }
%struct.net_device = type { i64 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"got frame, type %d, dev %p\0A\00", align 1
@init_net = common dso_local global i32 0, align 4
@ARPHRD_IEEE802154 = common dso_local global i64 0, align 8
@PACKET_OTHERHOST = common dso_local global i64 0, align 8
@NET_RX_DROP = common dso_local global i32 0, align 4
@DUMP_PREFIX_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, %struct.packet_type*, %struct.net_device*)* @ieee802154_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee802154_rcv(%struct.sk_buff* %0, %struct.net_device* %1, %struct.packet_type* %2, %struct.net_device* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.packet_type*, align 8
  %9 = alloca %struct.net_device*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store %struct.packet_type* %2, %struct.packet_type** %8, align 8
  store %struct.net_device* %3, %struct.net_device** %9, align 8
  %10 = load %struct.net_device*, %struct.net_device** %7, align 8
  %11 = call i32 @netif_running(%struct.net_device* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %4
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %5, align 4
  br label %52

16:                                               ; preds = %4
  %17 = load %struct.net_device*, %struct.net_device** %7, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.net_device*, %struct.net_device** %7, align 8
  %21 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %19, %struct.net_device* %20)
  %22 = load %struct.net_device*, %struct.net_device** %7, align 8
  %23 = call i32 @dev_net(%struct.net_device* %22)
  %24 = call i32 @net_eq(i32 %23, i32* @init_net)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %16
  br label %48

27:                                               ; preds = %16
  %28 = load %struct.net_device*, %struct.net_device** %7, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %30 = call i32 @ieee802154_raw_deliver(%struct.net_device* %28, %struct.sk_buff* %29)
  %31 = load %struct.net_device*, %struct.net_device** %7, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ARPHRD_IEEE802154, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %48

37:                                               ; preds = %27
  %38 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @PACKET_OTHERHOST, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load %struct.net_device*, %struct.net_device** %7, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %46 = call i32 @ieee802154_dgram_deliver(%struct.net_device* %44, %struct.sk_buff* %45)
  store i32 %46, i32* %5, align 4
  br label %52

47:                                               ; preds = %37
  br label %48

48:                                               ; preds = %47, %36, %26
  %49 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %50 = call i32 @kfree_skb(%struct.sk_buff* %49)
  %51 = load i32, i32* @NET_RX_DROP, align 4
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %48, %43, %13
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @pr_debug(i8*, i64, %struct.net_device*) #1

declare dso_local i32 @net_eq(i32, i32*) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i32 @ieee802154_raw_deliver(%struct.net_device*, %struct.sk_buff*) #1

declare dso_local i32 @ieee802154_dgram_deliver(%struct.net_device*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
