; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_teql.c_teql_master_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_teql.c_teql_master_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { %struct.TYPE_2__, %struct.net_device_ops* }
%struct.TYPE_2__ = type { i32 }
%struct.net_device_ops = type { i32 (%struct.sk_buff*, %struct.net_device.0*)* }
%struct.net_device.0 = type opaque
%struct.teql_master = type { %struct.Qdisc* }
%struct.Qdisc = type { i32 }
%struct.netdev_queue = type { i32, i32, i32, %struct.Qdisc* }

@NETDEV_TX_OK = common dso_local global i32 0, align 4
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @teql_master_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @teql_master_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.teql_master*, align 8
  %7 = alloca %struct.netdev_queue*, align 8
  %8 = alloca %struct.Qdisc*, align 8
  %9 = alloca %struct.Qdisc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca %struct.net_device*, align 8
  %15 = alloca %struct.netdev_queue*, align 8
  %16 = alloca %struct.net_device_ops*, align 8
  %17 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %18 = load %struct.net_device*, %struct.net_device** %5, align 8
  %19 = call %struct.teql_master* @netdev_priv(%struct.net_device* %18)
  store %struct.teql_master* %19, %struct.teql_master** %6, align 8
  %20 = load %struct.net_device*, %struct.net_device** %5, align 8
  %21 = call %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device* %20, i32 0)
  store %struct.netdev_queue* %21, %struct.netdev_queue** %7, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = call i32 @skb_get_queue_mapping(%struct.sk_buff* %22)
  store i32 %23, i32* %12, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %13, align 8
  %24 = load %struct.teql_master*, %struct.teql_master** %6, align 8
  %25 = getelementptr inbounds %struct.teql_master, %struct.teql_master* %24, i32 0, i32 0
  %26 = load %struct.Qdisc*, %struct.Qdisc** %25, align 8
  store %struct.Qdisc* %26, %struct.Qdisc** %8, align 8
  br label %27

27:                                               ; preds = %141, %2
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  %28 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  store %struct.Qdisc* %28, %struct.Qdisc** %9, align 8
  %29 = icmp eq %struct.Qdisc* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  br label %156

31:                                               ; preds = %27
  br label %32

32:                                               ; preds = %129, %31
  %33 = load %struct.Qdisc*, %struct.Qdisc** %9, align 8
  %34 = call %struct.net_device* @qdisc_dev(%struct.Qdisc* %33)
  store %struct.net_device* %34, %struct.net_device** %14, align 8
  %35 = load %struct.net_device*, %struct.net_device** %14, align 8
  %36 = call %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device* %35, i32 0)
  store %struct.netdev_queue* %36, %struct.netdev_queue** %15, align 8
  %37 = load %struct.net_device*, %struct.net_device** %14, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 1
  %39 = load %struct.net_device_ops*, %struct.net_device_ops** %38, align 8
  store %struct.net_device_ops* %39, %struct.net_device_ops** %16, align 8
  %40 = load %struct.netdev_queue*, %struct.netdev_queue** %15, align 8
  %41 = getelementptr inbounds %struct.netdev_queue, %struct.netdev_queue* %40, i32 0, i32 3
  %42 = load %struct.Qdisc*, %struct.Qdisc** %41, align 8
  %43 = load %struct.Qdisc*, %struct.Qdisc** %9, align 8
  %44 = icmp ne %struct.Qdisc* %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %32
  br label %129

