; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_output.c_ip6_forward_proxy_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_output.c_ip6_forward_proxy_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.ipv6hdr = type { i64, i32 }
%struct.icmp6hdr = type { i32 }

@IPPROTO_ICMPV6 = common dso_local global i64 0, align 8
@IPV6_ADDR_LINKLOCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @ip6_forward_proxy_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6_forward_proxy_check(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.ipv6hdr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.icmp6hdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %9 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %8)
  store %struct.ipv6hdr* %9, %struct.ipv6hdr** %4, align 8
  %10 = load %struct.ipv6hdr*, %struct.ipv6hdr** %4, align 8
  %11 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = call i64 @ipv6_ext_hdr(i64 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %18 = call i32 @ipv6_skip_exthdr(%struct.sk_buff* %17, i32 16, i64* %5)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %67

22:                                               ; preds = %16
  br label %24

23:                                               ; preds = %1
  store i32 16, i32* %6, align 4
  br label %24

24:                                               ; preds = %23, %22
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* @IPPROTO_ICMPV6, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %56

28:                                               ; preds = %24
  %29 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %31 = call i64 @skb_network_header(%struct.sk_buff* %30)
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %31, %33
  %35 = add nsw i64 %34, 1
  %36 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %35, %38
  %40 = call i32 @pskb_may_pull(%struct.sk_buff* %29, i64 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %67

43:                                               ; preds = %28
  %44 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %45 = call i64 @skb_network_header(%struct.sk_buff* %44)
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %45, %47
  %49 = inttoptr i64 %48 to %struct.icmp6hdr*
  store %struct.icmp6hdr* %49, %struct.icmp6hdr** %7, align 8
  %50 = load %struct.icmp6hdr*, %struct.icmp6hdr** %7, align 8
  %51 = getelementptr inbounds %struct.icmp6hdr, %struct.icmp6hdr* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  switch i32 %52, label %54 [
    i32 128, label %53
    i32 129, label %53
    i32 131, label %53
    i32 132, label %53
    i32 130, label %53
  ]

53:                                               ; preds = %43, %43, %43, %43, %43
  store i32 1, i32* %2, align 4
  br label %67

54:                                               ; preds = %43
  br label %55

55:                                               ; preds = %54
  br label %56

56:                                               ; preds = %55, %24
  %57 = load %struct.ipv6hdr*, %struct.ipv6hdr** %4, align 8
  %58 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %57, i32 0, i32 1
  %59 = call i32 @ipv6_addr_type(i32* %58)
  %60 = load i32, i32* @IPV6_ADDR_LINKLOCAL, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %65 = call i32 @dst_link_failure(%struct.sk_buff* %64)
  store i32 -1, i32* %2, align 4
  br label %67

66:                                               ; preds = %56
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %66, %63, %53, %42, %21
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i64 @ipv6_ext_hdr(i64) #1

declare dso_local i32 @ipv6_skip_exthdr(%struct.sk_buff*, i32, i64*) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i64) #1

declare dso_local i64 @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @ipv6_addr_type(i32*) #1

declare dso_local i32 @dst_link_failure(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
