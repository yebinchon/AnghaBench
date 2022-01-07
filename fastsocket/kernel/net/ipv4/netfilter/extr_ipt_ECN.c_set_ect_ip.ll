; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_ipt_ECN.c_set_ect_ip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_ipt_ECN.c_set_ect_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ipt_ECN_info = type { i32 }
%struct.iphdr = type { i32, i32 }

@IPT_ECN_IP_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.ipt_ECN_info*)* @set_ect_ip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_ect_ip(%struct.sk_buff* %0, %struct.ipt_ECN_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ipt_ECN_info*, align 8
  %6 = alloca %struct.iphdr*, align 8
  %7 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.ipt_ECN_info* %1, %struct.ipt_ECN_info** %5, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %8)
  store %struct.iphdr* %9, %struct.iphdr** %6, align 8
  %10 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %11 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @IPT_ECN_IP_MASK, align 4
  %14 = and i32 %12, %13
  %15 = load %struct.ipt_ECN_info*, %struct.ipt_ECN_info** %5, align 8
  %16 = getelementptr inbounds %struct.ipt_ECN_info, %struct.ipt_ECN_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @IPT_ECN_IP_MASK, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %14, %19
  br i1 %20, label %21, label %56

21:                                               ; preds = %2
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = call i32 @skb_make_writable(%struct.sk_buff* %22, i32 8)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %57

26:                                               ; preds = %21
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %27)
  store %struct.iphdr* %28, %struct.iphdr** %6, align 8
  %29 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %30 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* @IPT_ECN_IP_MASK, align 4
  %33 = xor i32 %32, -1
  %34 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %35 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load %struct.ipt_ECN_info*, %struct.ipt_ECN_info** %5, align 8
  %39 = getelementptr inbounds %struct.ipt_ECN_info, %struct.ipt_ECN_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @IPT_ECN_IP_MASK, align 4
  %42 = and i32 %40, %41
  %43 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %44 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %48 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %47, i32 0, i32 1
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @htons(i32 %49)
  %51 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %52 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @htons(i32 %53)
  %55 = call i32 @csum_replace2(i32* %48, i32 %50, i32 %54)
  br label %56

56:                                               ; preds = %26, %2
  store i32 1, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %25
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @skb_make_writable(%struct.sk_buff*, i32) #1

declare dso_local i32 @csum_replace2(i32*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
