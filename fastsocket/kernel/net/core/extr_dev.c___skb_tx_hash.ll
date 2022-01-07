; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dev.c___skb_tx_hash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dev.c___skb_tx_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sk_buff = type { i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.netdev_qos_info = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.netdev_qos_info }

@hashrnd = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__skb_tx_hash(%struct.net_device* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.netdev_qos_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.TYPE_6__* @netdev_extended(%struct.net_device* %13)
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store %struct.netdev_qos_info* %15, %struct.netdev_qos_info** %8, align 8
  store i32 0, i32* %10, align 4
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %11, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = call i64 @skb_rx_queue_recorded(%struct.sk_buff* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %3
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = call i32 @skb_get_rx_queue(%struct.sk_buff* %21)
  store i32 %22, i32* %9, align 4
  br label %23

23:                                               ; preds = %30, %20
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp uge i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %9, align 4
  %33 = sub i32 %32, %31
  store i32 %33, i32* %9, align 4
  br label %23

34:                                               ; preds = %23
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %4, align 4
  br label %93

36:                                               ; preds = %3
  %37 = load %struct.netdev_qos_info*, %struct.netdev_qos_info** %8, align 8
  %38 = getelementptr inbounds %struct.netdev_qos_info, %struct.netdev_qos_info* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %61

41:                                               ; preds = %36
  %42 = load %struct.net_device*, %struct.net_device** %5, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @netdev_get_prio_tc_map(%struct.net_device* %42, i32 %45)
  store i64 %46, i64* %12, align 8
  %47 = load %struct.netdev_qos_info*, %struct.netdev_qos_info** %8, align 8
  %48 = getelementptr inbounds %struct.netdev_qos_info, %struct.netdev_qos_info* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = load i64, i64* %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %10, align 4
  %54 = load %struct.netdev_qos_info*, %struct.netdev_qos_info** %8, align 8
  %55 = getelementptr inbounds %struct.netdev_qos_info, %struct.netdev_qos_info* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load i64, i64* %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %11, align 4
  br label %61

61:                                               ; preds = %41, %36
  %62 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %63 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %62, i32 0, i32 1
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = icmp ne %struct.TYPE_5__* %64, null
  br i1 %65, label %66, label %79

66:                                               ; preds = %61
  %67 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %68 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %67, i32 0, i32 1
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %66
  %74 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %75 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %74, i32 0, i32 1
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %9, align 4
  br label %83

79:                                               ; preds = %66, %61
  %80 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %81 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  store i32 %82, i32* %9, align 4
  br label %83

83:                                               ; preds = %79, %73
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* @hashrnd, align 4
  %86 = call i32 @jhash_1word(i32 %84, i32 %85)
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %11, align 4
  %89 = mul i32 %87, %88
  %90 = lshr i32 %89, 32
  %91 = load i32, i32* %10, align 4
  %92 = add i32 %90, %91
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %83, %34
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local %struct.TYPE_6__* @netdev_extended(%struct.net_device*) #1

declare dso_local i64 @skb_rx_queue_recorded(%struct.sk_buff*) #1

declare dso_local i32 @skb_get_rx_queue(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @netdev_get_prio_tc_map(%struct.net_device*, i32) #1

declare dso_local i32 @jhash_1word(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
