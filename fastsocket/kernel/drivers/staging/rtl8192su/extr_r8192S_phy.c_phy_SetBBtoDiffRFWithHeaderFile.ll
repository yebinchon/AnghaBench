; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_phy.c_phy_SetBBtoDiffRFWithHeaderFile.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_phy.c_phy_SetBBtoDiffRFWithHeaderFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i64 }

@RF_1T1R = common dso_local global i64 0, align 8
@Rtl819XPHY_REG_to1T1R_Array = common dso_local global i32* null, align 8
@PHY_ChangeTo_1T1RArrayLength = common dso_local global i32 0, align 4
@RF_1T2R = common dso_local global i64 0, align 8
@Rtl819XPHY_REG_to1T2R_Array = common dso_local global i32* null, align 8
@PHY_ChangeTo_1T2RArrayLength = common dso_local global i32 0, align 4
@RT_STATUS_FAILURE = common dso_local global i32 0, align 4
@BaseBand_Config_PHY_REG = common dso_local global i64 0, align 8
@COMP_SEND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"phy_SetBBtoDiffRFWithHeaderFile(): ConfigType != BaseBand_Config_PHY_REG\0A\00", align 1
@RT_STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i64)* @phy_SetBBtoDiffRFWithHeaderFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phy_SetBBtoDiffRFWithHeaderFile(%struct.net_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.r8192_priv*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %10)
  store %struct.r8192_priv* %11, %struct.r8192_priv** %7, align 8
  %12 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %13 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @RF_1T1R, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32*, i32** @Rtl819XPHY_REG_to1T1R_Array, align 8
  store i32* %18, i32** %8, align 8
  %19 = load i32, i32* @PHY_ChangeTo_1T1RArrayLength, align 4
  store i32 %19, i32* %9, align 4
  br label %32

20:                                               ; preds = %2
  %21 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %22 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @RF_1T2R, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32*, i32** @Rtl819XPHY_REG_to1T2R_Array, align 8
  store i32* %27, i32** %8, align 8
  %28 = load i32, i32* @PHY_ChangeTo_1T2RArrayLength, align 4
  store i32 %28, i32* %9, align 4
  br label %31

29:                                               ; preds = %20
  %30 = load i32, i32* @RT_STATUS_FAILURE, align 4
  store i32 %30, i32* %3, align 4
  br label %129

31:                                               ; preds = %26
  br label %32

32:                                               ; preds = %31, %17
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* @BaseBand_Config_PHY_REG, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %124

36:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %120, %36
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %123

41:                                               ; preds = %37
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 254
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = call i32 @mdelay(i32 50)
  br label %100

50:                                               ; preds = %41
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 253
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = call i32 @mdelay(i32 5)
  br label %99

59:                                               ; preds = %50
  %60 = load i32*, i32** %8, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, 252
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = call i32 @mdelay(i32 1)
  br label %98

68:                                               ; preds = %59
  %69 = load i32*, i32** %8, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 251
  br i1 %74, label %75, label %77

75:                                               ; preds = %68
  %76 = call i32 @udelay(i32 50)
  br label %97

77:                                               ; preds = %68
  %78 = load i32*, i32** %8, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, 250
  br i1 %83, label %84, label %86

84:                                               ; preds = %77
  %85 = call i32 @udelay(i32 5)
  br label %96

86:                                               ; preds = %77
  %87 = load i32*, i32** %8, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %91, 249
  br i1 %92, label %93, label %95

93:                                               ; preds = %86
  %94 = call i32 @udelay(i32 1)
  br label %95

95:                                               ; preds = %93, %86
  br label %96

96:                                               ; preds = %95, %84
  br label %97

97:                                               ; preds = %96, %75
  br label %98

98:                                               ; preds = %97, %66
  br label %99

99:                                               ; preds = %98, %57
  br label %100

100:                                              ; preds = %99, %48
  %101 = load %struct.net_device*, %struct.net_device** %4, align 8
  %102 = load i32*, i32** %8, align 8
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load i32*, i32** %8, align 8
  %108 = load i32, i32* %6, align 4
  %109 = add nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %107, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load i32*, i32** %8, align 8
  %114 = load i32, i32* %6, align 4
  %115 = add nsw i32 %114, 2
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %113, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @rtl8192_setBBreg(%struct.net_device* %101, i32 %106, i32 %112, i32 %118)
  br label %120

120:                                              ; preds = %100
  %121 = load i32, i32* %6, align 4
  %122 = add nsw i32 %121, 3
  store i32 %122, i32* %6, align 4
  br label %37

123:                                              ; preds = %37
  br label %127

124:                                              ; preds = %32
  %125 = load i32, i32* @COMP_SEND, align 4
  %126 = call i32 @RT_TRACE(i32 %125, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0))
  br label %127

127:                                              ; preds = %124, %123
  %128 = load i32, i32* @RT_STATUS_SUCCESS, align 4
  store i32 %128, i32* %3, align 4
  br label %129

129:                                              ; preds = %127, %29
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @rtl8192_setBBreg(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @RT_TRACE(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
