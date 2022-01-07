; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_offload.c_ipv6_gso_pull_exthdrs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_offload.c_ipv6_gso_pull_exthdrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.net_offload = type { i32 }
%struct.inet6_protocol = type { i32 }
%struct.ipv6_opt_hdr = type { i32 }

@NEXTHDR_HOP = common dso_local global i32 0, align 4
@inet6_offloads = common dso_local global i32* null, align 8
@INET6_PROTO_GSO_EXTHDR = common dso_local global i32 0, align 4
@inet6_protos = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32)* @ipv6_gso_pull_exthdrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipv6_gso_pull_exthdrs(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_offload*, align 8
  %6 = alloca %struct.inet6_protocol*, align 8
  %7 = alloca %struct.ipv6_opt_hdr*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.net_offload* null, %struct.net_offload** %5, align 8
  store %struct.inet6_protocol* null, %struct.inet6_protocol** %6, align 8
  br label %9

9:                                                ; preds = %80, %2
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @NEXTHDR_HOP, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %54

13:                                               ; preds = %9
  %14 = load i32*, i32** @inet6_offloads, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @rcu_dereference(i32 %18)
  %20 = bitcast i8* %19 to %struct.net_offload*
  store %struct.net_offload* %20, %struct.net_offload** %5, align 8
  %21 = load %struct.net_offload*, %struct.net_offload** %5, align 8
  %22 = call i64 @likely(%struct.net_offload* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %13
  %25 = load %struct.net_offload*, %struct.net_offload** %5, align 8
  %26 = getelementptr inbounds %struct.net_offload, %struct.net_offload* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @INET6_PROTO_GSO_EXTHDR, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %24
  br label %87

32:                                               ; preds = %24
  br label %53

33:                                               ; preds = %13
  %34 = load i32*, i32** @inet6_protos, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @rcu_dereference(i32 %38)
  %40 = bitcast i8* %39 to %struct.inet6_protocol*
  store %struct.inet6_protocol* %40, %struct.inet6_protocol** %6, align 8
  %41 = load %struct.inet6_protocol*, %struct.inet6_protocol** %6, align 8
  %42 = icmp ne %struct.inet6_protocol* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %33
  br label %87

44:                                               ; preds = %33
  %45 = load %struct.inet6_protocol*, %struct.inet6_protocol** %6, align 8
  %46 = getelementptr inbounds %struct.inet6_protocol, %struct.inet6_protocol* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @INET6_PROTO_GSO_EXTHDR, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %44
  br label %87

52:                                               ; preds = %44
  br label %53

53:                                               ; preds = %52, %32
  br label %54

54:                                               ; preds = %53, %9
  %55 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %56 = call i32 @pskb_may_pull(%struct.sk_buff* %55, i32 8)
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %87

63:                                               ; preds = %54
  %64 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %65 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to i8*
  %68 = bitcast i8* %67 to %struct.ipv6_opt_hdr*
  store %struct.ipv6_opt_hdr* %68, %struct.ipv6_opt_hdr** %7, align 8
  %69 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %7, align 8
  %70 = call i32 @ipv6_optlen(%struct.ipv6_opt_hdr* %69)
  store i32 %70, i32* %8, align 4
  %71 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @pskb_may_pull(%struct.sk_buff* %71, i32 %72)
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = call i64 @unlikely(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %63
  br label %87

80:                                               ; preds = %63
  %81 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %7, align 8
  %82 = getelementptr inbounds %struct.ipv6_opt_hdr, %struct.ipv6_opt_hdr* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %4, align 4
  %84 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @__skb_pull(%struct.sk_buff* %84, i32 %85)
  br label %9

87:                                               ; preds = %79, %62, %51, %43, %31
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i8* @rcu_dereference(i32) #1

declare dso_local i64 @likely(%struct.net_offload*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @ipv6_optlen(%struct.ipv6_opt_hdr*) #1

declare dso_local i32 @__skb_pull(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
