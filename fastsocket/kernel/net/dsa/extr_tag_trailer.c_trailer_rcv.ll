; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dsa/extr_tag_trailer.c_trailer_rcv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dsa/extr_tag_trailer.c_trailer_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.packet_type = type { i32 }
%struct.net_device = type { %struct.dsa_switch_tree* }
%struct.dsa_switch_tree = type { %struct.dsa_switch** }
%struct.dsa_switch = type { %struct.TYPE_4__** }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@DSA_MAX_PORTS = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@PACKET_HOST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, %struct.packet_type*, %struct.net_device*)* @trailer_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trailer_rcv(%struct.sk_buff* %0, %struct.net_device* %1, %struct.packet_type* %2, %struct.net_device* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.packet_type*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.dsa_switch_tree*, align 8
  %11 = alloca %struct.dsa_switch*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store %struct.packet_type* %2, %struct.packet_type** %8, align 8
  store %struct.net_device* %3, %struct.net_device** %9, align 8
  %14 = load %struct.net_device*, %struct.net_device** %7, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = load %struct.dsa_switch_tree*, %struct.dsa_switch_tree** %15, align 8
  store %struct.dsa_switch_tree* %16, %struct.dsa_switch_tree** %10, align 8
  %17 = load %struct.dsa_switch_tree*, %struct.dsa_switch_tree** %10, align 8
  %18 = icmp eq %struct.dsa_switch_tree* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  br label %134

23:                                               ; preds = %4
  %24 = load %struct.dsa_switch_tree*, %struct.dsa_switch_tree** %10, align 8
  %25 = getelementptr inbounds %struct.dsa_switch_tree, %struct.dsa_switch_tree* %24, i32 0, i32 0
  %26 = load %struct.dsa_switch**, %struct.dsa_switch*** %25, align 8
  %27 = getelementptr inbounds %struct.dsa_switch*, %struct.dsa_switch** %26, i64 0
  %28 = load %struct.dsa_switch*, %struct.dsa_switch** %27, align 8
  store %struct.dsa_switch* %28, %struct.dsa_switch** %11, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %30 = load i32, i32* @GFP_ATOMIC, align 4
  %31 = call %struct.sk_buff* @skb_unshare(%struct.sk_buff* %29, i32 %30)
  store %struct.sk_buff* %31, %struct.sk_buff** %6, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %33 = icmp eq %struct.sk_buff* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  br label %137

35:                                               ; preds = %23
  %36 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %37 = call i64 @skb_linearize(%struct.sk_buff* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %134

40:                                               ; preds = %35
  %41 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %42 = call i32* @skb_tail_pointer(%struct.sk_buff* %41)
  %43 = getelementptr inbounds i32, i32* %42, i64 -4
  store i32* %43, i32** %12, align 8
  %44 = load i32*, i32** %12, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 128
  br i1 %47, label %65, label %48

48:                                               ; preds = %40
  %49 = load i32*, i32** %12, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, 248
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %65, label %54

54:                                               ; preds = %48
  %55 = load i32*, i32** %12, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 3
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, 239
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %54
  %61 = load i32*, i32** %12, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 3
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60, %54, %48, %40
  br label %134

66:                                               ; preds = %60
  %67 = load i32*, i32** %12, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, 7
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* @DSA_MAX_PORTS, align 4
  %73 = icmp sge i32 %71, %72
  br i1 %73, label %83, label %74

74:                                               ; preds = %66
  %75 = load %struct.dsa_switch*, %struct.dsa_switch** %11, align 8
  %76 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %76, align 8
  %78 = load i32, i32* %13, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %77, i64 %79
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = icmp eq %struct.TYPE_4__* %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %74, %66
  br label %134

84:                                               ; preds = %74
  %85 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %86 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %87 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = sub nsw i64 %88, 4
  %90 = call i32 @pskb_trim_rcsum(%struct.sk_buff* %85, i64 %89)
  %91 = load %struct.dsa_switch*, %struct.dsa_switch** %11, align 8
  %92 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %91, i32 0, i32 0
  %93 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %92, align 8
  %94 = load i32, i32* %13, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %93, i64 %95
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %99 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %98, i32 0, i32 1
  store %struct.TYPE_4__* %97, %struct.TYPE_4__** %99, align 8
  %100 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %101 = load i32, i32* @ETH_HLEN, align 4
  %102 = call i32 @skb_push(%struct.sk_buff* %100, i32 %101)
  %103 = load i32, i32* @PACKET_HOST, align 4
  %104 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %105 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %104, i32 0, i32 3
  store i32 %103, i32* %105, align 4
  %106 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %107 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %108 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %107, i32 0, i32 1
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = call i32 @eth_type_trans(%struct.sk_buff* %106, %struct.TYPE_4__* %109)
  %111 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %112 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %111, i32 0, i32 2
  store i32 %110, i32* %112, align 8
  %113 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %114 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %113, i32 0, i32 1
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %117, align 4
  %120 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %121 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %124 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %123, i32 0, i32 1
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = sext i32 %128 to i64
  %130 = add nsw i64 %129, %122
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %127, align 4
  %132 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %133 = call i32 @netif_receive_skb(%struct.sk_buff* %132)
  store i32 0, i32* %5, align 4
  br label %138

134:                                              ; preds = %83, %65, %39, %22
  %135 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %136 = call i32 @kfree_skb(%struct.sk_buff* %135)
  br label %137

137:                                              ; preds = %134, %34
  store i32 0, i32* %5, align 4
  br label %138

138:                                              ; preds = %137, %84
  %139 = load i32, i32* %5, align 4
  ret i32 %139
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.sk_buff* @skb_unshare(%struct.sk_buff*, i32) #1

declare dso_local i64 @skb_linearize(%struct.sk_buff*) #1

declare dso_local i32* @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i32 @pskb_trim_rcsum(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.TYPE_4__*) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
