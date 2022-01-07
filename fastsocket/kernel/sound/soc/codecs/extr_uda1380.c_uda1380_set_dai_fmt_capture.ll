; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_uda1380.c_uda1380_set_dai_fmt_capture.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_uda1380.c_uda1380_set_dai_fmt_capture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { i32 }

@UDA1380_IFACE = common dso_local global i32 0, align 4
@R01_SIM = common dso_local global i32 0, align 4
@R01_SFORO_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@R01_SFORO_I2S = common dso_local global i32 0, align 4
@R01_SFORO_LSB16 = common dso_local global i32 0, align 4
@R01_SFORO_MSB = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_CBM_CFM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @uda1380_set_dai_fmt_capture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uda1380_set_dai_fmt_capture(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_dai*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_codec*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %8 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %7, i32 0, i32 0
  %9 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  store %struct.snd_soc_codec* %9, %struct.snd_soc_codec** %5, align 8
  %10 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %11 = load i32, i32* @UDA1380_IFACE, align 4
  %12 = call i32 @uda1380_read_reg_cache(%struct.snd_soc_codec* %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @R01_SIM, align 4
  %14 = load i32, i32* @R01_SFORO_MASK, align 4
  %15 = or i32 %13, %14
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %6, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %21 = and i32 %19, %20
  switch i32 %21, label %34 [
    i32 130, label %22
    i32 129, label %26
    i32 128, label %30
  ]

22:                                               ; preds = %2
  %23 = load i32, i32* @R01_SFORO_I2S, align 4
  %24 = load i32, i32* %6, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %6, align 4
  br label %34

26:                                               ; preds = %2
  %27 = load i32, i32* @R01_SFORO_LSB16, align 4
  %28 = load i32, i32* %6, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %6, align 4
  br label %34

30:                                               ; preds = %2
  %31 = load i32, i32* @R01_SFORO_MSB, align 4
  %32 = load i32, i32* %6, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %30, %2, %26, %22
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* @SND_SOC_DAIFMT_CBM_CFM, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load i32, i32* @R01_SIM, align 4
  %42 = load i32, i32* %6, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %40, %34
  %45 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %46 = load i32, i32* @UDA1380_IFACE, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @uda1380_write(%struct.snd_soc_codec* %45, i32 %46, i32 %47)
  ret i32 0
}

declare dso_local i32 @uda1380_read_reg_cache(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @uda1380_write(%struct.snd_soc_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
