; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_cfg.c_ieee80211_add_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_cfg.c_ieee80211_add_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.key_params = type { i32, i32, i32, i32, i32 }
%struct.ieee80211_sub_if_data = type { %struct.TYPE_11__*, %struct.TYPE_9__, %struct.TYPE_12__ }
%struct.TYPE_11__ = type { i32, %struct.ieee80211_key* }
%struct.ieee80211_key = type { %struct.TYPE_10__, %struct.sta_info* }
%struct.TYPE_10__ = type { i32 }
%struct.sta_info = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@ENETDOWN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_PAIRWISE = common dso_local global i32 0, align 4
@WLAN_STA_ASSOC = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@IEEE80211_MFP_DISABLED = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_RX_MGMT = common dso_local global i32 0, align 4
@WLAN_STA_MFP = common dso_local global i32 0, align 4
@IEEE80211_MESH_SEC_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, i32, i32, i32*, %struct.key_params*)* @ieee80211_add_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_add_key(%struct.wiphy* %0, %struct.net_device* %1, i32 %2, i32 %3, i32* %4, %struct.key_params* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.wiphy*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.key_params*, align 8
  %14 = alloca %struct.ieee80211_sub_if_data*, align 8
  %15 = alloca %struct.sta_info*, align 8
  %16 = alloca %struct.ieee80211_key*, align 8
  %17 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %8, align 8
  store %struct.net_device* %1, %struct.net_device** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store %struct.key_params* %5, %struct.key_params** %13, align 8
  %18 = load %struct.net_device*, %struct.net_device** %9, align 8
  %19 = call %struct.ieee80211_sub_if_data* @IEEE80211_DEV_TO_SUB_IF(%struct.net_device* %18)
  store %struct.ieee80211_sub_if_data* %19, %struct.ieee80211_sub_if_data** %14, align 8
  store %struct.sta_info* null, %struct.sta_info** %15, align 8
  %20 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %14, align 8
  %21 = call i32 @ieee80211_sdata_running(%struct.ieee80211_sub_if_data* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %6
  %24 = load i32, i32* @ENETDOWN, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %7, align 4
  br label %168

26:                                               ; preds = %6
  %27 = load %struct.key_params*, %struct.key_params** %13, align 8
  %28 = getelementptr inbounds %struct.key_params, %struct.key_params* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %42 [
    i32 128, label %30
    i32 130, label %30
    i32 129, label %30
  ]

30:                                               ; preds = %26, %26, %26
  %31 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %14, align 8
  %32 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %31, i32 0, i32 0
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  %35 = load %struct.ieee80211_key*, %struct.ieee80211_key** %34, align 8
  %36 = call i64 @IS_ERR(%struct.ieee80211_key* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %7, align 4
  br label %168

41:                                               ; preds = %30
  br label %43

42:                                               ; preds = %26
  br label %43

43:                                               ; preds = %42, %41
  %44 = load %struct.key_params*, %struct.key_params** %13, align 8
  %45 = getelementptr inbounds %struct.key_params, %struct.key_params* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.key_params*, %struct.key_params** %13, align 8
  %49 = getelementptr inbounds %struct.key_params, %struct.key_params* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.key_params*, %struct.key_params** %13, align 8
  %52 = getelementptr inbounds %struct.key_params, %struct.key_params* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.key_params*, %struct.key_params** %13, align 8
  %55 = getelementptr inbounds %struct.key_params, %struct.key_params* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.key_params*, %struct.key_params** %13, align 8
  %58 = getelementptr inbounds %struct.key_params, %struct.key_params* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call %struct.ieee80211_key* @ieee80211_key_alloc(i32 %46, i32 %47, i32 %50, i32 %53, i32 %56, i32 %59)
  store %struct.ieee80211_key* %60, %struct.ieee80211_key** %16, align 8
  %61 = load %struct.ieee80211_key*, %struct.ieee80211_key** %16, align 8
  %62 = call i64 @IS_ERR(%struct.ieee80211_key* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %43
  %65 = load %struct.ieee80211_key*, %struct.ieee80211_key** %16, align 8
  %66 = call i32 @PTR_ERR(%struct.ieee80211_key* %65)
  store i32 %66, i32* %7, align 4
  br label %168

67:                                               ; preds = %43
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %67
  %71 = load i32, i32* @IEEE80211_KEY_FLAG_PAIRWISE, align 4
  %72 = load %struct.ieee80211_key*, %struct.ieee80211_key** %16, align 8
  %73 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %75, %71
  store i32 %76, i32* %74, align 8
  br label %77

77:                                               ; preds = %70, %67
  %78 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %14, align 8
  %79 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %78, i32 0, i32 0
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = call i32 @mutex_lock(i32* %81)
  %83 = load i32*, i32** %12, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %112

85:                                               ; preds = %77
  %86 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %14, align 8
  %87 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %86, i32 0, i32 2
  %88 = call i64 @ieee80211_vif_is_mesh(%struct.TYPE_12__* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %14, align 8
  %92 = load i32*, i32** %12, align 8
  %93 = call %struct.sta_info* @sta_info_get(%struct.ieee80211_sub_if_data* %91, i32* %92)
  store %struct.sta_info* %93, %struct.sta_info** %15, align 8
  br label %98

94:                                               ; preds = %85
  %95 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %14, align 8
  %96 = load i32*, i32** %12, align 8
  %97 = call %struct.sta_info* @sta_info_get_bss(%struct.ieee80211_sub_if_data* %95, i32* %96)
  store %struct.sta_info* %97, %struct.sta_info** %15, align 8
  br label %98

98:                                               ; preds = %94, %90
  %99 = load %struct.sta_info*, %struct.sta_info** %15, align 8
  %100 = icmp ne %struct.sta_info* %99, null
  br i1 %100, label %101, label %106

101:                                              ; preds = %98
  %102 = load %struct.sta_info*, %struct.sta_info** %15, align 8
  %103 = load i32, i32* @WLAN_STA_ASSOC, align 4
  %104 = call i64 @test_sta_flag(%struct.sta_info* %102, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %101, %98
  %107 = load %struct.ieee80211_key*, %struct.ieee80211_key** %16, align 8
  %108 = call i32 @ieee80211_key_free_unused(%struct.ieee80211_key* %107)
  %109 = load i32, i32* @ENOENT, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %17, align 4
  br label %161

111:                                              ; preds = %101
  br label %112

112:                                              ; preds = %111, %77
  %113 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %14, align 8
  %114 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  switch i32 %116, label %156 [
    i32 134, label %117
    i32 141, label %133
    i32 140, label %133
    i32 142, label %153
    i32 139, label %154
    i32 132, label %154
    i32 138, label %154
    i32 136, label %154
    i32 133, label %154
    i32 131, label %154
    i32 137, label %154
    i32 135, label %154
  ]

117:                                              ; preds = %112
  %118 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %14, align 8
  %119 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @IEEE80211_MFP_DISABLED, align 4
  %124 = icmp ne i32 %122, %123
  br i1 %124, label %125, label %132

125:                                              ; preds = %117
  %126 = load i32, i32* @IEEE80211_KEY_FLAG_RX_MGMT, align 4
  %127 = load %struct.ieee80211_key*, %struct.ieee80211_key** %16, align 8
  %128 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = or i32 %130, %126
  store i32 %131, i32* %129, align 8
  br label %132

132:                                              ; preds = %125, %117
  br label %156

133:                                              ; preds = %112, %112
  %134 = load %struct.ieee80211_key*, %struct.ieee80211_key** %16, align 8
  %135 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %134, i32 0, i32 1
  %136 = load %struct.sta_info*, %struct.sta_info** %135, align 8
  %137 = icmp ne %struct.sta_info* %136, null
  br i1 %137, label %138, label %152

138:                                              ; preds = %133
  %139 = load %struct.ieee80211_key*, %struct.ieee80211_key** %16, align 8
  %140 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %139, i32 0, i32 1
  %141 = load %struct.sta_info*, %struct.sta_info** %140, align 8
  %142 = load i32, i32* @WLAN_STA_MFP, align 4
  %143 = call i64 @test_sta_flag(%struct.sta_info* %141, i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %152

145:                                              ; preds = %138
  %146 = load i32, i32* @IEEE80211_KEY_FLAG_RX_MGMT, align 4
  %147 = load %struct.ieee80211_key*, %struct.ieee80211_key** %16, align 8
  %148 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = or i32 %150, %146
  store i32 %151, i32* %149, align 8
  br label %152

152:                                              ; preds = %145, %138, %133
  br label %156

153:                                              ; preds = %112
  br label %156

154:                                              ; preds = %112, %112, %112, %112, %112, %112, %112, %112
  %155 = call i32 @WARN_ON_ONCE(i32 1)
  br label %156

156:                                              ; preds = %112, %154, %153, %152, %132
  %157 = load %struct.ieee80211_key*, %struct.ieee80211_key** %16, align 8
  %158 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %14, align 8
  %159 = load %struct.sta_info*, %struct.sta_info** %15, align 8
  %160 = call i32 @ieee80211_key_link(%struct.ieee80211_key* %157, %struct.ieee80211_sub_if_data* %158, %struct.sta_info* %159)
  store i32 %160, i32* %17, align 4
  br label %161

161:                                              ; preds = %156, %106
  %162 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %14, align 8
  %163 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %162, i32 0, i32 0
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 0
  %166 = call i32 @mutex_unlock(i32* %165)
  %167 = load i32, i32* %17, align 4
  store i32 %167, i32* %7, align 4
  br label %168

168:                                              ; preds = %161, %64, %38, %23
  %169 = load i32, i32* %7, align 4
  ret i32 %169
}

declare dso_local %struct.ieee80211_sub_if_data* @IEEE80211_DEV_TO_SUB_IF(%struct.net_device*) #1

declare dso_local i32 @ieee80211_sdata_running(%struct.ieee80211_sub_if_data*) #1

declare dso_local i64 @IS_ERR(%struct.ieee80211_key*) #1

declare dso_local %struct.ieee80211_key* @ieee80211_key_alloc(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PTR_ERR(%struct.ieee80211_key*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @ieee80211_vif_is_mesh(%struct.TYPE_12__*) #1

declare dso_local %struct.sta_info* @sta_info_get(%struct.ieee80211_sub_if_data*, i32*) #1

declare dso_local %struct.sta_info* @sta_info_get_bss(%struct.ieee80211_sub_if_data*, i32*) #1

declare dso_local i64 @test_sta_flag(%struct.sta_info*, i32) #1

declare dso_local i32 @ieee80211_key_free_unused(%struct.ieee80211_key*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @ieee80211_key_link(%struct.ieee80211_key*, %struct.ieee80211_sub_if_data*, %struct.sta_info*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
