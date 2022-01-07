; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_policy.c_policy_mt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_policy.c_policy_mt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_match_param = type { %struct.TYPE_2__*, %struct.xt_policy_info* }
%struct.TYPE_2__ = type { i32 }
%struct.xt_policy_info = type { i32 }

@XT_POLICY_MATCH_IN = common dso_local global i32 0, align 4
@XT_POLICY_MATCH_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_match_param*)* @policy_mt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @policy_mt(%struct.sk_buff* %0, %struct.xt_match_param* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.xt_match_param*, align 8
  %5 = alloca %struct.xt_policy_info*, align 8
  %6 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.xt_match_param* %1, %struct.xt_match_param** %4, align 8
  %7 = load %struct.xt_match_param*, %struct.xt_match_param** %4, align 8
  %8 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %7, i32 0, i32 1
  %9 = load %struct.xt_policy_info*, %struct.xt_policy_info** %8, align 8
  store %struct.xt_policy_info* %9, %struct.xt_policy_info** %5, align 8
  %10 = load %struct.xt_policy_info*, %struct.xt_policy_info** %5, align 8
  %11 = getelementptr inbounds %struct.xt_policy_info, %struct.xt_policy_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @XT_POLICY_MATCH_IN, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %2
  %17 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %18 = load %struct.xt_policy_info*, %struct.xt_policy_info** %5, align 8
  %19 = load %struct.xt_match_param*, %struct.xt_match_param** %4, align 8
  %20 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @match_policy_in(%struct.sk_buff* %17, %struct.xt_policy_info* %18, i32 %23)
  store i32 %24, i32* %6, align 4
  br label %34

25:                                               ; preds = %2
  %26 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %27 = load %struct.xt_policy_info*, %struct.xt_policy_info** %5, align 8
  %28 = load %struct.xt_match_param*, %struct.xt_match_param** %4, align 8
  %29 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @match_policy_out(%struct.sk_buff* %26, %struct.xt_policy_info* %27, i32 %32)
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %25, %16
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = load %struct.xt_policy_info*, %struct.xt_policy_info** %5, align 8
  %39 = getelementptr inbounds %struct.xt_policy_info, %struct.xt_policy_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @XT_POLICY_MATCH_NONE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 1, i32 0
  store i32 %45, i32* %6, align 4
  br label %55

46:                                               ; preds = %34
  %47 = load %struct.xt_policy_info*, %struct.xt_policy_info** %5, align 8
  %48 = getelementptr inbounds %struct.xt_policy_info, %struct.xt_policy_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @XT_POLICY_MATCH_NONE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  store i32 0, i32* %6, align 4
  br label %54

54:                                               ; preds = %53, %46
  br label %55

55:                                               ; preds = %54, %37
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i32 @match_policy_in(%struct.sk_buff*, %struct.xt_policy_info*, i32) #1

declare dso_local i32 @match_policy_out(%struct.sk_buff*, %struct.xt_policy_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
