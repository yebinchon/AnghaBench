; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r819xE_phy.c_rtl8192_phy_RFSerialRead.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r819xE_phy.c_rtl8192_phy_RFSerialRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i64, i32*, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@RF_8256 = common dso_local global i64 0, align 8
@bMaskDWord = common dso_local global i32 0, align 4
@COMP_PHY = common dso_local global i32 0, align 4
@COMP_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"check RF type here, need to be 8256\0A\00", align 1
@bLSSIReadAddress = common dso_local global i32 0, align 4
@bLSSIReadEdge = common dso_local global i32 0, align 4
@bLSSIReadBackData = common dso_local global i32 0, align 4
@RF_1T2R = common dso_local global i64 0, align 8
@RF_2T4R = common dso_local global i64 0, align 8
@rFPGA0_AnalogParameter4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i64, i32)* @rtl8192_phy_RFSerialRead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8192_phy_RFSerialRead(%struct.net_device* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.r8192_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_2__*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %11)
  store %struct.r8192_priv* %12, %struct.r8192_priv** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %13 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %14 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %13, i32 0, i32 3
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i64, i64* %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %16
  store %struct.TYPE_2__* %17, %struct.TYPE_2__** %10, align 8
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, 63
  store i32 %19, i32* %6, align 4
  %20 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %21 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @RF_8256, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %88

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  %27 = icmp sge i32 %26, 31
  br i1 %27, label %28, label %51

28:                                               ; preds = %25
  %29 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %30 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* %5, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, 320
  store i32 %35, i32* %33, align 4
  %36 = load %struct.net_device*, %struct.net_device** %4, align 8
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @bMaskDWord, align 4
  %41 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %42 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* %5, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 %46, 16
  %48 = call i32 @rtl8192_setBBreg(%struct.net_device* %36, i32 %39, i32 %40, i32 %47)
  %49 = load i32, i32* %6, align 4
  %50 = sub nsw i32 %49, 30
  store i32 %50, i32* %9, align 4
  br label %87

51:                                               ; preds = %25
  %52 = load i32, i32* %6, align 4
  %53 = icmp sge i32 %52, 16
  br i1 %53, label %54, label %84

54:                                               ; preds = %51
  %55 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %56 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i64, i64* %5, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, 256
  store i32 %61, i32* %59, align 4
  %62 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %63 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* %5, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, -65
  store i32 %68, i32* %66, align 4
  %69 = load %struct.net_device*, %struct.net_device** %4, align 8
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @bMaskDWord, align 4
  %74 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %75 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load i64, i64* %5, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = shl i32 %79, 16
  %81 = call i32 @rtl8192_setBBreg(%struct.net_device* %69, i32 %72, i32 %73, i32 %80)
  %82 = load i32, i32* %6, align 4
  %83 = sub nsw i32 %82, 15
  store i32 %83, i32* %9, align 4
  br label %86

84:                                               ; preds = %51
  %85 = load i32, i32* %6, align 4
  store i32 %85, i32* %9, align 4
  br label %86

86:                                               ; preds = %84, %54
  br label %87

87:                                               ; preds = %86, %28
  br label %94

88:                                               ; preds = %3
  %89 = load i32, i32* @COMP_PHY, align 4
  %90 = load i32, i32* @COMP_ERR, align 4
  %91 = or i32 %89, %90
  %92 = call i32 @RT_TRACE(i32 %91, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %93 = load i32, i32* %6, align 4
  store i32 %93, i32* %9, align 4
  br label %94

94:                                               ; preds = %88, %87
  %95 = load %struct.net_device*, %struct.net_device** %4, align 8
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @bLSSIReadAddress, align 4
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @rtl8192_setBBreg(%struct.net_device* %95, i32 %98, i32 %99, i32 %100)
  %102 = load %struct.net_device*, %struct.net_device** %4, align 8
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @bLSSIReadEdge, align 4
  %107 = call i32 @rtl8192_setBBreg(%struct.net_device* %102, i32 %105, i32 %106, i32 0)
  %108 = load %struct.net_device*, %struct.net_device** %4, align 8
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @bLSSIReadEdge, align 4
  %113 = call i32 @rtl8192_setBBreg(%struct.net_device* %108, i32 %111, i32 %112, i32 1)
  %114 = call i32 @msleep(i32 1)
  %115 = load %struct.net_device*, %struct.net_device** %4, align 8
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @bLSSIReadBackData, align 4
  %120 = call i32 @rtl8192_QueryBBReg(%struct.net_device* %115, i32 %118, i32 %119)
  store i32 %120, i32* %8, align 4
  %121 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %122 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @RF_8256, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %147

126:                                              ; preds = %94
  %127 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %128 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = load i64, i64* %5, align 8
  %131 = getelementptr inbounds i32, i32* %129, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = and i32 %132, 3775
  store i32 %133, i32* %131, align 4
  %134 = load %struct.net_device*, %struct.net_device** %4, align 8
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @bMaskDWord, align 4
  %139 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %140 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = load i64, i64* %5, align 8
  %143 = getelementptr inbounds i32, i32* %141, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = shl i32 %144, 16
  %146 = call i32 @rtl8192_setBBreg(%struct.net_device* %134, i32 %137, i32 %138, i32 %145)
  br label %147

147:                                              ; preds = %126, %94
  %148 = load i32, i32* %8, align 4
  ret i32 %148
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @rtl8192_setBBreg(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @RT_TRACE(i32, i8*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @rtl8192_QueryBBReg(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
