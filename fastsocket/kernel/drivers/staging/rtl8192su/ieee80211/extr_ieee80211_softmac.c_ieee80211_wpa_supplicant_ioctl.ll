; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_ieee80211_softmac.c_ieee80211_wpa_supplicant_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_ieee80211_softmac.c_ieee80211_wpa_supplicant_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i32 }
%struct.iw_point = type { i32, i32 }
%struct.ieee_param = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Unknown WPA supplicant request: %d\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_wpa_supplicant_ioctl(%struct.ieee80211_device* %0, %struct.iw_point* %1) #0 {
  %3 = alloca %struct.ieee80211_device*, align 8
  %4 = alloca %struct.iw_point*, align 8
  %5 = alloca %struct.ieee_param*, align 8
  %6 = alloca i32, align 4
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %3, align 8
  store %struct.iw_point* %1, %struct.iw_point** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %7, i32 0, i32 0
  %9 = call i32 @down(i32* %8)
  %10 = load %struct.iw_point*, %struct.iw_point** %4, align 8
  %11 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = icmp ult i64 %13, 20
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  %16 = load %struct.iw_point*, %struct.iw_point** %4, align 8
  %17 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15, %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %120

23:                                               ; preds = %15
  %24 = load %struct.iw_point*, %struct.iw_point** %4, align 8
  %25 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i64 @kmalloc(i32 %26, i32 %27)
  %29 = inttoptr i64 %28 to %struct.ieee_param*
  store %struct.ieee_param* %29, %struct.ieee_param** %5, align 8
  %30 = load %struct.ieee_param*, %struct.ieee_param** %5, align 8
  %31 = icmp eq %struct.ieee_param* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %23
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %120

35:                                               ; preds = %23
  %36 = load %struct.ieee_param*, %struct.ieee_param** %5, align 8
  %37 = load %struct.iw_point*, %struct.iw_point** %4, align 8
  %38 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.iw_point*, %struct.iw_point** %4, align 8
  %41 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @copy_from_user(%struct.ieee_param* %36, i32 %39, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %35
  %46 = load %struct.ieee_param*, %struct.ieee_param** %5, align 8
  %47 = call i32 @kfree(%struct.ieee_param* %46)
  %48 = load i32, i32* @EFAULT, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %6, align 4
  br label %120

50:                                               ; preds = %35
  %51 = load %struct.ieee_param*, %struct.ieee_param** %5, align 8
  %52 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  switch i32 %53, label %94 [
    i32 128, label %54
    i32 129, label %67
    i32 130, label %74
    i32 131, label %81
  ]

54:                                               ; preds = %50
  %55 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %56 = load %struct.ieee_param*, %struct.ieee_param** %5, align 8
  %57 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.ieee_param*, %struct.ieee_param** %5, align 8
  %62 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @ieee80211_wpa_set_param(%struct.ieee80211_device* %55, i32 %60, i32 %65)
  store i32 %66, i32* %6, align 4
  br label %101

67:                                               ; preds = %50
  %68 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %69 = load %struct.ieee_param*, %struct.ieee_param** %5, align 8
  %70 = load %struct.iw_point*, %struct.iw_point** %4, align 8
  %71 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @ieee80211_wpa_set_wpa_ie(%struct.ieee80211_device* %68, %struct.ieee_param* %69, i32 %72)
  store i32 %73, i32* %6, align 4
  br label %101

74:                                               ; preds = %50
  %75 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %76 = load %struct.ieee_param*, %struct.ieee_param** %5, align 8
  %77 = load %struct.iw_point*, %struct.iw_point** %4, align 8
  %78 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @ieee80211_wpa_set_encryption(%struct.ieee80211_device* %75, %struct.ieee_param* %76, i32 %79)
  store i32 %80, i32* %6, align 4
  br label %101

81:                                               ; preds = %50
  %82 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %83 = load %struct.ieee_param*, %struct.ieee_param** %5, align 8
  %84 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.ieee_param*, %struct.ieee_param** %5, align 8
  %89 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @ieee80211_wpa_mlme(%struct.ieee80211_device* %82, i32 %87, i32 %92)
  store i32 %93, i32* %6, align 4
  br label %101

94:                                               ; preds = %50
  %95 = load %struct.ieee_param*, %struct.ieee_param** %5, align 8
  %96 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* @EOPNOTSUPP, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %6, align 4
  br label %101

101:                                              ; preds = %94, %81, %74, %67, %54
  %102 = load i32, i32* %6, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %117

104:                                              ; preds = %101
  %105 = load %struct.iw_point*, %struct.iw_point** %4, align 8
  %106 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.ieee_param*, %struct.ieee_param** %5, align 8
  %109 = load %struct.iw_point*, %struct.iw_point** %4, align 8
  %110 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i64 @copy_to_user(i32 %107, %struct.ieee_param* %108, i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %104
  %115 = load i32, i32* @EFAULT, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %6, align 4
  br label %117

117:                                              ; preds = %114, %104, %101
  %118 = load %struct.ieee_param*, %struct.ieee_param** %5, align 8
  %119 = call i32 @kfree(%struct.ieee_param* %118)
  br label %120

120:                                              ; preds = %117, %45, %32, %20
  %121 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %122 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %121, i32 0, i32 0
  %123 = call i32 @up(i32* %122)
  %124 = load i32, i32* %6, align 4
  ret i32 %124
}

declare dso_local i32 @down(i32*) #1

declare dso_local i64 @kmalloc(i32, i32) #1

declare dso_local i64 @copy_from_user(%struct.ieee_param*, i32, i32) #1

declare dso_local i32 @kfree(%struct.ieee_param*) #1

declare dso_local i32 @ieee80211_wpa_set_param(%struct.ieee80211_device*, i32, i32) #1

declare dso_local i32 @ieee80211_wpa_set_wpa_ie(%struct.ieee80211_device*, %struct.ieee_param*, i32) #1

declare dso_local i32 @ieee80211_wpa_set_encryption(%struct.ieee80211_device*, %struct.ieee_param*, i32) #1

declare dso_local i32 @ieee80211_wpa_mlme(%struct.ieee80211_device*, i32, i32) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i64 @copy_to_user(i32, %struct.ieee_param*, i32) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
