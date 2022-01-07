; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_api.c_tc_dump_action.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_api.c_tc_dump_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.netlink_callback = type { i32, %struct.nlmsghdr* }
%struct.nlmsghdr = type { i32, i32, i32, i32 }
%struct.nlattr = type { i32 }
%struct.tc_action_ops = type { i32 (%struct.sk_buff.0*, %struct.netlink_callback.1*, i32, %struct.tc_action*)*, i32, i32 }
%struct.sk_buff.0 = type opaque
%struct.netlink_callback.1 = type opaque
%struct.tc_action = type opaque
%struct.tc_action.2 = type { %struct.tc_action_ops* }
%struct.tcamsg = type { i64, i64, i32 }
%struct.TYPE_2__ = type { i64 }

@init_net = common dso_local global %struct.net zeroinitializer, align 4
@.str = private unnamed_addr constant [33 x i8] c"tc_dump_action: action bad kind\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"tc_dump_action: %s !capable of dumping table\0A\00", align 1
@AF_UNSPEC = common dso_local global i32 0, align 4
@TCA_ACT_TAB = common dso_local global i32 0, align 4
@RTM_GETACTION = common dso_local global i32 0, align 4
@NLM_F_MULTI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.netlink_callback*)* @tc_dump_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc_dump_action(%struct.sk_buff* %0, %struct.netlink_callback* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.netlink_callback*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.nlmsghdr*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.nlattr*, align 8
  %10 = alloca %struct.tc_action_ops*, align 8
  %11 = alloca %struct.tc_action.2, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.tcamsg*, align 8
  %14 = alloca %struct.nlattr*, align 8
  %15 = alloca %struct.TYPE_2__, align 8
  %16 = alloca %struct.TYPE_2__, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.netlink_callback* %1, %struct.netlink_callback** %5, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.net* @sock_net(i32 %19)
  store %struct.net* %20, %struct.net** %6, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = call i8* @skb_tail_pointer(%struct.sk_buff* %21)
  store i8* %22, i8** %8, align 8
  store i32 0, i32* %12, align 4
  %23 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %24 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %23, i32 0, i32 1
  %25 = load %struct.nlmsghdr*, %struct.nlmsghdr** %24, align 8
  %26 = call %struct.tcamsg* @NLMSG_DATA(%struct.nlmsghdr* %25)
  store %struct.tcamsg* %26, %struct.tcamsg** %13, align 8
  %27 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %28 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %27, i32 0, i32 1
  %29 = load %struct.nlmsghdr*, %struct.nlmsghdr** %28, align 8
  %30 = call %struct.nlattr* @find_dump_kind(%struct.nlmsghdr* %29)
  store %struct.nlattr* %30, %struct.nlattr** %14, align 8
  %31 = load %struct.net*, %struct.net** %6, align 8
  %32 = icmp ne %struct.net* %31, @init_net
  br i1 %32, label %33, label %34

33:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %168

34:                                               ; preds = %2
  %35 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %36 = icmp eq %struct.nlattr* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = call i32 @pr_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %168

39:                                               ; preds = %34
  %40 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %41 = call %struct.tc_action_ops* @tc_lookup_action(%struct.nlattr* %40)
  store %struct.tc_action_ops* %41, %struct.tc_action_ops** %10, align 8
  %42 = load %struct.tc_action_ops*, %struct.tc_action_ops** %10, align 8
  %43 = icmp eq %struct.tc_action_ops* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %168

45:                                               ; preds = %39
  %46 = call i32 @memset(%struct.tc_action.2* %11, i32 0, i32 8)
  %47 = load %struct.tc_action_ops*, %struct.tc_action_ops** %10, align 8
  %48 = getelementptr inbounds %struct.tc_action.2, %struct.tc_action.2* %11, i32 0, i32 0
  store %struct.tc_action_ops* %47, %struct.tc_action_ops** %48, align 8
  %49 = load %struct.tc_action_ops*, %struct.tc_action_ops** %10, align 8
  %50 = getelementptr inbounds %struct.tc_action_ops, %struct.tc_action_ops* %49, i32 0, i32 0
  %51 = load i32 (%struct.sk_buff.0*, %struct.netlink_callback.1*, i32, %struct.tc_action*)*, i32 (%struct.sk_buff.0*, %struct.netlink_callback.1*, i32, %struct.tc_action*)** %50, align 8
  %52 = icmp eq i32 (%struct.sk_buff.0*, %struct.netlink_callback.1*, i32, %struct.tc_action*)* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %45
  %54 = load %struct.tc_action_ops*, %struct.tc_action_ops** %10, align 8
  %55 = getelementptr inbounds %struct.tc_action_ops, %struct.tc_action_ops* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  br label %156

58:                                               ; preds = %45
  %59 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %60 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %61 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @NETLINK_CB(i32 %62)
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i64 %63, i64* %64, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %68 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %67, i32 0, i32 1
  %69 = load %struct.nlmsghdr*, %struct.nlmsghdr** %68, align 8
  %70 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %73 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %72, i32 0, i32 1
  %74 = load %struct.nlmsghdr*, %struct.nlmsghdr** %73, align 8
  %75 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call %struct.nlmsghdr* @NLMSG_PUT(%struct.sk_buff* %59, i64 %66, i32 %71, i32 %76, i32 24)
  store %struct.nlmsghdr* %77, %struct.nlmsghdr** %7, align 8
  %78 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %79 = call %struct.tcamsg* @NLMSG_DATA(%struct.nlmsghdr* %78)
  store %struct.tcamsg* %79, %struct.tcamsg** %13, align 8
  %80 = load i32, i32* @AF_UNSPEC, align 4
  %81 = load %struct.tcamsg*, %struct.tcamsg** %13, align 8
  %82 = getelementptr inbounds %struct.tcamsg, %struct.tcamsg* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  %83 = load %struct.tcamsg*, %struct.tcamsg** %13, align 8
  %84 = getelementptr inbounds %struct.tcamsg, %struct.tcamsg* %83, i32 0, i32 1
  store i64 0, i64* %84, align 8
  %85 = load %struct.tcamsg*, %struct.tcamsg** %13, align 8
  %86 = getelementptr inbounds %struct.tcamsg, %struct.tcamsg* %85, i32 0, i32 0
  store i64 0, i64* %86, align 8
  %87 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %88 = load i32, i32* @TCA_ACT_TAB, align 4
  %89 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %87, i32 %88)
  store %struct.nlattr* %89, %struct.nlattr** %9, align 8
  %90 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %91 = icmp eq %struct.nlattr* %90, null
  br i1 %91, label %92, label %93

