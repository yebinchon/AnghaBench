; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8185b_init.c_ActSetWirelessMode8185.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8185b_init.c_ActSetWirelessMode8185.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8180_priv = type { i32, i32, %struct.ieee80211_device* }
%struct.ieee80211_device = type { i32 }

@.str = private unnamed_addr constant [67 x i8] c"ActSetWirelessMode8185(): WirelessMode(%d) is not supported (%d)!\0A\00", align 1
@WIRELESS_MODE_AUTO = common dso_local global i32 0, align 4
@WIRELESS_MODE_A = common dso_local global i32 0, align 4
@WIRELESS_MODE_G = common dso_local global i32 0, align 4
@WIRELESS_MODE_B = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [92 x i8] c"ActSetWirelessMode8185(): No valid wireless mode supported, btSupportedWirelessMode(%x)!!!\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"ActSetWirelessMode8185(): unsupported RF: 0x%X !!!\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"WIRELESS_MODE_A\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"WIRELESS_MODE_B\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"WIRELESS_MODE_G\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ActSetWirelessMode8185(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.r8180_priv*, align 8
  %6 = alloca %struct.ieee80211_device*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call i64 @ieee80211_priv(%struct.net_device* %8)
  %10 = inttoptr i64 %9 to %struct.r8180_priv*
  store %struct.r8180_priv* %10, %struct.r8180_priv** %5, align 8
  %11 = load %struct.r8180_priv*, %struct.r8180_priv** %5, align 8
  %12 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %11, i32 0, i32 2
  %13 = load %struct.ieee80211_device*, %struct.ieee80211_device** %12, align 8
  store %struct.ieee80211_device* %13, %struct.ieee80211_device** %6, align 8
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = call i32 @GetSupportedWirelessMode8185(%struct.net_device* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %7, align 4
  %18 = and i32 %16, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 (i8*, i32, ...) @DMESGW(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22)
  br label %103

24:                                               ; preds = %2
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @WIRELESS_MODE_AUTO, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %56

28:                                               ; preds = %24
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @WIRELESS_MODE_A, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @WIRELESS_MODE_A, align 4
  store i32 %34, i32* %4, align 4
  br label %55

35:                                               ; preds = %28
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @WIRELESS_MODE_G, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @WIRELESS_MODE_G, align 4
  store i32 %41, i32* %4, align 4
  br label %54

42:                                               ; preds = %35
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @WIRELESS_MODE_B, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* @WIRELESS_MODE_B, align 4
  store i32 %48, i32* %4, align 4
  br label %53

49:                                               ; preds = %42
  %50 = load i32, i32* %7, align 4
  %51 = call i32 (i8*, i32, ...) @DMESGW(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @WIRELESS_MODE_B, align 4
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %49, %47
  br label %54

54:                                               ; preds = %53, %40
  br label %55

55:                                               ; preds = %54, %33
  br label %56

56:                                               ; preds = %55, %24
  %57 = load %struct.r8180_priv*, %struct.r8180_priv** %5, align 8
  %58 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  switch i32 %59, label %64 [
    i32 129, label %60
    i32 128, label %60
  ]

60:                                               ; preds = %56, %56
  %61 = load i32, i32* %4, align 4
  %62 = load %struct.ieee80211_device*, %struct.ieee80211_device** %6, align 8
  %63 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  br label %69

64:                                               ; preds = %56
  %65 = load %struct.r8180_priv*, %struct.r8180_priv** %5, align 8
  %66 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 (i8*, i32, ...) @DMESGW(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %64, %60
  %70 = load %struct.ieee80211_device*, %struct.ieee80211_device** %6, align 8
  %71 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @WIRELESS_MODE_A, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %69
  %76 = call i32 @DMESG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %95

77:                                               ; preds = %69
  %78 = load %struct.ieee80211_device*, %struct.ieee80211_device** %6, align 8
  %79 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @WIRELESS_MODE_B, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = call i32 @DMESG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %94

85:                                               ; preds = %77
  %86 = load %struct.ieee80211_device*, %struct.ieee80211_device** %6, align 8
  %87 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @WIRELESS_MODE_G, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = call i32 @DMESG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  br label %93

93:                                               ; preds = %91, %85
  br label %94

94:                                               ; preds = %93, %83
  br label %95

95:                                               ; preds = %94, %75
  %96 = load %struct.net_device*, %struct.net_device** %3, align 8
  %97 = load %struct.ieee80211_device*, %struct.ieee80211_device** %6, align 8
  %98 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.r8180_priv*, %struct.r8180_priv** %5, align 8
  %101 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %100, i32 0, i32 1
  %102 = call i32 @ActUpdateChannelAccessSetting(%struct.net_device* %96, i32 %99, i32* %101)
  br label %103

103:                                              ; preds = %95, %20
  ret void
}

declare dso_local i64 @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @GetSupportedWirelessMode8185(%struct.net_device*) #1

declare dso_local i32 @DMESGW(i8*, i32, ...) #1

declare dso_local i32 @DMESG(i8*) #1

declare dso_local i32 @ActUpdateChannelAccessSetting(%struct.net_device*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
