; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_udp.c___udp6_lib_mcast_deliver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_udp.c___udp6_lib_mcast_deliver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sk_buff = type { i32 }
%struct.in6_addr = type { i32 }
%struct.udp_table = type { %struct.udp_hslot* }
%struct.udp_hslot = type { i32, i32 }
%struct.sock = type { i32 }
%struct.udphdr = type { i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sk_buff*, %struct.in6_addr*, %struct.in6_addr*, %struct.udp_table*)* @__udp6_lib_mcast_deliver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__udp6_lib_mcast_deliver(%struct.net* %0, %struct.sk_buff* %1, %struct.in6_addr* %2, %struct.in6_addr* %3, %struct.udp_table* %4) #0 {
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.in6_addr*, align 8
  %9 = alloca %struct.in6_addr*, align 8
  %10 = alloca %struct.udp_table*, align 8
  %11 = alloca %struct.sock*, align 8
  %12 = alloca %struct.sock*, align 8
  %13 = alloca %struct.udphdr*, align 8
  %14 = alloca %struct.udp_hslot*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.sk_buff*, align 8
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.in6_addr* %2, %struct.in6_addr** %8, align 8
  store %struct.in6_addr* %3, %struct.in6_addr** %9, align 8
  store %struct.udp_table* %4, %struct.udp_table** %10, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %18 = call %struct.udphdr* @udp_hdr(%struct.sk_buff* %17)
  store %struct.udphdr* %18, %struct.udphdr** %13, align 8
  %19 = load %struct.udp_table*, %struct.udp_table** %10, align 8
  %20 = getelementptr inbounds %struct.udp_table, %struct.udp_table* %19, i32 0, i32 0
  %21 = load %struct.udp_hslot*, %struct.udp_hslot** %20, align 8
  %22 = load %struct.net*, %struct.net** %6, align 8
  %23 = load %struct.udphdr*, %struct.udphdr** %13, align 8
  %24 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ntohs(i32 %25)
  %27 = call i64 @udp_hashfn(%struct.net* %22, i32 %26)
  %28 = getelementptr inbounds %struct.udp_hslot, %struct.udp_hslot* %21, i64 %27
  store %struct.udp_hslot* %28, %struct.udp_hslot** %14, align 8
  %29 = load %struct.udp_hslot*, %struct.udp_hslot** %14, align 8
  %30 = getelementptr inbounds %struct.udp_hslot, %struct.udp_hslot* %29, i32 0, i32 0
  %31 = call i32 @spin_lock(i32* %30)
  %32 = load %struct.udp_hslot*, %struct.udp_hslot** %14, align 8
  %33 = getelementptr inbounds %struct.udp_hslot, %struct.udp_hslot* %32, i32 0, i32 1
  %34 = call %struct.sock* @sk_nulls_head(i32* %33)
  store %struct.sock* %34, %struct.sock** %11, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %36 = call i32 @inet6_iif(%struct.sk_buff* %35)
  store i32 %36, i32* %15, align 4
  %37 = load %struct.net*, %struct.net** %6, align 8
  %38 = load %struct.sock*, %struct.sock** %11, align 8
  %39 = load %struct.udphdr*, %struct.udphdr** %13, align 8
  %40 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.in6_addr*, %struct.in6_addr** %9, align 8
  %43 = load %struct.udphdr*, %struct.udphdr** %13, align 8
  %44 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.in6_addr*, %struct.in6_addr** %8, align 8
  %47 = load i32, i32* %15, align 4
  %48 = call %struct.sock* @udp_v6_mcast_next(%struct.net* %37, %struct.sock* %38, i32 %41, %struct.in6_addr* %42, i32 %45, %struct.in6_addr* %46, i32 %47)
  store %struct.sock* %48, %struct.sock** %11, align 8
  %49 = load %struct.sock*, %struct.sock** %11, align 8
  %50 = icmp ne %struct.sock* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %5
  %52 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %53 = call i32 @kfree_skb(%struct.sk_buff* %52)
  br label %139

54:                                               ; preds = %5
  %55 = load %struct.sock*, %struct.sock** %11, align 8
  store %struct.sock* %55, %struct.sock** %12, align 8
  br label %56

56:                                               ; preds = %102, %54
  %57 = load %struct.net*, %struct.net** %6, align 8
  %58 = load %struct.sock*, %struct.sock** %12, align 8
  %59 = call %struct.sock* @sk_nulls_next(%struct.sock* %58)
  %60 = load %struct.udphdr*, %struct.udphdr** %13, align 8
  %61 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.in6_addr*, %struct.in6_addr** %9, align 8
  %64 = load %struct.udphdr*, %struct.udphdr** %13, align 8
  %65 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.in6_addr*, %struct.in6_addr** %8, align 8
  %68 = load i32, i32* %15, align 4
  %69 = call %struct.sock* @udp_v6_mcast_next(%struct.net* %57, %struct.sock* %59, i32 %62, %struct.in6_addr* %63, i32 %66, %struct.in6_addr* %67, i32 %68)
  store %struct.sock* %69, %struct.sock** %12, align 8
  %70 = icmp ne %struct.sock* %69, null
  br i1 %70, label %71, label %103

