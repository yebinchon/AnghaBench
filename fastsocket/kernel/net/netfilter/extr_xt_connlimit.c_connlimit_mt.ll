; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_connlimit.c_connlimit_mt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_connlimit.c_connlimit_mt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_match_param = type { i32*, i32, %struct.xt_connlimit_info* }
%struct.xt_connlimit_info = type { i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%union.nf_inet_addr = type { i32 }
%struct.nf_conntrack_tuple = type { i32 }
%struct.nf_conn = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.nf_conntrack_tuple }
%struct.ipv6hdr = type { i32 }
%struct.iphdr = type { i32 }

@NFPROTO_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_match_param*)* @connlimit_mt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @connlimit_mt(%struct.sk_buff* %0, %struct.xt_match_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_match_param*, align 8
  %6 = alloca %struct.xt_connlimit_info*, align 8
  %7 = alloca %union.nf_inet_addr, align 4
  %8 = alloca %struct.nf_conntrack_tuple, align 4
  %9 = alloca %struct.nf_conntrack_tuple*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.nf_conn*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ipv6hdr*, align 8
  %14 = alloca %struct.iphdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_match_param* %1, %struct.xt_match_param** %5, align 8
  %15 = load %struct.xt_match_param*, %struct.xt_match_param** %5, align 8
  %16 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %15, i32 0, i32 2
  %17 = load %struct.xt_connlimit_info*, %struct.xt_connlimit_info** %16, align 8
  store %struct.xt_connlimit_info* %17, %struct.xt_connlimit_info** %6, align 8
  store %struct.nf_conntrack_tuple* %8, %struct.nf_conntrack_tuple** %9, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = call %struct.nf_conn* @nf_ct_get(%struct.sk_buff* %18, i32* %10)
  store %struct.nf_conn* %19, %struct.nf_conn** %11, align 8
  %20 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %21 = icmp ne %struct.nf_conn* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %24 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store %struct.nf_conntrack_tuple* %27, %struct.nf_conntrack_tuple** %9, align 8
  br label %39

28:                                               ; preds = %2
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = call i32 @skb_network_offset(%struct.sk_buff* %30)
  %32 = load %struct.xt_match_param*, %struct.xt_match_param** %5, align 8
  %33 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @nf_ct_get_tuplepr(%struct.sk_buff* %29, i32 %31, i32 %34, %struct.nf_conntrack_tuple* %8)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %28
  br label %97

38:                                               ; preds = %28
  br label %39

39:                                               ; preds = %38, %22
  %40 = load %struct.xt_match_param*, %struct.xt_match_param** %5, align 8
  %41 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @NFPROTO_IPV6, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %39
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %46)
  store %struct.ipv6hdr* %47, %struct.ipv6hdr** %13, align 8
  %48 = bitcast %union.nf_inet_addr* %7 to i32*
  %49 = load %struct.ipv6hdr*, %struct.ipv6hdr** %13, align 8
  %50 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %49, i32 0, i32 0
  %51 = call i32 @memcpy(i32* %48, i32* %50, i32 4)
  br label %59

52:                                               ; preds = %39
  %53 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %54 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %53)
  store %struct.iphdr* %54, %struct.iphdr** %14, align 8
  %55 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %56 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = bitcast %union.nf_inet_addr* %7 to i32*
  store i32 %57, i32* %58, align 4
  br label %59

59:                                               ; preds = %52, %45
  %60 = load %struct.xt_connlimit_info*, %struct.xt_connlimit_info** %6, align 8
  %61 = getelementptr inbounds %struct.xt_connlimit_info, %struct.xt_connlimit_info* %60, i32 0, i32 2
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = call i32 @spin_lock_bh(i32* %63)
  %65 = load %struct.xt_connlimit_info*, %struct.xt_connlimit_info** %6, align 8
  %66 = getelementptr inbounds %struct.xt_connlimit_info, %struct.xt_connlimit_info* %65, i32 0, i32 2
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %9, align 8
  %69 = load %struct.xt_connlimit_info*, %struct.xt_connlimit_info** %6, align 8
  %70 = getelementptr inbounds %struct.xt_connlimit_info, %struct.xt_connlimit_info* %69, i32 0, i32 3
  %71 = load %struct.xt_match_param*, %struct.xt_match_param** %5, align 8
  %72 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @count_them(%struct.TYPE_4__* %67, %struct.nf_conntrack_tuple* %68, %union.nf_inet_addr* %7, i32* %70, i32 %73)
  store i32 %74, i32* %12, align 4
  %75 = load %struct.xt_connlimit_info*, %struct.xt_connlimit_info** %6, align 8
  %76 = getelementptr inbounds %struct.xt_connlimit_info, %struct.xt_connlimit_info* %75, i32 0, i32 2
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = call i32 @spin_unlock_bh(i32* %78)
  %80 = load i32, i32* %12, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %59
  %83 = load %struct.xt_match_param*, %struct.xt_match_param** %5, align 8
  %84 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  store i32 1, i32* %85, align 4
  store i32 0, i32* %3, align 4
  br label %101

86:                                               ; preds = %59
  %87 = load i32, i32* %12, align 4
  %88 = load %struct.xt_connlimit_info*, %struct.xt_connlimit_info** %6, align 8
  %89 = getelementptr inbounds %struct.xt_connlimit_info, %struct.xt_connlimit_info* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp sgt i32 %87, %90
  %92 = zext i1 %91 to i32
  %93 = load %struct.xt_connlimit_info*, %struct.xt_connlimit_info** %6, align 8
  %94 = getelementptr inbounds %struct.xt_connlimit_info, %struct.xt_connlimit_info* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = xor i32 %92, %95
  store i32 %96, i32* %3, align 4
  br label %101

97:                                               ; preds = %37
  %98 = load %struct.xt_match_param*, %struct.xt_match_param** %5, align 8
  %99 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  store i32 1, i32* %100, align 4
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %97, %86, %82
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local %struct.nf_conn* @nf_ct_get(%struct.sk_buff*, i32*) #1

declare dso_local i32 @nf_ct_get_tuplepr(%struct.sk_buff*, i32, i32, %struct.nf_conntrack_tuple*) #1

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @count_them(%struct.TYPE_4__*, %struct.nf_conntrack_tuple*, %union.nf_inet_addr*, i32*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
