; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r819xE_phy.c_rtl8192_phy_RFSerialWrite.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r819xE_phy.c_rtl8192_phy_RFSerialWrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i64, i32*, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@RF_8256 = common dso_local global i64 0, align 8
@bMaskDWord = common dso_local global i32 0, align 4
@COMP_PHY = common dso_local global i32 0, align 4
@COMP_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"check RF type here, need to be 8256\0A\00", align 1
@RF_1T2R = common dso_local global i64 0, align 8
@RF_2T4R = common dso_local global i64 0, align 8
@rFPGA0_AnalogParameter4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i64, i32, i32)* @rtl8192_phy_RFSerialWrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8192_phy_RFSerialWrite(%struct.net_device* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.r8192_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_2__*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %13)
  store %struct.r8192_priv* %14, %struct.r8192_priv** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %15 = load %struct.r8192_priv*, %struct.r8192_priv** %9, align 8
  %16 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %15, i32 0, i32 3
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i64, i64* %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %18
  store %struct.TYPE_2__* %19, %struct.TYPE_2__** %12, align 8
  %20 = load i32, i32* %7, align 4
  %21 = and i32 %20, 63
  store i32 %21, i32* %7, align 4
  %22 = load %struct.r8192_priv*, %struct.r8192_priv** %9, align 8
  %23 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @RF_8256, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %90

27:                                               ; preds = %4
  %28 = load i32, i32* %7, align 4
  %29 = icmp sge i32 %28, 31
  br i1 %29, label %30, label %53

30:                                               ; preds = %27
  %31 = load %struct.r8192_priv*, %struct.r8192_priv** %9, align 8
  %32 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* %6, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, 320
  store i32 %37, i32* %35, align 4
  %38 = load %struct.net_device*, %struct.net_device** %5, align 8
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @bMaskDWord, align 4
  %43 = load %struct.r8192_priv*, %struct.r8192_priv** %9, align 8
  %44 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* %6, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 %48, 16
  %50 = call i32 @rtl8192_setBBreg(%struct.net_device* %38, i32 %41, i32 %42, i32 %49)
  %51 = load i32, i32* %7, align 4
  %52 = sub nsw i32 %51, 30
  store i32 %52, i32* %11, align 4
  br label %89

53:                                               ; preds = %27
  %54 = load i32, i32* %7, align 4
  %55 = icmp sge i32 %54, 16
  br i1 %55, label %56, label %86

56:                                               ; preds = %53
  %57 = load %struct.r8192_priv*, %struct.r8192_priv** %9, align 8
  %58 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* %6, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, 256
  store i32 %63, i32* %61, align 4
  %64 = load %struct.r8192_priv*, %struct.r8192_priv** %9, align 8
  %65 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i64, i64* %6, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, -65
  store i32 %70, i32* %68, align 4
  %71 = load %struct.net_device*, %struct.net_device** %5, align 8
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @bMaskDWord, align 4
  %76 = load %struct.r8192_priv*, %struct.r8192_priv** %9, align 8
  %77 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i64, i64* %6, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = shl i32 %81, 16
  %83 = call i32 @rtl8192_setBBreg(%struct.net_device* %71, i32 %74, i32 %75, i32 %82)
  %84 = load i32, i32* %7, align 4
  %85 = sub nsw i32 %84, 15
  store i32 %85, i32* %11, align 4
  br label %88

86:                                               ; preds = %53
  %87 = load i32, i32* %7, align 4
  store i32 %87, i32* %11, align 4
  br label %88

88:                                               ; preds = %86, %56
  br label %89

89:                                               ; preds = %88, %30
  br label %96

90:                                               ; preds = %4
  %91 = load i32, i32* @COMP_PHY, align 4
  %92 = load i32, i32* @COMP_ERR, align 4
  %93 = or i32 %91, %92
  %94 = call i32 @RT_TRACE(i32 %93, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %95 = load i32, i32* %7, align 4
  store i32 %95, i32* %11, align 4
  br label %96

96:                                               ; preds = %90, %89
  %97 = load i32, i32* %8, align 4
  %98 = shl i32 %97, 16
  %99 = load i32, i32* %11, align 4
  %100 = and i32 %99, 63
  %101 = or i32 %98, %100
  store i32 %101, i32* %10, align 4
  %102 = load %struct.net_device*, %struct.net_device** %5, align 8
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @bMaskDWord, align 4
  %107 = load i32, i32* %10, align 4
  %108 = call i32 @rtl8192_setBBreg(%struct.net_device* %102, i32 %105, i32 %106, i32 %107)
  %109 = load i32, i32* %7, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %96
  %112 = load i32, i32* %8, align 4
  %113 = load %struct.r8192_priv*, %struct.r8192_priv** %9, align 8
  %114 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = load i64, i64* %6, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  store i32 %112, i32* %117, align 4
  br label %118

118:                                              ; preds = %111, %96
  %119 = load %struct.r8192_priv*, %struct.r8192_priv** %9, align 8
  %120 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @RF_8256, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %149

124:                                              ; preds = %118
  %125 = load i32, i32* %7, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %148

127:                                              ; preds = %124
  %128 = load %struct.r8192_priv*, %struct.r8192_priv** %9, align 8
  %129 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = load i64, i64* %6, align 8
  %132 = getelementptr inbounds i32, i32* %130, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = and i32 %133, 3775
  store i32 %134, i32* %132, align 4
  %135 = load %struct.net_device*, %struct.net_device** %5, align 8
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @bMaskDWord, align 4
  %140 = load %struct.r8192_priv*, %struct.r8192_priv** %9, align 8
  %141 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = load i64, i64* %6, align 8
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = shl i32 %145, 16
  %147 = call i32 @rtl8192_setBBreg(%struct.net_device* %135, i32 %138, i32 %139, i32 %146)
  br label %148

148:                                              ; preds = %127, %124
  br label %149

149:                                              ; preds = %148, %118
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @rtl8192_setBBreg(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @RT_TRACE(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
