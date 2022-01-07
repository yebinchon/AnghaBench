; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_put_iface_combinations.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_put_iface_combinations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32, %struct.ieee80211_iface_combination* }
%struct.ieee80211_iface_combination = type { i32, i32, i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.nlattr = type { i32 }

@NL80211_ATTR_INTERFACE_COMBINATIONS = common dso_local global i32 0, align 4
@NL80211_IFACE_COMB_LIMITS = common dso_local global i32 0, align 4
@NL80211_IFACE_LIMIT_MAX = common dso_local global i32 0, align 4
@NL80211_IFACE_LIMIT_TYPES = common dso_local global i32 0, align 4
@NL80211_IFACE_COMB_STA_AP_BI_MATCH = common dso_local global i32 0, align 4
@NL80211_IFACE_COMB_NUM_CHANNELS = common dso_local global i32 0, align 4
@NL80211_IFACE_COMB_MAXNUM = common dso_local global i32 0, align 4
@NL80211_IFACE_COMB_RADAR_DETECT_WIDTHS = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.sk_buff*, i32)* @nl80211_put_iface_combinations to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_put_iface_combinations(%struct.wiphy* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wiphy*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nlattr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ieee80211_iface_combination*, align 8
  %12 = alloca %struct.nlattr*, align 8
  %13 = alloca %struct.nlattr*, align 8
  %14 = alloca %struct.nlattr*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = load i32, i32* @NL80211_ATTR_INTERFACE_COMBINATIONS, align 4
  %17 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %15, i32 %16)
  store %struct.nlattr* %17, %struct.nlattr** %8, align 8
  %18 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %19 = icmp ne %struct.nlattr* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  br label %153

21:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %146, %21
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %25 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %149

28:                                               ; preds = %22
  %29 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %30 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %29, i32 0, i32 1
  %31 = load %struct.ieee80211_iface_combination*, %struct.ieee80211_iface_combination** %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.ieee80211_iface_combination, %struct.ieee80211_iface_combination* %31, i64 %33
  store %struct.ieee80211_iface_combination* %34, %struct.ieee80211_iface_combination** %11, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, 1
  %38 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %35, i32 %37)
  store %struct.nlattr* %38, %struct.nlattr** %12, align 8
  %39 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %40 = icmp ne %struct.nlattr* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %28
  br label %153

42:                                               ; preds = %28
  %43 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %44 = load i32, i32* @NL80211_IFACE_COMB_LIMITS, align 4
  %45 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %43, i32 %44)
  store %struct.nlattr* %45, %struct.nlattr** %13, align 8
  %46 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %47 = icmp ne %struct.nlattr* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %42
  br label %153

49:                                               ; preds = %42
  store i32 0, i32* %10, align 4
  br label %50

50:                                               ; preds = %96, %49
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.ieee80211_iface_combination*, %struct.ieee80211_iface_combination** %11, align 8
  %53 = getelementptr inbounds %struct.ieee80211_iface_combination, %struct.ieee80211_iface_combination* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %99

56:                                               ; preds = %50
  %57 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %58, 1
  %60 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %57, i32 %59)
  store %struct.nlattr* %60, %struct.nlattr** %14, align 8
  %61 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %62 = icmp ne %struct.nlattr* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %56
  br label %153

64:                                               ; preds = %56
  %65 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %66 = load i32, i32* @NL80211_IFACE_LIMIT_MAX, align 4
  %67 = load %struct.ieee80211_iface_combination*, %struct.ieee80211_iface_combination** %11, align 8
  %68 = getelementptr inbounds %struct.ieee80211_iface_combination, %struct.ieee80211_iface_combination* %67, i32 0, i32 5
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @nla_put_u32(%struct.sk_buff* %65, i32 %66, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %64
  br label %153

78:                                               ; preds = %64
  %79 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %80 = load i32, i32* @NL80211_IFACE_LIMIT_TYPES, align 4
  %81 = load %struct.ieee80211_iface_combination*, %struct.ieee80211_iface_combination** %11, align 8
  %82 = getelementptr inbounds %struct.ieee80211_iface_combination, %struct.ieee80211_iface_combination* %81, i32 0, i32 5
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @nl80211_put_iftypes(%struct.sk_buff* %79, i32 %80, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %78
  br label %153

92:                                               ; preds = %78
  %93 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %94 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %95 = call i32 @nla_nest_end(%struct.sk_buff* %93, %struct.nlattr* %94)
  br label %96

96:                                               ; preds = %92
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %10, align 4
  br label %50

99:                                               ; preds = %50
  %100 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %101 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %102 = call i32 @nla_nest_end(%struct.sk_buff* %100, %struct.nlattr* %101)
  %103 = load %struct.ieee80211_iface_combination*, %struct.ieee80211_iface_combination** %11, align 8
  %104 = getelementptr inbounds %struct.ieee80211_iface_combination, %struct.ieee80211_iface_combination* %103, i32 0, i32 4
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %99
  %108 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %109 = load i32, i32* @NL80211_IFACE_COMB_STA_AP_BI_MATCH, align 4
  %110 = call i64 @nla_put_flag(%struct.sk_buff* %108, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  br label %153

113:                                              ; preds = %107, %99
  %114 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %115 = load i32, i32* @NL80211_IFACE_COMB_NUM_CHANNELS, align 4
  %116 = load %struct.ieee80211_iface_combination*, %struct.ieee80211_iface_combination** %11, align 8
  %117 = getelementptr inbounds %struct.ieee80211_iface_combination, %struct.ieee80211_iface_combination* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = call i64 @nla_put_u32(%struct.sk_buff* %114, i32 %115, i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %129, label %121

121:                                              ; preds = %113
  %122 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %123 = load i32, i32* @NL80211_IFACE_COMB_MAXNUM, align 4
  %124 = load %struct.ieee80211_iface_combination*, %struct.ieee80211_iface_combination** %11, align 8
  %125 = getelementptr inbounds %struct.ieee80211_iface_combination, %struct.ieee80211_iface_combination* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = call i64 @nla_put_u32(%struct.sk_buff* %122, i32 %123, i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %121, %113
  br label %153

130:                                              ; preds = %121
  %131 = load i32, i32* %7, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %142

133:                                              ; preds = %130
  %134 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %135 = load i32, i32* @NL80211_IFACE_COMB_RADAR_DETECT_WIDTHS, align 4
  %136 = load %struct.ieee80211_iface_combination*, %struct.ieee80211_iface_combination** %11, align 8
  %137 = getelementptr inbounds %struct.ieee80211_iface_combination, %struct.ieee80211_iface_combination* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i64 @nla_put_u32(%struct.sk_buff* %134, i32 %135, i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %133
  br label %153

142:                                              ; preds = %133, %130
  %143 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %144 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %145 = call i32 @nla_nest_end(%struct.sk_buff* %143, %struct.nlattr* %144)
  br label %146

146:                                              ; preds = %142
  %147 = load i32, i32* %9, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %9, align 4
  br label %22

149:                                              ; preds = %22
  %150 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %151 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %152 = call i32 @nla_nest_end(%struct.sk_buff* %150, %struct.nlattr* %151)
  store i32 0, i32* %4, align 4
  br label %156

153:                                              ; preds = %141, %129, %112, %91, %77, %63, %48, %41, %20
  %154 = load i32, i32* @ENOBUFS, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %4, align 4
  br label %156

156:                                              ; preds = %153, %149
  %157 = load i32, i32* %4, align 4
  ret i32 %157
}

declare dso_local %struct.nlattr* @nla_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nl80211_put_iftypes(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i64 @nla_put_flag(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
