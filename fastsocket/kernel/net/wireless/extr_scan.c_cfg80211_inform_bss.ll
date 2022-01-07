; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_scan.c_cfg80211_inform_bss.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_scan.c_cfg80211_inform_bss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_bss = type { i32, i32, i32, i32, i8*, %struct.ieee80211_channel*, i32 }
%struct.wiphy = type { i64 }
%struct.ieee80211_channel = type { i32 }
%struct.cfg80211_bss_ies = type { i64, i32, i32 }
%struct.cfg80211_internal_bss = type { %struct.cfg80211_bss }

@CFG80211_SIGNAL_TYPE_UNSPEC = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i64 0, align 8
@WLAN_CAPABILITY_ESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cfg80211_bss* @cfg80211_inform_bss(%struct.wiphy* %0, %struct.ieee80211_channel* %1, i32* %2, i32 %3, i8* %4, i8* %5, i32* %6, i64 %7, i32 %8, i32 %9) #0 {
  %11 = alloca %struct.cfg80211_bss*, align 8
  %12 = alloca %struct.wiphy*, align 8
  %13 = alloca %struct.ieee80211_channel*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.cfg80211_bss_ies*, align 8
  %23 = alloca %struct.cfg80211_internal_bss, align 8
  %24 = alloca %struct.cfg80211_internal_bss*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %12, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %13, align 8
  store i32* %2, i32** %14, align 8
  store i32 %3, i32* %15, align 4
  store i8* %4, i8** %16, align 8
  store i8* %5, i8** %17, align 8
  store i32* %6, i32** %18, align 8
  store i64 %7, i64* %19, align 8
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  %25 = bitcast %struct.cfg80211_internal_bss* %23 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %25, i8 0, i64 40, i1 false)
  %26 = load %struct.wiphy*, %struct.wiphy** %12, align 8
  %27 = icmp ne %struct.wiphy* %26, null
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i64 @WARN_ON(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %10
  store %struct.cfg80211_bss* null, %struct.cfg80211_bss** %11, align 8
  br label %138

33:                                               ; preds = %10
  %34 = load %struct.wiphy*, %struct.wiphy** %12, align 8
  %35 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @CFG80211_SIGNAL_TYPE_UNSPEC, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %33
  %40 = load i32, i32* %20, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %20, align 4
  %44 = icmp sgt i32 %43, 100
  br label %45

45:                                               ; preds = %42, %39
  %46 = phi i1 [ true, %39 ], [ %44, %42 ]
  br label %47

47:                                               ; preds = %45, %33
  %48 = phi i1 [ false, %33 ], [ %46, %45 ]
  %49 = zext i1 %48 to i32
  %50 = call i64 @WARN_ON(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store %struct.cfg80211_bss* null, %struct.cfg80211_bss** %11, align 8
  br label %138

53:                                               ; preds = %47
  %54 = load %struct.wiphy*, %struct.wiphy** %12, align 8
  %55 = load i32*, i32** %18, align 8
  %56 = load i64, i64* %19, align 8
  %57 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %13, align 8
  %58 = call %struct.ieee80211_channel* @cfg80211_get_bss_channel(%struct.wiphy* %54, i32* %55, i64 %56, %struct.ieee80211_channel* %57)
  store %struct.ieee80211_channel* %58, %struct.ieee80211_channel** %13, align 8
  %59 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %13, align 8
  %60 = icmp ne %struct.ieee80211_channel* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %53
  store %struct.cfg80211_bss* null, %struct.cfg80211_bss** %11, align 8
  br label %138

62:                                               ; preds = %53
  %63 = getelementptr inbounds %struct.cfg80211_internal_bss, %struct.cfg80211_internal_bss* %23, i32 0, i32 0
  %64 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 8
  %66 = load i32*, i32** %14, align 8
  %67 = load i64, i64* @ETH_ALEN, align 8
  %68 = call i32 @memcpy(i32 %65, i32* %66, i64 %67)
  %69 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %13, align 8
  %70 = getelementptr inbounds %struct.cfg80211_internal_bss, %struct.cfg80211_internal_bss* %23, i32 0, i32 0
  %71 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %70, i32 0, i32 5
  store %struct.ieee80211_channel* %69, %struct.ieee80211_channel** %71, align 8
  %72 = load i32, i32* %20, align 4
  %73 = getelementptr inbounds %struct.cfg80211_internal_bss, %struct.cfg80211_internal_bss* %23, i32 0, i32 0
  %74 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load i8*, i8** %17, align 8
  %76 = getelementptr inbounds %struct.cfg80211_internal_bss, %struct.cfg80211_internal_bss* %23, i32 0, i32 0
  %77 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %76, i32 0, i32 4
  store i8* %75, i8** %77, align 8
  %78 = load i8*, i8** %16, align 8
  %79 = ptrtoint i8* %78 to i32
  %80 = getelementptr inbounds %struct.cfg80211_internal_bss, %struct.cfg80211_internal_bss* %23, i32 0, i32 0
  %81 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load i64, i64* %19, align 8
  %83 = add i64 16, %82
  %84 = trunc i64 %83 to i32
  %85 = load i32, i32* %21, align 4
  %86 = call %struct.cfg80211_bss_ies* @kmalloc(i32 %84, i32 %85)
  store %struct.cfg80211_bss_ies* %86, %struct.cfg80211_bss_ies** %22, align 8
  %87 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %22, align 8
  %88 = icmp ne %struct.cfg80211_bss_ies* %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %62
  store %struct.cfg80211_bss* null, %struct.cfg80211_bss** %11, align 8
  br label %138

90:                                               ; preds = %62
  %91 = load i64, i64* %19, align 8
  %92 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %22, align 8
  %93 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %92, i32 0, i32 0
  store i64 %91, i64* %93, align 8
  %94 = load i32, i32* %15, align 4
  %95 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %22, align 8
  %96 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 4
  %97 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %22, align 8
  %98 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load i32*, i32** %18, align 8
  %101 = load i64, i64* %19, align 8
  %102 = call i32 @memcpy(i32 %99, i32* %100, i64 %101)
  %103 = getelementptr inbounds %struct.cfg80211_internal_bss, %struct.cfg80211_internal_bss* %23, i32 0, i32 0
  %104 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %22, align 8
  %107 = call i32 @rcu_assign_pointer(i32 %105, %struct.cfg80211_bss_ies* %106)
  %108 = getelementptr inbounds %struct.cfg80211_internal_bss, %struct.cfg80211_internal_bss* %23, i32 0, i32 0
  %109 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %22, align 8
  %112 = call i32 @rcu_assign_pointer(i32 %110, %struct.cfg80211_bss_ies* %111)
  %113 = load %struct.wiphy*, %struct.wiphy** %12, align 8
  %114 = call i32 @wiphy_to_dev(%struct.wiphy* %113)
  %115 = call %struct.cfg80211_internal_bss* @cfg80211_bss_update(i32 %114, %struct.cfg80211_internal_bss* %23)
  store %struct.cfg80211_internal_bss* %115, %struct.cfg80211_internal_bss** %24, align 8
  %116 = load %struct.cfg80211_internal_bss*, %struct.cfg80211_internal_bss** %24, align 8
  %117 = icmp ne %struct.cfg80211_internal_bss* %116, null
  br i1 %117, label %119, label %118

118:                                              ; preds = %90
  store %struct.cfg80211_bss* null, %struct.cfg80211_bss** %11, align 8
  br label %138

119:                                              ; preds = %90
  %120 = load %struct.cfg80211_internal_bss*, %struct.cfg80211_internal_bss** %24, align 8
  %121 = getelementptr inbounds %struct.cfg80211_internal_bss, %struct.cfg80211_internal_bss* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @WLAN_CAPABILITY_ESS, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %119
  %128 = load %struct.wiphy*, %struct.wiphy** %12, align 8
  %129 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %13, align 8
  %130 = load i32, i32* %21, align 4
  %131 = call i32 @regulatory_hint_found_beacon(%struct.wiphy* %128, %struct.ieee80211_channel* %129, i32 %130)
  br label %132

132:                                              ; preds = %127, %119
  %133 = load %struct.cfg80211_internal_bss*, %struct.cfg80211_internal_bss** %24, align 8
  %134 = getelementptr inbounds %struct.cfg80211_internal_bss, %struct.cfg80211_internal_bss* %133, i32 0, i32 0
  %135 = call i32 @trace_cfg80211_return_bss(%struct.cfg80211_bss* %134)
  %136 = load %struct.cfg80211_internal_bss*, %struct.cfg80211_internal_bss** %24, align 8
  %137 = getelementptr inbounds %struct.cfg80211_internal_bss, %struct.cfg80211_internal_bss* %136, i32 0, i32 0
  store %struct.cfg80211_bss* %137, %struct.cfg80211_bss** %11, align 8
  br label %138

138:                                              ; preds = %132, %118, %89, %61, %52, %32
  %139 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %11, align 8
  ret %struct.cfg80211_bss* %139
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @WARN_ON(i32) #2

declare dso_local %struct.ieee80211_channel* @cfg80211_get_bss_channel(%struct.wiphy*, i32*, i64, %struct.ieee80211_channel*) #2

declare dso_local i32 @memcpy(i32, i32*, i64) #2

declare dso_local %struct.cfg80211_bss_ies* @kmalloc(i32, i32) #2

declare dso_local i32 @rcu_assign_pointer(i32, %struct.cfg80211_bss_ies*) #2

declare dso_local %struct.cfg80211_internal_bss* @cfg80211_bss_update(i32, %struct.cfg80211_internal_bss*) #2

declare dso_local i32 @wiphy_to_dev(%struct.wiphy*) #2

declare dso_local i32 @regulatory_hint_found_beacon(%struct.wiphy*, %struct.ieee80211_channel*, i32) #2

declare dso_local i32 @trace_cfg80211_return_bss(%struct.cfg80211_bss*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
