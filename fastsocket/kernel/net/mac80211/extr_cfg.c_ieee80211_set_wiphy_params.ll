; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_cfg.c_ieee80211_set_wiphy_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_cfg.c_ieee80211_set_wiphy_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i64, i64, i32, i32, i32 }
%struct.ieee80211_local = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }

@WIPHY_PARAM_FRAG_THRESHOLD = common dso_local global i32 0, align 4
@WIPHY_PARAM_COVERAGE_CLASS = common dso_local global i32 0, align 4
@WIPHY_PARAM_RTS_THRESHOLD = common dso_local global i32 0, align 4
@WIPHY_PARAM_RETRY_SHORT = common dso_local global i32 0, align 4
@IEEE80211_MAX_TX_RETRY = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@WIPHY_PARAM_RETRY_LONG = common dso_local global i32 0, align 4
@IEEE80211_CONF_CHANGE_RETRY_LIMITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, i32)* @ieee80211_set_wiphy_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_set_wiphy_params(%struct.wiphy* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_local*, align 8
  %7 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %9 = call %struct.ieee80211_local* @wiphy_priv(%struct.wiphy* %8)
  store %struct.ieee80211_local* %9, %struct.ieee80211_local** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @WIPHY_PARAM_FRAG_THRESHOLD, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %2
  %15 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %16 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %17 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @drv_set_frag_threshold(%struct.ieee80211_local* %15, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %3, align 4
  br label %113

24:                                               ; preds = %14
  br label %25

25:                                               ; preds = %24, %2
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @WIPHY_PARAM_COVERAGE_CLASS, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %25
  %31 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %32 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %33 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @drv_set_coverage_class(%struct.ieee80211_local* %31, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %3, align 4
  br label %113

40:                                               ; preds = %30
  br label %41

41:                                               ; preds = %40, %25
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @WIPHY_PARAM_RTS_THRESHOLD, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %41
  %47 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %48 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %49 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @drv_set_rts_threshold(%struct.ieee80211_local* %47, i32 %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %3, align 4
  br label %113

56:                                               ; preds = %46
  br label %57

57:                                               ; preds = %56, %41
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @WIPHY_PARAM_RETRY_SHORT, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %79

62:                                               ; preds = %57
  %63 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %64 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @IEEE80211_MAX_TX_RETRY, align 8
  %67 = icmp sgt i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %113

71:                                               ; preds = %62
  %72 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %73 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %76 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  store i64 %74, i64* %78, align 8
  br label %79

79:                                               ; preds = %71, %57
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @WIPHY_PARAM_RETRY_LONG, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %101

84:                                               ; preds = %79
  %85 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %86 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @IEEE80211_MAX_TX_RETRY, align 8
  %89 = icmp sgt i64 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %84
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %3, align 4
  br label %113

93:                                               ; preds = %84
  %94 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %95 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %98 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  store i64 %96, i64* %100, align 8
  br label %101

101:                                              ; preds = %93, %79
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* @WIPHY_PARAM_RETRY_SHORT, align 4
  %104 = load i32, i32* @WIPHY_PARAM_RETRY_LONG, align 4
  %105 = or i32 %103, %104
  %106 = and i32 %102, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %101
  %109 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %110 = load i32, i32* @IEEE80211_CONF_CHANGE_RETRY_LIMITS, align 4
  %111 = call i32 @ieee80211_hw_config(%struct.ieee80211_local* %109, i32 %110)
  br label %112

112:                                              ; preds = %108, %101
  store i32 0, i32* %3, align 4
  br label %113

113:                                              ; preds = %112, %90, %68, %54, %38, %22
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local %struct.ieee80211_local* @wiphy_priv(%struct.wiphy*) #1

declare dso_local i32 @drv_set_frag_threshold(%struct.ieee80211_local*, i32) #1

declare dso_local i32 @drv_set_coverage_class(%struct.ieee80211_local*, i32) #1

declare dso_local i32 @drv_set_rts_threshold(%struct.ieee80211_local*, i32) #1

declare dso_local i32 @ieee80211_hw_config(%struct.ieee80211_local*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
