; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_offload.c_ipv6_gro_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_offload.c_ipv6_gro_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.net_offload = type { i32 (%struct.sk_buff*)* }
%struct.inet6_protocol = type { i32 (%struct.sk_buff*)* }
%struct.ipv6hdr = type { i32 }
%struct.TYPE_2__ = type { i64 }

@ENOSYS = common dso_local global i32 0, align 4
@inet6_offloads = common dso_local global i32* null, align 8
@inet6_protos = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @ipv6_gro_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipv6_gro_complete(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.net_offload*, align 8
  %4 = alloca %struct.inet6_protocol*, align 8
  %5 = alloca %struct.ipv6hdr*, align 8
  %6 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %8 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %7)
  store %struct.ipv6hdr* %8, %struct.ipv6hdr** %5, align 8
  %9 = load i32, i32* @ENOSYS, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %6, align 4
  %11 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %15 = call i64 @skb_network_offset(%struct.sk_buff* %14)
  %16 = sub nsw i64 %13, %15
  %17 = sub i64 %16, 4
  %18 = call i32 @htons(i64 %17)
  %19 = load %struct.ipv6hdr*, %struct.ipv6hdr** %5, align 8
  %20 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = call i32 (...) @rcu_read_lock()
  %22 = load i32*, i32** @inet6_offloads, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %24 = call %struct.TYPE_2__* @IPV6_GRO_CB(%struct.sk_buff* %23)
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i32, i32* %22, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @rcu_dereference(i32 %28)
  %30 = bitcast i8* %29 to %struct.net_offload*
  store %struct.net_offload* %30, %struct.net_offload** %3, align 8
  %31 = load %struct.net_offload*, %struct.net_offload** %3, align 8
  %32 = icmp ne %struct.net_offload* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %1
  %34 = load %struct.net_offload*, %struct.net_offload** %3, align 8
  %35 = getelementptr inbounds %struct.net_offload, %struct.net_offload* %34, i32 0, i32 0
  %36 = load i32 (%struct.sk_buff*)*, i32 (%struct.sk_buff*)** %35, align 8
  %37 = icmp ne i32 (%struct.sk_buff*)* %36, null
  %38 = xor i1 %37, true
  br label %39

39:                                               ; preds = %33, %1
  %40 = phi i1 [ true, %1 ], [ %38, %33 ]
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %69

44:                                               ; preds = %39
  %45 = load i32*, i32** @inet6_protos, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %47 = call %struct.TYPE_2__* @IPV6_GRO_CB(%struct.sk_buff* %46)
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i32, i32* %45, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @rcu_dereference(i32 %51)
  %53 = bitcast i8* %52 to %struct.inet6_protocol*
  store %struct.inet6_protocol* %53, %struct.inet6_protocol** %4, align 8
  %54 = load %struct.inet6_protocol*, %struct.inet6_protocol** %4, align 8
  %55 = icmp ne %struct.inet6_protocol* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %44
  %57 = load %struct.inet6_protocol*, %struct.inet6_protocol** %4, align 8
  %58 = getelementptr inbounds %struct.inet6_protocol, %struct.inet6_protocol* %57, i32 0, i32 0
  %59 = load i32 (%struct.sk_buff*)*, i32 (%struct.sk_buff*)** %58, align 8
  %60 = icmp ne i32 (%struct.sk_buff*)* %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %56, %44
  %62 = call i32 @WARN_ON(i32 1)
  br label %76

63:                                               ; preds = %56
  %64 = load %struct.inet6_protocol*, %struct.inet6_protocol** %4, align 8
  %65 = getelementptr inbounds %struct.inet6_protocol, %struct.inet6_protocol* %64, i32 0, i32 0
  %66 = load i32 (%struct.sk_buff*)*, i32 (%struct.sk_buff*)** %65, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %68 = call i32 %66(%struct.sk_buff* %67)
  store i32 %68, i32* %6, align 4
  br label %75

69:                                               ; preds = %39
  %70 = load %struct.net_offload*, %struct.net_offload** %3, align 8
  %71 = getelementptr inbounds %struct.net_offload, %struct.net_offload* %70, i32 0, i32 0
  %72 = load i32 (%struct.sk_buff*)*, i32 (%struct.sk_buff*)** %71, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %74 = call i32 %72(%struct.sk_buff* %73)
  store i32 %74, i32* %6, align 4
  br label %75

75:                                               ; preds = %69, %63
  br label %76

76:                                               ; preds = %75, %61
  %77 = call i32 (...) @rcu_read_unlock()
  %78 = load i32, i32* %6, align 4
  ret i32 %78
}

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @htons(i64) #1

declare dso_local i64 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i8* @rcu_dereference(i32) #1

declare dso_local %struct.TYPE_2__* @IPV6_GRO_CB(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
