; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_set_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { %struct.net_device** }
%struct.net_device = type { %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.cfg80211_registered_device = type { %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.key_parse = type { i64, i32, i64, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl80211_set_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_set_key(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca %struct.key_parse, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.net_device*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %10 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %11 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %10, i32 0, i32 0
  %12 = load %struct.net_device**, %struct.net_device*** %11, align 8
  %13 = getelementptr inbounds %struct.net_device*, %struct.net_device** %12, i64 0
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  %15 = bitcast %struct.net_device* %14 to %struct.cfg80211_registered_device*
  store %struct.cfg80211_registered_device* %15, %struct.cfg80211_registered_device** %6, align 8
  %16 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %17 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %16, i32 0, i32 0
  %18 = load %struct.net_device**, %struct.net_device*** %17, align 8
  %19 = getelementptr inbounds %struct.net_device*, %struct.net_device** %18, i64 1
  %20 = load %struct.net_device*, %struct.net_device** %19, align 8
  store %struct.net_device* %20, %struct.net_device** %9, align 8
  %21 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %22 = call i32 @nl80211_parse_key(%struct.genl_info* %21, %struct.key_parse* %7)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %3, align 4
  br label %133

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %7, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %133

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %7, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %7, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %133

45:                                               ; preds = %38, %34
  %46 = load %struct.net_device*, %struct.net_device** %9, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 0
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = call i32 @wdev_lock(%struct.TYPE_8__* %48)
  %50 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %7, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %86

53:                                               ; preds = %45
  %54 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %55 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %54, i32 0, i32 1
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %53
  %61 = load i32, i32* @EOPNOTSUPP, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %8, align 4
  br label %127

63:                                               ; preds = %53
  %64 = load %struct.net_device*, %struct.net_device** %9, align 8
  %65 = getelementptr inbounds %struct.net_device, %struct.net_device* %64, i32 0, i32 0
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = call i32 @nl80211_key_allowed(%struct.TYPE_8__* %66)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  br label %127

71:                                               ; preds = %63
  %72 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %73 = bitcast %struct.cfg80211_registered_device* %72 to %struct.net_device*
  %74 = load %struct.net_device*, %struct.net_device** %9, align 8
  %75 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %7, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %7, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %7, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @rdev_set_default_key(%struct.net_device* %73, %struct.net_device* %74, i64 %76, i64 %78, i32 %80)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %71
  br label %127

85:                                               ; preds = %71
  br label %126

86:                                               ; preds = %45
  %87 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %7, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %7, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %90, %86
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %8, align 4
  br label %127

97:                                               ; preds = %90
  %98 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %99 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %98, i32 0, i32 1
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %97
  %105 = load i32, i32* @EOPNOTSUPP, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %8, align 4
  br label %127

107:                                              ; preds = %97
  %108 = load %struct.net_device*, %struct.net_device** %9, align 8
  %109 = getelementptr inbounds %struct.net_device, %struct.net_device* %108, i32 0, i32 0
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %109, align 8
  %111 = call i32 @nl80211_key_allowed(%struct.TYPE_8__* %110)
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %8, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %107
  br label %127

115:                                              ; preds = %107
  %116 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %117 = bitcast %struct.cfg80211_registered_device* %116 to %struct.net_device*
  %118 = load %struct.net_device*, %struct.net_device** %9, align 8
  %119 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %7, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @rdev_set_default_mgmt_key(%struct.net_device* %117, %struct.net_device* %118, i64 %120)
  store i32 %121, i32* %8, align 4
  %122 = load i32, i32* %8, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %115
  br label %127

125:                                              ; preds = %115
  br label %126

126:                                              ; preds = %125, %85
  br label %127

127:                                              ; preds = %126, %124, %114, %104, %94, %84, %70, %60
  %128 = load %struct.net_device*, %struct.net_device** %9, align 8
  %129 = getelementptr inbounds %struct.net_device, %struct.net_device* %128, i32 0, i32 0
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %129, align 8
  %131 = call i32 @wdev_unlock(%struct.TYPE_8__* %130)
  %132 = load i32, i32* %8, align 4
  store i32 %132, i32* %3, align 4
  br label %133

133:                                              ; preds = %127, %42, %31, %25
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local i32 @nl80211_parse_key(%struct.genl_info*, %struct.key_parse*) #1

declare dso_local i32 @wdev_lock(%struct.TYPE_8__*) #1

declare dso_local i32 @nl80211_key_allowed(%struct.TYPE_8__*) #1

declare dso_local i32 @rdev_set_default_key(%struct.net_device*, %struct.net_device*, i64, i64, i32) #1

declare dso_local i32 @rdev_set_default_mgmt_key(%struct.net_device*, %struct.net_device*, i64) #1

declare dso_local i32 @wdev_unlock(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
