; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_ipt_REJECT.c_reject_tg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_ipt_REJECT.c_reject_tg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_target_param = type { i32, %struct.ipt_reject_info* }
%struct.ipt_reject_info = type { i32 }

@ICMP_NET_UNREACH = common dso_local global i32 0, align 4
@ICMP_HOST_UNREACH = common dso_local global i32 0, align 4
@ICMP_PROT_UNREACH = common dso_local global i32 0, align 4
@ICMP_PORT_UNREACH = common dso_local global i32 0, align 4
@ICMP_NET_ANO = common dso_local global i32 0, align 4
@ICMP_HOST_ANO = common dso_local global i32 0, align 4
@ICMP_PKT_FILTERED = common dso_local global i32 0, align 4
@NF_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_target_param*)* @reject_tg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reject_tg(%struct.sk_buff* %0, %struct.xt_target_param* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.xt_target_param*, align 8
  %5 = alloca %struct.ipt_reject_info*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.xt_target_param* %1, %struct.xt_target_param** %4, align 8
  %6 = load %struct.xt_target_param*, %struct.xt_target_param** %4, align 8
  %7 = getelementptr inbounds %struct.xt_target_param, %struct.xt_target_param* %6, i32 0, i32 1
  %8 = load %struct.ipt_reject_info*, %struct.ipt_reject_info** %7, align 8
  store %struct.ipt_reject_info* %8, %struct.ipt_reject_info** %5, align 8
  %9 = load %struct.ipt_reject_info*, %struct.ipt_reject_info** %5, align 8
  %10 = getelementptr inbounds %struct.ipt_reject_info, %struct.ipt_reject_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %47 [
    i32 131, label %12
    i32 133, label %16
    i32 129, label %20
    i32 130, label %24
    i32 132, label %28
    i32 134, label %32
    i32 136, label %36
    i32 128, label %40
    i32 135, label %46
  ]

12:                                               ; preds = %2
  %13 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %14 = load i32, i32* @ICMP_NET_UNREACH, align 4
  %15 = call i32 @send_unreach(%struct.sk_buff* %13, i32 %14)
  br label %47

16:                                               ; preds = %2
  %17 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %18 = load i32, i32* @ICMP_HOST_UNREACH, align 4
  %19 = call i32 @send_unreach(%struct.sk_buff* %17, i32 %18)
  br label %47

20:                                               ; preds = %2
  %21 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %22 = load i32, i32* @ICMP_PROT_UNREACH, align 4
  %23 = call i32 @send_unreach(%struct.sk_buff* %21, i32 %22)
  br label %47

24:                                               ; preds = %2
  %25 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %26 = load i32, i32* @ICMP_PORT_UNREACH, align 4
  %27 = call i32 @send_unreach(%struct.sk_buff* %25, i32 %26)
  br label %47

28:                                               ; preds = %2
  %29 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %30 = load i32, i32* @ICMP_NET_ANO, align 4
  %31 = call i32 @send_unreach(%struct.sk_buff* %29, i32 %30)
  br label %47

32:                                               ; preds = %2
  %33 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %34 = load i32, i32* @ICMP_HOST_ANO, align 4
  %35 = call i32 @send_unreach(%struct.sk_buff* %33, i32 %34)
  br label %47

36:                                               ; preds = %2
  %37 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %38 = load i32, i32* @ICMP_PKT_FILTERED, align 4
  %39 = call i32 @send_unreach(%struct.sk_buff* %37, i32 %38)
  br label %47

40:                                               ; preds = %2
  %41 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %42 = load %struct.xt_target_param*, %struct.xt_target_param** %4, align 8
  %43 = getelementptr inbounds %struct.xt_target_param, %struct.xt_target_param* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @send_reset(%struct.sk_buff* %41, i32 %44)
  br label %46

46:                                               ; preds = %2, %40
  br label %47

47:                                               ; preds = %2, %46, %36, %32, %28, %24, %20, %16, %12
  %48 = load i32, i32* @NF_DROP, align 4
  ret i32 %48
}

declare dso_local i32 @send_unreach(%struct.sk_buff*, i32) #1

declare dso_local i32 @send_reset(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
