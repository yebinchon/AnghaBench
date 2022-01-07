; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_crit_protocol_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_crit_protocol_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i64, i64*, %struct.wireless_dev** }
%struct.wireless_dev = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.cfg80211_registered_device = type { i64, %struct.TYPE_2__* }

@NL80211_CRIT_PROTO_UNSPEC = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@NL80211_ATTR_CRIT_PROT_ID = common dso_local global i64 0, align 8
@NUM_NL80211_CRIT_PROTO = common dso_local global i32 0, align 4
@NL80211_ATTR_MAX_CRIT_PROT_DURATION = common dso_local global i64 0, align 8
@NL80211_CRIT_PROTO_MAX_DURATION = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl80211_crit_protocol_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_crit_protocol_start(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca %struct.wireless_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %11 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %12 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %11, i32 0, i32 2
  %13 = load %struct.wireless_dev**, %struct.wireless_dev*** %12, align 8
  %14 = getelementptr inbounds %struct.wireless_dev*, %struct.wireless_dev** %13, i64 0
  %15 = load %struct.wireless_dev*, %struct.wireless_dev** %14, align 8
  %16 = bitcast %struct.wireless_dev* %15 to %struct.cfg80211_registered_device*
  store %struct.cfg80211_registered_device* %16, %struct.cfg80211_registered_device** %6, align 8
  %17 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %18 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %17, i32 0, i32 2
  %19 = load %struct.wireless_dev**, %struct.wireless_dev*** %18, align 8
  %20 = getelementptr inbounds %struct.wireless_dev*, %struct.wireless_dev** %19, i64 1
  %21 = load %struct.wireless_dev*, %struct.wireless_dev** %20, align 8
  store %struct.wireless_dev* %21, %struct.wireless_dev** %7, align 8
  %22 = load i32, i32* @NL80211_CRIT_PROTO_UNSPEC, align 4
  store i32 %22, i32* %8, align 4
  %23 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %24 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* @EOPNOTSUPP, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %121

32:                                               ; preds = %2
  %33 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %34 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i64 @WARN_ON(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %32
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %121

46:                                               ; preds = %32
  %47 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %48 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32, i32* @EBUSY, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %121

54:                                               ; preds = %46
  %55 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %56 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %55, i32 0, i32 1
  %57 = load i64*, i64** %56, align 8
  %58 = load i64, i64* @NL80211_ATTR_CRIT_PROT_ID, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %54
  %63 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %64 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %63, i32 0, i32 1
  %65 = load i64*, i64** %64, align 8
  %66 = load i64, i64* @NL80211_ATTR_CRIT_PROT_ID, align 8
  %67 = getelementptr inbounds i64, i64* %65, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = call i8* @nla_get_u16(i64 %68)
  %70 = ptrtoint i8* %69 to i32
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %62, %54
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @NUM_NL80211_CRIT_PROTO, align 4
  %74 = icmp uge i32 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %121

78:                                               ; preds = %71
  %79 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %80 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %79, i32 0, i32 1
  %81 = load i64*, i64** %80, align 8
  %82 = load i64, i64* @NL80211_ATTR_MAX_CRIT_PROT_DURATION, align 8
  %83 = getelementptr inbounds i64, i64* %81, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %78
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %3, align 4
  br label %121

89:                                               ; preds = %78
  %90 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %91 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %90, i32 0, i32 1
  %92 = load i64*, i64** %91, align 8
  %93 = load i64, i64* @NL80211_ATTR_MAX_CRIT_PROT_DURATION, align 8
  %94 = getelementptr inbounds i64, i64* %92, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = call i8* @nla_get_u16(i64 %95)
  %97 = ptrtoint i8* %96 to i64
  store i64 %97, i64* %9, align 8
  %98 = load i64, i64* %9, align 8
  %99 = load i64, i64* @NL80211_CRIT_PROTO_MAX_DURATION, align 8
  %100 = icmp sgt i64 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %89
  %102 = load i32, i32* @ERANGE, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %3, align 4
  br label %121

104:                                              ; preds = %89
  %105 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %106 = bitcast %struct.cfg80211_registered_device* %105 to %struct.wireless_dev*
  %107 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %108 = load i32, i32* %8, align 4
  %109 = load i64, i64* %9, align 8
  %110 = call i32 @rdev_crit_proto_start(%struct.wireless_dev* %106, %struct.wireless_dev* %107, i32 %108, i64 %109)
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* %10, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %119, label %113

113:                                              ; preds = %104
  %114 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %115 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %118 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %117, i32 0, i32 0
  store i64 %116, i64* %118, align 8
  br label %119

119:                                              ; preds = %113, %104
  %120 = load i32, i32* %10, align 4
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %119, %101, %86, %75, %51, %43, %29
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i8* @nla_get_u16(i64) #1

declare dso_local i32 @rdev_crit_proto_start(%struct.wireless_dev*, %struct.wireless_dev*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
