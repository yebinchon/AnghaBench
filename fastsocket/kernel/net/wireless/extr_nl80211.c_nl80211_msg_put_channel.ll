; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_msg_put_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_msg_put_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ieee80211_channel = type { i32, i32, i32, i32, i32 }

@NL80211_FREQUENCY_ATTR_FREQ = common dso_local global i32 0, align 4
@IEEE80211_CHAN_DISABLED = common dso_local global i32 0, align 4
@NL80211_FREQUENCY_ATTR_DISABLED = common dso_local global i32 0, align 4
@IEEE80211_CHAN_PASSIVE_SCAN = common dso_local global i32 0, align 4
@NL80211_FREQUENCY_ATTR_PASSIVE_SCAN = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_IBSS = common dso_local global i32 0, align 4
@NL80211_FREQUENCY_ATTR_NO_IBSS = common dso_local global i32 0, align 4
@IEEE80211_CHAN_RADAR = common dso_local global i32 0, align 4
@NL80211_FREQUENCY_ATTR_RADAR = common dso_local global i32 0, align 4
@NL80211_FREQUENCY_ATTR_DFS_STATE = common dso_local global i32 0, align 4
@NL80211_FREQUENCY_ATTR_DFS_TIME = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_HT40MINUS = common dso_local global i32 0, align 4
@NL80211_FREQUENCY_ATTR_NO_HT40_MINUS = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_HT40PLUS = common dso_local global i32 0, align 4
@NL80211_FREQUENCY_ATTR_NO_HT40_PLUS = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_80MHZ = common dso_local global i32 0, align 4
@NL80211_FREQUENCY_ATTR_NO_80MHZ = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_160MHZ = common dso_local global i32 0, align 4
@NL80211_FREQUENCY_ATTR_NO_160MHZ = common dso_local global i32 0, align 4
@NL80211_FREQUENCY_ATTR_MAX_TX_POWER = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.ieee80211_channel*, i32)* @nl80211_msg_put_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_msg_put_channel(%struct.sk_buff* %0, %struct.ieee80211_channel* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ieee80211_channel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %10 = load i32, i32* @NL80211_FREQUENCY_ATTR_FREQ, align 4
  %11 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %12 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @nla_put_u32(%struct.sk_buff* %9, i32 %10, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %161

17:                                               ; preds = %3
  %18 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %19 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @IEEE80211_CHAN_DISABLED, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %17
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = load i32, i32* @NL80211_FREQUENCY_ATTR_DISABLED, align 4
  %27 = call i64 @nla_put_flag(%struct.sk_buff* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %161

30:                                               ; preds = %24, %17
  %31 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %32 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @IEEE80211_CHAN_PASSIVE_SCAN, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %30
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = load i32, i32* @NL80211_FREQUENCY_ATTR_PASSIVE_SCAN, align 4
  %40 = call i64 @nla_put_flag(%struct.sk_buff* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %161

43:                                               ; preds = %37, %30
  %44 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %45 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @IEEE80211_CHAN_NO_IBSS, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %43
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %52 = load i32, i32* @NL80211_FREQUENCY_ATTR_NO_IBSS, align 4
  %53 = call i64 @nla_put_flag(%struct.sk_buff* %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %161

56:                                               ; preds = %50, %43
  %57 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %58 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @IEEE80211_CHAN_RADAR, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %94

63:                                               ; preds = %56
  %64 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %65 = load i32, i32* @NL80211_FREQUENCY_ATTR_RADAR, align 4
  %66 = call i64 @nla_put_flag(%struct.sk_buff* %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %161

69:                                               ; preds = %63
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %93

72:                                               ; preds = %69
  %73 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %74 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @elapsed_jiffies_msecs(i32 %75)
  store i32 %76, i32* %8, align 4
  %77 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %78 = load i32, i32* @NL80211_FREQUENCY_ATTR_DFS_STATE, align 4
  %79 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %80 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @nla_put_u32(%struct.sk_buff* %77, i32 %78, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %72
  br label %161

85:                                               ; preds = %72
  %86 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %87 = load i32, i32* @NL80211_FREQUENCY_ATTR_DFS_TIME, align 4
  %88 = load i32, i32* %8, align 4
  %89 = call i64 @nla_put_u32(%struct.sk_buff* %86, i32 %87, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  br label %161

92:                                               ; preds = %85
  br label %93

93:                                               ; preds = %92, %69
  br label %94

94:                                               ; preds = %93, %56
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %150

97:                                               ; preds = %94
  %98 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %99 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @IEEE80211_CHAN_NO_HT40MINUS, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %97
  %105 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %106 = load i32, i32* @NL80211_FREQUENCY_ATTR_NO_HT40_MINUS, align 4
  %107 = call i64 @nla_put_flag(%struct.sk_buff* %105, i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  br label %161

110:                                              ; preds = %104, %97
  %111 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %112 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @IEEE80211_CHAN_NO_HT40PLUS, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %110
  %118 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %119 = load i32, i32* @NL80211_FREQUENCY_ATTR_NO_HT40_PLUS, align 4
  %120 = call i64 @nla_put_flag(%struct.sk_buff* %118, i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %117
  br label %161

123:                                              ; preds = %117, %110
  %124 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %125 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @IEEE80211_CHAN_NO_80MHZ, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %123
  %131 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %132 = load i32, i32* @NL80211_FREQUENCY_ATTR_NO_80MHZ, align 4
  %133 = call i64 @nla_put_flag(%struct.sk_buff* %131, i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %130
  br label %161

136:                                              ; preds = %130, %123
  %137 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %138 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @IEEE80211_CHAN_NO_160MHZ, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %136
  %144 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %145 = load i32, i32* @NL80211_FREQUENCY_ATTR_NO_160MHZ, align 4
  %146 = call i64 @nla_put_flag(%struct.sk_buff* %144, i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %143
  br label %161

149:                                              ; preds = %143, %136
  br label %150

150:                                              ; preds = %149, %94
  %151 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %152 = load i32, i32* @NL80211_FREQUENCY_ATTR_MAX_TX_POWER, align 4
  %153 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %154 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @DBM_TO_MBM(i32 %155)
  %157 = call i64 @nla_put_u32(%struct.sk_buff* %151, i32 %152, i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %150
  br label %161

160:                                              ; preds = %150
  store i32 0, i32* %4, align 4
  br label %164

161:                                              ; preds = %159, %148, %135, %122, %109, %91, %84, %68, %55, %42, %29, %16
  %162 = load i32, i32* @ENOBUFS, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %4, align 4
  br label %164

164:                                              ; preds = %161, %160
  %165 = load i32, i32* %4, align 4
  ret i32 %165
}

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_flag(%struct.sk_buff*, i32) #1

declare dso_local i32 @elapsed_jiffies_msecs(i32) #1

declare dso_local i32 @DBM_TO_MBM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
