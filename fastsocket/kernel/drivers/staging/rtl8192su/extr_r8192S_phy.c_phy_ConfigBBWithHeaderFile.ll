; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_phy.c_phy_ConfigBBWithHeaderFile.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_phy.c_phy_ConfigBBWithHeaderFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@AGCTAB_ArrayLength = common dso_local global i32 0, align 4
@Rtl819XAGCTAB_Array = common dso_local global i32* null, align 8
@PHY_REG_2T2RArrayLength = common dso_local global i32 0, align 4
@Rtl819XPHY_REG_Array = common dso_local global i32* null, align 8
@BaseBand_Config_PHY_REG = common dso_local global i64 0, align 8
@bMaskDWord = common dso_local global i32 0, align 4
@BaseBand_Config_AGC_TAB = common dso_local global i64 0, align 8
@RT_STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i64)* @phy_ConfigBBWithHeaderFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phy_ConfigBBWithHeaderFile(%struct.net_device* %0, i64 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load i32, i32* @AGCTAB_ArrayLength, align 4
  store i32 %10, i32* %9, align 4
  %11 = load i32*, i32** @Rtl819XAGCTAB_Array, align 8
  store i32* %11, i32** %7, align 8
  %12 = load i32, i32* @PHY_REG_2T2RArrayLength, align 4
  store i32 %12, i32* %8, align 4
  %13 = load i32*, i32** @Rtl819XPHY_REG_Array, align 8
  store i32* %13, i32** %6, align 8
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @BaseBand_Config_PHY_REG, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %100

17:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %96, %17
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %99

22:                                               ; preds = %18
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 254
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = call i32 @mdelay(i32 50)
  br label %81

31:                                               ; preds = %22
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 253
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = call i32 @mdelay(i32 5)
  br label %80

40:                                               ; preds = %31
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 252
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = call i32 @mdelay(i32 1)
  br label %79

49:                                               ; preds = %40
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 251
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = call i32 @udelay(i32 50)
  br label %78

58:                                               ; preds = %49
  %59 = load i32*, i32** %6, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 250
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = call i32 @udelay(i32 5)
  br label %77

67:                                               ; preds = %58
  %68 = load i32*, i32** %6, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, 249
  br i1 %73, label %74, label %76

74:                                               ; preds = %67
  %75 = call i32 @udelay(i32 1)
  br label %76

76:                                               ; preds = %74, %67
  br label %77

77:                                               ; preds = %76, %65
  br label %78

78:                                               ; preds = %77, %56
  br label %79

79:                                               ; preds = %78, %47
  br label %80

80:                                               ; preds = %79, %38
  br label %81

81:                                               ; preds = %80, %29
  %82 = load %struct.net_device*, %struct.net_device** %3, align 8
  %83 = load i32*, i32** %6, align 8
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @bMaskDWord, align 4
  %89 = load i32*, i32** %6, align 8
  %90 = load i32, i32* %5, align 4
  %91 = add nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %89, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @rtl8192_setBBreg(%struct.net_device* %82, i32 %87, i32 %88, i32 %94)
  br label %96

96:                                               ; preds = %81
  %97 = load i32, i32* %5, align 4
  %98 = add nsw i32 %97, 2
  store i32 %98, i32* %5, align 4
  br label %18

99:                                               ; preds = %18
  br label %129

100:                                              ; preds = %2
  %101 = load i64, i64* %4, align 8
  %102 = load i64, i64* @BaseBand_Config_AGC_TAB, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %128

104:                                              ; preds = %100
  store i32 0, i32* %5, align 4
  br label %105

105:                                              ; preds = %124, %104
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* %9, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %127

109:                                              ; preds = %105
  %110 = load %struct.net_device*, %struct.net_device** %3, align 8
  %111 = load i32*, i32** %7, align 8
  %112 = load i32, i32* %5, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @bMaskDWord, align 4
  %117 = load i32*, i32** %7, align 8
  %118 = load i32, i32* %5, align 4
  %119 = add nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %117, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @rtl8192_setBBreg(%struct.net_device* %110, i32 %115, i32 %116, i32 %122)
  br label %124

124:                                              ; preds = %109
  %125 = load i32, i32* %5, align 4
  %126 = add nsw i32 %125, 2
  store i32 %126, i32* %5, align 4
  br label %105

127:                                              ; preds = %105
  br label %128

128:                                              ; preds = %127, %100
  br label %129

129:                                              ; preds = %128, %99
  %130 = load i32, i32* @RT_STATUS_SUCCESS, align 4
  ret i32 %130
}

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @rtl8192_setBBreg(%struct.net_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
