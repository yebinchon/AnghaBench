; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_codec.c_update_power_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_codec.c_update_power_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }
%struct.snd_ac97 = type { i32, i32, i32* }

@PWIDX_FRONT = common dso_local global i32 0, align 4
@PWIDX_ADC = common dso_local global i32 0, align 4
@PWIDX_MIC = common dso_local global i32 0, align 4
@AC97_SCAP_SURROUND_DAC = common dso_local global i32 0, align 4
@PWIDX_SURR = common dso_local global i32 0, align 4
@AC97_SCAP_CENTER_LFE_DAC = common dso_local global i32 0, align 4
@PWIDX_CLFE = common dso_local global i32 0, align 4
@AC97_POWERDOWN = common dso_local global i64 0, align 8
@AC97_PD_PR2 = common dso_local global i32 0, align 4
@AC97_PD_PR3 = common dso_local global i32 0, align 4
@PWIDX_SIZE = common dso_local global i32 0, align 4
@power_regs = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ac97*)* @update_power_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_power_regs(%struct.snd_ac97* %0) #0 {
  %2 = alloca %struct.snd_ac97*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.snd_ac97* %0, %struct.snd_ac97** %2, align 8
  %6 = load i32, i32* @PWIDX_FRONT, align 4
  %7 = shl i32 1, %6
  %8 = load i32, i32* @PWIDX_ADC, align 4
  %9 = shl i32 1, %8
  %10 = or i32 %7, %9
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @PWIDX_MIC, align 4
  %12 = shl i32 1, %11
  %13 = load i32, i32* %3, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %3, align 4
  %15 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %16 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @AC97_SCAP_SURROUND_DAC, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load i32, i32* @PWIDX_SURR, align 4
  %23 = shl i32 1, %22
  %24 = load i32, i32* %3, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %21, %1
  %27 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %28 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @AC97_SCAP_CENTER_LFE_DAC, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  %34 = load i32, i32* @PWIDX_CLFE, align 4
  %35 = shl i32 1, %34
  %36 = load i32, i32* %3, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %33, %26
  %39 = load i32, i32* %3, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %62

41:                                               ; preds = %38
  %42 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %43 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* @AC97_POWERDOWN, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @AC97_PD_PR2, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %41
  %52 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %53 = load i64, i64* @AC97_POWERDOWN, align 8
  %54 = load i32, i32* @AC97_PD_PR3, align 4
  %55 = call i32 @snd_ac97_update_bits(%struct.snd_ac97* %52, i64 %53, i32 %54, i32 0)
  %56 = call i32 @msleep(i32 1)
  %57 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %58 = load i64, i64* @AC97_POWERDOWN, align 8
  %59 = load i32, i32* @AC97_PD_PR2, align 4
  %60 = call i32 @snd_ac97_update_bits(%struct.snd_ac97* %57, i64 %58, i32 %59, i32 0)
  br label %61

61:                                               ; preds = %51, %41
  br label %62

62:                                               ; preds = %61, %38
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %97, %62
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @PWIDX_SIZE, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %100

67:                                               ; preds = %63
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* %5, align 4
  %70 = shl i32 1, %69
  %71 = and i32 %68, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  store i32 0, i32* %4, align 4
  br label %81

74:                                               ; preds = %67
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** @power_regs, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %74, %73
  %82 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** @power_regs, align 8
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** @power_regs, align 8
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %4, align 4
  %96 = call i32 @snd_ac97_update_bits(%struct.snd_ac97* %82, i64 %88, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %81
  %98 = load i32, i32* %5, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %5, align 4
  br label %63

100:                                              ; preds = %63
  %101 = load i32, i32* %3, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %125, label %103

103:                                              ; preds = %100
  %104 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %105 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = load i64, i64* @AC97_POWERDOWN, align 8
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @AC97_PD_PR2, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %124, label %113

113:                                              ; preds = %103
  %114 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %115 = load i64, i64* @AC97_POWERDOWN, align 8
  %116 = load i32, i32* @AC97_PD_PR2, align 4
  %117 = load i32, i32* @AC97_PD_PR2, align 4
  %118 = call i32 @snd_ac97_update_bits(%struct.snd_ac97* %114, i64 %115, i32 %116, i32 %117)
  %119 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %120 = load i64, i64* @AC97_POWERDOWN, align 8
  %121 = load i32, i32* @AC97_PD_PR3, align 4
  %122 = load i32, i32* @AC97_PD_PR3, align 4
  %123 = call i32 @snd_ac97_update_bits(%struct.snd_ac97* %119, i64 %120, i32 %121, i32 %122)
  br label %124

124:                                              ; preds = %113, %103
  br label %125

125:                                              ; preds = %124, %100
  ret void
}

declare dso_local i32 @snd_ac97_update_bits(%struct.snd_ac97*, i64, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
