; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_parse_sta_wme.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_parse_sta_wme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genl_info = type { %struct.nlattr** }
%struct.nlattr = type { i32 }
%struct.station_parameters = type { i32, i32, i32 }

@NL80211_STA_WME_MAX = common dso_local global i32 0, align 4
@NL80211_ATTR_STA_WME = common dso_local global i64 0, align 8
@nl80211_sta_wme_policy = common dso_local global i32 0, align 4
@NL80211_STA_WME_UAPSD_QUEUES = common dso_local global i64 0, align 8
@IEEE80211_WMM_IE_STA_QOSINFO_AC_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NL80211_STA_WME_MAX_SP = common dso_local global i64 0, align 8
@IEEE80211_WMM_IE_STA_QOSINFO_SP_MASK = common dso_local global i32 0, align 4
@STATION_PARAM_APPLY_UAPSD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.genl_info*, %struct.station_parameters*)* @nl80211_parse_sta_wme to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_parse_sta_wme(%struct.genl_info* %0, %struct.station_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.genl_info*, align 8
  %5 = alloca %struct.station_parameters*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.nlattr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.genl_info* %0, %struct.genl_info** %4, align 8
  store %struct.station_parameters* %1, %struct.station_parameters** %5, align 8
  %11 = load i32, i32* @NL80211_STA_WME_MAX, align 4
  %12 = add nsw i32 %11, 1
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca %struct.nlattr*, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %17 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %16, i32 0, i32 0
  %18 = load %struct.nlattr**, %struct.nlattr*** %17, align 8
  %19 = load i64, i64* @NL80211_ATTR_STA_WME, align 8
  %20 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %19
  %21 = load %struct.nlattr*, %struct.nlattr** %20, align 8
  %22 = icmp ne %struct.nlattr* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %93

24:                                               ; preds = %2
  %25 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %26 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %25, i32 0, i32 0
  %27 = load %struct.nlattr**, %struct.nlattr*** %26, align 8
  %28 = load i64, i64* @NL80211_ATTR_STA_WME, align 8
  %29 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %28
  %30 = load %struct.nlattr*, %struct.nlattr** %29, align 8
  store %struct.nlattr* %30, %struct.nlattr** %8, align 8
  %31 = load i32, i32* @NL80211_STA_WME_MAX, align 4
  %32 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %33 = load i32, i32* @nl80211_sta_wme_policy, align 4
  %34 = call i32 @nla_parse_nested(%struct.nlattr** %15, i32 %31, %struct.nlattr* %32, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %24
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %93

39:                                               ; preds = %24
  %40 = load i64, i64* @NL80211_STA_WME_UAPSD_QUEUES, align 8
  %41 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %15, i64 %40
  %42 = load %struct.nlattr*, %struct.nlattr** %41, align 8
  %43 = icmp ne %struct.nlattr* %42, null
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = load i64, i64* @NL80211_STA_WME_UAPSD_QUEUES, align 8
  %46 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %15, i64 %45
  %47 = load %struct.nlattr*, %struct.nlattr** %46, align 8
  %48 = call i8* @nla_get_u8(%struct.nlattr* %47)
  %49 = ptrtoint i8* %48 to i32
  %50 = load %struct.station_parameters*, %struct.station_parameters** %5, align 8
  %51 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %44, %39
  %53 = load %struct.station_parameters*, %struct.station_parameters** %5, align 8
  %54 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @IEEE80211_WMM_IE_STA_QOSINFO_AC_MASK, align 4
  %57 = xor i32 %56, -1
  %58 = and i32 %55, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %52
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %93

63:                                               ; preds = %52
  %64 = load i64, i64* @NL80211_STA_WME_MAX_SP, align 8
  %65 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %15, i64 %64
  %66 = load %struct.nlattr*, %struct.nlattr** %65, align 8
  %67 = icmp ne %struct.nlattr* %66, null
  br i1 %67, label %68, label %76

68:                                               ; preds = %63
  %69 = load i64, i64* @NL80211_STA_WME_MAX_SP, align 8
  %70 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %15, i64 %69
  %71 = load %struct.nlattr*, %struct.nlattr** %70, align 8
  %72 = call i8* @nla_get_u8(%struct.nlattr* %71)
  %73 = ptrtoint i8* %72 to i32
  %74 = load %struct.station_parameters*, %struct.station_parameters** %5, align 8
  %75 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  br label %76

76:                                               ; preds = %68, %63
  %77 = load %struct.station_parameters*, %struct.station_parameters** %5, align 8
  %78 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @IEEE80211_WMM_IE_STA_QOSINFO_SP_MASK, align 4
  %81 = xor i32 %80, -1
  %82 = and i32 %79, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %76
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %93

87:                                               ; preds = %76
  %88 = load i32, i32* @STATION_PARAM_APPLY_UAPSD, align 4
  %89 = load %struct.station_parameters*, %struct.station_parameters** %5, align 8
  %90 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 4
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %93

93:                                               ; preds = %87, %84, %60, %37, %23
  %94 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %94)
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_nested(%struct.nlattr**, i32, %struct.nlattr*, i32) #2

declare dso_local i8* @nla_get_u8(%struct.nlattr*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
