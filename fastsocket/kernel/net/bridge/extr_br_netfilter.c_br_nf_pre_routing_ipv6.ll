; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_netfilter.c_br_nf_pre_routing_ipv6.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_netfilter.c_br_nf_pre_routing_ipv6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, i32 }
%struct.net_device = type { i32 }
%struct.ipv6hdr = type { i32, i64, i32 }

@NEXTHDR_HOP = common dso_local global i64 0, align 8
@NF_DROP = common dso_local global i32 0, align 4
@PF_INET6 = common dso_local global i32 0, align 4
@NF_INET_PRE_ROUTING = common dso_local global i32 0, align 4
@br_nf_pre_routing_finish_ipv6 = common dso_local global i32 0, align 4
@NF_STOLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.sk_buff*, %struct.net_device*, %struct.net_device*, i32 (%struct.sk_buff*)*)* @br_nf_pre_routing_ipv6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @br_nf_pre_routing_ipv6(i32 %0, %struct.sk_buff* %1, %struct.net_device* %2, %struct.net_device* %3, i32 (%struct.sk_buff*)* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i32 (%struct.sk_buff*)*, align 8
  %12 = alloca %struct.ipv6hdr*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store %struct.net_device* %2, %struct.net_device** %9, align 8
  store %struct.net_device* %3, %struct.net_device** %10, align 8
  store i32 (%struct.sk_buff*)* %4, i32 (%struct.sk_buff*)** %11, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = icmp ult i64 %17, 24
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  br label %103

20:                                               ; preds = %5
  %21 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %22 = call i32 @pskb_may_pull(%struct.sk_buff* %21, i32 24)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  br label %103

25:                                               ; preds = %20
  %26 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %27 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %26)
  store %struct.ipv6hdr* %27, %struct.ipv6hdr** %12, align 8
  %28 = load %struct.ipv6hdr*, %struct.ipv6hdr** %12, align 8
  %29 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 6
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %103

33:                                               ; preds = %25
  %34 = load %struct.ipv6hdr*, %struct.ipv6hdr** %12, align 8
  %35 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @ntohs(i32 %36)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %33
  %41 = load %struct.ipv6hdr*, %struct.ipv6hdr** %12, align 8
  %42 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @NEXTHDR_HOP, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %66

46:                                               ; preds = %40, %33
  %47 = load i32, i32* %13, align 4
  %48 = sext i32 %47 to i64
  %49 = add i64 %48, 24
  %50 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = icmp ugt i64 %49, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  br label %103

56:                                               ; preds = %46
  %57 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = add i64 %59, 24
  %61 = trunc i64 %60 to i32
  %62 = call i64 @pskb_trim_rcsum(%struct.sk_buff* %57, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  br label %103

65:                                               ; preds = %56
  br label %66

66:                                               ; preds = %65, %40
  %67 = load %struct.ipv6hdr*, %struct.ipv6hdr** %12, align 8
  %68 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @NEXTHDR_HOP, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %66
  %73 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %74 = call i64 @check_hbh_len(%struct.sk_buff* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  br label %103

77:                                               ; preds = %72, %66
  %78 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %79 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @nf_bridge_put(i32 %80)
  %82 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %83 = call i32 @nf_bridge_alloc(%struct.sk_buff* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %77
  %86 = load i32, i32* @NF_DROP, align 4
  store i32 %86, i32* %6, align 4
  br label %105

87:                                               ; preds = %77
  %88 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %89 = call i32 @setup_pre_routing(%struct.sk_buff* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %87
  %92 = load i32, i32* @NF_DROP, align 4
  store i32 %92, i32* %6, align 4
  br label %105

93:                                               ; preds = %87
  %94 = load i32, i32* @PF_INET6, align 4
  %95 = load i32, i32* @NF_INET_PRE_ROUTING, align 4
  %96 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %97 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %98 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @br_nf_pre_routing_finish_ipv6, align 4
  %101 = call i32 @NF_HOOK(i32 %94, i32 %95, %struct.sk_buff* %96, i32 %99, i32* null, i32 %100)
  %102 = load i32, i32* @NF_STOLEN, align 4
  store i32 %102, i32* %6, align 4
  br label %105

103:                                              ; preds = %76, %64, %55, %32, %24, %19
  %104 = load i32, i32* @NF_DROP, align 4
  store i32 %104, i32* %6, align 4
  br label %105

105:                                              ; preds = %103, %93, %91, %85
  %106 = load i32, i32* %6, align 4
  ret i32 %106
}

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i64 @pskb_trim_rcsum(%struct.sk_buff*, i32) #1

declare dso_local i64 @check_hbh_len(%struct.sk_buff*) #1

declare dso_local i32 @nf_bridge_put(i32) #1

declare dso_local i32 @nf_bridge_alloc(%struct.sk_buff*) #1

declare dso_local i32 @setup_pre_routing(%struct.sk_buff*) #1

declare dso_local i32 @NF_HOOK(i32, i32, %struct.sk_buff*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
