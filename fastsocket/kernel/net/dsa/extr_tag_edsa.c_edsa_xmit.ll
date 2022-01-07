; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dsa/extr_tag_edsa.c_edsa_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dsa/extr_tag_edsa.c_edsa_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32*, i32, i64 }
%struct.net_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.dsa_slave_priv = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@ETH_P_8021Q = common dso_local global i32 0, align 4
@DSA_HLEN = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@ETH_P_EDSA = common dso_local global i32 0, align 4
@EDSA_HLEN = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @edsa_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
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
  br i1 %30, label %31, label %102

31:                                               ; preds = %2
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = load i32, i32* @DSA_HLEN, align 4
  %34 = call i64 @skb_cow_head(%struct.sk_buff* %32, i32 %33)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %179

37:                                               ; preds = %31
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = load i32, i32* @DSA_HLEN, align 4
  %40 = call i32 @skb_push(%struct.sk_buff* %38, i32 %39)
  %41 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* @DSA_HLEN, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* @ETH_ALEN, align 4
  %51 = mul nsw i32 2, %50
  %52 = call i32 @memmove(i32* %43, i32* %49, i32 %51)
  %53 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* @ETH_ALEN, align 4
  %57 = mul nsw i32 2, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  store i32* %59, i32** %7, align 8
  %60 = load i32, i32* @ETH_P_EDSA, align 4
  %61 = ashr i32 %60, 8
  %62 = and i32 %61, 255
  %63 = load i32*, i32** %7, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @ETH_P_EDSA, align 4
  %66 = and i32 %65, 255
  %67 = load i32*, i32** %7, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  store i32 %66, i32* %68, align 4
  %69 = load i32*, i32** %7, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 2
  store i32 0, i32* %70, align 4
  %71 = load i32*, i32** %7, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 3
  store i32 0, i32* %72, align 4
  %73 = load %struct.dsa_slave_priv*, %struct.dsa_slave_priv** %6, align 8
  %74 = getelementptr inbounds %struct.dsa_slave_priv, %struct.dsa_slave_priv* %73, i32 0, i32 1
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = or i32 96, %77
  %79 = load i32*, i32** %7, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 4
  store i32 %78, i32* %80, align 4
  %81 = load %struct.dsa_slave_priv*, %struct.dsa_slave_priv** %6, align 8
  %82 = getelementptr inbounds %struct.dsa_slave_priv, %struct.dsa_slave_priv* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = shl i32 %83, 3
  %85 = load i32*, i32** %7, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 5
  store i32 %84, i32* %86, align 4
  %87 = load i32*, i32** %7, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 6
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, 16
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %37
  %93 = load i32*, i32** %7, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 5
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, 1
  store i32 %96, i32* %94, align 4
  %97 = load i32*, i32** %7, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 6
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %99, -17
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %92, %37
  br label %162

102:                                              ; preds = %2
  %103 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %104 = load i32, i32* @EDSA_HLEN, align 4
  %105 = call i64 @skb_cow_head(%struct.sk_buff* %103, i32 %104)
  %106 = icmp slt i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  br label %179

108:                                              ; preds = %102
  %109 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %110 = load i32, i32* @EDSA_HLEN, align 4
  %111 = call i32 @skb_push(%struct.sk_buff* %109, i32 %110)
  %112 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %113 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %116 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* @EDSA_HLEN, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* @ETH_ALEN, align 4
  %122 = mul nsw i32 2, %121
  %123 = call i32 @memmove(i32* %114, i32* %120, i32 %122)
  %124 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %125 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* @ETH_ALEN, align 4
  %128 = mul nsw i32 2, %127
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %126, i64 %129
  store i32* %130, i32** %7, align 8
  %131 = load i32, i32* @ETH_P_EDSA, align 4
  %132 = ashr i32 %131, 8
  %133 = and i32 %132, 255
  %134 = load i32*, i32** %7, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  store i32 %133, i32* %135, align 4
  %136 = load i32, i32* @ETH_P_EDSA, align 4
  %137 = and i32 %136, 255
  %138 = load i32*, i32** %7, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 1
  store i32 %137, i32* %139, align 4
  %140 = load i32*, i32** %7, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 2
  store i32 0, i32* %141, align 4
  %142 = load i32*, i32** %7, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 3
  store i32 0, i32* %143, align 4
  %144 = load %struct.dsa_slave_priv*, %struct.dsa_slave_priv** %6, align 8
  %145 = getelementptr inbounds %struct.dsa_slave_priv, %struct.dsa_slave_priv* %144, i32 0, i32 1
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = or i32 64, %148
  %150 = load i32*, i32** %7, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 4
  store i32 %149, i32* %151, align 4
  %152 = load %struct.dsa_slave_priv*, %struct.dsa_slave_priv** %6, align 8
  %153 = getelementptr inbounds %struct.dsa_slave_priv, %struct.dsa_slave_priv* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = shl i32 %154, 3
  %156 = load i32*, i32** %7, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 5
  store i32 %155, i32* %157, align 4
  %158 = load i32*, i32** %7, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 6
  store i32 0, i32* %159, align 4
  %160 = load i32*, i32** %7, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 7
  store i32 0, i32* %161, align 4
  br label %162

162:                                              ; preds = %108, %101
  %163 = load i32, i32* @ETH_P_EDSA, align 4
  %164 = call i64 @htons(i32 %163)
  %165 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %166 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %165, i32 0, i32 0
  store i64 %164, i64* %166, align 8
  %167 = load %struct.dsa_slave_priv*, %struct.dsa_slave_priv** %6, align 8
  %168 = getelementptr inbounds %struct.dsa_slave_priv, %struct.dsa_slave_priv* %167, i32 0, i32 1
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 1
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %175 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %174, i32 0, i32 2
  store i32 %173, i32* %175, align 8
  %176 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %177 = call i32 @dev_queue_xmit(%struct.sk_buff* %176)
  %178 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %178, i32* %3, align 4
  br label %183

179:                                              ; preds = %107, %36
  %180 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %181 = call i32 @kfree_skb(%struct.sk_buff* %180)
  %182 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %182, i32* %3, align 4
  br label %183

183:                                              ; preds = %179, %162
  %184 = load i32, i32* %3, align 4
  ret i32 %184
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
