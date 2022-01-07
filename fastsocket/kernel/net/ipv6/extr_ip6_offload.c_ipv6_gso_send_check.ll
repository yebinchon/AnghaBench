; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_offload.c_ipv6_gso_send_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_offload.c_ipv6_gso_send_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ipv6hdr = type { i32 }
%struct.net_offload = type { i32 (%struct.sk_buff*)* }
%struct.inet6_protocol = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@inet6_offloads = common dso_local global i32* null, align 8
@inet6_protos = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @ipv6_gso_send_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipv6_gso_send_check(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.ipv6hdr*, align 8
  %4 = alloca %struct.net_offload*, align 8
  %5 = alloca %struct.inet6_protocol*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %11 = call i32 @pskb_may_pull(%struct.sk_buff* %10, i32 4)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %84

18:                                               ; preds = %1
  %19 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %20 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %19)
  store %struct.ipv6hdr* %20, %struct.ipv6hdr** %3, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %22 = call i32 @__skb_pull(%struct.sk_buff* %21, i32 4)
  %23 = load i32, i32* @EPROTONOSUPPORT, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %7, align 4
  %25 = call i32 (...) @rcu_read_lock()
  %26 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %27 = load %struct.ipv6hdr*, %struct.ipv6hdr** %3, align 8
  %28 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ipv6_gso_pull_exthdrs(%struct.sk_buff* %26, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32*, i32** @inet6_offloads, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @rcu_dereference(i32 %35)
  %37 = bitcast i8* %36 to %struct.net_offload*
  store %struct.net_offload* %37, %struct.net_offload** %4, align 8
  %38 = load %struct.net_offload*, %struct.net_offload** %4, align 8
  %39 = icmp ne %struct.net_offload* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %18
  %41 = load %struct.net_offload*, %struct.net_offload** %4, align 8
  %42 = getelementptr inbounds %struct.net_offload, %struct.net_offload* %41, i32 0, i32 0
  %43 = load i32 (%struct.sk_buff*)*, i32 (%struct.sk_buff*)** %42, align 8
  %44 = icmp ne i32 (%struct.sk_buff*)* %43, null
  br label %45

45:                                               ; preds = %40, %18
  %46 = phi i1 [ false, %18 ], [ %44, %40 ]
  %47 = zext i1 %46 to i32
  %48 = call i64 @likely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %52 = call i32 @skb_reset_transport_header(%struct.sk_buff* %51)
  %53 = load %struct.net_offload*, %struct.net_offload** %4, align 8
  %54 = getelementptr inbounds %struct.net_offload, %struct.net_offload* %53, i32 0, i32 0
  %55 = load i32 (%struct.sk_buff*)*, i32 (%struct.sk_buff*)** %54, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %57 = call i32 %55(%struct.sk_buff* %56)
  store i32 %57, i32* %7, align 4
  br label %82

58:                                               ; preds = %45
  %59 = load i32*, i32** @inet6_protos, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @rcu_dereference(i32 %63)
  %65 = bitcast i8* %64 to %struct.inet6_protocol*
  store %struct.inet6_protocol* %65, %struct.inet6_protocol** %5, align 8
  %66 = load %struct.inet6_protocol*, %struct.inet6_protocol** %5, align 8
  %67 = icmp ne %struct.inet6_protocol* %66, null
  br i1 %67, label %68, label %81

68:                                               ; preds = %58
  %69 = load %struct.inet6_protocol*, %struct.inet6_protocol** %5, align 8
  %70 = getelementptr inbounds %struct.inet6_protocol, %struct.inet6_protocol* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %68
  %74 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %75 = call i32 @skb_reset_transport_header(%struct.sk_buff* %74)
  %76 = load %struct.net_offload*, %struct.net_offload** %4, align 8
  %77 = getelementptr inbounds %struct.net_offload, %struct.net_offload* %76, i32 0, i32 0
  %78 = load i32 (%struct.sk_buff*)*, i32 (%struct.sk_buff*)** %77, align 8
  %79 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %80 = call i32 %78(%struct.sk_buff* %79)
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %73, %68, %58
  br label %82

82:                                               ; preds = %81, %50
  %83 = call i32 (...) @rcu_read_unlock()
  br label %84

84:                                               ; preds = %82, %17
  %85 = load i32, i32* %7, align 4
  ret i32 %85
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @__skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @ipv6_gso_pull_exthdrs(%struct.sk_buff*, i32) #1

declare dso_local i8* @rcu_dereference(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
