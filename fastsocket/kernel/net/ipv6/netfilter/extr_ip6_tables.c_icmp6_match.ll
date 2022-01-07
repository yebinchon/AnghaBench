; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/netfilter/extr_ip6_tables.c_icmp6_match.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/netfilter/extr_ip6_tables.c_icmp6_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_match_param = type { i64, i32*, i32, %struct.ip6t_icmp* }
%struct.ip6t_icmp = type { i32, i32*, i32 }
%struct.icmp6hdr = type { i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"Dropping evil ICMP tinygram.\0A\00", align 1
@IP6T_ICMP_INV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_match_param*)* @icmp6_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icmp6_match(%struct.sk_buff* %0, %struct.xt_match_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_match_param*, align 8
  %6 = alloca %struct.icmp6hdr*, align 8
  %7 = alloca %struct.icmp6hdr, align 4
  %8 = alloca %struct.ip6t_icmp*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_match_param* %1, %struct.xt_match_param** %5, align 8
  %9 = load %struct.xt_match_param*, %struct.xt_match_param** %5, align 8
  %10 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %9, i32 0, i32 3
  %11 = load %struct.ip6t_icmp*, %struct.ip6t_icmp** %10, align 8
  store %struct.ip6t_icmp* %11, %struct.ip6t_icmp** %8, align 8
  %12 = load %struct.xt_match_param*, %struct.xt_match_param** %5, align 8
  %13 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %60

17:                                               ; preds = %2
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = load %struct.xt_match_param*, %struct.xt_match_param** %5, align 8
  %20 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.icmp6hdr* @skb_header_pointer(%struct.sk_buff* %18, i32 %21, i32 8, %struct.icmp6hdr* %7)
  store %struct.icmp6hdr* %22, %struct.icmp6hdr** %6, align 8
  %23 = load %struct.icmp6hdr*, %struct.icmp6hdr** %6, align 8
  %24 = icmp eq %struct.icmp6hdr* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %17
  %26 = call i32 @duprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.xt_match_param*, %struct.xt_match_param** %5, align 8
  %28 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  store i32 1, i32* %29, align 4
  store i32 0, i32* %3, align 4
  br label %60

30:                                               ; preds = %17
  %31 = load %struct.ip6t_icmp*, %struct.ip6t_icmp** %8, align 8
  %32 = getelementptr inbounds %struct.ip6t_icmp, %struct.ip6t_icmp* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.ip6t_icmp*, %struct.ip6t_icmp** %8, align 8
  %35 = getelementptr inbounds %struct.ip6t_icmp, %struct.ip6t_icmp* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ip6t_icmp*, %struct.ip6t_icmp** %8, align 8
  %40 = getelementptr inbounds %struct.ip6t_icmp, %struct.ip6t_icmp* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.icmp6hdr*, %struct.icmp6hdr** %6, align 8
  %45 = getelementptr inbounds %struct.icmp6hdr, %struct.icmp6hdr* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.icmp6hdr*, %struct.icmp6hdr** %6, align 8
  %48 = getelementptr inbounds %struct.icmp6hdr, %struct.icmp6hdr* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ip6t_icmp*, %struct.ip6t_icmp** %8, align 8
  %51 = getelementptr inbounds %struct.ip6t_icmp, %struct.ip6t_icmp* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @IP6T_ICMP_INV, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i32 @icmp6_type_code_match(i32 %33, i32 %38, i32 %43, i32 %46, i32 %49, i32 %58)
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %30, %25, %16
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.icmp6hdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.icmp6hdr*) #1

declare dso_local i32 @duprintf(i8*) #1

declare dso_local i32 @icmp6_type_code_match(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
