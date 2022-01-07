; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_police.c_tcf_act_police_walker.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_police.c_tcf_act_police_walker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_common = type { %struct.tcf_common* }
%struct.sk_buff = type { i32 }
%struct.netlink_callback = type { i32* }
%struct.tc_action = type { i32, %struct.tcf_common* }
%struct.nlattr = type { i32 }

@police_lock = common dso_local global i32 0, align 4
@POL_TAB_MASK = common dso_local global i32 0, align 4
@tcf_police_ht = common dso_local global %struct.tcf_common** null, align 8
@RTM_DELACTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.netlink_callback*, i32, %struct.tc_action*)* @tcf_act_police_walker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_act_police_walker(%struct.sk_buff* %0, %struct.netlink_callback* %1, i32 %2, %struct.tc_action* %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.netlink_callback*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tc_action*, align 8
  %9 = alloca %struct.tcf_common*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.nlattr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.netlink_callback* %1, %struct.netlink_callback** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.tc_action* %3, %struct.tc_action** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %16 = call i32 @read_lock_bh(i32* @police_lock)
  %17 = load %struct.netlink_callback*, %struct.netlink_callback** %6, align 8
  %18 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %22

22:                                               ; preds = %91, %4
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* @POL_TAB_MASK, align 4
  %25 = add nsw i32 %24, 1
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %94

27:                                               ; preds = %22
  %28 = load %struct.tcf_common**, %struct.tcf_common*** @tcf_police_ht, align 8
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* @POL_TAB_MASK, align 4
  %31 = call i64 @tcf_hash(i32 %29, i32 %30)
  %32 = getelementptr inbounds %struct.tcf_common*, %struct.tcf_common** %28, i64 %31
  %33 = load %struct.tcf_common*, %struct.tcf_common** %32, align 8
  store %struct.tcf_common* %33, %struct.tcf_common** %9, align 8
  br label %34

34:                                               ; preds = %86, %27
  %35 = load %struct.tcf_common*, %struct.tcf_common** %9, align 8
  %36 = icmp ne %struct.tcf_common* %35, null
  br i1 %36, label %37, label %90

37:                                               ; preds = %34
  %38 = load i32, i32* %11, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %86

44:                                               ; preds = %37
  %45 = load %struct.tcf_common*, %struct.tcf_common** %9, align 8
  %46 = load %struct.tc_action*, %struct.tc_action** %8, align 8
  %47 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %46, i32 0, i32 1
  store %struct.tcf_common* %45, %struct.tcf_common** %47, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load %struct.tc_action*, %struct.tc_action** %8, align 8
  %50 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %52 = load %struct.tc_action*, %struct.tc_action** %8, align 8
  %53 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %51, i32 %54)
  store %struct.nlattr* %55, %struct.nlattr** %15, align 8
  %56 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %57 = icmp eq %struct.nlattr* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %44
  br label %109

59:                                               ; preds = %44
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @RTM_DELACTION, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %65 = load %struct.tc_action*, %struct.tc_action** %8, align 8
  %66 = call i32 @tcf_action_dump_1(%struct.sk_buff* %64, %struct.tc_action* %65, i32 0, i32 1)
  store i32 %66, i32* %10, align 4
  br label %71

67:                                               ; preds = %59
  %68 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %69 = load %struct.tc_action*, %struct.tc_action** %8, align 8
  %70 = call i32 @tcf_action_dump_1(%struct.sk_buff* %68, %struct.tc_action* %69, i32 0, i32 0)
  store i32 %70, i32* %10, align 4
  br label %71

71:                                               ; preds = %67, %63
  %72 = load i32, i32* %10, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %71
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %11, align 4
  %77 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %78 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %79 = call i32 @nla_nest_cancel(%struct.sk_buff* %77, %struct.nlattr* %78)
  br label %95

80:                                               ; preds = %71
  %81 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %82 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %83 = call i32 @nla_nest_end(%struct.sk_buff* %81, %struct.nlattr* %82)
  %84 = load i32, i32* %14, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %14, align 4
  br label %86

86:                                               ; preds = %80, %43
  %87 = load %struct.tcf_common*, %struct.tcf_common** %9, align 8
  %88 = getelementptr inbounds %struct.tcf_common, %struct.tcf_common* %87, i32 0, i32 0
  %89 = load %struct.tcf_common*, %struct.tcf_common** %88, align 8
  store %struct.tcf_common* %89, %struct.tcf_common** %9, align 8
  br label %34

90:                                               ; preds = %34
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %12, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %12, align 4
  br label %22

94:                                               ; preds = %22
  br label %95

95:                                               ; preds = %109, %94, %74
  %96 = call i32 @read_unlock_bh(i32* @police_lock)
  %97 = load i32, i32* %14, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %95
  %100 = load i32, i32* %14, align 4
  %101 = load %struct.netlink_callback*, %struct.netlink_callback** %6, align 8
  %102 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, %100
  store i32 %106, i32* %104, align 4
  br label %107

107:                                              ; preds = %99, %95
  %108 = load i32, i32* %14, align 4
  ret i32 %108

109:                                              ; preds = %58
  %110 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %111 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %112 = call i32 @nla_nest_cancel(%struct.sk_buff* %110, %struct.nlattr* %111)
  br label %95
}

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i64 @tcf_hash(i32, i32) #1

declare dso_local %struct.nlattr* @nla_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i32 @tcf_action_dump_1(%struct.sk_buff*, %struct.tc_action*, i32, i32) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
