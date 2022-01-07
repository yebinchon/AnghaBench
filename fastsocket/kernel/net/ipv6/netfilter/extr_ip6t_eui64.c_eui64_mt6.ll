; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/netfilter/extr_ip6t_eui64.c_eui64_mt6.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/netfilter/extr_ip6t_eui64.c_eui64_mt6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64 }
%struct.xt_match_param = type { i64, i32* }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@ETH_HLEN = common dso_local global i64 0, align 8
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_match_param*)* @eui64_mt6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eui64_mt6(%struct.sk_buff* %0, %struct.xt_match_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_match_param*, align 8
  %6 = alloca [8 x i8], align 1
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_match_param* %1, %struct.xt_match_param** %5, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = call i64 @skb_mac_header(%struct.sk_buff* %7)
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sge i64 %8, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = call i64 @skb_mac_header(%struct.sk_buff* %14)
  %16 = load i64, i64* @ETH_HLEN, align 8
  %17 = add nsw i64 %15, %16
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp sle i64 %17, %20
  br i1 %21, label %31, label %22

22:                                               ; preds = %13, %2
  %23 = load %struct.xt_match_param*, %struct.xt_match_param** %5, align 8
  %24 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load %struct.xt_match_param*, %struct.xt_match_param** %5, align 8
  %29 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  store i32 1, i32* %30, align 4
  store i32 0, i32* %3, align 4
  br label %82

31:                                               ; preds = %22, %13
  %32 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %33 = call i32 @memset(i8* %32, i32 0, i32 8)
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = call %struct.TYPE_6__* @eth_hdr(%struct.sk_buff* %34)
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* @ETH_P_IPV6, align 4
  %39 = call i64 @htons(i32 %38)
  %40 = icmp eq i64 %37, %39
  br i1 %40, label %41, label %81

41:                                               ; preds = %31
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = call %struct.TYPE_5__* @ipv6_hdr(%struct.sk_buff* %42)
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 6
  br i1 %46, label %47, label %80

47:                                               ; preds = %41
  %48 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %49 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %50 = call %struct.TYPE_6__* @eth_hdr(%struct.sk_buff* %49)
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @memcpy(i8* %48, i64 %52, i32 3)
  %54 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %55 = getelementptr inbounds i8, i8* %54, i64 5
  %56 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %57 = call %struct.TYPE_6__* @eth_hdr(%struct.sk_buff* %56)
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, 3
  %61 = call i32 @memcpy(i8* %55, i64 %60, i32 3)
  %62 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 3
  store i8 -1, i8* %62, align 1
  %63 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 4
  store i8 -2, i8* %63, align 1
  %64 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = xor i32 %66, 2
  %68 = trunc i32 %67 to i8
  store i8 %68, i8* %64, align 1
  %69 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %70 = call %struct.TYPE_5__* @ipv6_hdr(%struct.sk_buff* %69)
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, 8
  %75 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %76 = call i32 @memcmp(i64 %74, i8* %75, i32 8)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %47
  store i32 1, i32* %3, align 4
  br label %82

79:                                               ; preds = %47
  br label %80

80:                                               ; preds = %79, %41
  br label %81

81:                                               ; preds = %80, %31
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %81, %78, %27
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i64 @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local %struct.TYPE_6__* @eth_hdr(%struct.sk_buff*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local %struct.TYPE_5__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @memcpy(i8*, i64, i32) #1

declare dso_local i32 @memcmp(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
