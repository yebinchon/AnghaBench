; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_api.c_tca_action_gd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_api.c_tca_action_gd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.nlmsghdr = type { i32, i32 }
%struct.tc_action = type { i32, %struct.tc_action* }
%struct.sk_buff = type { i32 }

@TCA_ACT_MAX_PRIO = common dso_local global i32 0, align 4
@RTM_DELACTION = common dso_local global i32 0, align 4
@NLM_F_ROOT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RTM_GETACTION = common dso_local global i32 0, align 4
@NLMSG_GOODSIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@RTNLGRP_TC = common dso_local global i32 0, align 4
@NLM_F_ECHO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr*, %struct.nlmsghdr*, i32, i32)* @tca_action_gd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tca_action_gd(%struct.nlattr* %0, %struct.nlmsghdr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca %struct.nlmsghdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.tc_action*, align 8
  %15 = alloca %struct.tc_action*, align 8
  %16 = alloca %struct.tc_action*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.sk_buff*, align 8
  store %struct.nlattr* %0, %struct.nlattr** %6, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %19 = load i32, i32* @TCA_ACT_MAX_PRIO, align 4
  %20 = add nsw i32 %19, 1
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %12, align 8
  %23 = alloca %struct.nlattr*, i64 %21, align 16
  store i64 %21, i64* %13, align 8
  store %struct.tc_action* null, %struct.tc_action** %14, align 8
  store %struct.tc_action* null, %struct.tc_action** %16, align 8
  %24 = load i32, i32* @TCA_ACT_MAX_PRIO, align 4
  %25 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %26 = call i32 @nla_parse_nested(%struct.nlattr** %23, i32 %24, %struct.nlattr* %25, i32* null)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i32, i32* %11, align 4
  store i32 %30, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %155

31:                                               ; preds = %4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @RTM_DELACTION, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %55

35:                                               ; preds = %31
  %36 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %37 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @NLM_F_ROOT, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 1
  %44 = load %struct.nlattr*, %struct.nlattr** %43, align 8
  %45 = icmp ne %struct.nlattr* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 1
  %48 = load %struct.nlattr*, %struct.nlattr** %47, align 8
  %49 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @tca_action_flush(%struct.nlattr* %48, %struct.nlmsghdr* %49, i32 %50)
  store i32 %51, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %155

52:                                               ; preds = %42
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %155

55:                                               ; preds = %35, %31
  store i32 1, i32* %10, align 4
  br label %56

56:                                               ; preds = %96, %55
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @TCA_ACT_MAX_PRIO, align 4
  %59 = icmp sle i32 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %56
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %62
  %64 = load %struct.nlattr*, %struct.nlattr** %63, align 8
  %65 = icmp ne %struct.nlattr* %64, null
  br label %66

66:                                               ; preds = %60, %56
  %67 = phi i1 [ false, %56 ], [ %65, %60 ]
  br i1 %67, label %68, label %99

68:                                               ; preds = %66
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %70
  %72 = load %struct.nlattr*, %struct.nlattr** %71, align 8
  %73 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %74 = load i32, i32* %8, align 4
  %75 = call %struct.tc_action* @tcf_action_get_1(%struct.nlattr* %72, %struct.nlmsghdr* %73, i32 %74)
  store %struct.tc_action* %75, %struct.tc_action** %15, align 8
  %76 = load %struct.tc_action*, %struct.tc_action** %15, align 8
  %77 = call i64 @IS_ERR(%struct.tc_action* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %68
  %80 = load %struct.tc_action*, %struct.tc_action** %15, align 8
  %81 = call i32 @PTR_ERR(%struct.tc_action* %80)
  store i32 %81, i32* %11, align 4
  br label %151

82:                                               ; preds = %68
  %83 = load i32, i32* %10, align 4
  %84 = load %struct.tc_action*, %struct.tc_action** %15, align 8
  %85 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load %struct.tc_action*, %struct.tc_action** %14, align 8
  %87 = icmp eq %struct.tc_action* %86, null
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = load %struct.tc_action*, %struct.tc_action** %15, align 8
  store %struct.tc_action* %89, %struct.tc_action** %14, align 8
  br label %94

90:                                               ; preds = %82
  %91 = load %struct.tc_action*, %struct.tc_action** %15, align 8
  %92 = load %struct.tc_action*, %struct.tc_action** %16, align 8
  %93 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %92, i32 0, i32 1
  store %struct.tc_action* %91, %struct.tc_action** %93, align 8
  br label %94

94:                                               ; preds = %90, %88
  %95 = load %struct.tc_action*, %struct.tc_action** %15, align 8
  store %struct.tc_action* %95, %struct.tc_action** %16, align 8
  br label %96

96:                                               ; preds = %94
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %10, align 4
  br label %56

99:                                               ; preds = %66
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* @RTM_GETACTION, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %99
  %104 = load i32, i32* %8, align 4
  %105 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %106 = load %struct.tc_action*, %struct.tc_action** %14, align 8
  %107 = load i32, i32* %9, align 4
  %108 = call i32 @act_get_notify(i32 %104, %struct.nlmsghdr* %105, %struct.tc_action* %106, i32 %107)
  store i32 %108, i32* %11, align 4
  br label %150

109:                                              ; preds = %99
  %110 = load i32, i32* @NLMSG_GOODSIZE, align 4
  %111 = load i32, i32* @GFP_KERNEL, align 4
  %112 = call %struct.sk_buff* @alloc_skb(i32 %110, i32 %111)
  store %struct.sk_buff* %112, %struct.sk_buff** %18, align 8
  %113 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %114 = icmp ne %struct.sk_buff* %113, null
  br i1 %114, label %118, label %115

115:                                              ; preds = %109
  %116 = load i32, i32* @ENOBUFS, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %11, align 4
  br label %151

118:                                              ; preds = %109
  %119 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %120 = load %struct.tc_action*, %struct.tc_action** %14, align 8
  %121 = load i32, i32* %8, align 4
  %122 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %123 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %9, align 4
  %126 = call i64 @tca_get_fill(%struct.sk_buff* %119, %struct.tc_action* %120, i32 %121, i32 %124, i32 0, i32 %125, i32 0, i32 1)
  %127 = icmp sle i64 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %118
  %129 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %130 = call i32 @kfree_skb(%struct.sk_buff* %129)
  %131 = load i32, i32* @EINVAL, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %11, align 4
  br label %151

133:                                              ; preds = %118
  %134 = load %struct.tc_action*, %struct.tc_action** %14, align 8
  %135 = call i32 @tcf_action_destroy(%struct.tc_action* %134, i32 0)
  %136 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* @RTNLGRP_TC, align 4
  %139 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %140 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @NLM_F_ECHO, align 4
  %143 = and i32 %141, %142
  %144 = call i32 @rtnetlink_send(%struct.sk_buff* %136, i32* @init_net, i32 %137, i32 %138, i32 %143)
  store i32 %144, i32* %11, align 4
  %145 = load i32, i32* %11, align 4
  %146 = icmp sgt i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %133
  store i32 0, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %155

148:                                              ; preds = %133
  %149 = load i32, i32* %11, align 4
  store i32 %149, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %155

150:                                              ; preds = %103
  br label %151

151:                                              ; preds = %150, %128, %115, %79
  %152 = load %struct.tc_action*, %struct.tc_action** %14, align 8
  %153 = call i32 @cleanup_a(%struct.tc_action* %152)
  %154 = load i32, i32* %11, align 4
  store i32 %154, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %155

155:                                              ; preds = %151, %148, %147, %52, %46, %29
  %156 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %156)
  %157 = load i32, i32* %5, align 4
  ret i32 %157
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_nested(%struct.nlattr**, i32, %struct.nlattr*, i32*) #2

declare dso_local i32 @tca_action_flush(%struct.nlattr*, %struct.nlmsghdr*, i32) #2

declare dso_local %struct.tc_action* @tcf_action_get_1(%struct.nlattr*, %struct.nlmsghdr*, i32) #2

declare dso_local i64 @IS_ERR(%struct.tc_action*) #2

declare dso_local i32 @PTR_ERR(%struct.tc_action*) #2

declare dso_local i32 @act_get_notify(i32, %struct.nlmsghdr*, %struct.tc_action*, i32) #2

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #2

declare dso_local i64 @tca_get_fill(%struct.sk_buff*, %struct.tc_action*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #2

declare dso_local i32 @tcf_action_destroy(%struct.tc_action*, i32) #2

declare dso_local i32 @rtnetlink_send(%struct.sk_buff*, i32*, i32, i32, i32) #2

declare dso_local i32 @cleanup_a(%struct.tc_action*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
