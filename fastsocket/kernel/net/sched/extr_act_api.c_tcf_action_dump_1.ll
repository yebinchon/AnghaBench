; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_api.c_tcf_action_dump_1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_api.c_tcf_action_dump_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tc_action = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32* }
%struct.nlattr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@TCA_KIND = common dso_local global i32 0, align 4
@TCA_OPTIONS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcf_action_dump_1(%struct.sk_buff* %0, %struct.tc_action* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.tc_action*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.nlattr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.tc_action* %1, %struct.tc_action** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %10, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = call i8* @skb_tail_pointer(%struct.sk_buff* %15)
  store i8* %16, i8** %11, align 8
  %17 = load %struct.tc_action*, %struct.tc_action** %7, align 8
  %18 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = icmp eq %struct.TYPE_2__* %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %4
  %22 = load %struct.tc_action*, %struct.tc_action** %7, align 8
  %23 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %21, %4
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %5, align 4
  br label %68

30:                                               ; preds = %21
  %31 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %32 = load i32, i32* @TCA_KIND, align 4
  %33 = load %struct.tc_action*, %struct.tc_action** %7, align 8
  %34 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @NLA_PUT_STRING(%struct.sk_buff* %31, i32 %32, i32 %37)
  %39 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %40 = load %struct.tc_action*, %struct.tc_action** %7, align 8
  %41 = call i64 @tcf_action_copy_stats(%struct.sk_buff* %39, %struct.tc_action* %40, i32 0)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %30
  br label %64

44:                                               ; preds = %30
  %45 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %46 = load i32, i32* @TCA_OPTIONS, align 4
  %47 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %45, i32 %46)
  store %struct.nlattr* %47, %struct.nlattr** %12, align 8
  %48 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %49 = icmp eq %struct.nlattr* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %64

51:                                               ; preds = %44
  %52 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %53 = load %struct.tc_action*, %struct.tc_action** %7, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @tcf_action_dump_old(%struct.sk_buff* %52, %struct.tc_action* %53, i32 %54, i32 %55)
  store i32 %56, i32* %10, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %51
  %59 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %60 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %61 = call i32 @nla_nest_end(%struct.sk_buff* %59, %struct.nlattr* %60)
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %5, align 4
  br label %68

63:                                               ; preds = %51
  br label %64

64:                                               ; preds = %63, %50, %43
  %65 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %66 = load i8*, i8** %11, align 8
  %67 = call i32 @nlmsg_trim(%struct.sk_buff* %65, i8* %66)
  store i32 -1, i32* %5, align 4
  br label %68

68:                                               ; preds = %64, %58, %28
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i8* @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i32 @NLA_PUT_STRING(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @tcf_action_copy_stats(%struct.sk_buff*, %struct.tc_action*, i32) #1

declare dso_local %struct.nlattr* @nla_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i32 @tcf_action_dump_old(%struct.sk_buff*, %struct.tc_action*, i32, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nlmsg_trim(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
