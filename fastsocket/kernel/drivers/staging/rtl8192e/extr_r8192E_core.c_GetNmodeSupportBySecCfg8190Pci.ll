; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_core.c_GetNmodeSupportBySecCfg8190Pci.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_core.c_GetNmodeSupportBySecCfg8190Pci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64 }
%struct.net_device = type { i32 }
%struct.r8192_priv = type { %struct.ieee80211_device* }
%struct.ieee80211_device = type { i32, i64, i32*, i64, %struct.TYPE_4__, %struct.ieee80211_crypt_data** }
%struct.TYPE_4__ = type { i32 }
%struct.ieee80211_crypt_data = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@WLAN_CAPABILITY_PRIVACY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"WEP\00", align 1
@ccmp_ie = common dso_local global i32 0, align 4
@ccmp_rsn_ie = common dso_local global i32 0, align 4
@TKIP_Encryption = common dso_local global i64 0, align 8
@WEP104_Encryption = common dso_local global i64 0, align 8
@WEP40_Encryption = common dso_local global i64 0, align 8
@pSecInfo = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @GetNmodeSupportBySecCfg8190Pci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetNmodeSupportBySecCfg8190Pci(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.r8192_priv*, align 8
  %5 = alloca %struct.ieee80211_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_crypt_data*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %9)
  store %struct.r8192_priv* %10, %struct.r8192_priv** %4, align 8
  %11 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %12 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %11, i32 0, i32 0
  %13 = load %struct.ieee80211_device*, %struct.ieee80211_device** %12, align 8
  store %struct.ieee80211_device* %13, %struct.ieee80211_device** %5, align 8
  %14 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %15 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %6, align 4
  %17 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %18 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %17, i32 0, i32 5
  %19 = load %struct.ieee80211_crypt_data**, %struct.ieee80211_crypt_data*** %18, align 8
  %20 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %21 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %19, i64 %22
  %24 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %23, align 8
  store %struct.ieee80211_crypt_data* %24, %struct.ieee80211_crypt_data** %7, align 8
  %25 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %26 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @WLAN_CAPABILITY_PRIVACY, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %55, label %32

32:                                               ; preds = %1
  %33 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %34 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %32
  %38 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %7, align 8
  %39 = icmp ne %struct.ieee80211_crypt_data* %38, null
  br i1 %39, label %40, label %53

40:                                               ; preds = %37
  %41 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %7, align 8
  %42 = getelementptr inbounds %struct.ieee80211_crypt_data, %struct.ieee80211_crypt_data* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = icmp ne %struct.TYPE_5__* %43, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %7, align 8
  %47 = getelementptr inbounds %struct.ieee80211_crypt_data, %struct.ieee80211_crypt_data* %46, i32 0, i32 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @strcmp(i32 %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %52 = icmp eq i64 0, %51
  br label %53

53:                                               ; preds = %45, %40, %37, %32
  %54 = phi i1 [ false, %40 ], [ false, %37 ], [ false, %32 ], [ %52, %45 ]
  br label %55

55:                                               ; preds = %53, %1
  %56 = phi i1 [ true, %1 ], [ %54, %53 ]
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load i32, i32* %6, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  store i32 0, i32* %2, align 4
  br label %100

64:                                               ; preds = %60, %55
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %99

67:                                               ; preds = %64
  %68 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %69 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, 221
  br i1 %73, label %74, label %82

74:                                               ; preds = %67
  %75 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %76 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 14
  %79 = load i32, i32* @ccmp_ie, align 4
  %80 = call i32 @memcmp(i32* %78, i32 %79, i32 4)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %97

82:                                               ; preds = %74, %67
  %83 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %84 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp eq i32 %87, 48
  br i1 %88, label %89, label %98

89:                                               ; preds = %82
  %90 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %91 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 10
  %94 = load i32, i32* @ccmp_rsn_ie, align 4
  %95 = call i32 @memcmp(i32* %93, i32 %94, i32 4)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %89, %74
  store i32 1, i32* %2, align 4
  br label %100

98:                                               ; preds = %89, %82
  store i32 0, i32* %2, align 4
  br label %100

99:                                               ; preds = %64
  store i32 1, i32* %2, align 4
  br label %100

100:                                              ; preds = %99, %98, %97, %63
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @memcmp(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
