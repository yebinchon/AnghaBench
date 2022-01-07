; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_parse_chandef.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_parse_chandef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { i32 }
%struct.genl_info = type { i64* }
%struct.cfg80211_chan_def = type { i8*, i8*, i8*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@NL80211_ATTR_WIPHY_FREQ = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NL80211_CHAN_WIDTH_20_NOHT = common dso_local global i8* null, align 8
@IEEE80211_CHAN_DISABLED = common dso_local global i32 0, align 4
@NL80211_ATTR_WIPHY_CHANNEL_TYPE = common dso_local global i64 0, align 8
@NL80211_ATTR_CHANNEL_WIDTH = common dso_local global i64 0, align 8
@NL80211_ATTR_CENTER_FREQ1 = common dso_local global i64 0, align 8
@NL80211_ATTR_CENTER_FREQ2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfg80211_registered_device*, %struct.genl_info*, %struct.cfg80211_chan_def*)* @nl80211_parse_chandef to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_parse_chandef(%struct.cfg80211_registered_device* %0, %struct.genl_info* %1, %struct.cfg80211_chan_def* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cfg80211_registered_device*, align 8
  %6 = alloca %struct.genl_info*, align 8
  %7 = alloca %struct.cfg80211_chan_def*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %5, align 8
  store %struct.genl_info* %1, %struct.genl_info** %6, align 8
  store %struct.cfg80211_chan_def* %2, %struct.cfg80211_chan_def** %7, align 8
  %10 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %11 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %10, i32 0, i32 0
  %12 = load i64*, i64** %11, align 8
  %13 = load i64, i64* @NL80211_ATTR_WIPHY_FREQ, align 8
  %14 = getelementptr inbounds i64, i64* %12, i64 %13
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %160

20:                                               ; preds = %3
  %21 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %22 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = load i64, i64* @NL80211_ATTR_WIPHY_FREQ, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = call i8* @nla_get_u32(i64 %26)
  store i8* %27, i8** %8, align 8
  %28 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %29 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %28, i32 0, i32 0
  %30 = load i8*, i8** %8, align 8
  %31 = call %struct.TYPE_3__* @ieee80211_get_channel(i32* %29, i8* %30)
  %32 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %7, align 8
  %33 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %32, i32 0, i32 3
  store %struct.TYPE_3__* %31, %struct.TYPE_3__** %33, align 8
  %34 = load i8*, i8** @NL80211_CHAN_WIDTH_20_NOHT, align 8
  %35 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %7, align 8
  %36 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %35, i32 0, i32 2
  store i8* %34, i8** %36, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %7, align 8
  %39 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  %40 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %7, align 8
  %41 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %40, i32 0, i32 0
  store i8* null, i8** %41, align 8
  %42 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %7, align 8
  %43 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %42, i32 0, i32 3
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = icmp ne %struct.TYPE_3__* %44, null
  br i1 %45, label %46, label %55

46:                                               ; preds = %20
  %47 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %7, align 8
  %48 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %47, i32 0, i32 3
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @IEEE80211_CHAN_DISABLED, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %46, %20
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %160

58:                                               ; preds = %46
  %59 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %60 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %59, i32 0, i32 0
  %61 = load i64*, i64** %60, align 8
  %62 = load i64, i64* @NL80211_ATTR_WIPHY_CHANNEL_TYPE, align 8
  %63 = getelementptr inbounds i64, i64* %61, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %87

66:                                               ; preds = %58
  %67 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %68 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %67, i32 0, i32 0
  %69 = load i64*, i64** %68, align 8
  %70 = load i64, i64* @NL80211_ATTR_WIPHY_CHANNEL_TYPE, align 8
  %71 = getelementptr inbounds i64, i64* %69, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = call i8* @nla_get_u32(i64 %72)
  %74 = ptrtoint i8* %73 to i32
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  switch i32 %75, label %83 [
    i32 128, label %76
    i32 131, label %76
    i32 129, label %76
    i32 130, label %76
  ]

76:                                               ; preds = %66, %66, %66, %66
  %77 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %7, align 8
  %78 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %7, align 8
  %79 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %78, i32 0, i32 3
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @cfg80211_chandef_create(%struct.cfg80211_chan_def* %77, %struct.TYPE_3__* %80, i32 %81)
  br label %86

83:                                               ; preds = %66
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %4, align 4
  br label %160

86:                                               ; preds = %76
  br label %142

87:                                               ; preds = %58
  %88 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %89 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %88, i32 0, i32 0
  %90 = load i64*, i64** %89, align 8
  %91 = load i64, i64* @NL80211_ATTR_CHANNEL_WIDTH, align 8
  %92 = getelementptr inbounds i64, i64* %90, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %141

95:                                               ; preds = %87
  %96 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %97 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %96, i32 0, i32 0
  %98 = load i64*, i64** %97, align 8
  %99 = load i64, i64* @NL80211_ATTR_CHANNEL_WIDTH, align 8
  %100 = getelementptr inbounds i64, i64* %98, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = call i8* @nla_get_u32(i64 %101)
  %103 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %7, align 8
  %104 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %103, i32 0, i32 2
  store i8* %102, i8** %104, align 8
  %105 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %106 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %105, i32 0, i32 0
  %107 = load i64*, i64** %106, align 8
  %108 = load i64, i64* @NL80211_ATTR_CENTER_FREQ1, align 8
  %109 = getelementptr inbounds i64, i64* %107, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %122

112:                                              ; preds = %95
  %113 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %114 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %113, i32 0, i32 0
  %115 = load i64*, i64** %114, align 8
  %116 = load i64, i64* @NL80211_ATTR_CENTER_FREQ1, align 8
  %117 = getelementptr inbounds i64, i64* %115, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = call i8* @nla_get_u32(i64 %118)
  %120 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %7, align 8
  %121 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %120, i32 0, i32 1
  store i8* %119, i8** %121, align 8
  br label %122

122:                                              ; preds = %112, %95
  %123 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %124 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %123, i32 0, i32 0
  %125 = load i64*, i64** %124, align 8
  %126 = load i64, i64* @NL80211_ATTR_CENTER_FREQ2, align 8
  %127 = getelementptr inbounds i64, i64* %125, i64 %126
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %140

130:                                              ; preds = %122
  %131 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %132 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %131, i32 0, i32 0
  %133 = load i64*, i64** %132, align 8
  %134 = load i64, i64* @NL80211_ATTR_CENTER_FREQ2, align 8
  %135 = getelementptr inbounds i64, i64* %133, i64 %134
  %136 = load i64, i64* %135, align 8
  %137 = call i8* @nla_get_u32(i64 %136)
  %138 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %7, align 8
  %139 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %138, i32 0, i32 0
  store i8* %137, i8** %139, align 8
  br label %140

140:                                              ; preds = %130, %122
  br label %141

141:                                              ; preds = %140, %87
  br label %142

142:                                              ; preds = %141, %86
  %143 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %7, align 8
  %144 = call i32 @cfg80211_chandef_valid(%struct.cfg80211_chan_def* %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %149, label %146

146:                                              ; preds = %142
  %147 = load i32, i32* @EINVAL, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %4, align 4
  br label %160

149:                                              ; preds = %142
  %150 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %151 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %150, i32 0, i32 0
  %152 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %7, align 8
  %153 = load i32, i32* @IEEE80211_CHAN_DISABLED, align 4
  %154 = call i32 @cfg80211_chandef_usable(i32* %151, %struct.cfg80211_chan_def* %152, i32 %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %159, label %156

156:                                              ; preds = %149
  %157 = load i32, i32* @EINVAL, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %4, align 4
  br label %160

159:                                              ; preds = %149
  store i32 0, i32* %4, align 4
  br label %160

160:                                              ; preds = %159, %156, %146, %83, %55, %17
  %161 = load i32, i32* %4, align 4
  ret i32 %161
}

declare dso_local i8* @nla_get_u32(i64) #1

declare dso_local %struct.TYPE_3__* @ieee80211_get_channel(i32*, i8*) #1

declare dso_local i32 @cfg80211_chandef_create(%struct.cfg80211_chan_def*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @cfg80211_chandef_valid(%struct.cfg80211_chan_def*) #1

declare dso_local i32 @cfg80211_chandef_usable(i32*, %struct.cfg80211_chan_def*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
