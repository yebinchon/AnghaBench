; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_af_inet.c_inet_gso_send_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_af_inet.c_inet_gso_send_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.iphdr = type { i32, i32 }
%struct.net_offload = type { i32 (%struct.sk_buff*)* }
%struct.net_protocol = type { i32 (%struct.sk_buff*)* }

@EINVAL = common dso_local global i32 0, align 4
@MAX_INET_PROTOS = common dso_local global i32 0, align 4
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@inet_offloads = common dso_local global i32* null, align 8
@inet_protos = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @inet_gso_send_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet_gso_send_check(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.iphdr*, align 8
  %4 = alloca %struct.net_offload*, align 8
  %5 = alloca %struct.net_protocol*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %8, align 4
  %11 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %12 = call i32 @pskb_may_pull(%struct.sk_buff* %11, i32 8)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %106

19:                                               ; preds = %1
  %20 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %21 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %20)
  store %struct.iphdr* %21, %struct.iphdr** %3, align 8
  %22 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %23 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %24, 4
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = icmp ult i64 %27, 8
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  br label %106

30:                                               ; preds = %19
  %31 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @pskb_may_pull(%struct.sk_buff* %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %106

40:                                               ; preds = %30
  %41 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @__skb_pull(%struct.sk_buff* %41, i32 %42)
  %44 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %45 = call i32 @skb_reset_transport_header(%struct.sk_buff* %44)
  %46 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %47 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %46)
  store %struct.iphdr* %47, %struct.iphdr** %3, align 8
  %48 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %49 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @MAX_INET_PROTOS, align 4
  %52 = sub nsw i32 %51, 1
  %53 = and i32 %50, %52
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* @EPROTONOSUPPORT, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %8, align 4
  %56 = call i32 (...) @rcu_read_lock()
  %57 = load i32*, i32** @inet_offloads, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @rcu_dereference(i32 %61)
  %63 = bitcast i8* %62 to %struct.net_offload*
  store %struct.net_offload* %63, %struct.net_offload** %4, align 8
  %64 = load %struct.net_offload*, %struct.net_offload** %4, align 8
  %65 = icmp ne %struct.net_offload* %64, null
  br i1 %65, label %66, label %71

66:                                               ; preds = %40
  %67 = load %struct.net_offload*, %struct.net_offload** %4, align 8
  %68 = getelementptr inbounds %struct.net_offload, %struct.net_offload* %67, i32 0, i32 0
  %69 = load i32 (%struct.sk_buff*)*, i32 (%struct.sk_buff*)** %68, align 8
  %70 = icmp ne i32 (%struct.sk_buff*)* %69, null
  br label %71

71:                                               ; preds = %66, %40
  %72 = phi i1 [ false, %40 ], [ %70, %66 ]
  %73 = zext i1 %72 to i32
  %74 = call i64 @likely(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load %struct.net_offload*, %struct.net_offload** %4, align 8
  %78 = getelementptr inbounds %struct.net_offload, %struct.net_offload* %77, i32 0, i32 0
  %79 = load i32 (%struct.sk_buff*)*, i32 (%struct.sk_buff*)** %78, align 8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %81 = call i32 %79(%struct.sk_buff* %80)
  store i32 %81, i32* %8, align 4
  br label %104

82:                                               ; preds = %71
  %83 = load i32*, i32** @inet_protos, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i8* @rcu_dereference(i32 %87)
  %89 = bitcast i8* %88 to %struct.net_protocol*
  store %struct.net_protocol* %89, %struct.net_protocol** %5, align 8
  %90 = load %struct.net_protocol*, %struct.net_protocol** %5, align 8
  %91 = icmp ne %struct.net_protocol* %90, null
  br i1 %91, label %92, label %103

92:                                               ; preds = %82
  %93 = load %struct.net_protocol*, %struct.net_protocol** %5, align 8
  %94 = getelementptr inbounds %struct.net_protocol, %struct.net_protocol* %93, i32 0, i32 0
  %95 = load i32 (%struct.sk_buff*)*, i32 (%struct.sk_buff*)** %94, align 8
  %96 = icmp ne i32 (%struct.sk_buff*)* %95, null
  br i1 %96, label %97, label %103

97:                                               ; preds = %92
  %98 = load %struct.net_protocol*, %struct.net_protocol** %5, align 8
  %99 = getelementptr inbounds %struct.net_protocol, %struct.net_protocol* %98, i32 0, i32 0
  %100 = load i32 (%struct.sk_buff*)*, i32 (%struct.sk_buff*)** %99, align 8
  %101 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %102 = call i32 %100(%struct.sk_buff* %101)
  store i32 %102, i32* %8, align 4
  br label %103

103:                                              ; preds = %97, %92, %82
  br label %104

104:                                              ; preds = %103, %76
  %105 = call i32 (...) @rcu_read_unlock()
  br label %106

106:                                              ; preds = %104, %39, %29, %18
  %107 = load i32, i32* %8, align 4
  ret i32 %107
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @__skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i8* @rcu_dereference(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
