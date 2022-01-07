; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_input.c_ip_rcv_finish.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_input.c_ip_rcv_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32 }
%struct.iphdr = type { i32, i32, i32, i32 }
%struct.rtable = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.direct_tcp_stat = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@direct_tcp_stats = common dso_local global i32 0, align 4
@EHOSTUNREACH = common dso_local global i32 0, align 4
@IPSTATS_MIB_INADDRERRORS = common dso_local global i32 0, align 4
@ENETUNREACH = common dso_local global i32 0, align 4
@IPSTATS_MIB_INNOROUTES = common dso_local global i32 0, align 4
@RTN_MULTICAST = common dso_local global i64 0, align 8
@IPSTATS_MIB_INMCAST = common dso_local global i32 0, align 4
@RTN_BROADCAST = common dso_local global i64 0, align 8
@IPSTATS_MIB_INBCAST = common dso_local global i32 0, align 4
@NET_RX_DROP = common dso_local global i32 0, align 4
@ip_rt_acct = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @ip_rcv_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_rcv_finish(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.iphdr*, align 8
  %5 = alloca %struct.rtable*, align 8
  %6 = alloca %struct.direct_tcp_stat*, align 8
  %7 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %9 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %8)
  store %struct.iphdr* %9, %struct.iphdr** %4, align 8
  %10 = load i32, i32* @direct_tcp_stats, align 4
  %11 = call i32 (...) @smp_processor_id()
  %12 = call i8* @per_cpu_ptr(i32 %10, i32 %11)
  %13 = bitcast i8* %12 to %struct.direct_tcp_stat*
  store %struct.direct_tcp_stat* %13, %struct.direct_tcp_stat** %6, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %15 = call %struct.TYPE_6__* @skb_dst(%struct.sk_buff* %14)
  %16 = icmp eq %struct.TYPE_6__* %15, null
  br i1 %16, label %17, label %66

17:                                               ; preds = %1
  %18 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %19 = load %struct.iphdr*, %struct.iphdr** %4, align 8
  %20 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.iphdr*, %struct.iphdr** %4, align 8
  %23 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.iphdr*, %struct.iphdr** %4, align 8
  %26 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @ip_route_input(%struct.sk_buff* %18, i32 %21, i32 %24, i32 %27, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load %struct.direct_tcp_stat*, %struct.direct_tcp_stat** %6, align 8
  %33 = getelementptr inbounds %struct.direct_tcp_stat, %struct.direct_tcp_stat* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %65

39:                                               ; preds = %17
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @EHOSTUNREACH, align 4
  %42 = sub nsw i32 0, %41
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @dev_net(i32 %47)
  %49 = load i32, i32* @IPSTATS_MIB_INADDRERRORS, align 4
  %50 = call i32 @IP_INC_STATS_BH(i32 %48, i32 %49)
  br label %64

51:                                               ; preds = %39
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @ENETUNREACH, align 4
  %54 = sub nsw i32 0, %53
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @dev_net(i32 %59)
  %61 = load i32, i32* @IPSTATS_MIB_INNOROUTES, align 4
  %62 = call i32 @IP_INC_STATS_BH(i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %56, %51
  br label %64

64:                                               ; preds = %63, %44
  br label %123

65:                                               ; preds = %17
  br label %71

66:                                               ; preds = %1
  %67 = load %struct.direct_tcp_stat*, %struct.direct_tcp_stat** %6, align 8
  %68 = getelementptr inbounds %struct.direct_tcp_stat, %struct.direct_tcp_stat* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %66, %65
  %72 = load %struct.iphdr*, %struct.iphdr** %4, align 8
  %73 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp sgt i32 %74, 5
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %78 = call i64 @ip_rcv_options(%struct.sk_buff* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  br label %123

81:                                               ; preds = %76, %71
  %82 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %83 = call %struct.rtable* @skb_rtable(%struct.sk_buff* %82)
  store %struct.rtable* %83, %struct.rtable** %5, align 8
  %84 = load %struct.rtable*, %struct.rtable** %5, align 8
  %85 = getelementptr inbounds %struct.rtable, %struct.rtable* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @RTN_MULTICAST, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %101

89:                                               ; preds = %81
  %90 = load %struct.rtable*, %struct.rtable** %5, align 8
  %91 = getelementptr inbounds %struct.rtable, %struct.rtable* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @dev_net(i32 %94)
  %96 = load i32, i32* @IPSTATS_MIB_INMCAST, align 4
  %97 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %98 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @IP_UPD_PO_STATS_BH(i32 %95, i32 %96, i64 %99)
  br label %120

101:                                              ; preds = %81
  %102 = load %struct.rtable*, %struct.rtable** %5, align 8
  %103 = getelementptr inbounds %struct.rtable, %struct.rtable* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @RTN_BROADCAST, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %119

107:                                              ; preds = %101
  %108 = load %struct.rtable*, %struct.rtable** %5, align 8
  %109 = getelementptr inbounds %struct.rtable, %struct.rtable* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @dev_net(i32 %112)
  %114 = load i32, i32* @IPSTATS_MIB_INBCAST, align 4
  %115 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %116 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @IP_UPD_PO_STATS_BH(i32 %113, i32 %114, i64 %117)
  br label %119

119:                                              ; preds = %107, %101
  br label %120

120:                                              ; preds = %119, %89
  %121 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %122 = call i32 @dst_input(%struct.sk_buff* %121)
  store i32 %122, i32* %2, align 4
  br label %127

123:                                              ; preds = %80, %64
  %124 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %125 = call i32 @kfree_skb(%struct.sk_buff* %124)
  %126 = load i32, i32* @NET_RX_DROP, align 4
  store i32 %126, i32* %2, align 4
  br label %127

127:                                              ; preds = %123, %120
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i8* @per_cpu_ptr(i32, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local %struct.TYPE_6__* @skb_dst(%struct.sk_buff*) #1

declare dso_local i32 @ip_route_input(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @IP_INC_STATS_BH(i32, i32) #1

declare dso_local i32 @dev_net(i32) #1

declare dso_local i64 @ip_rcv_options(%struct.sk_buff*) #1

declare dso_local %struct.rtable* @skb_rtable(%struct.sk_buff*) #1

declare dso_local i32 @IP_UPD_PO_STATS_BH(i32, i32, i64) #1

declare dso_local i32 @dst_input(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
