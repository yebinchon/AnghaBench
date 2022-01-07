; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_twl4030.c_twl4030_codec_mute.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_twl4030.c_twl4030_codec_mute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_codec = type { %struct.twl4030_priv* }
%struct.twl4030_priv = type { i32 }

@TWL4030_REG_APLL_CTL = common dso_local global i32 0, align 4
@TWL4030_APLL_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_codec*, i32)* @twl4030_codec_mute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @twl4030_codec_mute(%struct.snd_soc_codec* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_codec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.twl4030_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_soc_codec* %0, %struct.snd_soc_codec** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %8 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %7, i32 0, i32 0
  %9 = load %struct.twl4030_priv*, %struct.twl4030_priv** %8, align 8
  store %struct.twl4030_priv* %9, %struct.twl4030_priv** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.twl4030_priv*, %struct.twl4030_priv** %5, align 8
  %12 = getelementptr inbounds %struct.twl4030_priv, %struct.twl4030_priv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %10, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %46

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %16
  %20 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %21 = load i32, i32* @TWL4030_REG_APLL_CTL, align 4
  %22 = call i32 @twl4030_read_reg_cache(%struct.snd_soc_codec* %20, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* @TWL4030_APLL_EN, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %6, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %6, align 4
  %27 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %28 = load i32, i32* @TWL4030_REG_APLL_CTL, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @twl4030_write(%struct.snd_soc_codec* %27, i32 %28, i32 %29)
  br label %42

31:                                               ; preds = %16
  %32 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %33 = load i32, i32* @TWL4030_REG_APLL_CTL, align 4
  %34 = call i32 @twl4030_read_reg_cache(%struct.snd_soc_codec* %32, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* @TWL4030_APLL_EN, align 4
  %36 = load i32, i32* %6, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %6, align 4
  %38 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %39 = load i32, i32* @TWL4030_REG_APLL_CTL, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @twl4030_write(%struct.snd_soc_codec* %38, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %31, %19
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.twl4030_priv*, %struct.twl4030_priv** %5, align 8
  %45 = getelementptr inbounds %struct.twl4030_priv, %struct.twl4030_priv* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %42, %15
  ret void
}

declare dso_local i32 @twl4030_read_reg_cache(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @twl4030_write(%struct.snd_soc_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
