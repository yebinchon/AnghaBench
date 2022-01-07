; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dsa/extr_tag_dsa.c_dsa_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dsa/extr_tag_dsa.c_dsa_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32*, i32, i64 }
%struct.net_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.dsa_slave_priv = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@ETH_P_8021Q = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@DSA_HLEN = common dso_local global i32 0, align 4
@ETH_P_DSA = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dsa_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.dsa_slave_priv*, align 8
  %7 = alloca i32*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %5, align 8
  %9 = call %struct.dsa_slave_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.dsa_slave_priv* %9, %struct.dsa_slave_priv** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %12, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.net_device*, %struct.net_device** %5, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %22, %17
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %20, align 4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* @ETH_P_8021Q, align 4
  %29 = call i64 @htons(i32 %28)
  %30 = icmp eq i64 %27, %29
  br i1 %30, label %31, label %73

31:                                               ; preds = %2
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = call i64 @skb_cow_head(%struct.sk_buff* %32, i32 0)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %137

36:                                               ; preds = %31
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* @ETH_ALEN, align 4
  %41 = mul nsw i32 2, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  store i32* %43, i32** %7, align 8
  %44 = load %struct.dsa_slave_priv*, %struct.dsa_slave_priv** %6, align 8
  %45 = getelementptr inbounds %struct.dsa_slave_priv, %struct.dsa_slave_priv* %44, i32 0, i32 1
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = or i32 96, %48
  %50 = load i32*, i32** %7, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  store i32 %49, i32* %51, align 4
  %52 = load %struct.dsa_slave_priv*, %struct.dsa_slave_priv** %6, align 8
  %53 = getelementptr inbounds %struct.dsa_slave_priv, %struct.dsa_slave_priv* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = shl i32 %54, 3
  %56 = load i32*, i32** %7, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  store i32 %55, i32* %57, align 4
  %58 = load i32*, i32** %7, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 2
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, 16
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %36
  %64 = load i32*, i32** %7, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, 1
  store i32 %67, i32* %65, align 4
  %68 = load i32*, i32** %7, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 2
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, -17
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %63, %36
  br label %120

73:                                               ; preds = %2
  %74 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %75 = load i32, i32* @DSA_HLEN, align 4
  %76 = call i64 @skb_cow_head(%struct.sk_buff* %74, i32 %75)
  %77 = icmp slt i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %137

79:                                               ; preds = %73
  %80 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %81 = load i32, i32* @DSA_HLEN, align 4
  %82 = call i32 @skb_push(%struct.sk_buff* %80, i32 %81)
  %83 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %84 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %87 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* @DSA_HLEN, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* @ETH_ALEN, align 4
  %93 = mul nsw i32 2, %92
  %94 = call i32 @memmove(i32* %85, i32* %91, i32 %93)
  %95 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %96 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* @ETH_ALEN, align 4
  %99 = mul nsw i32 2, %98
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %97, i64 %100
  store i32* %101, i32** %7, align 8
  %102 = load %struct.dsa_slave_priv*, %struct.dsa_slave_priv** %6, align 8
  %103 = getelementptr inbounds %struct.dsa_slave_priv, %struct.dsa_slave_priv* %102, i32 0, i32 1
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = or i32 64, %106
  %108 = load i32*, i32** %7, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  store i32 %107, i32* %109, align 4
  %110 = load %struct.dsa_slave_priv*, %struct.dsa_slave_priv** %6, align 8
  %111 = getelementptr inbounds %struct.dsa_slave_priv, %struct.dsa_slave_priv* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = shl i32 %112, 3
  %114 = load i32*, i32** %7, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 1
  store i32 %113, i32* %115, align 4
  %116 = load i32*, i32** %7, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 2
  store i32 0, i32* %117, align 4
  %118 = load i32*, i32** %7, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 3
  store i32 0, i32* %119, align 4
  br label %120

120:                                              ; preds = %79, %72
  %121 = load i32, i32* @ETH_P_DSA, align 4
  %122 = call i64 @htons(i32 %121)
  %123 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %124 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %123, i32 0, i32 0
  store i64 %122, i64* %124, align 8
  %125 = load %struct.dsa_slave_priv*, %struct.dsa_slave_priv** %6, align 8
  %126 = getelementptr inbounds %struct.dsa_slave_priv, %struct.dsa_slave_priv* %125, i32 0, i32 1
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %133 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 8
  %134 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %135 = call i32 @dev_queue_xmit(%struct.sk_buff* %134)
  %136 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %136, i32* %3, align 4
  br label %141

137:                                              ; preds = %78, %35
  %138 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %139 = call i32 @kfree_skb(%struct.sk_buff* %138)
  %140 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %140, i32* %3, align 4
  br label %141

141:                                              ; preds = %137, %120
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local %struct.dsa_slave_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i64 @skb_cow_head(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @dev_queue_xmit(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
