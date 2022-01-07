; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_send_reg_change_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_send_reg_change_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.regulatory_request = type { i8*, i64, i64, i32 }
%struct.sk_buff = type { i32 }

@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@NL80211_CMD_REG_CHANGE = common dso_local global i32 0, align 4
@NL80211_ATTR_REG_INITIATOR = common dso_local global i32 0, align 4
@NL80211_ATTR_REG_TYPE = common dso_local global i32 0, align 4
@NL80211_REGDOM_TYPE_WORLD = common dso_local global i32 0, align 4
@NL80211_REGDOM_TYPE_CUSTOM_WORLD = common dso_local global i32 0, align 4
@NL80211_REGDOM_TYPE_INTERSECTION = common dso_local global i32 0, align 4
@NL80211_REGDOM_TYPE_COUNTRY = common dso_local global i32 0, align 4
@NL80211_ATTR_REG_ALPHA2 = common dso_local global i32 0, align 4
@WIPHY_IDX_INVALID = common dso_local global i64 0, align 8
@NL80211_ATTR_WIPHY = common dso_local global i32 0, align 4
@nl80211_regulatory_mcgrp = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nl80211_send_reg_change_event(%struct.regulatory_request* %0) #0 {
  %2 = alloca %struct.regulatory_request*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i8*, align 8
  store %struct.regulatory_request* %0, %struct.regulatory_request** %2, align 8
  %5 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.sk_buff* @nlmsg_new(i32 %5, i32 %6)
  store %struct.sk_buff* %7, %struct.sk_buff** %3, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %9 = icmp ne %struct.sk_buff* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %155

11:                                               ; preds = %1
  %12 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %13 = load i32, i32* @NL80211_CMD_REG_CHANGE, align 4
  %14 = call i8* @nl80211hdr_put(%struct.sk_buff* %12, i32 0, i32 0, i32 0, i32 %13)
  store i8* %14, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %11
  %18 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %19 = call i32 @nlmsg_free(%struct.sk_buff* %18)
  br label %155

20:                                               ; preds = %11
  %21 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %22 = load i32, i32* @NL80211_ATTR_REG_INITIATOR, align 4
  %23 = load %struct.regulatory_request*, %struct.regulatory_request** %2, align 8
  %24 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @nla_put_u8(%struct.sk_buff* %21, i32 %22, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %149

29:                                               ; preds = %20
  %30 = load %struct.regulatory_request*, %struct.regulatory_request** %2, align 8
  %31 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 48
  br i1 %36, label %37, label %53

37:                                               ; preds = %29
  %38 = load %struct.regulatory_request*, %struct.regulatory_request** %2, align 8
  %39 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 48
  br i1 %44, label %45, label %53

45:                                               ; preds = %37
  %46 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %47 = load i32, i32* @NL80211_ATTR_REG_TYPE, align 4
  %48 = load i32, i32* @NL80211_REGDOM_TYPE_WORLD, align 4
  %49 = call i64 @nla_put_u8(%struct.sk_buff* %46, i32 %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %149

52:                                               ; preds = %45
  br label %124

53:                                               ; preds = %37, %29
  %54 = load %struct.regulatory_request*, %struct.regulatory_request** %2, align 8
  %55 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 57
  br i1 %60, label %61, label %77

61:                                               ; preds = %53
  %62 = load %struct.regulatory_request*, %struct.regulatory_request** %2, align 8
  %63 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 57
  br i1 %68, label %69, label %77

69:                                               ; preds = %61
  %70 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %71 = load i32, i32* @NL80211_ATTR_REG_TYPE, align 4
  %72 = load i32, i32* @NL80211_REGDOM_TYPE_CUSTOM_WORLD, align 4
  %73 = call i64 @nla_put_u8(%struct.sk_buff* %70, i32 %71, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %149

76:                                               ; preds = %69
  br label %123

77:                                               ; preds = %61, %53
  %78 = load %struct.regulatory_request*, %struct.regulatory_request** %2, align 8
  %79 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 0
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 57
  br i1 %84, label %85, label %93

85:                                               ; preds = %77
  %86 = load %struct.regulatory_request*, %struct.regulatory_request** %2, align 8
  %87 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 1
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 56
  br i1 %92, label %98, label %93

93:                                               ; preds = %85, %77
  %94 = load %struct.regulatory_request*, %struct.regulatory_request** %2, align 8
  %95 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %93, %85
  %99 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %100 = load i32, i32* @NL80211_ATTR_REG_TYPE, align 4
  %101 = load i32, i32* @NL80211_REGDOM_TYPE_INTERSECTION, align 4
  %102 = call i64 @nla_put_u8(%struct.sk_buff* %99, i32 %100, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %98
  br label %149

105:                                              ; preds = %98
  br label %122

106:                                              ; preds = %93
  %107 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %108 = load i32, i32* @NL80211_ATTR_REG_TYPE, align 4
  %109 = load i32, i32* @NL80211_REGDOM_TYPE_COUNTRY, align 4
  %110 = call i64 @nla_put_u8(%struct.sk_buff* %107, i32 %108, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %120, label %112

112:                                              ; preds = %106
  %113 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %114 = load i32, i32* @NL80211_ATTR_REG_ALPHA2, align 4
  %115 = load %struct.regulatory_request*, %struct.regulatory_request** %2, align 8
  %116 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %115, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = call i64 @nla_put_string(%struct.sk_buff* %113, i32 %114, i8* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %112, %106
  br label %149

121:                                              ; preds = %112
  br label %122

122:                                              ; preds = %121, %105
  br label %123

123:                                              ; preds = %122, %76
  br label %124

124:                                              ; preds = %123, %52
  %125 = load %struct.regulatory_request*, %struct.regulatory_request** %2, align 8
  %126 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @WIPHY_IDX_INVALID, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %139

130:                                              ; preds = %124
  %131 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %132 = load i32, i32* @NL80211_ATTR_WIPHY, align 4
  %133 = load %struct.regulatory_request*, %struct.regulatory_request** %2, align 8
  %134 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = call i64 @nla_put_u32(%struct.sk_buff* %131, i32 %132, i64 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %130
  br label %149

139:                                              ; preds = %130, %124
  %140 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %141 = load i8*, i8** %4, align 8
  %142 = call i32 @genlmsg_end(%struct.sk_buff* %140, i8* %141)
  %143 = call i32 (...) @rcu_read_lock()
  %144 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %145 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nl80211_regulatory_mcgrp, i32 0, i32 0), align 4
  %146 = load i32, i32* @GFP_ATOMIC, align 4
  %147 = call i32 @genlmsg_multicast_allns(%struct.sk_buff* %144, i32 0, i32 %145, i32 %146)
  %148 = call i32 (...) @rcu_read_unlock()
  br label %155

149:                                              ; preds = %138, %120, %104, %75, %51, %28
  %150 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %151 = load i8*, i8** %4, align 8
  %152 = call i32 @genlmsg_cancel(%struct.sk_buff* %150, i8* %151)
  %153 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %154 = call i32 @nlmsg_free(%struct.sk_buff* %153)
  br label %155

155:                                              ; preds = %149, %139, %17, %10
  ret void
}

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i8* @nl80211hdr_put(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i8*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i64) #1

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
