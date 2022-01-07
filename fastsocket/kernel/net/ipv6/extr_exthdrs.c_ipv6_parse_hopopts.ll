; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_exthdrs.c_ipv6_parse_hopopts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_exthdrs.c_ipv6_parse_hopopts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.inet6_skb_parm = type { i32, i32 }

@tlvprochopopt_lst = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipv6_parse_hopopts(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.inet6_skb_parm*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %5 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %6 = call %struct.inet6_skb_parm* @IP6CB(%struct.sk_buff* %5)
  store %struct.inet6_skb_parm* %6, %struct.inet6_skb_parm** %4, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %8 = call i32 @pskb_may_pull(%struct.sk_buff* %7, i32 12)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %1
  %11 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %13 = call i32* @skb_transport_header(%struct.sk_buff* %12)
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 1
  %17 = shl i32 %16, 3
  %18 = sext i32 %17 to i64
  %19 = add i64 4, %18
  %20 = trunc i64 %19 to i32
  %21 = call i32 @pskb_may_pull(%struct.sk_buff* %11, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %10, %1
  %24 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %25 = call i32 @kfree_skb(%struct.sk_buff* %24)
  store i32 -1, i32* %2, align 4
  br label %49

26:                                               ; preds = %10
  %27 = load %struct.inet6_skb_parm*, %struct.inet6_skb_parm** %4, align 8
  %28 = getelementptr inbounds %struct.inet6_skb_parm, %struct.inet6_skb_parm* %27, i32 0, i32 0
  store i32 4, i32* %28, align 4
  %29 = load i32, i32* @tlvprochopopt_lst, align 4
  %30 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %31 = call i64 @ip6_parse_tlv(i32 %29, %struct.sk_buff* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %26
  %34 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %35 = call i32* @skb_transport_header(%struct.sk_buff* %34)
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  %39 = shl i32 %38, 3
  %40 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %45 = call %struct.inet6_skb_parm* @IP6CB(%struct.sk_buff* %44)
  store %struct.inet6_skb_parm* %45, %struct.inet6_skb_parm** %4, align 8
  %46 = load %struct.inet6_skb_parm*, %struct.inet6_skb_parm** %4, align 8
  %47 = getelementptr inbounds %struct.inet6_skb_parm, %struct.inet6_skb_parm* %46, i32 0, i32 1
  store i32 4, i32* %47, align 4
  store i32 1, i32* %2, align 4
  br label %49

48:                                               ; preds = %26
  store i32 -1, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %33, %23
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.inet6_skb_parm* @IP6CB(%struct.sk_buff*) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i32* @skb_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @ip6_parse_tlv(i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