71:                                               ; preds = %56
  %72 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %73 = load i32, i32* @GFP_ATOMIC, align 4
  %74 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %72, i32 %73)
  store %struct.sk_buff* %74, %struct.sk_buff** %16, align 8
  %75 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %76 = icmp ne %struct.sk_buff* %75, null
  br i1 %76, label %77, label %102

77:                                               ; preds = %71
  %78 = load %struct.sock*, %struct.sock** %12, align 8
  %79 = call i32 @bh_lock_sock(%struct.sock* %78)
  %80 = load %struct.sock*, %struct.sock** %12, align 8
  %81 = call i32 @sock_owned_by_user(%struct.sock* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %77
  %84 = load %struct.sock*, %struct.sock** %12, align 8
  %85 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %86 = call i32 @udpv6_queue_rcv_skb(%struct.sock* %84, %struct.sk_buff* %85)
  br label %99

87:                                               ; preds = %77
  %88 = load %struct.sock*, %struct.sock** %12, align 8
  %89 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %90 = load %struct.sock*, %struct.sock** %12, align 8
  %91 = getelementptr inbounds %struct.sock, %struct.sock* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @sk_add_backlog(%struct.sock* %88, %struct.sk_buff* %89, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %87
  %96 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %97 = call i32 @kfree_skb(%struct.sk_buff* %96)
  br label %98

98:                                               ; preds = %95, %87
  br label %99

99:                                               ; preds = %98, %83
  %100 = load %struct.sock*, %struct.sock** %12, align 8
  %101 = call i32 @bh_unlock_sock(%struct.sock* %100)
  br label %102

102:                                              ; preds = %99, %71
  br label %56

103:                                              ; preds = %56
  %104 = load %struct.sock*, %struct.sock** %11, align 8
  %105 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %106 = load %struct.sock*, %struct.sock** %11, align 8
  %107 = getelementptr inbounds %struct.sock, %struct.sock* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i64 @sk_rcvqueues_full(%struct.sock* %104, %struct.sk_buff* %105, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %103
  %112 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %113 = call i32 @kfree_skb(%struct.sk_buff* %112)
  br label %139

114:                                              ; preds = %103
  %115 = load %struct.sock*, %struct.sock** %11, align 8
  %116 = call i32 @bh_lock_sock(%struct.sock* %115)
  %117 = load %struct.sock*, %struct.sock** %11, align 8
  %118 = call i32 @sock_owned_by_user(%struct.sock* %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %124, label %120

120:                                              ; preds = %114
  %121 = load %struct.sock*, %struct.sock** %11, align 8
  %122 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %123 = call i32 @udpv6_queue_rcv_skb(%struct.sock* %121, %struct.sk_buff* %122)
  br label %136

124:                                              ; preds = %114
  %125 = load %struct.sock*, %struct.sock** %11, align 8
  %126 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %127 = load %struct.sock*, %struct.sock** %11, align 8
  %128 = getelementptr inbounds %struct.sock, %struct.sock* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i64 @sk_add_backlog(%struct.sock* %125, %struct.sk_buff* %126, i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %124
  %133 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %134 = call i32 @kfree_skb(%struct.sk_buff* %133)
  br label %135

135:                                              ; preds = %132, %124
  br label %136

136:                                              ; preds = %135, %120
  %137 = load %struct.sock*, %struct.sock** %11, align 8
  %138 = call i32 @bh_unlock_sock(%struct.sock* %137)
  br label %139

139:                                              ; preds = %136, %111, %51
  %140 = load %struct.udp_hslot*, %struct.udp_hslot** %14, align 8
  %141 = getelementptr inbounds %struct.udp_hslot, %struct.udp_hslot* %140, i32 0, i32 0
  %142 = call i32 @spin_unlock(i32* %141)
  ret i32 0
}

declare dso_local %struct.udphdr* @udp_hdr(%struct.sk_buff*) #1

declare dso_local i64 @udp_hashfn(%struct.net*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.sock* @sk_nulls_head(i32*) #1

declare dso_local i32 @inet6_iif(%struct.sk_buff*) #1

declare dso_local %struct.sock* @udp_v6_mcast_next(%struct.net*, %struct.sock*, i32, %struct.in6_addr*, i32, %struct.in6_addr*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.sock* @sk_nulls_next(%struct.sock*) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i32 @sock_owned_by_user(%struct.sock*) #1

declare dso_local i32 @udpv6_queue_rcv_skb(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i64 @sk_add_backlog(%struct.sock*, %struct.sk_buff*, i32) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

declare dso_local i64 @sk_rcvqueues_full(%struct.sock*, %struct.sk_buff*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
