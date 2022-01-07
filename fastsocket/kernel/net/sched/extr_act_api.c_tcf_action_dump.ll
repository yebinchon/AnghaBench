; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_api.c_tcf_action_dump.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_api.c_tcf_action_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tc_action = type { i32, %struct.tc_action* }
%struct.nlattr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcf_action_dump(%struct.sk_buff* %0, %struct.tc_action* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.tc_action*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.tc_action*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.nlattr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.tc_action* %1, %struct.tc_action** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %11, align 4
  br label %15

15:                                               ; preds = %39, %4
  %16 = load %struct.tc_action*, %struct.tc_action** %7, align 8
  store %struct.tc_action* %16, %struct.tc_action** %10, align 8
  %17 = icmp ne %struct.tc_action* %16, null
  br i1 %17, label %18, label %43

18:                                               ; preds = %15
  %19 = load %struct.tc_action*, %struct.tc_action** %10, align 8
  %20 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %19, i32 0, i32 1
  %21 = load %struct.tc_action*, %struct.tc_action** %20, align 8
  store %struct.tc_action* %21, %struct.tc_action** %7, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = load %struct.tc_action*, %struct.tc_action** %10, align 8
  %24 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %22, i32 %25)
  store %struct.nlattr* %26, %struct.nlattr** %12, align 8
  %27 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %28 = icmp eq %struct.nlattr* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %18
  br label %44

30:                                               ; preds = %18
  %31 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %32 = load %struct.tc_action*, %struct.tc_action** %10, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @tcf_action_dump_1(%struct.sk_buff* %31, %struct.tc_action* %32, i32 %33, i32 %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %47

39:                                               ; preds = %30
  %40 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %41 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %42 = call i32 @nla_nest_end(%struct.sk_buff* %40, %struct.nlattr* %41)
  br label %15

43:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  br label %52

44:                                               ; preds = %29
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %11, align 4
  br label %47

47:                                               ; preds = %44, %38
  %48 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %49 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %50 = call i32 @nla_nest_cancel(%struct.sk_buff* %48, %struct.nlattr* %49)
  %51 = load i32, i32* %11, align 4
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %47, %43
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local %struct.nlattr* @nla_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i32 @tcf_action_dump_1(%struct.sk_buff*, %struct.tc_action*, i32, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
