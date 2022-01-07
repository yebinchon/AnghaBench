; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_del_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_del_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i64*, %struct.net_device** }
%struct.net_device = type { %struct.TYPE_10__*, %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.cfg80211_registered_device = type { %struct.TYPE_10__*, %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.key_parse = type { i32, i32 }

@NL80211_ATTR_MAC = common dso_local global i64 0, align 8
@NL80211_KEYTYPE_PAIRWISE = common dso_local global i32 0, align 4
@NL80211_KEYTYPE_GROUP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@WIPHY_FLAG_IBSS_RSN = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl80211_del_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_del_key(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.key_parse, align 4
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
  store i32* null, i32** %9, align 8
  %22 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %23 = call i32 @nl80211_parse_key(%struct.genl_info* %22, %struct.key_parse* %10)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %3, align 4
  br label %130

28:                                               ; preds = %2
  %29 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %30 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = load i64, i64* @NL80211_ATTR_MAC, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %28
  %37 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %38 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = load i64, i64* @NL80211_ATTR_MAC, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = call i32* @nla_data(i64 %42)
  store i32* %43, i32** %9, align 8
  br label %44

44:                                               ; preds = %36, %28
  %45 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %10, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %58

48:                                               ; preds = %44
  %49 = load i32*, i32** %9, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* @NL80211_KEYTYPE_PAIRWISE, align 4
  %53 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %10, i32 0, i32 0
  store i32 %52, i32* %53, align 4
  br label %57

54:                                               ; preds = %48
  %55 = load i32, i32* @NL80211_KEYTYPE_GROUP, align 4
  %56 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %10, i32 0, i32 0
  store i32 %55, i32* %56, align 4
  br label %57

57:                                               ; preds = %54, %51
  br label %58

58:                                               ; preds = %57, %44
  %59 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %10, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @NL80211_KEYTYPE_PAIRWISE, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %10, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @NL80211_KEYTYPE_GROUP, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %130

71:                                               ; preds = %63, %58
  %72 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %73 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %72, i32 0, i32 2
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %71
  %79 = load i32, i32* @EOPNOTSUPP, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %130

81:                                               ; preds = %71
  %82 = load %struct.net_device*, %struct.net_device** %8, align 8
  %83 = getelementptr inbounds %struct.net_device, %struct.net_device* %82, i32 0, i32 0
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %83, align 8
  %85 = call i32 @wdev_lock(%struct.TYPE_10__* %84)
  %86 = load %struct.net_device*, %struct.net_device** %8, align 8
  %87 = getelementptr inbounds %struct.net_device, %struct.net_device* %86, i32 0, i32 0
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  %89 = call i32 @nl80211_key_allowed(%struct.TYPE_10__* %88)
  store i32 %89, i32* %7, align 4
  %90 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %10, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @NL80211_KEYTYPE_PAIRWISE, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %108

94:                                               ; preds = %81
  %95 = load i32*, i32** %9, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %108

97:                                               ; preds = %94
  %98 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %99 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @WIPHY_FLAG_IBSS_RSN, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %97
  %106 = load i32, i32* @ENOENT, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %7, align 4
  br label %108

108:                                              ; preds = %105, %97, %94, %81
  %109 = load i32, i32* %7, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %124, label %111

111:                                              ; preds = %108
  %112 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %113 = bitcast %struct.cfg80211_registered_device* %112 to %struct.net_device*
  %114 = load %struct.net_device*, %struct.net_device** %8, align 8
  %115 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %10, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %10, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @NL80211_KEYTYPE_PAIRWISE, align 4
  %120 = icmp eq i32 %118, %119
  %121 = zext i1 %120 to i32
  %122 = load i32*, i32** %9, align 8
  %123 = call i32 @rdev_del_key(%struct.net_device* %113, %struct.net_device* %114, i32 %116, i32 %121, i32* %122)
  store i32 %123, i32* %7, align 4
  br label %124

124:                                              ; preds = %111, %108
  %125 = load %struct.net_device*, %struct.net_device** %8, align 8
  %126 = getelementptr inbounds %struct.net_device, %struct.net_device* %125, i32 0, i32 0
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %126, align 8
  %128 = call i32 @wdev_unlock(%struct.TYPE_10__* %127)
  %129 = load i32, i32* %7, align 4
  store i32 %129, i32* %3, align 4
  br label %130

130:                                              ; preds = %124, %78, %68, %26
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i32 @nl80211_parse_key(%struct.genl_info*, %struct.key_parse*) #1

declare dso_local i32* @nla_data(i64) #1

declare dso_local i32 @wdev_lock(%struct.TYPE_10__*) #1

declare dso_local i32 @nl80211_key_allowed(%struct.TYPE_10__*) #1

declare dso_local i32 @rdev_del_key(%struct.net_device*, %struct.net_device*, i32, i32, i32*) #1

declare dso_local i32 @wdev_unlock(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
