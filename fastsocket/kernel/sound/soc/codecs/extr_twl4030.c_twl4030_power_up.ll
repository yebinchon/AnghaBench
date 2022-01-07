; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_twl4030.c_twl4030_power_up.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_twl4030.c_twl4030_power_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_codec = type { %struct.twl4030_priv* }
%struct.twl4030_priv = type { i64 }

@TWL4030_REG_ANAMICL = common dso_local global i32 0, align 4
@TWL4030_CNCL_OFFSET_START = common dso_local global i32 0, align 4
@TWL4030_MODULE_AUDIO_VOICE = common dso_local global i32 0, align 4
@TWL4030_REG_MISC_SET_1 = common dso_local global i32 0, align 4
@TWL4030_SMOOTH_ANAVOL_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_codec*)* @twl4030_power_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @twl4030_power_up(%struct.snd_soc_codec* %0) #0 {
  %2 = alloca %struct.snd_soc_codec*, align 8
  %3 = alloca %struct.twl4030_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_soc_codec* %0, %struct.snd_soc_codec** %2, align 8
  %8 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %9 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %8, i32 0, i32 0
  %10 = load %struct.twl4030_priv*, %struct.twl4030_priv** %9, align 8
  store %struct.twl4030_priv* %10, %struct.twl4030_priv** %3, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.twl4030_priv*, %struct.twl4030_priv** %3, align 8
  %12 = getelementptr inbounds %struct.twl4030_priv, %struct.twl4030_priv* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %63

16:                                               ; preds = %1
  %17 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %18 = call i32 @twl4030_codec_enable(%struct.snd_soc_codec* %17, i32 1)
  %19 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %20 = load i32, i32* @TWL4030_REG_ANAMICL, align 4
  %21 = call i32 @twl4030_read_reg_cache(%struct.snd_soc_codec* %19, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %23 = load i32, i32* @TWL4030_REG_ANAMICL, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @TWL4030_CNCL_OFFSET_START, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @twl4030_write(%struct.snd_soc_codec* %22, i32 %23, i32 %26)
  br label %28

28:                                               ; preds = %43, %16
  %29 = call i32 @udelay(i32 2000)
  %30 = load i32, i32* @TWL4030_MODULE_AUDIO_VOICE, align 4
  %31 = load i32, i32* @TWL4030_REG_ANAMICL, align 4
  %32 = call i32 @twl4030_i2c_read_u8(i32 %30, i32* %6, i32 %31)
  br label %33

33:                                               ; preds = %28
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %7, align 4
  %36 = icmp slt i32 %34, 100
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @TWL4030_CNCL_OFFSET_START, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* @TWL4030_CNCL_OFFSET_START, align 4
  %42 = icmp eq i32 %40, %41
  br label %43

43:                                               ; preds = %37, %33
  %44 = phi i1 [ false, %33 ], [ %42, %37 ]
  br i1 %44, label %28, label %45

45:                                               ; preds = %43
  %46 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %47 = load i32, i32* @TWL4030_REG_ANAMICL, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @twl4030_write_reg_cache(%struct.snd_soc_codec* %46, i32 %47, i32 %48)
  %50 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %51 = load i32, i32* @TWL4030_REG_MISC_SET_1, align 4
  %52 = call i32 @twl4030_read_reg_cache(%struct.snd_soc_codec* %50, i32 %51)
  store i32 %52, i32* %5, align 4
  %53 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %54 = load i32, i32* @TWL4030_REG_MISC_SET_1, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @TWL4030_SMOOTH_ANAVOL_EN, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @twl4030_write(%struct.snd_soc_codec* %53, i32 %54, i32 %57)
  %59 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %60 = call i32 @twl4030_codec_enable(%struct.snd_soc_codec* %59, i32 0)
  %61 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %62 = call i32 @twl4030_codec_enable(%struct.snd_soc_codec* %61, i32 1)
  br label %63

63:                                               ; preds = %45, %15
  ret void
}

declare dso_local i32 @twl4030_codec_enable(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @twl4030_read_reg_cache(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @twl4030_write(%struct.snd_soc_codec*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @twl4030_i2c_read_u8(i32, i32*, i32) #1

declare dso_local i32 @twl4030_write_reg_cache(%struct.snd_soc_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
