; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_netpoll.c_netpoll_send_skb_on_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_netpoll.c_netpoll_send_skb_on_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netpoll = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.net_device = type { i32, i32, %struct.net_device_ops* }
%struct.net_device_ops = type { i32 (%struct.sk_buff*, %struct.net_device.0*)* }
%struct.net_device.0 = type opaque
%struct.netpoll_info = type { i32, i32 }
%struct.netdev_queue = type { i32 }

@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@USEC_PER_POLL = common dso_local global i64 0, align 8
@IFF_IN_NETPOLL = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"netpoll_send_skb_on_dev(): %s enabled interrupts in poll (%pF)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @netpoll_send_skb_on_dev(%struct.netpoll* %0, %struct.sk_buff* %1, %struct.net_device* %2) #0 {
  %4 = alloca %struct.netpoll*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.net_device_ops*, align 8
  %10 = alloca %struct.netpoll_info*, align 8
  %11 = alloca %struct.netdev_queue*, align 8
  store %struct.netpoll* %0, %struct.netpoll** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.net_device* %2, %struct.net_device** %6, align 8
  %12 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %12, i32* %7, align 4
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 2
  %15 = load %struct.net_device_ops*, %struct.net_device_ops** %14, align 8
  store %struct.net_device_ops* %15, %struct.net_device_ops** %9, align 8
  %16 = call i32 (...) @irqs_disabled()
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @WARN_ON_ONCE(i32 %19)
  %21 = load %struct.netpoll*, %struct.netpoll** %4, align 8
  %22 = getelementptr inbounds %struct.netpoll, %struct.netpoll* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.netpoll_info* @rcu_dereference_bh(i32 %25)
  store %struct.netpoll_info* %26, %struct.netpoll_info** %10, align 8
  %27 = load %struct.netpoll_info*, %struct.netpoll_info** %10, align 8
  %28 = icmp ne %struct.netpoll_info* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %3
  %30 = load %struct.net_device*, %struct.net_device** %6, align 8
  %31 = call i32 @netif_running(%struct.net_device* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load %struct.net_device*, %struct.net_device** %6, align 8
  %35 = call i32 @netif_device_present(%struct.net_device* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %33, %29, %3
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = call i32 @__kfree_skb(%struct.sk_buff* %38)
  br label %134

40:                                               ; preds = %33
  %41 = load %struct.netpoll_info*, %struct.netpoll_info** %10, align 8
  %42 = getelementptr inbounds %struct.netpoll_info, %struct.netpoll_info* %41, i32 0, i32 1
  %43 = call i64 @skb_queue_len(i32* %42)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %122

45:                                               ; preds = %40
  %46 = load %struct.net_device*, %struct.net_device** %6, align 8
  %47 = call i32 @netpoll_owner_active(%struct.net_device* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %122, label %49

49:                                               ; preds = %45
  %50 = load %struct.net_device*, %struct.net_device** %6, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %52 = call %struct.netdev_queue* @netdev_pick_tx(%struct.net_device* %50, %struct.sk_buff* %51)
  store %struct.netdev_queue* %52, %struct.netdev_queue** %11, align 8
  %53 = call i64 @jiffies_to_usecs(i32 1)
  %54 = load i64, i64* @USEC_PER_POLL, align 8
  %55 = udiv i64 %53, %54
  store i64 %55, i64* %8, align 8
  br label %56

56:                                               ; preds = %106, %49
  %57 = load i64, i64* %8, align 8
  %58 = icmp ugt i64 %57, 0
  br i1 %58, label %59, label %109

59:                                               ; preds = %56
  %60 = load %struct.netdev_queue*, %struct.netdev_queue** %11, align 8
  %61 = call i64 @__netif_tx_trylock(%struct.netdev_queue* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %101

63:                                               ; preds = %59
  %64 = load %struct.netdev_queue*, %struct.netdev_queue** %11, align 8
  %65 = call i32 @netif_tx_queue_stopped(%struct.netdev_queue* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %93, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* @IFF_IN_NETPOLL, align 4
  %69 = load %struct.net_device*, %struct.net_device** %6, align 8
  %70 = getelementptr inbounds %struct.net_device, %struct.net_device* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 4
  %73 = load %struct.net_device_ops*, %struct.net_device_ops** %9, align 8
  %74 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %73, i32 0, i32 0
  %75 = load i32 (%struct.sk_buff*, %struct.net_device.0*)*, i32 (%struct.sk_buff*, %struct.net_device.0*)** %74, align 8
  %76 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %77 = load %struct.net_device*, %struct.net_device** %6, align 8
  %78 = bitcast %struct.net_device* %77 to %struct.net_device.0*
  %79 = call i32 %75(%struct.sk_buff* %76, %struct.net_device.0* %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* @IFF_IN_NETPOLL, align 4
  %81 = xor i32 %80, -1
  %82 = load %struct.net_device*, %struct.net_device** %6, align 8
  %83 = getelementptr inbounds %struct.net_device, %struct.net_device* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, %81
  store i32 %85, i32* %83, align 4
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @NETDEV_TX_OK, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %67
  %90 = load %struct.netdev_queue*, %struct.netdev_queue** %11, align 8
  %91 = call i32 @txq_trans_update(%struct.netdev_queue* %90)
  br label %92

92:                                               ; preds = %89, %67
  br label %93

93:                                               ; preds = %92, %63
  %94 = load %struct.netdev_queue*, %struct.netdev_queue** %11, align 8
  %95 = call i32 @__netif_tx_unlock(%struct.netdev_queue* %94)
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* @NETDEV_TX_OK, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  br label %109

100:                                              ; preds = %93
  br label %101

101:                                              ; preds = %100, %59
  %102 = load %struct.netpoll*, %struct.netpoll** %4, align 8
  %103 = call i32 @netpoll_poll(%struct.netpoll* %102)
  %104 = load i64, i64* @USEC_PER_POLL, align 8
  %105 = call i32 @udelay(i64 %104)
  br label %106

106:                                              ; preds = %101
  %107 = load i64, i64* %8, align 8
  %108 = add i64 %107, -1
  store i64 %108, i64* %8, align 8
  br label %56

109:                                              ; preds = %99, %56
  %110 = call i32 (...) @irqs_disabled()
  %111 = icmp ne i32 %110, 0
  %112 = xor i1 %111, true
  %113 = zext i1 %112 to i32
  %114 = load %struct.net_device*, %struct.net_device** %6, align 8
  %115 = getelementptr inbounds %struct.net_device, %struct.net_device* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.net_device_ops*, %struct.net_device_ops** %9, align 8
  %118 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %117, i32 0, i32 0
  %119 = load i32 (%struct.sk_buff*, %struct.net_device.0*)*, i32 (%struct.sk_buff*, %struct.net_device.0*)** %118, align 8
  %120 = bitcast i32 (%struct.sk_buff*, %struct.net_device.0*)* %119 to i32 (%struct.sk_buff*, %struct.net_device*)*
  %121 = call i32 @WARN_ONCE(i32 %113, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %116, i32 (%struct.sk_buff*, %struct.net_device*)* %120)
  br label %122

122:                                              ; preds = %109, %45, %40
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* @NETDEV_TX_OK, align 4
  %125 = icmp ne i32 %123, %124
  br i1 %125, label %126, label %134

126:                                              ; preds = %122
  %127 = load %struct.netpoll_info*, %struct.netpoll_info** %10, align 8
  %128 = getelementptr inbounds %struct.netpoll_info, %struct.netpoll_info* %127, i32 0, i32 1
  %129 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %130 = call i32 @skb_queue_tail(i32* %128, %struct.sk_buff* %129)
  %131 = load %struct.netpoll_info*, %struct.netpoll_info** %10, align 8
  %132 = getelementptr inbounds %struct.netpoll_info, %struct.netpoll_info* %131, i32 0, i32 0
  %133 = call i32 @schedule_delayed_work(i32* %132, i32 0)
  br label %134

134:                                              ; preds = %37, %126, %122
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @irqs_disabled(...) #1

declare dso_local %struct.netpoll_info* @rcu_dereference_bh(i32) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @netif_device_present(%struct.net_device*) #1

declare dso_local i32 @__kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local i32 @netpoll_owner_active(%struct.net_device*) #1

declare dso_local %struct.netdev_queue* @netdev_pick_tx(%struct.net_device*, %struct.sk_buff*) #1

declare dso_local i64 @jiffies_to_usecs(i32) #1

declare dso_local i64 @__netif_tx_trylock(%struct.netdev_queue*) #1

declare dso_local i32 @netif_tx_queue_stopped(%struct.netdev_queue*) #1

declare dso_local i32 @txq_trans_update(%struct.netdev_queue*) #1

declare dso_local i32 @__netif_tx_unlock(%struct.netdev_queue*) #1

declare dso_local i32 @netpoll_poll(%struct.netpoll*) #1

declare dso_local i32 @udelay(i64) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32, i32 (%struct.sk_buff*, %struct.net_device*)*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
