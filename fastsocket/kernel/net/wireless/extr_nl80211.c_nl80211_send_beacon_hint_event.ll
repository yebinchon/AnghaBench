; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_send_beacon_hint_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_send_beacon_hint_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.wiphy = type { i32 }
%struct.ieee80211_channel = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlattr = type { i32 }

@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@NL80211_CMD_REG_BEACON_HINT = common dso_local global i32 0, align 4
@NL80211_ATTR_WIPHY = common dso_local global i32 0, align 4
@NL80211_ATTR_FREQ_BEFORE = common dso_local global i32 0, align 4
@NL80211_ATTR_FREQ_AFTER = common dso_local global i32 0, align 4
@nl80211_regulatory_mcgrp = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nl80211_send_beacon_hint_event(%struct.wiphy* %0, %struct.ieee80211_channel* %1, %struct.ieee80211_channel* %2) #0 {
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca %struct.ieee80211_channel*, align 8
  %6 = alloca %struct.ieee80211_channel*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.nlattr*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %4, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %5, align 8
  store %struct.ieee80211_channel* %2, %struct.ieee80211_channel** %6, align 8
  %10 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %11 = load i32, i32* @GFP_ATOMIC, align 4
  %12 = call %struct.sk_buff* @nlmsg_new(i32 %10, i32 %11)
  store %struct.sk_buff* %12, %struct.sk_buff** %7, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %14 = icmp ne %struct.sk_buff* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  br label %81

16:                                               ; preds = %3
  %17 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %18 = load i32, i32* @NL80211_CMD_REG_BEACON_HINT, align 4
  %19 = call i8* @nl80211hdr_put(%struct.sk_buff* %17, i32 0, i32 0, i32 0, i32 %18)
  store i8* %19, i8** %8, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %24 = call i32 @nlmsg_free(%struct.sk_buff* %23)
  br label %81

25:                                               ; preds = %16
  %26 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %27 = load i32, i32* @NL80211_ATTR_WIPHY, align 4
  %28 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %29 = call i32 @get_wiphy_idx(%struct.wiphy* %28)
  %30 = call i64 @nla_put_u32(%struct.sk_buff* %26, i32 %27, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %75

33:                                               ; preds = %25
  %34 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %35 = load i32, i32* @NL80211_ATTR_FREQ_BEFORE, align 4
  %36 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %34, i32 %35)
  store %struct.nlattr* %36, %struct.nlattr** %9, align 8
  %37 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %38 = icmp ne %struct.nlattr* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %33
  br label %75

40:                                               ; preds = %33
  %41 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %42 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %43 = call i64 @nl80211_msg_put_channel(%struct.sk_buff* %41, %struct.ieee80211_channel* %42, i32 0)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %75

46:                                               ; preds = %40
  %47 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %48 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %49 = call i32 @nla_nest_end(%struct.sk_buff* %47, %struct.nlattr* %48)
  %50 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %51 = load i32, i32* @NL80211_ATTR_FREQ_AFTER, align 4
  %52 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %50, i32 %51)
  store %struct.nlattr* %52, %struct.nlattr** %9, align 8
  %53 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %54 = icmp ne %struct.nlattr* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %46
  br label %75

56:                                               ; preds = %46
  %57 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %58 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %59 = call i64 @nl80211_msg_put_channel(%struct.sk_buff* %57, %struct.ieee80211_channel* %58, i32 0)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %75

62:                                               ; preds = %56
  %63 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %64 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %65 = call i32 @nla_nest_end(%struct.sk_buff* %63, %struct.nlattr* %64)
  %66 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = call i32 @genlmsg_end(%struct.sk_buff* %66, i8* %67)
  %69 = call i32 (...) @rcu_read_lock()
  %70 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nl80211_regulatory_mcgrp, i32 0, i32 0), align 4
  %72 = load i32, i32* @GFP_ATOMIC, align 4
  %73 = call i32 @genlmsg_multicast_allns(%struct.sk_buff* %70, i32 0, i32 %71, i32 %72)
  %74 = call i32 (...) @rcu_read_unlock()
  br label %81

75:                                               ; preds = %61, %55, %45, %39, %32
  %76 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %77 = load i8*, i8** %8, align 8
  %78 = call i32 @genlmsg_cancel(%struct.sk_buff* %76, i8* %77)
  %79 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %80 = call i32 @nlmsg_free(%struct.sk_buff* %79)
  br label %81

81:                                               ; preds = %75, %62, %22, %15
  ret void
}

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i8* @nl80211hdr_put(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @get_wiphy_idx(%struct.wiphy*) #1

declare dso_local %struct.nlattr* @nla_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i64 @nl80211_msg_put_channel(%struct.sk_buff*, %struct.ieee80211_channel*, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @genlmsg_multicast_allns(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @genlmsg_cancel(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