46:                                               ; preds = %32
  %47 = load %struct.net_device*, %struct.net_device** %14, align 8
  %48 = load i32, i32* %12, align 4
  %49 = call i64 @__netif_subqueue_stopped(%struct.net_device* %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %46
  %52 = load %struct.net_device*, %struct.net_device** %14, align 8
  %53 = call i32 @netif_running(%struct.net_device* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %51, %46
  store i32 1, i32* %10, align 4
  br label %129

56:                                               ; preds = %51
  %57 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %59 = load %struct.net_device*, %struct.net_device** %14, align 8
  %60 = call i32 @teql_resolve(%struct.sk_buff* %57, %struct.sk_buff* %58, %struct.net_device* %59)
  switch i32 %60, label %123 [
    i32 0, label %61
    i32 1, label %116
  ]

61:                                               ; preds = %56
  %62 = load %struct.netdev_queue*, %struct.netdev_queue** %15, align 8
  %63 = call i32 @__netif_tx_trylock(%struct.netdev_queue* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %110

65:                                               ; preds = %61
  %66 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %67 = call i32 @qdisc_pkt_len(%struct.sk_buff* %66)
  store i32 %67, i32* %17, align 4
  %68 = load %struct.netdev_queue*, %struct.netdev_queue** %15, align 8
  %69 = call i32 @netif_tx_queue_stopped(%struct.netdev_queue* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %107, label %71

71:                                               ; preds = %65
  %72 = load %struct.netdev_queue*, %struct.netdev_queue** %15, align 8
  %73 = call i32 @netif_tx_queue_frozen(%struct.netdev_queue* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %107, label %75

75:                                               ; preds = %71
  %76 = load %struct.net_device_ops*, %struct.net_device_ops** %16, align 8
  %77 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %76, i32 0, i32 0
  %78 = load i32 (%struct.sk_buff*, %struct.net_device.0*)*, i32 (%struct.sk_buff*, %struct.net_device.0*)** %77, align 8
  %79 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %80 = load %struct.net_device*, %struct.net_device** %14, align 8
  %81 = bitcast %struct.net_device* %80 to %struct.net_device.0*
  %82 = call i32 %78(%struct.sk_buff* %79, %struct.net_device.0* %81)
  %83 = load i32, i32* @NETDEV_TX_OK, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %107

85:                                               ; preds = %75
  %86 = load %struct.netdev_queue*, %struct.netdev_queue** %15, align 8
  %87 = call i32 @txq_trans_update(%struct.netdev_queue* %86)
  %88 = load %struct.netdev_queue*, %struct.netdev_queue** %15, align 8
  %89 = call i32 @__netif_tx_unlock(%struct.netdev_queue* %88)
  %90 = load %struct.Qdisc*, %struct.Qdisc** %9, align 8
  %91 = call i8* @NEXT_SLAVE(%struct.Qdisc* %90)
  %92 = bitcast i8* %91 to %struct.Qdisc*
  %93 = load %struct.teql_master*, %struct.teql_master** %6, align 8
  %94 = getelementptr inbounds %struct.teql_master, %struct.teql_master* %93, i32 0, i32 0
  store %struct.Qdisc* %92, %struct.Qdisc** %94, align 8
  %95 = load %struct.net_device*, %struct.net_device** %5, align 8
  %96 = call i32 @netif_wake_queue(%struct.net_device* %95)
  %97 = load %struct.netdev_queue*, %struct.netdev_queue** %7, align 8
  %98 = getelementptr inbounds %struct.netdev_queue, %struct.netdev_queue* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 8
  %101 = load i32, i32* %17, align 4
  %102 = load %struct.netdev_queue*, %struct.netdev_queue** %7, align 8
  %103 = getelementptr inbounds %struct.netdev_queue, %struct.netdev_queue* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = add i32 %104, %101
  store i32 %105, i32* %103, align 8
  %106 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %106, i32* %3, align 4
  br label %164

107:                                              ; preds = %75, %71, %65
  %108 = load %struct.netdev_queue*, %struct.netdev_queue** %15, align 8
  %109 = call i32 @__netif_tx_unlock(%struct.netdev_queue* %108)
  br label %110

110:                                              ; preds = %107, %61
  %111 = load %struct.net_device*, %struct.net_device** %5, align 8
  %112 = call i32 @netif_queue_stopped(%struct.net_device* %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %110
  store i32 1, i32* %10, align 4
  br label %115

115:                                              ; preds = %114, %110
  br label %124

116:                                              ; preds = %56
  %117 = load %struct.Qdisc*, %struct.Qdisc** %9, align 8
  %118 = call i8* @NEXT_SLAVE(%struct.Qdisc* %117)
  %119 = bitcast i8* %118 to %struct.Qdisc*
  %120 = load %struct.teql_master*, %struct.teql_master** %6, align 8
  %121 = getelementptr inbounds %struct.teql_master, %struct.teql_master* %120, i32 0, i32 0
  store %struct.Qdisc* %119, %struct.Qdisc** %121, align 8
  %122 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %122, i32* %3, align 4
  br label %164

123:                                              ; preds = %56
  store i32 1, i32* %11, align 4
  br label %124

124:                                              ; preds = %123, %115
  %125 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %126 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %127 = call i32 @skb_network_offset(%struct.sk_buff* %126)
  %128 = call i32 @__skb_pull(%struct.sk_buff* %125, i32 %127)
  br label %129

129:                                              ; preds = %124, %55, %45
  %130 = load %struct.Qdisc*, %struct.Qdisc** %9, align 8
  %131 = call i8* @NEXT_SLAVE(%struct.Qdisc* %130)
  %132 = bitcast i8* %131 to %struct.Qdisc*
  store %struct.Qdisc* %132, %struct.Qdisc** %9, align 8
  %133 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %134 = icmp ne %struct.Qdisc* %132, %133
  br i1 %134, label %32, label %135

135:                                              ; preds = %129
  %136 = load i32, i32* %11, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %135
  %139 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %140 = icmp eq %struct.sk_buff* %139, null
  br i1 %140, label %141, label %143

141:                                              ; preds = %138
  %142 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  store %struct.sk_buff* %142, %struct.sk_buff** %13, align 8
  br label %27

143:                                              ; preds = %138, %135
  %144 = load i32, i32* %10, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %143
  %147 = load %struct.net_device*, %struct.net_device** %5, align 8
  %148 = call i32 @netif_stop_queue(%struct.net_device* %147)
  %149 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %149, i32* %3, align 4
  br label %164

150:                                              ; preds = %143
  %151 = load %struct.net_device*, %struct.net_device** %5, align 8
  %152 = getelementptr inbounds %struct.net_device, %struct.net_device* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %153, align 8
  br label %156

156:                                              ; preds = %150, %30
  %157 = load %struct.netdev_queue*, %struct.netdev_queue** %7, align 8
  %158 = getelementptr inbounds %struct.netdev_queue, %struct.netdev_queue* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %158, align 4
  %161 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %162 = call i32 @dev_kfree_skb(%struct.sk_buff* %161)
  %163 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %163, i32* %3, align 4
  br label %164

164:                                              ; preds = %156, %146, %116, %85
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local %struct.teql_master* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device*, i32) #1

declare dso_local i32 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local %struct.net_device* @qdisc_dev(%struct.Qdisc*) #1

declare dso_local i64 @__netif_subqueue_stopped(%struct.net_device*, i32) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @teql_resolve(%struct.sk_buff*, %struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @__netif_tx_trylock(%struct.netdev_queue*) #1

declare dso_local i32 @qdisc_pkt_len(%struct.sk_buff*) #1

declare dso_local i32 @netif_tx_queue_stopped(%struct.netdev_queue*) #1

declare dso_local i32 @netif_tx_queue_frozen(%struct.netdev_queue*) #1

declare dso_local i32 @txq_trans_update(%struct.netdev_queue*) #1

declare dso_local i32 @__netif_tx_unlock(%struct.netdev_queue*) #1

declare dso_local i8* @NEXT_SLAVE(%struct.Qdisc*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i32 @__skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
