; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_msnd_pinnacle.c_mixer_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_msnd_pinnacle.c_mixer_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32*, i64 }

@EINVAL = common dso_local global i32 0, align 4
@dev = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@SMA_bInPotPosLeft = common dso_local global i64 0, align 8
@SMA_bInPotPosRight = common dso_local global i64 0, align 8
@HDEXAR_IN_SET_POTS = common dso_local global i32 0, align 4
@HDEX_AUX_REQ = common dso_local global i32 0, align 4
@SMA_bMicPotPosLeft = common dso_local global i64 0, align 8
@SMA_bMicPotPosRight = common dso_local global i64 0, align 8
@HDEXAR_MIC_SET_POTS = common dso_local global i32 0, align 4
@SMA_wCurrMastVolLeft = common dso_local global i64 0, align 8
@SMA_wCurrMastVolRight = common dso_local global i64 0, align 8
@wCurrPlayVol = common dso_local global i32 0, align 4
@wCurrInVol = common dso_local global i32 0, align 4
@wCurrMHdrVol = common dso_local global i32 0, align 4
@bAuxPotPos = common dso_local global i32 0, align 4
@HDEXAR_AUX_SET_POTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @mixer_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mixer_set(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %13, 255
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, 65280
  %17 = ashr i32 %16, 8
  store i32 %17, i32* %7, align 4
  store i32 0, i32* %12, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp sgt i32 %18, 31
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %112

23:                                               ; preds = %2
  %24 = load i32, i32* %6, align 4
  %25 = mul nsw i32 %24, 255
  %26 = sdiv i32 %25, 100
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %6, align 4
  %28 = mul nsw i32 %27, 65535
  %29 = sdiv i32 %28, 100
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %7, align 4
  %31 = mul nsw i32 %30, 255
  %32 = sdiv i32 %31, 100
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %7, align 4
  %34 = mul nsw i32 %33, 65535
  %35 = sdiv i32 %34, 100
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dev, i32 0, i32 0), align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 %36, i32* %40, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dev, i32 0, i32 1), align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32 %41, i32* %45, align 4
  %46 = load i32, i32* %4, align 4
  switch i32 %46, label %95 [
    i32 133, label %47
    i32 131, label %65
    i32 128, label %83
    i32 132, label %94
    i32 129, label %94
    i32 130, label %94
    i32 134, label %94
  ]

47:                                               ; preds = %23
  %48 = load i32, i32* %8, align 4
  %49 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dev, i32 0, i32 2), align 8
  %50 = load i64, i64* @SMA_bInPotPosLeft, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @writeb(i32 %48, i64 %51)
  %53 = load i32, i32* %9, align 4
  %54 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dev, i32 0, i32 2), align 8
  %55 = load i64, i64* @SMA_bInPotPosRight, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @writeb(i32 %53, i64 %56)
  %58 = load i32, i32* @HDEXAR_IN_SET_POTS, align 4
  %59 = call i32 @msnd_send_word(%struct.TYPE_4__* @dev, i32 0, i32 0, i32 %58)
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %47
  %62 = load i32, i32* @HDEX_AUX_REQ, align 4
  %63 = call i32 @chk_send_dsp_cmd(%struct.TYPE_4__* @dev, i32 %62)
  br label %64

64:                                               ; preds = %61, %47
  br label %96

65:                                               ; preds = %23
  %66 = load i32, i32* %8, align 4
  %67 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dev, i32 0, i32 2), align 8
  %68 = load i64, i64* @SMA_bMicPotPosLeft, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @writeb(i32 %66, i64 %69)
  %71 = load i32, i32* %9, align 4
  %72 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dev, i32 0, i32 2), align 8
  %73 = load i64, i64* @SMA_bMicPotPosRight, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @writeb(i32 %71, i64 %74)
  %76 = load i32, i32* @HDEXAR_MIC_SET_POTS, align 4
  %77 = call i32 @msnd_send_word(%struct.TYPE_4__* @dev, i32 0, i32 0, i32 %76)
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %65
  %80 = load i32, i32* @HDEX_AUX_REQ, align 4
  %81 = call i32 @chk_send_dsp_cmd(%struct.TYPE_4__* @dev, i32 %80)
  br label %82

82:                                               ; preds = %79, %65
  br label %96

83:                                               ; preds = %23
  %84 = load i32, i32* %10, align 4
  %85 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dev, i32 0, i32 2), align 8
  %86 = load i64, i64* @SMA_wCurrMastVolLeft, align 8
  %87 = add nsw i64 %85, %86
  %88 = call i32 @writew(i32 %84, i64 %87)
  %89 = load i32, i32* %11, align 4
  %90 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dev, i32 0, i32 2), align 8
  %91 = load i64, i64* @SMA_wCurrMastVolRight, align 8
  %92 = add nsw i64 %90, %91
  %93 = call i32 @writew(i32 %89, i64 %92)
  br label %94

94:                                               ; preds = %23, %23, %23, %23, %83
  store i32 1, i32* %12, align 4
  br label %96

95:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %112

96:                                               ; preds = %94, %82, %64
  %97 = load i32, i32* %12, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %96
  %100 = load i32, i32* @wCurrPlayVol, align 4
  %101 = call i32 @update_volm(i32 130, i32 %100)
  %102 = load i32, i32* @wCurrInVol, align 4
  %103 = call i32 @update_volm(i32 134, i32 %102)
  %104 = load i32, i32* @wCurrMHdrVol, align 4
  %105 = call i32 @update_volm(i32 129, i32 %104)
  %106 = load i32, i32* @bAuxPotPos, align 4
  %107 = load i32, i32* @HDEXAR_AUX_SET_POTS, align 4
  %108 = call i32 @update_potm(i32 132, i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %99, %96
  %110 = load i32, i32* %4, align 4
  %111 = call i32 @mixer_get(i32 %110)
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %109, %95, %20
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @msnd_send_word(%struct.TYPE_4__*, i32, i32, i32) #1

declare dso_local i32 @chk_send_dsp_cmd(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @update_volm(i32, i32) #1

declare dso_local i32 @update_potm(i32, i32, i32) #1

declare dso_local i32 @mixer_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
