; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_new_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_new_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i64*, %struct.net_device** }
%struct.net_device = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.cfg80211_registered_device = type { i32, %struct.TYPE_4__* }
%struct.key_parse = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@NL80211_ATTR_MAC = common dso_local global i64 0, align 8
@NL80211_KEYTYPE_PAIRWISE = common dso_local global i32 0, align 4
@NL80211_KEYTYPE_GROUP = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl80211_new_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_new_key(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.key_parse, align 4
  %10 = alloca i32*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %11 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %12 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %11, i32 0, i32 1
  %13 = load %struct.net_device**, %struct.net_device*** %12, align 8
  %14 = getelementptr inbounds %struct.net_device*, %struct.net_device** %13, i64 0
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  %16 = bitcast %struct.net_device* %15 to %struct.cfg80211_registered_device*
  store %struct.cfg80211_registered_device* %16, %struct.cfg80211_registered_device** %6, align 8
  %17 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %18 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %17, i32 0, i32 1
  %19 = load %struct.net_device**, %struct.net_device*** %18, align 8
  %20 = getelementptr inbounds %struct.net_device*, %struct.net_device** %19, i64 1
  %21 = load %struct.net_device*, %struct.net_device** %20, align 8
  store %struct.net_device* %21, %struct.net_device** %8, align 8
  store i32* null, i32** %10, align 8
  %22 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %23 = call i32 @nl80211_parse_key(%struct.genl_info* %22, %struct.key_parse* %9)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %3, align 4
  br label %137

28:                                               ; preds = %2
  %29 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %9, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %137

36:                                               ; preds = %28
  %37 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %38 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = load i64, i64* @NL80211_ATTR_MAC, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %36
  %45 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %46 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = load i64, i64* @NL80211_ATTR_MAC, align 8
  %49 = getelementptr inbounds i64, i64* %47, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = call i32* @nla_data(i64 %50)
  store i32* %51, i32** %10, align 8
  br label %52

52:                                               ; preds = %44, %36
  %53 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %9, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %66

56:                                               ; preds = %52
  %57 = load i32*, i32** %10, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* @NL80211_KEYTYPE_PAIRWISE, align 4
  %61 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %9, i32 0, i32 0
  store i32 %60, i32* %61, align 4
  br label %65

62:                                               ; preds = %56
  %63 = load i32, i32* @NL80211_KEYTYPE_GROUP, align 4
  %64 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %9, i32 0, i32 0
  store i32 %63, i32* %64, align 4
  br label %65

65:                                               ; preds = %62, %59
  br label %66

66:                                               ; preds = %65, %52
  %67 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %9, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @NL80211_KEYTYPE_PAIRWISE, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %9, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @NL80211_KEYTYPE_GROUP, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %137

79:                                               ; preds = %71, %66
  %80 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %81 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %80, i32 0, i32 1
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %79
  %87 = load i32, i32* @EOPNOTSUPP, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %3, align 4
  br label %137

89:                                               ; preds = %79
  %90 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %91 = bitcast %struct.cfg80211_registered_device* %90 to %struct.net_device*
  %92 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %9, i32 0, i32 1
  %93 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %9, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %9, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @NL80211_KEYTYPE_PAIRWISE, align 4
  %98 = icmp eq i32 %96, %97
  %99 = zext i1 %98 to i32
  %100 = load i32*, i32** %10, align 8
  %101 = call i64 @cfg80211_validate_key_settings(%struct.net_device* %91, %struct.TYPE_5__* %92, i32 %94, i32 %99, i32* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %89
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %3, align 4
  br label %137

106:                                              ; preds = %89
  %107 = load %struct.net_device*, %struct.net_device** %8, align 8
  %108 = getelementptr inbounds %struct.net_device, %struct.net_device* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @wdev_lock(i32 %109)
  %111 = load %struct.net_device*, %struct.net_device** %8, align 8
  %112 = getelementptr inbounds %struct.net_device, %struct.net_device* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @nl80211_key_allowed(i32 %113)
  store i32 %114, i32* %7, align 4
  %115 = load i32, i32* %7, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %131, label %117

117:                                              ; preds = %106
  %118 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %119 = bitcast %struct.cfg80211_registered_device* %118 to %struct.net_device*
  %120 = load %struct.net_device*, %struct.net_device** %8, align 8
  %121 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %9, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %9, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @NL80211_KEYTYPE_PAIRWISE, align 4
  %126 = icmp eq i32 %124, %125
  %127 = zext i1 %126 to i32
  %128 = load i32*, i32** %10, align 8
  %129 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %9, i32 0, i32 1
  %130 = call i32 @rdev_add_key(%struct.net_device* %119, %struct.net_device* %120, i32 %122, i32 %127, i32* %128, %struct.TYPE_5__* %129)
  store i32 %130, i32* %7, align 4
  br label %131

131:                                              ; preds = %117, %106
  %132 = load %struct.net_device*, %struct.net_device** %8, align 8
  %133 = getelementptr inbounds %struct.net_device, %struct.net_device* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @wdev_unlock(i32 %134)
  %136 = load i32, i32* %7, align 4
  store i32 %136, i32* %3, align 4
  br label %137

137:                                              ; preds = %131, %103, %86, %76, %33, %26
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local i32 @nl80211_parse_key(%struct.genl_info*, %struct.key_parse*) #1

declare dso_local i32* @nla_data(i64) #1

declare dso_local i64 @cfg80211_validate_key_settings(%struct.net_device*, %struct.TYPE_5__*, i32, i32, i32*) #1

declare dso_local i32 @wdev_lock(i32) #1

declare dso_local i32 @nl80211_key_allowed(i32) #1

declare dso_local i32 @rdev_add_key(%struct.net_device*, %struct.net_device*, i32, i32, i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @wdev_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
