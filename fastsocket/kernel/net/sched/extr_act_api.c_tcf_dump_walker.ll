; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_api.c_tcf_dump_walker.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_api.c_tcf_dump_walker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.netlink_callback = type { i32* }
%struct.tc_action = type { i32, %struct.tcf_common* }
%struct.tcf_common = type { %struct.tcf_common* }
%struct.tcf_hashinfo = type { i32, i32, %struct.tcf_common** }
%struct.nlattr = type { i32 }

@TCA_ACT_MAX_PRIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.netlink_callback*, %struct.tc_action*, %struct.tcf_hashinfo*)* @tcf_dump_walker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_dump_walker(%struct.sk_buff* %0, %struct.netlink_callback* %1, %struct.tc_action* %2, %struct.tcf_hashinfo* %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.netlink_callback*, align 8
  %7 = alloca %struct.tc_action*, align 8
  %8 = alloca %struct.tcf_hashinfo*, align 8
  %9 = alloca %struct.tcf_common*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.nlattr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.netlink_callback* %1, %struct.netlink_callback** %6, align 8
  store %struct.tc_action* %2, %struct.tc_action** %7, align 8
  store %struct.tcf_hashinfo* %3, %struct.tcf_hashinfo** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %16 = load %struct.tcf_hashinfo*, %struct.tcf_hashinfo** %8, align 8
  %17 = getelementptr inbounds %struct.tcf_hashinfo, %struct.tcf_hashinfo* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @read_lock_bh(i32 %18)
  %20 = load %struct.netlink_callback*, %struct.netlink_callback** %6, align 8
  %21 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %25

25:                                               ; preds = %96, %4
  %26 = load i32, i32* %12, align 4
  %27 = load %struct.tcf_hashinfo*, %struct.tcf_hashinfo** %8, align 8
  %28 = getelementptr inbounds %struct.tcf_hashinfo, %struct.tcf_hashinfo* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 1
  %31 = icmp slt i32 %26, %30
  br i1 %31, label %32, label %99

32:                                               ; preds = %25
  %33 = load %struct.tcf_hashinfo*, %struct.tcf_hashinfo** %8, align 8
  %34 = getelementptr inbounds %struct.tcf_hashinfo, %struct.tcf_hashinfo* %33, i32 0, i32 2
  %35 = load %struct.tcf_common**, %struct.tcf_common*** %34, align 8
  %36 = load i32, i32* %12, align 4
  %37 = load %struct.tcf_hashinfo*, %struct.tcf_hashinfo** %8, align 8
  %38 = getelementptr inbounds %struct.tcf_hashinfo, %struct.tcf_hashinfo* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @tcf_hash(i32 %36, i32 %39)
  %41 = getelementptr inbounds %struct.tcf_common*, %struct.tcf_common** %35, i64 %40
  %42 = load %struct.tcf_common*, %struct.tcf_common** %41, align 8
  store %struct.tcf_common* %42, %struct.tcf_common** %9, align 8
  br label %43

43:                                               ; preds = %91, %32
  %44 = load %struct.tcf_common*, %struct.tcf_common** %9, align 8
  %45 = icmp ne %struct.tcf_common* %44, null
  br i1 %45, label %46, label %95

46:                                               ; preds = %43
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %91

53:                                               ; preds = %46
  %54 = load %struct.tcf_common*, %struct.tcf_common** %9, align 8
  %55 = load %struct.tc_action*, %struct.tc_action** %7, align 8
  %56 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %55, i32 0, i32 1
  store %struct.tcf_common* %54, %struct.tcf_common** %56, align 8
  %57 = load i32, i32* %14, align 4
  %58 = load %struct.tc_action*, %struct.tc_action** %7, align 8
  %59 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %61 = load %struct.tc_action*, %struct.tc_action** %7, align 8
  %62 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %60, i32 %63)
  store %struct.nlattr* %64, %struct.nlattr** %15, align 8
  %65 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %66 = icmp eq %struct.nlattr* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %53
  br label %117

68:                                               ; preds = %53
  %69 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %70 = load %struct.tc_action*, %struct.tc_action** %7, align 8
  %71 = call i32 @tcf_action_dump_1(%struct.sk_buff* %69, %struct.tc_action* %70, i32 0, i32 0)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %68
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %11, align 4
  %77 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %78 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %79 = call i32 @nlmsg_trim(%struct.sk_buff* %77, %struct.nlattr* %78)
  br label %100

80:                                               ; preds = %68
  %81 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %82 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %83 = call i32 @nla_nest_end(%struct.sk_buff* %81, %struct.nlattr* %82)
  %84 = load i32, i32* %14, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %14, align 4
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* @TCA_ACT_MAX_PRIO, align 4
  %88 = icmp sge i32 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %80
  br label %100

90:                                               ; preds = %80
  br label %91

91:                                               ; preds = %90, %52
  %92 = load %struct.tcf_common*, %struct.tcf_common** %9, align 8
  %93 = getelementptr inbounds %struct.tcf_common, %struct.tcf_common* %92, i32 0, i32 0
  %94 = load %struct.tcf_common*, %struct.tcf_common** %93, align 8
  store %struct.tcf_common* %94, %struct.tcf_common** %9, align 8
  br label %43

95:                                               ; preds = %43
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %12, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %12, align 4
  br label %25

99:                                               ; preds = %25
  br label %100

100:                                              ; preds = %117, %99, %89, %74
  %101 = load %struct.tcf_hashinfo*, %struct.tcf_hashinfo** %8, align 8
  %102 = getelementptr inbounds %struct.tcf_hashinfo, %struct.tcf_hashinfo* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @read_unlock_bh(i32 %103)
  %105 = load i32, i32* %14, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %100
  %108 = load i32, i32* %14, align 4
  %109 = load %struct.netlink_callback*, %struct.netlink_callback** %6, align 8
  %110 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 0
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, %108
  store i32 %114, i32* %112, align 4
  br label %115

115:                                              ; preds = %107, %100
  %116 = load i32, i32* %14, align 4
  ret i32 %116

117:                                              ; preds = %67
  %118 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %119 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %120 = call i32 @nla_nest_cancel(%struct.sk_buff* %118, %struct.nlattr* %119)
  br label %100
}

declare dso_local i32 @read_lock_bh(i32) #1

declare dso_local i64 @tcf_hash(i32, i32) #1

declare dso_local %struct.nlattr* @nla_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i32 @tcf_action_dump_1(%struct.sk_buff*, %struct.tc_action*, i32, i32) #1

declare dso_local i32 @nlmsg_trim(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @read_unlock_bh(i32) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
