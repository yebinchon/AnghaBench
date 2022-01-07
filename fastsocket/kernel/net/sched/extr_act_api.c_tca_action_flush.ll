; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_api.c_tca_action_flush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_api.c_tca_action_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.nlmsghdr = type { i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.tcamsg = type { i64, i64, i32 }
%struct.netlink_callback = type { i32 }
%struct.tc_action = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.sk_buff*, %struct.netlink_callback*, i32, %struct.tc_action*)*, i32 }

@TCA_ACT_MAX = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"tca_action_flush: couldnt create tc_action\0A\00", align 1
@NLMSG_GOODSIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"tca_action_flush: failed skb alloc\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TCA_ACT_KIND = common dso_local global i64 0, align 8
@RTM_DELACTION = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@TCA_ACT_TAB = common dso_local global i32 0, align 4
@NLM_F_ROOT = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@RTNLGRP_TC = common dso_local global i32 0, align 4
@NLM_F_ECHO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr*, %struct.nlmsghdr*, i32)* @tca_action_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tca_action_flush(%struct.nlattr* %0, %struct.nlmsghdr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nlattr*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.nlmsghdr*, align 8
  %11 = alloca %struct.tcamsg*, align 8
  %12 = alloca %struct.netlink_callback, align 4
  %13 = alloca %struct.nlattr*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.nlattr*, align 8
  %17 = alloca %struct.tc_action*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.nlattr* %0, %struct.nlattr** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store i32 %2, i32* %7, align 4
  %20 = load i32, i32* @TCA_ACT_MAX, align 4
  %21 = add nsw i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %14, align 8
  %24 = alloca %struct.nlattr*, i64 %22, align 16
  store i64 %22, i64* %15, align 8
  %25 = call %struct.tc_action* @create_a(i32 0)
  store %struct.tc_action* %25, %struct.tc_action** %17, align 8
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %18, align 4
  %28 = load %struct.tc_action*, %struct.tc_action** %17, align 8
  %29 = icmp eq %struct.tc_action* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %3
  %31 = call i32 @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* %18, align 4
  store i32 %32, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %163

33:                                               ; preds = %3
  %34 = load i32, i32* @NLMSG_GOODSIZE, align 4
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.sk_buff* @alloc_skb(i32 %34, i32 %35)
  store %struct.sk_buff* %36, %struct.sk_buff** %8, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %38 = icmp ne %struct.sk_buff* %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %33
  %40 = call i32 @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %41 = load %struct.tc_action*, %struct.tc_action** %17, align 8
  %42 = call i32 @kfree(%struct.tc_action* %41)
  %43 = load i32, i32* %18, align 4
  store i32 %43, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %163

44:                                               ; preds = %33
  %45 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %46 = call i8* @skb_tail_pointer(%struct.sk_buff* %45)
  store i8* %46, i8** %9, align 8
  %47 = load i32, i32* @TCA_ACT_MAX, align 4
  %48 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %49 = call i32 @nla_parse_nested(%struct.nlattr** %24, i32 %47, %struct.nlattr* %48, i32* null)
  store i32 %49, i32* %18, align 4
  %50 = load i32, i32* %18, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  br label %156

53:                                               ; preds = %44
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %18, align 4
  %56 = load i64, i64* @TCA_ACT_KIND, align 8
  %57 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %56
  %58 = load %struct.nlattr*, %struct.nlattr** %57, align 8
  store %struct.nlattr* %58, %struct.nlattr** %16, align 8
  %59 = load %struct.nlattr*, %struct.nlattr** %16, align 8
  %60 = call %struct.TYPE_2__* @tc_lookup_action(%struct.nlattr* %59)
  %61 = load %struct.tc_action*, %struct.tc_action** %17, align 8
  %62 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %61, i32 0, i32 0
  store %struct.TYPE_2__* %60, %struct.TYPE_2__** %62, align 8
  %63 = load %struct.tc_action*, %struct.tc_action** %17, align 8
  %64 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = icmp eq %struct.TYPE_2__* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %53
  br label %156

68:                                               ; preds = %53
  %69 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %72 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @RTM_DELACTION, align 4
  %75 = call %struct.nlmsghdr* @NLMSG_PUT(%struct.sk_buff* %69, i32 %70, i32 %73, i32 %74, i32 24)
  store %struct.nlmsghdr* %75, %struct.nlmsghdr** %10, align 8
  %76 = load %struct.nlmsghdr*, %struct.nlmsghdr** %10, align 8
  %77 = call %struct.tcamsg* @NLMSG_DATA(%struct.nlmsghdr* %76)
  store %struct.tcamsg* %77, %struct.tcamsg** %11, align 8
  %78 = load i32, i32* @AF_UNSPEC, align 4
  %79 = load %struct.tcamsg*, %struct.tcamsg** %11, align 8
  %80 = getelementptr inbounds %struct.tcamsg, %struct.tcamsg* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  %81 = load %struct.tcamsg*, %struct.tcamsg** %11, align 8
  %82 = getelementptr inbounds %struct.tcamsg, %struct.tcamsg* %81, i32 0, i32 1
  store i64 0, i64* %82, align 8
  %83 = load %struct.tcamsg*, %struct.tcamsg** %11, align 8
  %84 = getelementptr inbounds %struct.tcamsg, %struct.tcamsg* %83, i32 0, i32 0
  store i64 0, i64* %84, align 8
  %85 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %86 = load i32, i32* @TCA_ACT_TAB, align 4
  %87 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %85, i32 %86)
  store %struct.nlattr* %87, %struct.nlattr** %13, align 8
  %88 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %89 = icmp eq %struct.nlattr* %88, null
  br i1 %89, label %90, label %91

