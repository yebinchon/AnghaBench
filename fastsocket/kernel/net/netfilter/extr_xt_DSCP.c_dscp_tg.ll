; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_DSCP.c_dscp_tg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_DSCP.c_dscp_tg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_target_param = type { %struct.xt_DSCP_info* }
%struct.xt_DSCP_info = type { i32 }

@XT_DSCP_SHIFT = common dso_local global i32 0, align 4
@NF_DROP = common dso_local global i32 0, align 4
@XT_DSCP_MASK = common dso_local global i64 0, align 8
@XT_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_target_param*)* @dscp_tg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dscp_tg(%struct.sk_buff* %0, %struct.xt_target_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_target_param*, align 8
  %6 = alloca %struct.xt_DSCP_info*, align 8
  %7 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_target_param* %1, %struct.xt_target_param** %5, align 8
  %8 = load %struct.xt_target_param*, %struct.xt_target_param** %5, align 8
  %9 = getelementptr inbounds %struct.xt_target_param, %struct.xt_target_param* %8, i32 0, i32 0
  %10 = load %struct.xt_DSCP_info*, %struct.xt_DSCP_info** %9, align 8
  store %struct.xt_DSCP_info* %10, %struct.xt_DSCP_info** %6, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = call i32 @ip_hdr(%struct.sk_buff* %11)
  %13 = call i32 @ipv4_get_dsfield(i32 %12)
  %14 = load i32, i32* @XT_DSCP_SHIFT, align 4
  %15 = ashr i32 %13, %14
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.xt_DSCP_info*, %struct.xt_DSCP_info** %6, align 8
  %18 = getelementptr inbounds %struct.xt_DSCP_info, %struct.xt_DSCP_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %16, %19
  br i1 %20, label %21, label %39

21:                                               ; preds = %2
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = call i32 @skb_make_writable(%struct.sk_buff* %22, i32 4)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @NF_DROP, align 4
  store i32 %26, i32* %3, align 4
  br label %41

27:                                               ; preds = %21
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %29 = call i32 @ip_hdr(%struct.sk_buff* %28)
  %30 = load i64, i64* @XT_DSCP_MASK, align 8
  %31 = xor i64 %30, -1
  %32 = trunc i64 %31 to i32
  %33 = load %struct.xt_DSCP_info*, %struct.xt_DSCP_info** %6, align 8
  %34 = getelementptr inbounds %struct.xt_DSCP_info, %struct.xt_DSCP_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @XT_DSCP_SHIFT, align 4
  %37 = shl i32 %35, %36
  %38 = call i32 @ipv4_change_dsfield(i32 %29, i32 %32, i32 %37)
  br label %39

39:                                               ; preds = %27, %2
  %40 = load i32, i32* @XT_CONTINUE, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %39, %25
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @ipv4_get_dsfield(i32) #1

declare dso_local i32 @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @skb_make_writable(%struct.sk_buff*, i32) #1

declare dso_local i32 @ipv4_change_dsfield(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
