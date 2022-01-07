; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_actions.c_set_ipv6.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_actions.c_set_ipv6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ovs_key_ipv6 = type { i32, i32, i32, i32, i32, i32 }
%struct.ipv6hdr = type { i32, i32, i32, i32 }

@IP6_FH_F_SKIP_RH = common dso_local global i32 0, align 4
@NEXTHDR_ROUTING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.ovs_key_ipv6*)* @set_ipv6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_ipv6(%struct.sk_buff* %0, %struct.ovs_key_ipv6* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ovs_key_ipv6*, align 8
  %6 = alloca %struct.ipv6hdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.ovs_key_ipv6* %1, %struct.ovs_key_ipv6** %5, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = call i64 @skb_network_offset(%struct.sk_buff* %14)
  %16 = add i64 %15, 16
  %17 = call i32 @make_writable(%struct.sk_buff* %13, i64 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %3, align 4
  br label %95

23:                                               ; preds = %2
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %24)
  store %struct.ipv6hdr* %25, %struct.ipv6hdr** %6, align 8
  %26 = load %struct.ipv6hdr*, %struct.ipv6hdr** %6, align 8
  %27 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %26, i32 0, i32 3
  store i32* %27, i32** %8, align 8
  %28 = load %struct.ipv6hdr*, %struct.ipv6hdr** %6, align 8
  %29 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %28, i32 0, i32 2
  store i32* %29, i32** %9, align 8
  %30 = load %struct.ovs_key_ipv6*, %struct.ovs_key_ipv6** %5, align 8
  %31 = getelementptr inbounds %struct.ovs_key_ipv6, %struct.ovs_key_ipv6* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %8, align 8
  %34 = call i64 @memcmp(i32 %32, i32* %33, i32 4)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %23
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = load %struct.ovs_key_ipv6*, %struct.ovs_key_ipv6** %5, align 8
  %39 = getelementptr inbounds %struct.ovs_key_ipv6, %struct.ovs_key_ipv6* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %8, align 8
  %42 = load %struct.ovs_key_ipv6*, %struct.ovs_key_ipv6** %5, align 8
  %43 = getelementptr inbounds %struct.ovs_key_ipv6, %struct.ovs_key_ipv6* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @set_ipv6_addr(%struct.sk_buff* %37, i32 %40, i32* %41, i32 %44, i32 1)
  br label %46

46:                                               ; preds = %36, %23
  %47 = load %struct.ovs_key_ipv6*, %struct.ovs_key_ipv6** %5, align 8
  %48 = getelementptr inbounds %struct.ovs_key_ipv6, %struct.ovs_key_ipv6* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %9, align 8
  %51 = call i64 @memcmp(i32 %49, i32* %50, i32 4)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %78

53:                                               ; preds = %46
  store i32 0, i32* %10, align 4
  %54 = load i32, i32* @IP6_FH_F_SKIP_RH, align 4
  store i32 %54, i32* %11, align 4
  store i32 1, i32* %12, align 4
  %55 = load %struct.ipv6hdr*, %struct.ipv6hdr** %6, align 8
  %56 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @ipv6_ext_hdr(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %53
  %61 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %62 = load i64, i64* @NEXTHDR_ROUTING, align 8
  %63 = call i64 @ipv6_find_hdr(%struct.sk_buff* %61, i32* %10, i64 %62, i32* null, i32* %11)
  %64 = load i64, i64* @NEXTHDR_ROUTING, align 8
  %65 = icmp ne i64 %63, %64
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %12, align 4
  br label %67

67:                                               ; preds = %60, %53
  %68 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %69 = load %struct.ovs_key_ipv6*, %struct.ovs_key_ipv6** %5, align 8
  %70 = getelementptr inbounds %struct.ovs_key_ipv6, %struct.ovs_key_ipv6* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %9, align 8
  %73 = load %struct.ovs_key_ipv6*, %struct.ovs_key_ipv6** %5, align 8
  %74 = getelementptr inbounds %struct.ovs_key_ipv6, %struct.ovs_key_ipv6* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @set_ipv6_addr(%struct.sk_buff* %68, i32 %71, i32* %72, i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %67, %46
  %79 = load %struct.ipv6hdr*, %struct.ipv6hdr** %6, align 8
  %80 = load %struct.ovs_key_ipv6*, %struct.ovs_key_ipv6** %5, align 8
  %81 = getelementptr inbounds %struct.ovs_key_ipv6, %struct.ovs_key_ipv6* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @set_ipv6_tc(%struct.ipv6hdr* %79, i32 %82)
  %84 = load %struct.ipv6hdr*, %struct.ipv6hdr** %6, align 8
  %85 = load %struct.ovs_key_ipv6*, %struct.ovs_key_ipv6** %5, align 8
  %86 = getelementptr inbounds %struct.ovs_key_ipv6, %struct.ovs_key_ipv6* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @ntohl(i32 %87)
  %89 = call i32 @set_ipv6_fl(%struct.ipv6hdr* %84, i32 %88)
  %90 = load %struct.ovs_key_ipv6*, %struct.ovs_key_ipv6** %5, align 8
  %91 = getelementptr inbounds %struct.ovs_key_ipv6, %struct.ovs_key_ipv6* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.ipv6hdr*, %struct.ipv6hdr** %6, align 8
  %94 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 4
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %78, %21
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @make_writable(%struct.sk_buff*, i64) #1

declare dso_local i64 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i64 @memcmp(i32, i32*, i32) #1

declare dso_local i32 @set_ipv6_addr(%struct.sk_buff*, i32, i32*, i32, i32) #1

declare dso_local i64 @ipv6_ext_hdr(i32) #1

declare dso_local i64 @ipv6_find_hdr(%struct.sk_buff*, i32*, i64, i32*, i32*) #1

declare dso_local i32 @set_ipv6_tc(%struct.ipv6hdr*, i32) #1

declare dso_local i32 @set_ipv6_fl(%struct.ipv6hdr*, i32) #1

declare dso_local i32 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