90:                                               ; preds = %68
  br label %148

91:                                               ; preds = %68
  %92 = load %struct.tc_action*, %struct.tc_action** %17, align 8
  %93 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %92, i32 0, i32 0
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32 (%struct.sk_buff*, %struct.netlink_callback*, i32, %struct.tc_action*)*, i32 (%struct.sk_buff*, %struct.netlink_callback*, i32, %struct.tc_action*)** %95, align 8
  %97 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %98 = load i32, i32* @RTM_DELACTION, align 4
  %99 = load %struct.tc_action*, %struct.tc_action** %17, align 8
  %100 = call i32 %96(%struct.sk_buff* %97, %struct.netlink_callback* %12, i32 %98, %struct.tc_action* %99)
  store i32 %100, i32* %18, align 4
  %101 = load i32, i32* %18, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %91
  br label %148

104:                                              ; preds = %91
  %105 = load i32, i32* %18, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  br label %157

108:                                              ; preds = %104
  %109 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %110 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %111 = call i32 @nla_nest_end(%struct.sk_buff* %109, %struct.nlattr* %110)
  %112 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %113 = call i8* @skb_tail_pointer(%struct.sk_buff* %112)
  %114 = load i8*, i8** %9, align 8
  %115 = ptrtoint i8* %113 to i64
  %116 = ptrtoint i8* %114 to i64
  %117 = sub i64 %115, %116
  %118 = trunc i64 %117 to i32
  %119 = load %struct.nlmsghdr*, %struct.nlmsghdr** %10, align 8
  %120 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 4
  %121 = load i32, i32* @NLM_F_ROOT, align 4
  %122 = load %struct.nlmsghdr*, %struct.nlmsghdr** %10, align 8
  %123 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = or i32 %124, %121
  store i32 %125, i32* %123, align 4
  %126 = load %struct.tc_action*, %struct.tc_action** %17, align 8
  %127 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %126, i32 0, i32 0
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @module_put(i32 %130)
  %132 = load %struct.tc_action*, %struct.tc_action** %17, align 8
  %133 = call i32 @kfree(%struct.tc_action* %132)
  %134 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* @RTNLGRP_TC, align 4
  %137 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %138 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @NLM_F_ECHO, align 4
  %141 = and i32 %139, %140
  %142 = call i32 @rtnetlink_send(%struct.sk_buff* %134, i32* @init_net, i32 %135, i32 %136, i32 %141)
  store i32 %142, i32* %18, align 4
  %143 = load i32, i32* %18, align 4
  %144 = icmp sgt i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %108
  store i32 0, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %163

146:                                              ; preds = %108
  %147 = load i32, i32* %18, align 4
  store i32 %147, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %163

148:                                              ; preds = %103, %90
  br label %149

149:                                              ; preds = %148
  %150 = load %struct.tc_action*, %struct.tc_action** %17, align 8
  %151 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %150, i32 0, i32 0
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @module_put(i32 %154)
  br label %156

156:                                              ; preds = %149, %67, %52
  br label %157

157:                                              ; preds = %156, %107
  %158 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %159 = call i32 @kfree_skb(%struct.sk_buff* %158)
  %160 = load %struct.tc_action*, %struct.tc_action** %17, align 8
  %161 = call i32 @kfree(%struct.tc_action* %160)
  %162 = load i32, i32* %18, align 4
  store i32 %162, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %163

163:                                              ; preds = %157, %146, %145, %39, %30
  %164 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %164)
  %165 = load i32, i32* %4, align 4
  ret i32 %165
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.tc_action* @create_a(i32) #2

declare dso_local i32 @pr_debug(i8*) #2

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #2

declare dso_local i32 @kfree(%struct.tc_action*) #2

declare dso_local i8* @skb_tail_pointer(%struct.sk_buff*) #2

declare dso_local i32 @nla_parse_nested(%struct.nlattr**, i32, %struct.nlattr*, i32*) #2

declare dso_local %struct.TYPE_2__* @tc_lookup_action(%struct.nlattr*) #2

declare dso_local %struct.nlmsghdr* @NLMSG_PUT(%struct.sk_buff*, i32, i32, i32, i32) #2

declare dso_local %struct.tcamsg* @NLMSG_DATA(%struct.nlmsghdr*) #2

declare dso_local %struct.nlattr* @nla_nest_start(%struct.sk_buff*, i32) #2

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #2

declare dso_local i32 @module_put(i32) #2

declare dso_local i32 @rtnetlink_send(%struct.sk_buff*, i32*, i32, i32, i32) #2

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
