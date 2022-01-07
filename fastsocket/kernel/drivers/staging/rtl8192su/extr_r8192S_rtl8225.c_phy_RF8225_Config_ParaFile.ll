; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_rtl8225.c_phy_RF8225_Config_ParaFile.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_rtl8225.c_phy_RF8225_Config_ParaFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@bRFSI_RFENV = common dso_local global i32 0, align 4
@b3WireAddressLength = common dso_local global i32 0, align 4
@b3WireDataLength = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @phy_RF8225_Config_ParaFile(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.r8192_priv*, align 8
  %8 = alloca %struct.TYPE_2__*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 1, i32* %6, align 4
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %9)
  store %struct.r8192_priv* %10, %struct.r8192_priv** %7, align 8
  store i64 0, i64* %5, align 8
  br label %11

11:                                               ; preds = %102, %1
  %12 = load i64, i64* %5, align 8
  %13 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %14 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %12, %15
  br i1 %16, label %17, label %105

17:                                               ; preds = %11
  %18 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %19 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %21
  store %struct.TYPE_2__* %22, %struct.TYPE_2__** %8, align 8
  %23 = load i64, i64* %5, align 8
  switch i64 %23, label %39 [
    i64 131, label %24
    i64 129, label %24
    i64 130, label %31
    i64 128, label %31
  ]

24:                                               ; preds = %17, %17
  %25 = load %struct.net_device*, %struct.net_device** %3, align 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @bRFSI_RFENV, align 4
  %30 = call i32 @rtl8192_QueryBBReg(%struct.net_device* %25, i32 %28, i32 %29)
  store i32 %30, i32* %4, align 4
  br label %39

31:                                               ; preds = %17, %17
  %32 = load %struct.net_device*, %struct.net_device** %3, align 8
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @bRFSI_RFENV, align 4
  %37 = shl i32 %36, 16
  %38 = call i32 @rtl8192_QueryBBReg(%struct.net_device* %32, i32 %35, i32 %37)
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %17, %31, %24
  %40 = load %struct.net_device*, %struct.net_device** %3, align 8
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @bRFSI_RFENV, align 4
  %45 = shl i32 %44, 16
  %46 = call i32 @rtl8192_setBBreg(%struct.net_device* %40, i32 %43, i32 %45, i32 1)
  %47 = load %struct.net_device*, %struct.net_device** %3, align 8
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @bRFSI_RFENV, align 4
  %52 = call i32 @rtl8192_setBBreg(%struct.net_device* %47, i32 %50, i32 %51, i32 1)
  %53 = load %struct.net_device*, %struct.net_device** %3, align 8
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @b3WireAddressLength, align 4
  %58 = call i32 @rtl8192_setBBreg(%struct.net_device* %53, i32 %56, i32 %57, i32 0)
  %59 = load %struct.net_device*, %struct.net_device** %3, align 8
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @b3WireDataLength, align 4
  %64 = call i32 @rtl8192_setBBreg(%struct.net_device* %59, i32 %62, i32 %63, i32 0)
  %65 = load i64, i64* %5, align 8
  switch i64 %65, label %78 [
    i64 131, label %66
    i64 130, label %71
    i64 129, label %76
    i64 128, label %77
  ]

66:                                               ; preds = %39
  %67 = load %struct.net_device*, %struct.net_device** %3, align 8
  %68 = load i64, i64* %5, align 8
  %69 = trunc i64 %68 to i32
  %70 = call i32 @rtl8192_phy_ConfigRFWithHeaderFile(%struct.net_device* %67, i32 %69)
  store i32 %70, i32* %6, align 4
  br label %78

71:                                               ; preds = %39
  %72 = load %struct.net_device*, %struct.net_device** %3, align 8
  %73 = load i64, i64* %5, align 8
  %74 = trunc i64 %73 to i32
  %75 = call i32 @rtl8192_phy_ConfigRFWithHeaderFile(%struct.net_device* %72, i32 %74)
  store i32 %75, i32* %6, align 4
  br label %78

76:                                               ; preds = %39
  br label %78

77:                                               ; preds = %39
  br label %78

78:                                               ; preds = %39, %77, %76, %71, %66
  %79 = load i64, i64* %5, align 8
  switch i64 %79, label %97 [
    i64 131, label %80
    i64 129, label %80
    i64 130, label %88
    i64 128, label %88
  ]

80:                                               ; preds = %78, %78
  %81 = load %struct.net_device*, %struct.net_device** %3, align 8
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @bRFSI_RFENV, align 4
  %86 = load i32, i32* %4, align 4
  %87 = call i32 @rtl8192_setBBreg(%struct.net_device* %81, i32 %84, i32 %85, i32 %86)
  br label %97

88:                                               ; preds = %78, %78
  %89 = load %struct.net_device*, %struct.net_device** %3, align 8
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @bRFSI_RFENV, align 4
  %94 = shl i32 %93, 16
  %95 = load i32, i32* %4, align 4
  %96 = call i32 @rtl8192_setBBreg(%struct.net_device* %89, i32 %92, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %78, %88, %80
  %98 = load i32, i32* %6, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  br label %107

101:                                              ; preds = %97
  br label %102

102:                                              ; preds = %101
  %103 = load i64, i64* %5, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %5, align 8
  br label %11

105:                                              ; preds = %11
  %106 = load i32, i32* %6, align 4
  store i32 %106, i32* %2, align 4
  br label %109

107:                                              ; preds = %100
  %108 = load i32, i32* %6, align 4
  store i32 %108, i32* %2, align 4
  br label %109

109:                                              ; preds = %107, %105
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @rtl8192_QueryBBReg(%struct.net_device*, i32, i32) #1

declare dso_local i32 @rtl8192_setBBreg(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @rtl8192_phy_ConfigRFWithHeaderFile(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
