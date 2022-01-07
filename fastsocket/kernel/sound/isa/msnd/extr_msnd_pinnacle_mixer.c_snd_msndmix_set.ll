; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/msnd/extr_msnd_pinnacle_mixer.c_snd_msndmix_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/msnd/extr_msnd_pinnacle_mixer.c_snd_msndmix_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_msnd = type { i32*, i32*, i64, i64 }

@LEVEL_ENTRIES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SMA_bInPotPosLeft = common dso_local global i64 0, align 8
@SMA_bInPotPosRight = common dso_local global i64 0, align 8
@HDEXAR_IN_SET_POTS = common dso_local global i32 0, align 4
@HDEX_AUX_REQ = common dso_local global i32 0, align 4
@msndClassic = common dso_local global i64 0, align 8
@SMA_bMicPotPosLeft = common dso_local global i64 0, align 8
@SMA_bMicPotPosRight = common dso_local global i64 0, align 8
@HDEXAR_MIC_SET_POTS = common dso_local global i32 0, align 4
@SMA_wCurrMastVolLeft = common dso_local global i64 0, align 8
@SMA_wCurrMastVolRight = common dso_local global i64 0, align 8
@wCurrPlayVol = common dso_local global i32 0, align 4
@wCurrInVol = common dso_local global i32 0, align 4
@msndPinnacle = common dso_local global i64 0, align 8
@wCurrMHdrVol = common dso_local global i32 0, align 4
@bAuxPotPos = common dso_local global i32 0, align 4
@HDEXAR_AUX_SET_POTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_msnd*, i32, i32, i32)* @snd_msndmix_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_msndmix_set(%struct.snd_msnd* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_msnd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_msnd* %0, %struct.snd_msnd** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @LEVEL_ENTRIES, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %146

21:                                               ; preds = %4
  %22 = load i32, i32* %8, align 4
  %23 = mul nsw i32 %22, 255
  %24 = sdiv i32 %23, 100
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %8, align 4
  %26 = mul nsw i32 %25, 65535
  %27 = sdiv i32 %26, 100
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %9, align 4
  %29 = mul nsw i32 %28, 255
  %30 = sdiv i32 %29, 100
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %9, align 4
  %32 = mul nsw i32 %31, 65535
  %33 = sdiv i32 %32, 100
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %12, align 4
  %35 = load %struct.snd_msnd*, %struct.snd_msnd** %6, align 8
  %36 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 %34, i32* %40, align 4
  %41 = load i32, i32* %13, align 4
  %42 = load %struct.snd_msnd*, %struct.snd_msnd** %6, align 8
  %43 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  store i32 %41, i32* %47, align 4
  %48 = load i32, i32* %7, align 4
  switch i32 %48, label %122 [
    i32 132, label %49
    i32 131, label %73
    i32 128, label %106
    i32 134, label %121
    i32 129, label %121
    i32 130, label %121
    i32 133, label %121
  ]

49:                                               ; preds = %21
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.snd_msnd*, %struct.snd_msnd** %6, align 8
  %52 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @SMA_bInPotPosLeft, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @writeb(i32 %50, i64 %55)
  %57 = load i32, i32* %11, align 4
  %58 = load %struct.snd_msnd*, %struct.snd_msnd** %6, align 8
  %59 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @SMA_bInPotPosRight, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @writeb(i32 %57, i64 %62)
  %64 = load %struct.snd_msnd*, %struct.snd_msnd** %6, align 8
  %65 = load i32, i32* @HDEXAR_IN_SET_POTS, align 4
  %66 = call i32 @snd_msnd_send_word(%struct.snd_msnd* %64, i32 0, i32 0, i32 %65)
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %49
  %69 = load %struct.snd_msnd*, %struct.snd_msnd** %6, align 8
  %70 = load i32, i32* @HDEX_AUX_REQ, align 4
  %71 = call i32 @snd_msnd_send_dsp_cmd(%struct.snd_msnd* %69, i32 %70)
  br label %72

72:                                               ; preds = %68, %49
  br label %125

73:                                               ; preds = %21
  %74 = load %struct.snd_msnd*, %struct.snd_msnd** %6, align 8
  %75 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @msndClassic, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %5, align 4
  br label %146

82:                                               ; preds = %73
  %83 = load i32, i32* %10, align 4
  %84 = load %struct.snd_msnd*, %struct.snd_msnd** %6, align 8
  %85 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @SMA_bMicPotPosLeft, align 8
  %88 = add nsw i64 %86, %87
  %89 = call i32 @writeb(i32 %83, i64 %88)
  %90 = load i32, i32* %11, align 4
  %91 = load %struct.snd_msnd*, %struct.snd_msnd** %6, align 8
  %92 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @SMA_bMicPotPosRight, align 8
  %95 = add nsw i64 %93, %94
  %96 = call i32 @writeb(i32 %90, i64 %95)
  %97 = load %struct.snd_msnd*, %struct.snd_msnd** %6, align 8
  %98 = load i32, i32* @HDEXAR_MIC_SET_POTS, align 4
  %99 = call i32 @snd_msnd_send_word(%struct.snd_msnd* %97, i32 0, i32 0, i32 %98)
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %82
  %102 = load %struct.snd_msnd*, %struct.snd_msnd** %6, align 8
  %103 = load i32, i32* @HDEX_AUX_REQ, align 4
  %104 = call i32 @snd_msnd_send_dsp_cmd(%struct.snd_msnd* %102, i32 %103)
  br label %105

105:                                              ; preds = %101, %82
  br label %125

106:                                              ; preds = %21
  %107 = load i32, i32* %12, align 4
  %108 = load %struct.snd_msnd*, %struct.snd_msnd** %6, align 8
  %109 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @SMA_wCurrMastVolLeft, align 8
  %112 = add nsw i64 %110, %111
  %113 = call i32 @writew(i32 %107, i64 %112)
  %114 = load i32, i32* %13, align 4
  %115 = load %struct.snd_msnd*, %struct.snd_msnd** %6, align 8
  %116 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @SMA_wCurrMastVolRight, align 8
  %119 = add nsw i64 %117, %118
  %120 = call i32 @writew(i32 %114, i64 %119)
  br label %121

121:                                              ; preds = %21, %21, %21, %21, %106
  store i32 1, i32* %14, align 4
  br label %125

122:                                              ; preds = %21
  %123 = load i32, i32* @EINVAL, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %5, align 4
  br label %146

125:                                              ; preds = %121, %105, %72
  %126 = load i32, i32* %14, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %145

128:                                              ; preds = %125
  %129 = load i32, i32* @wCurrPlayVol, align 4
  %130 = call i32 @update_volm(i32 130, i32 %129)
  %131 = load i32, i32* @wCurrInVol, align 4
  %132 = call i32 @update_volm(i32 133, i32 %131)
  %133 = load %struct.snd_msnd*, %struct.snd_msnd** %6, align 8
  %134 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @msndPinnacle, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %128
  %139 = load i32, i32* @wCurrMHdrVol, align 4
  %140 = call i32 @update_volm(i32 129, i32 %139)
  br label %141

141:                                              ; preds = %138, %128
  %142 = load i32, i32* @bAuxPotPos, align 4
  %143 = load i32, i32* @HDEXAR_AUX_SET_POTS, align 4
  %144 = call i32 @update_potm(i32 134, i32 %142, i32 %143)
  br label %145

145:                                              ; preds = %141, %125
  store i32 0, i32* %5, align 4
  br label %146

146:                                              ; preds = %145, %122, %79, %18
  %147 = load i32, i32* %5, align 4
  ret i32 %147
}

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @snd_msnd_send_word(%struct.snd_msnd*, i32, i32, i32) #1

declare dso_local i32 @snd_msnd_send_dsp_cmd(%struct.snd_msnd*, i32) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @update_volm(i32, i32) #1

declare dso_local i32 @update_potm(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