92:                                               ; preds = %58
  br label %156

93:                                               ; preds = %58
  %94 = load %struct.tc_action_ops*, %struct.tc_action_ops** %10, align 8
  %95 = getelementptr inbounds %struct.tc_action_ops, %struct.tc_action_ops* %94, i32 0, i32 0
  %96 = load i32 (%struct.sk_buff.0*, %struct.netlink_callback.1*, i32, %struct.tc_action*)*, i32 (%struct.sk_buff.0*, %struct.netlink_callback.1*, i32, %struct.tc_action*)** %95, align 8
  %97 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %98 = bitcast %struct.sk_buff* %97 to %struct.sk_buff.0*
  %99 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %100 = bitcast %struct.netlink_callback* %99 to %struct.netlink_callback.1*
  %101 = load i32, i32* @RTM_GETACTION, align 4
  %102 = bitcast %struct.tc_action.2* %11 to %struct.tc_action*
  %103 = call i32 %96(%struct.sk_buff.0* %98, %struct.netlink_callback.1* %100, i32 %101, %struct.tc_action* %102)
  store i32 %103, i32* %12, align 4
  %104 = load i32, i32* %12, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %93
  br label %156

107:                                              ; preds = %93
  %108 = load i32, i32* %12, align 4
  %109 = icmp sgt i32 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %107
  %111 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %112 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %113 = call i32 @nla_nest_end(%struct.sk_buff* %111, %struct.nlattr* %112)
  %114 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %115 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %12, align 4
  br label %121

117:                                              ; preds = %107
  %118 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %119 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %120 = call i32 @nla_nest_cancel(%struct.sk_buff* %118, %struct.nlattr* %119)
  br label %121

121:                                              ; preds = %117, %110
  %122 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %123 = call i8* @skb_tail_pointer(%struct.sk_buff* %122)
  %124 = load i8*, i8** %8, align 8
  %125 = ptrtoint i8* %123 to i64
  %126 = ptrtoint i8* %124 to i64
  %127 = sub i64 %125, %126
  %128 = trunc i64 %127 to i32
  %129 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %130 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 4
  %131 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %132 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i64 @NETLINK_CB(i32 %133)
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i64 %134, i64* %135, align 8
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %148

139:                                              ; preds = %121
  %140 = load i32, i32* %12, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %139
  %143 = load i32, i32* @NLM_F_MULTI, align 4
  %144 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %145 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = or i32 %146, %143
  store i32 %147, i32* %145, align 4
  br label %148

148:                                              ; preds = %142, %139, %121
  %149 = load %struct.tc_action_ops*, %struct.tc_action_ops** %10, align 8
  %150 = getelementptr inbounds %struct.tc_action_ops, %struct.tc_action_ops* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @module_put(i32 %151)
  %153 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %154 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  store i32 %155, i32* %3, align 4
  br label %168

156:                                              ; preds = %106, %92, %53
  br label %157

157:                                              ; preds = %156
  %158 = load %struct.tc_action_ops*, %struct.tc_action_ops** %10, align 8
  %159 = getelementptr inbounds %struct.tc_action_ops, %struct.tc_action_ops* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @module_put(i32 %160)
  %162 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %163 = load i8*, i8** %8, align 8
  %164 = call i32 @nlmsg_trim(%struct.sk_buff* %162, i8* %163)
  %165 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %166 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  store i32 %167, i32* %3, align 4
  br label %168

168:                                              ; preds = %157, %148, %44, %37, %33
  %169 = load i32, i32* %3, align 4
  ret i32 %169
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local i8* @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local %struct.tcamsg* @NLMSG_DATA(%struct.nlmsghdr*) #1

declare dso_local %struct.nlattr* @find_dump_kind(%struct.nlmsghdr*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local %struct.tc_action_ops* @tc_lookup_action(%struct.nlattr*) #1

declare dso_local i32 @memset(%struct.tc_action.2*, i32, i32) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local %struct.nlmsghdr* @NLMSG_PUT(%struct.sk_buff*, i64, i32, i32, i32) #1

declare dso_local i64 @NETLINK_CB(i32) #1

declare dso_local %struct.nlattr* @nla_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @nlmsg_trim(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
