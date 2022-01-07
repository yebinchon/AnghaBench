; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_ipt_ecn.c_ecn_mt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_ipt_ecn.c_ecn_mt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_match_param = type { i32, %struct.ipt_ecn_info* }
%struct.ipt_ecn_info = type { i32 }
%struct.TYPE_2__ = type { i64 }

@IPT_ECN_OP_MATCH_IP = common dso_local global i32 0, align 4
@IPT_ECN_OP_MATCH_ECE = common dso_local global i32 0, align 4
@IPT_ECN_OP_MATCH_CWR = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_match_param*)* @ecn_mt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecn_mt(%struct.sk_buff* %0, %struct.xt_match_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_match_param*, align 8
  %6 = alloca %struct.ipt_ecn_info*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_match_param* %1, %struct.xt_match_param** %5, align 8
  %7 = load %struct.xt_match_param*, %struct.xt_match_param** %5, align 8
  %8 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %7, i32 0, i32 1
  %9 = load %struct.ipt_ecn_info*, %struct.ipt_ecn_info** %8, align 8
  store %struct.ipt_ecn_info* %9, %struct.ipt_ecn_info** %6, align 8
  %10 = load %struct.ipt_ecn_info*, %struct.ipt_ecn_info** %6, align 8
  %11 = getelementptr inbounds %struct.ipt_ecn_info, %struct.ipt_ecn_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @IPT_ECN_OP_MATCH_IP, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = load %struct.ipt_ecn_info*, %struct.ipt_ecn_info** %6, align 8
  %19 = call i32 @match_ip(%struct.sk_buff* %17, %struct.ipt_ecn_info* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %51

22:                                               ; preds = %16
  br label %23

23:                                               ; preds = %22, %2
  %24 = load %struct.ipt_ecn_info*, %struct.ipt_ecn_info** %6, align 8
  %25 = getelementptr inbounds %struct.ipt_ecn_info, %struct.ipt_ecn_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @IPT_ECN_OP_MATCH_ECE, align 4
  %28 = load i32, i32* @IPT_ECN_OP_MATCH_CWR, align 4
  %29 = or i32 %27, %28
  %30 = and i32 %26, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %50

32:                                               ; preds = %23
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = call %struct.TYPE_2__* @ip_hdr(%struct.sk_buff* %33)
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @IPPROTO_TCP, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %51

40:                                               ; preds = %32
  %41 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %42 = load %struct.ipt_ecn_info*, %struct.ipt_ecn_info** %6, align 8
  %43 = load %struct.xt_match_param*, %struct.xt_match_param** %5, align 8
  %44 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @match_tcp(%struct.sk_buff* %41, %struct.ipt_ecn_info* %42, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %51

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %49, %23
  store i32 1, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %48, %39, %21
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @match_ip(%struct.sk_buff*, %struct.ipt_ecn_info*) #1

declare dso_local %struct.TYPE_2__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @match_tcp(%struct.sk_buff*, %struct.ipt_ecn_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
