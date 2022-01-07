; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_sme.c_cfg80211_get_conn_bss.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_sme.c_cfg80211_get_conn_bss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_bss = type { i32, i32 }
%struct.wireless_dev = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i64 }
%struct.cfg80211_registered_device = type { i32 }

@WLAN_CAPABILITY_ESS = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_PRIVACY = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@CFG80211_CONN_AUTHENTICATE_NEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cfg80211_bss* (%struct.wireless_dev*)* @cfg80211_get_conn_bss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cfg80211_bss* @cfg80211_get_conn_bss(%struct.wireless_dev* %0) #0 {
  %2 = alloca %struct.cfg80211_bss*, align 8
  %3 = alloca %struct.wireless_dev*, align 8
  %4 = alloca %struct.cfg80211_registered_device*, align 8
  %5 = alloca %struct.cfg80211_bss*, align 8
  %6 = alloca i32, align 4
  store %struct.wireless_dev* %0, %struct.wireless_dev** %3, align 8
  %7 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %8 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.cfg80211_registered_device* @wiphy_to_dev(i32 %9)
  store %struct.cfg80211_registered_device* %10, %struct.cfg80211_registered_device** %4, align 8
  %11 = load i32, i32* @WLAN_CAPABILITY_ESS, align 4
  store i32 %11, i32* %6, align 4
  %12 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %13 = call i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev* %12)
  %14 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %15 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load i32, i32* @WLAN_CAPABILITY_PRIVACY, align 4
  %23 = load i32, i32* %6, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %21, %1
  %26 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %27 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %30 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %36 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %42 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %48 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @WLAN_CAPABILITY_ESS, align 4
  %54 = load i32, i32* @WLAN_CAPABILITY_PRIVACY, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* %6, align 4
  %57 = call %struct.cfg80211_bss* @cfg80211_get_bss(i32 %28, i32 %34, i32 %40, i32 %46, i32 %52, i32 %55, i32 %56)
  store %struct.cfg80211_bss* %57, %struct.cfg80211_bss** %5, align 8
  %58 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %5, align 8
  %59 = icmp ne %struct.cfg80211_bss* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %25
  store %struct.cfg80211_bss* null, %struct.cfg80211_bss** %2, align 8
  br label %99

61:                                               ; preds = %25
  %62 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %63 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %5, align 8
  %68 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @ETH_ALEN, align 4
  %71 = call i32 @memcpy(i32 %66, i32 %69, i32 %70)
  %72 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %73 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %78 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  store i32 %76, i32* %81, align 4
  %82 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %5, align 8
  %83 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %86 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %85, i32 0, i32 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  store i32 %84, i32* %89, align 8
  %90 = load i32, i32* @CFG80211_CONN_AUTHENTICATE_NEXT, align 4
  %91 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %92 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %91, i32 0, i32 0
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  store i32 %90, i32* %94, align 8
  %95 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %96 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %95, i32 0, i32 0
  %97 = call i32 @schedule_work(i32* %96)
  %98 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %5, align 8
  store %struct.cfg80211_bss* %98, %struct.cfg80211_bss** %2, align 8
  br label %99

99:                                               ; preds = %61, %60
  %100 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %2, align 8
  ret %struct.cfg80211_bss* %100
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_dev(i32) #1

declare dso_local i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev*) #1

declare dso_local %struct.cfg80211_bss* @cfg80211_get_bss(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
