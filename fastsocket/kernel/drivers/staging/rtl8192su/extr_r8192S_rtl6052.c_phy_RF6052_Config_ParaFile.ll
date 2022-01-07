; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_rtl6052.c_phy_RF6052_Config_ParaFile.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_rtl6052.c_phy_RF6052_Config_ParaFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@RT_STATUS_SUCCESS = common dso_local global i64 0, align 8
@bRFSI_RFENV = common dso_local global i32 0, align 4
@b3WireAddressLength = common dso_local global i32 0, align 4
@b3WireDataLength = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"phy_RF6052_Config_ParaFile():Radio[%d] Fail!!\00", align 1
@COMP_INIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"<---phy_RF6052_Config_ParaFile()\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @phy_RF6052_Config_ParaFile(%struct.net_device* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.r8192_priv*, align 8
  %8 = alloca %struct.TYPE_2__*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load i64, i64* @RT_STATUS_SUCCESS, align 8
  store i64 %9, i64* %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %10)
  store %struct.r8192_priv* %11, %struct.r8192_priv** %7, align 8
  store i64 0, i64* %5, align 8
  br label %12

12:                                               ; preds = %106, %1
  %13 = load i64, i64* %5, align 8
  %14 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %15 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ult i64 %13, %16
  br i1 %17, label %18, label %109

18:                                               ; preds = %12
  %19 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %20 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %22
  store %struct.TYPE_2__* %23, %struct.TYPE_2__** %8, align 8
  %24 = load i64, i64* %5, align 8
  switch i64 %24, label %40 [
    i64 131, label %25
    i64 129, label %25
    i64 130, label %32
    i64 128, label %32
  ]

25:                                               ; preds = %18, %18
  %26 = load %struct.net_device*, %struct.net_device** %3, align 8
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @bRFSI_RFENV, align 4
  %31 = call i32 @rtl8192_QueryBBReg(%struct.net_device* %26, i32 %29, i32 %30)
  store i32 %31, i32* %4, align 4
  br label %40

32:                                               ; preds = %18, %18
  %33 = load %struct.net_device*, %struct.net_device** %3, align 8
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @bRFSI_RFENV, align 4
  %38 = shl i32 %37, 16
  %39 = call i32 @rtl8192_QueryBBReg(%struct.net_device* %33, i32 %36, i32 %38)
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %18, %32, %25
  %41 = load %struct.net_device*, %struct.net_device** %3, align 8
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @bRFSI_RFENV, align 4
  %46 = shl i32 %45, 16
  %47 = call i32 @rtl8192_setBBreg(%struct.net_device* %41, i32 %44, i32 %46, i32 1)
  %48 = load %struct.net_device*, %struct.net_device** %3, align 8
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @bRFSI_RFENV, align 4
  %53 = call i32 @rtl8192_setBBreg(%struct.net_device* %48, i32 %51, i32 %52, i32 1)
  %54 = load %struct.net_device*, %struct.net_device** %3, align 8
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @b3WireAddressLength, align 4
  %59 = call i32 @rtl8192_setBBreg(%struct.net_device* %54, i32 %57, i32 %58, i32 0)
  %60 = load %struct.net_device*, %struct.net_device** %3, align 8
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @b3WireDataLength, align 4
  %65 = call i32 @rtl8192_setBBreg(%struct.net_device* %60, i32 %63, i32 %64, i32 0)
  %66 = load i64, i64* %5, align 8
  switch i64 %66, label %79 [
    i64 131, label %67
    i64 130, label %72
    i64 129, label %77
    i64 128, label %78
  ]

67:                                               ; preds = %40
  %68 = load %struct.net_device*, %struct.net_device** %3, align 8
  %69 = load i64, i64* %5, align 8
  %70 = trunc i64 %69 to i32
  %71 = call i64 @rtl8192_phy_ConfigRFWithHeaderFile(%struct.net_device* %68, i32 %70)
  store i64 %71, i64* %6, align 8
  br label %79

72:                                               ; preds = %40
  %73 = load %struct.net_device*, %struct.net_device** %3, align 8
  %74 = load i64, i64* %5, align 8
  %75 = trunc i64 %74 to i32
  %76 = call i64 @rtl8192_phy_ConfigRFWithHeaderFile(%struct.net_device* %73, i32 %75)
  store i64 %76, i64* %6, align 8
  br label %79

77:                                               ; preds = %40
  br label %79

78:                                               ; preds = %40
  br label %79

79:                                               ; preds = %40, %78, %77, %72, %67
  %80 = load i64, i64* %5, align 8
  switch i64 %80, label %98 [
    i64 131, label %81
    i64 129, label %81
    i64 130, label %89
    i64 128, label %89
  ]

81:                                               ; preds = %79, %79
  %82 = load %struct.net_device*, %struct.net_device** %3, align 8
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @bRFSI_RFENV, align 4
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @rtl8192_setBBreg(%struct.net_device* %82, i32 %85, i32 %86, i32 %87)
  br label %98

89:                                               ; preds = %79, %79
  %90 = load %struct.net_device*, %struct.net_device** %3, align 8
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @bRFSI_RFENV, align 4
  %95 = shl i32 %94, 16
  %96 = load i32, i32* %4, align 4
  %97 = call i32 @rtl8192_setBBreg(%struct.net_device* %90, i32 %93, i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %79, %89, %81
  %99 = load i64, i64* %6, align 8
  %100 = load i64, i64* @RT_STATUS_SUCCESS, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %98
  %103 = load i64, i64* %5, align 8
  %104 = call i32 @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %103)
  br label %113

105:                                              ; preds = %98
  br label %106

106:                                              ; preds = %105
  %107 = load i64, i64* %5, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %5, align 8
  br label %12

109:                                              ; preds = %12
  %110 = load i32, i32* @COMP_INIT, align 4
  %111 = call i32 @RT_TRACE(i32 %110, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %112 = load i64, i64* %6, align 8
  store i64 %112, i64* %2, align 8
  br label %115

113:                                              ; preds = %102
  %114 = load i64, i64* %6, align 8
  store i64 %114, i64* %2, align 8
  br label %115

115:                                              ; preds = %113, %109
  %116 = load i64, i64* %2, align 8
  ret i64 %116
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @rtl8192_QueryBBReg(%struct.net_device*, i32, i32) #1

declare dso_local i32 @rtl8192_setBBreg(%struct.net_device*, i32, i32, i32) #1

declare dso_local i64 @rtl8192_phy_ConfigRFWithHeaderFile(%struct.net_device*, i32) #1

declare dso_local i32 @printk(i8*, i64) #1

declare dso_local i32 @RT_TRACE(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
