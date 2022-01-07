; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r819xE_phy.c_rtl8192_phy_ConfigRFWithHeaderFile.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r819xE_phy.c_rtl8192_phy_ConfigRFWithHeaderFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@RadioA_ArrayLength = common dso_local global i32 0, align 4
@Rtl819XRadioA_Array = common dso_local global i32* null, align 8
@bMask12Bits = common dso_local global i32 0, align 4
@RadioB_ArrayLength = common dso_local global i32 0, align 4
@Rtl819XRadioB_Array = common dso_local global i32* null, align 8
@RadioC_ArrayLength = common dso_local global i32 0, align 4
@Rtl819XRadioC_Array = common dso_local global i32* null, align 8
@RadioD_ArrayLength = common dso_local global i32 0, align 4
@Rtl819XRadioD_Array = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl8192_phy_ConfigRFWithHeaderFile(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %144 [
    i32 131, label %8
    i32 130, label %42
    i32 129, label %76
    i32 128, label %110
  ]

8:                                                ; preds = %2
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %38, %8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @RadioA_ArrayLength, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %41

13:                                               ; preds = %9
  %14 = load i32*, i32** @Rtl819XRadioA_Array, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 254
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = call i32 @msleep(i32 100)
  br label %38

22:                                               ; preds = %13
  %23 = load %struct.net_device*, %struct.net_device** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load i32*, i32** @Rtl819XRadioA_Array, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @bMask12Bits, align 4
  %31 = load i32*, i32** @Rtl819XRadioA_Array, align 8
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @rtl8192_phy_SetRFReg(%struct.net_device* %23, i32 %24, i32 %29, i32 %30, i32 %36)
  br label %38

38:                                               ; preds = %22, %20
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 2
  store i32 %40, i32* %5, align 4
  br label %9

41:                                               ; preds = %9
  br label %145

42:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %72, %42
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @RadioB_ArrayLength, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %75

47:                                               ; preds = %43
  %48 = load i32*, i32** @Rtl819XRadioB_Array, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 254
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = call i32 @msleep(i32 100)
  br label %72

56:                                               ; preds = %47
  %57 = load %struct.net_device*, %struct.net_device** %3, align 8
  %58 = load i32, i32* %4, align 4
  %59 = load i32*, i32** @Rtl819XRadioB_Array, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @bMask12Bits, align 4
  %65 = load i32*, i32** @Rtl819XRadioB_Array, align 8
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @rtl8192_phy_SetRFReg(%struct.net_device* %57, i32 %58, i32 %63, i32 %64, i32 %70)
  br label %72

72:                                               ; preds = %56, %54
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %73, 2
  store i32 %74, i32* %5, align 4
  br label %43

75:                                               ; preds = %43
  br label %145

76:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %77

77:                                               ; preds = %106, %76
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* @RadioC_ArrayLength, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %109

81:                                               ; preds = %77
  %82 = load i32*, i32** @Rtl819XRadioC_Array, align 8
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = icmp eq i32 %86, 254
  br i1 %87, label %88, label %90

88:                                               ; preds = %81
  %89 = call i32 @msleep(i32 100)
  br label %106

90:                                               ; preds = %81
  %91 = load %struct.net_device*, %struct.net_device** %3, align 8
  %92 = load i32, i32* %4, align 4
  %93 = load i32*, i32** @Rtl819XRadioC_Array, align 8
  %94 = load i32, i32* %5, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @bMask12Bits, align 4
  %99 = load i32*, i32** @Rtl819XRadioC_Array, align 8
  %100 = load i32, i32* %5, align 4
  %101 = add nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %99, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @rtl8192_phy_SetRFReg(%struct.net_device* %91, i32 %92, i32 %97, i32 %98, i32 %104)
  br label %106

106:                                              ; preds = %90, %88
  %107 = load i32, i32* %5, align 4
  %108 = add nsw i32 %107, 2
  store i32 %108, i32* %5, align 4
  br label %77

109:                                              ; preds = %77
  br label %145

110:                                              ; preds = %2
  store i32 0, i32* %5, align 4
  br label %111

111:                                              ; preds = %140, %110
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* @RadioD_ArrayLength, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %143

115:                                              ; preds = %111
  %116 = load i32*, i32** @Rtl819XRadioD_Array, align 8
  %117 = load i32, i32* %5, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %120, 254
  br i1 %121, label %122, label %124

122:                                              ; preds = %115
  %123 = call i32 @msleep(i32 100)
  br label %140

124:                                              ; preds = %115
  %125 = load %struct.net_device*, %struct.net_device** %3, align 8
  %126 = load i32, i32* %4, align 4
  %127 = load i32*, i32** @Rtl819XRadioD_Array, align 8
  %128 = load i32, i32* %5, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @bMask12Bits, align 4
  %133 = load i32*, i32** @Rtl819XRadioD_Array, align 8
  %134 = load i32, i32* %5, align 4
  %135 = add nsw i32 %134, 1
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %133, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @rtl8192_phy_SetRFReg(%struct.net_device* %125, i32 %126, i32 %131, i32 %132, i32 %138)
  br label %140

140:                                              ; preds = %124, %122
  %141 = load i32, i32* %5, align 4
  %142 = add nsw i32 %141, 2
  store i32 %142, i32* %5, align 4
  br label %111

143:                                              ; preds = %111
  br label %145

144:                                              ; preds = %2
  br label %145

145:                                              ; preds = %144, %143, %109, %75, %41
  %146 = load i32, i32* %6, align 4
  ret i32 %146
}

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @rtl8192_phy_SetRFReg(%struct.net_device*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
