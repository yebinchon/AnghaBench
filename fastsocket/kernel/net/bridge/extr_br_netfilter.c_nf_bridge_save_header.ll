; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_netfilter.c_nf_bridge_save_header.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_netfilter.c_nf_bridge_save_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ETH_HLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*)* @nf_bridge_save_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nf_bridge_save_header(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %4 = load i32, i32* @ETH_HLEN, align 4
  %5 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %6 = call i32 @nf_bridge_encap_header_len(%struct.sk_buff* %5)
  %7 = add nsw i32 %4, %6
  store i32 %7, i32* %3, align 4
  %8 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %9 = load i32, i32* %3, align 4
  %10 = sub nsw i32 0, %9
  %11 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @skb_copy_from_linear_data_offset(%struct.sk_buff* %8, i32 %10, i32 %15, i32 %16)
  ret void
}

declare dso_local i32 @nf_bridge_encap_header_len(%struct.sk_buff*) #1

declare dso_local i32 @skb_copy_from_linear_data_offset(%struct.sk_buff*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
