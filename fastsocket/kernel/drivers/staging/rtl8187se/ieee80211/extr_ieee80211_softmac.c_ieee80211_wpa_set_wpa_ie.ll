; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/ieee80211/extr_ieee80211_softmac.c_ieee80211_wpa_set_wpa_ie.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/ieee80211/extr_ieee80211_softmac.c_ieee80211_wpa_set_wpa_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i64, i32* }
%struct.ieee_param = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32* }

@MAX_WPA_IE_LEN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_device*, %struct.ieee_param*, i32)* @ieee80211_wpa_set_wpa_ie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_wpa_set_wpa_ie(%struct.ieee80211_device* %0, %struct.ieee_param* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_device*, align 8
  %6 = alloca %struct.ieee_param*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %5, align 8
  store %struct.ieee_param* %1, %struct.ieee_param** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %10 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @MAX_WPA_IE_LEN, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %30, label %16

16:                                               ; preds = %3
  %17 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %18 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %16
  %24 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %25 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %23, %3
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %98

33:                                               ; preds = %23, %16
  %34 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %35 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %80

40:                                               ; preds = %33
  %41 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %42 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call i32* @kmalloc(i64 %45, i32 %46)
  store i32* %47, i32** %8, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %40
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %98

53:                                               ; preds = %40
  %54 = load i32*, i32** %8, align 8
  %55 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %56 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %61 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @memcpy(i32* %54, i32* %59, i64 %64)
  %66 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %67 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @kfree(i32* %68)
  %70 = load i32*, i32** %8, align 8
  %71 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %72 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %71, i32 0, i32 1
  store i32* %70, i32** %72, align 8
  %73 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %74 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %79 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  br label %89

80:                                               ; preds = %33
  %81 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %82 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @kfree(i32* %83)
  %85 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %86 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %85, i32 0, i32 1
  store i32* null, i32** %86, align 8
  %87 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %88 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %87, i32 0, i32 0
  store i64 0, i64* %88, align 8
  br label %89

89:                                               ; preds = %80, %53
  %90 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %91 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %92 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %95 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @ieee80211_wpa_assoc_frame(%struct.ieee80211_device* %90, i32* %93, i64 %96)
  store i32 0, i32* %4, align 4
  br label %98

98:                                               ; preds = %89, %50, %30
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i32* @kmalloc(i64, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @ieee80211_wpa_assoc_frame(%struct.ieee80211_device*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
