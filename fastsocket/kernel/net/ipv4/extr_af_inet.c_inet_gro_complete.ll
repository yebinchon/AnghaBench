; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_af_inet.c_inet_gro_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_af_inet.c_inet_gro_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.net_protocol = type { i32 (%struct.sk_buff*)* }
%struct.net_offload = type { i32 (%struct.sk_buff*)* }
%struct.iphdr = type { i32, i32, i32 }

@MAX_INET_PROTOS = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@inet_offloads = common dso_local global i32* null, align 8
@inet_protos = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @inet_gro_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet_gro_complete(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.net_protocol*, align 8
  %4 = alloca %struct.net_offload*, align 8
  %5 = alloca %struct.iphdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %10 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %9)
  store %struct.iphdr* %10, %struct.iphdr** %5, align 8
  %11 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %12 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @MAX_INET_PROTOS, align 4
  %15 = sub nsw i32 %14, 1
  %16 = and i32 %13, %15
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* @ENOSYS, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %7, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %23 = call i64 @skb_network_offset(%struct.sk_buff* %22)
  %24 = sub nsw i64 %21, %23
  %25 = call i32 @htons(i64 %24)
  store i32 %25, i32* %8, align 4
  %26 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %27 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %26, i32 0, i32 2
  %28 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %29 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @csum_replace2(i32* %27, i32 %30, i32 %31)
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %35 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = call i32 (...) @rcu_read_lock()
  %37 = load i32*, i32** @inet_offloads, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @rcu_dereference(i32 %41)
  %43 = bitcast i8* %42 to %struct.net_offload*
  store %struct.net_offload* %43, %struct.net_offload** %4, align 8
  %44 = load %struct.net_offload*, %struct.net_offload** %4, align 8
  %45 = icmp ne %struct.net_offload* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %1
  %47 = load %struct.net_offload*, %struct.net_offload** %4, align 8
  %48 = getelementptr inbounds %struct.net_offload, %struct.net_offload* %47, i32 0, i32 0
  %49 = load i32 (%struct.sk_buff*)*, i32 (%struct.sk_buff*)** %48, align 8
  %50 = icmp ne i32 (%struct.sk_buff*)* %49, null
  %51 = xor i1 %50, true
  br label %52

52:                                               ; preds = %46, %1
  %53 = phi i1 [ true, %1 ], [ %51, %46 ]
  %54 = zext i1 %53 to i32
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %80

57:                                               ; preds = %52
  %58 = load i32*, i32** @inet_protos, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @rcu_dereference(i32 %62)
  %64 = bitcast i8* %63 to %struct.net_protocol*
  store %struct.net_protocol* %64, %struct.net_protocol** %3, align 8
  %65 = load %struct.net_protocol*, %struct.net_protocol** %3, align 8
  %66 = icmp ne %struct.net_protocol* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %57
  %68 = load %struct.net_protocol*, %struct.net_protocol** %3, align 8
  %69 = getelementptr inbounds %struct.net_protocol, %struct.net_protocol* %68, i32 0, i32 0
  %70 = load i32 (%struct.sk_buff*)*, i32 (%struct.sk_buff*)** %69, align 8
  %71 = icmp ne i32 (%struct.sk_buff*)* %70, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %67, %57
  %73 = call i32 @WARN_ON(i32 1)
  br label %87

74:                                               ; preds = %67
  %75 = load %struct.net_protocol*, %struct.net_protocol** %3, align 8
  %76 = getelementptr inbounds %struct.net_protocol, %struct.net_protocol* %75, i32 0, i32 0
  %77 = load i32 (%struct.sk_buff*)*, i32 (%struct.sk_buff*)** %76, align 8
  %78 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %79 = call i32 %77(%struct.sk_buff* %78)
  store i32 %79, i32* %7, align 4
  br label %86

80:                                               ; preds = %52
  %81 = load %struct.net_offload*, %struct.net_offload** %4, align 8
  %82 = getelementptr inbounds %struct.net_offload, %struct.net_offload* %81, i32 0, i32 0
  %83 = load i32 (%struct.sk_buff*)*, i32 (%struct.sk_buff*)** %82, align 8
  %84 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %85 = call i32 %83(%struct.sk_buff* %84)
  store i32 %85, i32* %7, align 4
  br label %86

86:                                               ; preds = %80, %74
  br label %87

87:                                               ; preds = %86, %72
  %88 = call i32 (...) @rcu_read_unlock()
  %89 = load i32, i32* %7, align 4
  ret i32 %89
}

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @htons(i64) #1

declare dso_local i64 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i32 @csum_replace2(i32*, i32, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i8* @rcu_dereference(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
