; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_state.c_state_mt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_state.c_state_mt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_match_param = type { %struct.xt_state_info* }
%struct.xt_state_info = type { i32 }

@XT_STATE_UNTRACKED = common dso_local global i32 0, align 4
@XT_STATE_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_match_param*)* @state_mt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @state_mt(%struct.sk_buff* %0, %struct.xt_match_param* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.xt_match_param*, align 8
  %5 = alloca %struct.xt_state_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.xt_match_param* %1, %struct.xt_match_param** %4, align 8
  %8 = load %struct.xt_match_param*, %struct.xt_match_param** %4, align 8
  %9 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %8, i32 0, i32 0
  %10 = load %struct.xt_state_info*, %struct.xt_state_info** %9, align 8
  store %struct.xt_state_info* %10, %struct.xt_state_info** %5, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %12 = call i64 @nf_ct_is_untracked(%struct.sk_buff* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @XT_STATE_UNTRACKED, align 4
  store i32 %15, i32* %7, align 4
  br label %26

16:                                               ; preds = %2
  %17 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %18 = call i32 @nf_ct_get(%struct.sk_buff* %17, i32* %6)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* @XT_STATE_INVALID, align 4
  store i32 %21, i32* %7, align 4
  br label %25

22:                                               ; preds = %16
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @XT_STATE_BIT(i32 %23)
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %22, %20
  br label %26

26:                                               ; preds = %25, %14
  %27 = load %struct.xt_state_info*, %struct.xt_state_info** %5, align 8
  %28 = getelementptr inbounds %struct.xt_state_info, %struct.xt_state_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %29, %30
  ret i32 %31
}

declare dso_local i64 @nf_ct_is_untracked(%struct.sk_buff*) #1

declare dso_local i32 @nf_ct_get(%struct.sk_buff*, i32*) #1

declare dso_local i32 @XT_STATE_BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
