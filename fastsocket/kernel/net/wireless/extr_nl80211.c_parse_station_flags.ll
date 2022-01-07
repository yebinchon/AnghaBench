; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_parse_station_flags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_parse_station_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genl_info = type { %struct.nlattr** }
%struct.nlattr = type { i32 }
%struct.station_parameters = type { i32, i32 }
%struct.nl80211_sta_flag_update = type { i32, i32 }

@NL80211_STA_FLAG_MAX = common dso_local global i32 0, align 4
@NL80211_ATTR_STA_FLAGS2 = common dso_local global i64 0, align 8
@__NL80211_STA_FLAG_INVALID = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NL80211_ATTR_STA_FLAGS = common dso_local global i64 0, align 8
@sta_flags_policy = common dso_local global i32 0, align 4
@NL80211_STA_FLAG_AUTHORIZED = common dso_local global i32 0, align 4
@NL80211_STA_FLAG_SHORT_PREAMBLE = common dso_local global i32 0, align 4
@NL80211_STA_FLAG_WME = common dso_local global i32 0, align 4
@NL80211_STA_FLAG_MFP = common dso_local global i32 0, align 4
@NL80211_STA_FLAG_TDLS_PEER = common dso_local global i32 0, align 4
@NL80211_STA_FLAG_AUTHENTICATED = common dso_local global i32 0, align 4
@NL80211_STA_FLAG_MAX_OLD_API = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.genl_info*, i32, %struct.station_parameters*)* @parse_station_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_station_flags(%struct.genl_info* %0, i32 %1, %struct.station_parameters* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.station_parameters*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.nlattr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.nl80211_sta_flag_update*, align 8
  %13 = alloca i32, align 4
  store %struct.genl_info* %0, %struct.genl_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.station_parameters* %2, %struct.station_parameters** %7, align 8
  %14 = load i32, i32* @NL80211_STA_FLAG_MAX, align 4
  %15 = add nsw i32 %14, 1
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca %struct.nlattr*, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %19 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %20 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %19, i32 0, i32 0
  %21 = load %struct.nlattr**, %struct.nlattr*** %20, align 8
  %22 = load i64, i64* @NL80211_ATTR_STA_FLAGS2, align 8
  %23 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %21, i64 %22
  %24 = load %struct.nlattr*, %struct.nlattr** %23, align 8
  store %struct.nlattr* %24, %struct.nlattr** %10, align 8
  %25 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %26 = icmp ne %struct.nlattr* %25, null
  br i1 %26, label %27, label %62

27:                                               ; preds = %3
  %28 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %29 = call %struct.nl80211_sta_flag_update* @nla_data(%struct.nlattr* %28)
  store %struct.nl80211_sta_flag_update* %29, %struct.nl80211_sta_flag_update** %12, align 8
  %30 = load %struct.nl80211_sta_flag_update*, %struct.nl80211_sta_flag_update** %12, align 8
  %31 = getelementptr inbounds %struct.nl80211_sta_flag_update, %struct.nl80211_sta_flag_update* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.station_parameters*, %struct.station_parameters** %7, align 8
  %34 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.nl80211_sta_flag_update*, %struct.nl80211_sta_flag_update** %12, align 8
  %36 = getelementptr inbounds %struct.nl80211_sta_flag_update, %struct.nl80211_sta_flag_update* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.station_parameters*, %struct.station_parameters** %7, align 8
  %39 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.station_parameters*, %struct.station_parameters** %7, align 8
  %41 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.station_parameters*, %struct.station_parameters** %7, align 8
  %44 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = load %struct.station_parameters*, %struct.station_parameters** %7, align 8
  %48 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.station_parameters*, %struct.station_parameters** %7, align 8
  %51 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %49, %52
  %54 = load i32, i32* @__NL80211_STA_FLAG_INVALID, align 4
  %55 = call i32 @BIT(i32 %54)
  %56 = and i32 %53, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %27
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %149

61:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %149

62:                                               ; preds = %3
  %63 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %64 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %63, i32 0, i32 0
  %65 = load %struct.nlattr**, %struct.nlattr*** %64, align 8
  %66 = load i64, i64* @NL80211_ATTR_STA_FLAGS, align 8
  %67 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %65, i64 %66
  %68 = load %struct.nlattr*, %struct.nlattr** %67, align 8
  store %struct.nlattr* %68, %struct.nlattr** %10, align 8
  %69 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %70 = icmp ne %struct.nlattr* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %62
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %149

72:                                               ; preds = %62
  %73 = load i32, i32* @NL80211_STA_FLAG_MAX, align 4
  %74 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %75 = load i32, i32* @sta_flags_policy, align 4
  %76 = call i64 @nla_parse_nested(%struct.nlattr** %18, i32 %73, %struct.nlattr* %74, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %72
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %149

81:                                               ; preds = %72
  %82 = load i32, i32* %6, align 4
  switch i32 %82, label %116 [
    i32 133, label %83
    i32 132, label %83
    i32 129, label %83
    i32 130, label %97
    i32 128, label %97
    i32 131, label %105
  ]

83:                                               ; preds = %81, %81, %81
  %84 = load i32, i32* @NL80211_STA_FLAG_AUTHORIZED, align 4
  %85 = call i32 @BIT(i32 %84)
  %86 = load i32, i32* @NL80211_STA_FLAG_SHORT_PREAMBLE, align 4
  %87 = call i32 @BIT(i32 %86)
  %88 = or i32 %85, %87
  %89 = load i32, i32* @NL80211_STA_FLAG_WME, align 4
  %90 = call i32 @BIT(i32 %89)
  %91 = or i32 %88, %90
  %92 = load i32, i32* @NL80211_STA_FLAG_MFP, align 4
  %93 = call i32 @BIT(i32 %92)
  %94 = or i32 %91, %93
  %95 = load %struct.station_parameters*, %struct.station_parameters** %7, align 8
  %96 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  br label %119

97:                                               ; preds = %81, %81
  %98 = load i32, i32* @NL80211_STA_FLAG_AUTHORIZED, align 4
  %99 = call i32 @BIT(i32 %98)
  %100 = load i32, i32* @NL80211_STA_FLAG_TDLS_PEER, align 4
  %101 = call i32 @BIT(i32 %100)
  %102 = or i32 %99, %101
  %103 = load %struct.station_parameters*, %struct.station_parameters** %7, align 8
  %104 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 4
  br label %119

105:                                              ; preds = %81
  %106 = load i32, i32* @NL80211_STA_FLAG_AUTHENTICATED, align 4
  %107 = call i32 @BIT(i32 %106)
  %108 = load i32, i32* @NL80211_STA_FLAG_MFP, align 4
  %109 = call i32 @BIT(i32 %108)
  %110 = or i32 %107, %109
  %111 = load i32, i32* @NL80211_STA_FLAG_AUTHORIZED, align 4
  %112 = call i32 @BIT(i32 %111)
  %113 = or i32 %110, %112
  %114 = load %struct.station_parameters*, %struct.station_parameters** %7, align 8
  %115 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 4
  br label %116

116:                                              ; preds = %81, %105
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %149

119:                                              ; preds = %97, %83
  store i32 1, i32* %11, align 4
  br label %120

120:                                              ; preds = %145, %119
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* @NL80211_STA_FLAG_MAX, align 4
  %123 = icmp sle i32 %121, %122
  br i1 %123, label %124, label %148

124:                                              ; preds = %120
  %125 = load i32, i32* %11, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %126
  %128 = load %struct.nlattr*, %struct.nlattr** %127, align 8
  %129 = icmp ne %struct.nlattr* %128, null
  br i1 %129, label %130, label %144

130:                                              ; preds = %124
  %131 = load i32, i32* %11, align 4
  %132 = shl i32 1, %131
  %133 = load %struct.station_parameters*, %struct.station_parameters** %7, align 8
  %134 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 4
  %137 = load i32, i32* %11, align 4
  %138 = load i32, i32* @NL80211_STA_FLAG_MAX_OLD_API, align 4
  %139 = icmp sgt i32 %137, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %130
  %141 = load i32, i32* @EINVAL, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %149

143:                                              ; preds = %130
  br label %144

144:                                              ; preds = %143, %124
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %11, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %11, align 4
  br label %120

148:                                              ; preds = %120
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %149

149:                                              ; preds = %148, %140, %116, %78, %71, %61, %58
  %150 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %150)
  %151 = load i32, i32* %4, align 4
  ret i32 %151
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.nl80211_sta_flag_update* @nla_data(%struct.nlattr*) #2

declare dso_local i32 @BIT(i32) #2

declare dso_local i64 @nla_parse_nested(%struct.nlattr**, i32, %struct.nlattr*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
