; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_wx.c_is_same_network.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_wx.c_is_same_network.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_network = type { i64, i64, i32, i32, i32 }
%struct.ieee80211_device = type { i64 }

@IW_MODE_INFRA = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i64 0, align 8
@WLAN_CAPABILITY_IBSS = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_BSS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_network*, %struct.ieee80211_network*, %struct.ieee80211_device*)* @is_same_network to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_same_network(%struct.ieee80211_network* %0, %struct.ieee80211_network* %1, %struct.ieee80211_device* %2) #0 {
  %4 = alloca %struct.ieee80211_network*, align 8
  %5 = alloca %struct.ieee80211_network*, align 8
  %6 = alloca %struct.ieee80211_device*, align 8
  store %struct.ieee80211_network* %0, %struct.ieee80211_network** %4, align 8
  store %struct.ieee80211_network* %1, %struct.ieee80211_network** %5, align 8
  store %struct.ieee80211_device* %2, %struct.ieee80211_device** %6, align 8
  %7 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %8 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.ieee80211_network*, %struct.ieee80211_network** %5, align 8
  %11 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %9, %12
  br i1 %13, label %20, label %14

14:                                               ; preds = %3
  %15 = load %struct.ieee80211_device*, %struct.ieee80211_device** %6, align 8
  %16 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @IW_MODE_INFRA, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %80

20:                                               ; preds = %14, %3
  %21 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %22 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.ieee80211_network*, %struct.ieee80211_network** %5, align 8
  %25 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %80

28:                                               ; preds = %20
  %29 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %30 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.ieee80211_network*, %struct.ieee80211_network** %5, align 8
  %33 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = load i64, i64* @ETH_ALEN, align 8
  %36 = call i32 @memcmp(i32 %31, i32 %34, i64 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %80, label %38

38:                                               ; preds = %28
  %39 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %40 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ieee80211_network*, %struct.ieee80211_network** %5, align 8
  %43 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %46 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @memcmp(i32 %41, i32 %44, i64 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %38
  %51 = load %struct.ieee80211_device*, %struct.ieee80211_device** %6, align 8
  %52 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @IW_MODE_INFRA, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %80

56:                                               ; preds = %50, %38
  %57 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %58 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @WLAN_CAPABILITY_IBSS, align 4
  %61 = and i32 %59, %60
  %62 = load %struct.ieee80211_network*, %struct.ieee80211_network** %5, align 8
  %63 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @WLAN_CAPABILITY_IBSS, align 4
  %66 = and i32 %64, %65
  %67 = icmp eq i32 %61, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %56
  %69 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %70 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @WLAN_CAPABILITY_BSS, align 4
  %73 = and i32 %71, %72
  %74 = load %struct.ieee80211_network*, %struct.ieee80211_network** %5, align 8
  %75 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @WLAN_CAPABILITY_BSS, align 4
  %78 = and i32 %76, %77
  %79 = icmp eq i32 %73, %78
  br label %80

80:                                               ; preds = %68, %56, %50, %28, %20, %14
  %81 = phi i1 [ false, %56 ], [ false, %50 ], [ false, %28 ], [ false, %20 ], [ false, %14 ], [ %79, %68 ]
  %82 = zext i1 %81 to i32
  ret i32 %82
}

declare dso_local i32 @memcmp(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
