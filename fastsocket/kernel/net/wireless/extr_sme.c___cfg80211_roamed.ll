; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_sme.c___cfg80211_roamed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_sme.c___cfg80211_roamed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wireless_dev = type { i64, i64, i32, i32, %struct.TYPE_9__, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.cfg80211_bss }
%struct.cfg80211_bss = type { i32 }

@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@NL80211_IFTYPE_P2P_CLIENT = common dso_local global i64 0, align 8
@CFG80211_SME_CONNECTED = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ARPHRD_ETHER = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@IWEVASSOCREQIE = common dso_local global i32 0, align 4
@IWEVASSOCRESPIE = common dso_local global i32 0, align 4
@SIOCGIWAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__cfg80211_roamed(%struct.wireless_dev* %0, %struct.cfg80211_bss* %1, i32* %2, i64 %3, i32* %4, i64 %5) #0 {
  %7 = alloca %struct.wireless_dev*, align 8
  %8 = alloca %struct.cfg80211_bss*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  store %struct.wireless_dev* %0, %struct.wireless_dev** %7, align 8
  store %struct.cfg80211_bss* %1, %struct.cfg80211_bss** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  store i64 %5, i64* %12, align 8
  %13 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %14 = call i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev* %13)
  %15 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %16 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %6
  %21 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %22 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @NL80211_IFTYPE_P2P_CLIENT, align 8
  %25 = icmp ne i64 %23, %24
  br label %26

26:                                               ; preds = %20, %6
  %27 = phi i1 [ false, %6 ], [ %25, %20 ]
  %28 = zext i1 %27 to i32
  %29 = call i64 @WARN_ON(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %87

32:                                               ; preds = %26
  %33 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %34 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @CFG80211_SME_CONNECTED, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %87

39:                                               ; preds = %32
  %40 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %41 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %40, i32 0, i32 5
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %43 = icmp ne %struct.TYPE_10__* %42, null
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i64 @WARN_ON(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  br label %87

49:                                               ; preds = %39
  %50 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %51 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %50, i32 0, i32 5
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = call i32 @cfg80211_unhold_bss(%struct.TYPE_10__* %52)
  %54 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %55 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %58 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %57, i32 0, i32 5
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = call i32 @cfg80211_put_bss(i32 %56, %struct.cfg80211_bss* %60)
  %62 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %63 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %62, i32 0, i32 5
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %63, align 8
  %64 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %8, align 8
  %65 = call %struct.TYPE_10__* @bss_from_pub(%struct.cfg80211_bss* %64)
  %66 = call i32 @cfg80211_hold_bss(%struct.TYPE_10__* %65)
  %67 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %8, align 8
  %68 = call %struct.TYPE_10__* @bss_from_pub(%struct.cfg80211_bss* %67)
  %69 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %70 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %69, i32 0, i32 5
  store %struct.TYPE_10__* %68, %struct.TYPE_10__** %70, align 8
  %71 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %72 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @wiphy_to_dev(i32 %73)
  %75 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %76 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %8, align 8
  %79 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %9, align 8
  %82 = load i64, i64* %10, align 8
  %83 = load i32*, i32** %11, align 8
  %84 = load i64, i64* %12, align 8
  %85 = load i32, i32* @GFP_KERNEL, align 4
  %86 = call i32 @nl80211_send_roamed(i32 %74, i32 %77, i32 %80, i32* %81, i64 %82, i32* %83, i64 %84, i32 %85)
  br label %93

87:                                               ; preds = %48, %38, %31
  %88 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %89 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %8, align 8
  %92 = call i32 @cfg80211_put_bss(i32 %90, %struct.cfg80211_bss* %91)
  br label %93

93:                                               ; preds = %87, %49
  ret void
}

declare dso_local i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @cfg80211_unhold_bss(%struct.TYPE_10__*) #1

declare dso_local i32 @cfg80211_put_bss(i32, %struct.cfg80211_bss*) #1

declare dso_local i32 @cfg80211_hold_bss(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_10__* @bss_from_pub(%struct.cfg80211_bss*) #1

declare dso_local i32 @nl80211_send_roamed(i32, i32, i32, i32*, i64, i32*, i64, i32) #1

declare dso_local i32 @wiphy_to_dev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
