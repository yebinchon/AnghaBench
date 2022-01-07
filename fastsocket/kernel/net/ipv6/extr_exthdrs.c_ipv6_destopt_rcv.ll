; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_exthdrs.c_ipv6_destopt_rcv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_exthdrs.c_ipv6_destopt_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.inet6_skb_parm = type { i32, i32, i32 }
%struct.dst_entry = type { i32 }

@IPSTATS_MIB_INHDRERRORS = common dso_local global i32 0, align 4
@tlvprocdestopt_lst = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @ipv6_destopt_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipv6_destopt_rcv(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.inet6_skb_parm*, align 8
  %5 = alloca %struct.dst_entry*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %7 = call %struct.inet6_skb_parm* @IP6CB(%struct.sk_buff* %6)
  store %struct.inet6_skb_parm* %7, %struct.inet6_skb_parm** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %10 = call i64 @skb_transport_offset(%struct.sk_buff* %9)
  %11 = add nsw i64 %10, 8
  %12 = call i32 @pskb_may_pull(%struct.sk_buff* %8, i64 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %1
  %15 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %17 = call i64 @skb_transport_offset(%struct.sk_buff* %16)
  %18 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %19 = call i32* @skb_transport_header(%struct.sk_buff* %18)
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  %23 = shl i32 %22, 3
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %17, %24
  %26 = call i32 @pskb_may_pull(%struct.sk_buff* %15, i64 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %41, label %28

28:                                               ; preds = %14, %1
  %29 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %30 = call %struct.dst_entry* @skb_dst(%struct.sk_buff* %29)
  %31 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dev_net(i32 %32)
  %34 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %35 = call %struct.dst_entry* @skb_dst(%struct.sk_buff* %34)
  %36 = call i32 @ip6_dst_idev(%struct.dst_entry* %35)
  %37 = load i32, i32* @IPSTATS_MIB_INHDRERRORS, align 4
  %38 = call i32 @IP6_INC_STATS_BH(i32 %33, i32 %36, i32 %37)
  %39 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %40 = call i32 @kfree_skb(%struct.sk_buff* %39)
  store i32 -1, i32* %2, align 4
  br label %86

41:                                               ; preds = %14
  %42 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %43 = call i32 @skb_network_header_len(%struct.sk_buff* %42)
  %44 = load %struct.inet6_skb_parm*, %struct.inet6_skb_parm** %4, align 8
  %45 = getelementptr inbounds %struct.inet6_skb_parm, %struct.inet6_skb_parm* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.inet6_skb_parm*, %struct.inet6_skb_parm** %4, align 8
  %47 = getelementptr inbounds %struct.inet6_skb_parm, %struct.inet6_skb_parm* %46, i32 0, i32 2
  store i32 %43, i32* %47, align 4
  %48 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %49 = call %struct.dst_entry* @skb_dst(%struct.sk_buff* %48)
  %50 = call %struct.dst_entry* @dst_clone(%struct.dst_entry* %49)
  store %struct.dst_entry* %50, %struct.dst_entry** %5, align 8
  %51 = load i32, i32* @tlvprocdestopt_lst, align 4
  %52 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %53 = call i64 @ip6_parse_tlv(i32 %51, %struct.sk_buff* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %75

55:                                               ; preds = %41
  %56 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %57 = call i32 @dst_release(%struct.dst_entry* %56)
  %58 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %59 = call i32* @skb_transport_header(%struct.sk_buff* %58)
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  %63 = shl i32 %62, 3
  %64 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %65 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, %63
  store i32 %67, i32* %65, align 4
  %68 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %69 = call %struct.inet6_skb_parm* @IP6CB(%struct.sk_buff* %68)
  store %struct.inet6_skb_parm* %69, %struct.inet6_skb_parm** %4, align 8
  %70 = load %struct.inet6_skb_parm*, %struct.inet6_skb_parm** %4, align 8
  %71 = getelementptr inbounds %struct.inet6_skb_parm, %struct.inet6_skb_parm* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.inet6_skb_parm*, %struct.inet6_skb_parm** %4, align 8
  %74 = getelementptr inbounds %struct.inet6_skb_parm, %struct.inet6_skb_parm* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  store i32 1, i32* %2, align 4
  br label %86

75:                                               ; preds = %41
  %76 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %77 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @dev_net(i32 %78)
  %80 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %81 = call i32 @ip6_dst_idev(%struct.dst_entry* %80)
  %82 = load i32, i32* @IPSTATS_MIB_INHDRERRORS, align 4
  %83 = call i32 @IP6_INC_STATS_BH(i32 %79, i32 %81, i32 %82)
  %84 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %85 = call i32 @dst_release(%struct.dst_entry* %84)
  store i32 -1, i32* %2, align 4
  br label %86

86:                                               ; preds = %75, %55, %28
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local %struct.inet6_skb_parm* @IP6CB(%struct.sk_buff*) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i64) #1

declare dso_local i64 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local i32* @skb_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @IP6_INC_STATS_BH(i32, i32, i32) #1

declare dso_local i32 @dev_net(i32) #1

declare dso_local %struct.dst_entry* @skb_dst(%struct.sk_buff*) #1

declare dso_local i32 @ip6_dst_idev(%struct.dst_entry*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_network_header_len(%struct.sk_buff*) #1

declare dso_local %struct.dst_entry* @dst_clone(%struct.dst_entry*) #1

declare dso_local i64 @ip6_parse_tlv(i32, %struct.sk_buff*) #1

declare dso_local i32 @dst_release(%struct.dst_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
