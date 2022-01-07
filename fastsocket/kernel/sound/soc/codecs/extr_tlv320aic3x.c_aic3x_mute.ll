; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_tlv320aic3x.c_aic3x_mute.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_tlv320aic3x.c_aic3x_mute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { i32 }

@LDAC_VOL = common dso_local global i32 0, align 4
@MUTE_ON = common dso_local global i32 0, align 4
@RDAC_VOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @aic3x_mute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aic3x_mute(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_dai*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_codec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %9 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %8, i32 0, i32 0
  %10 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %9, align 8
  store %struct.snd_soc_codec* %10, %struct.snd_soc_codec** %5, align 8
  %11 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %12 = load i32, i32* @LDAC_VOL, align 4
  %13 = call i32 @aic3x_read_reg_cache(%struct.snd_soc_codec* %11, i32 %12)
  %14 = load i32, i32* @MUTE_ON, align 4
  %15 = xor i32 %14, -1
  %16 = and i32 %13, %15
  store i32 %16, i32* %6, align 4
  %17 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %18 = load i32, i32* @RDAC_VOL, align 4
  %19 = call i32 @aic3x_read_reg_cache(%struct.snd_soc_codec* %17, i32 %18)
  %20 = load i32, i32* @MUTE_ON, align 4
  %21 = xor i32 %20, -1
  %22 = and i32 %19, %21
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %2
  %26 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %27 = load i32, i32* @LDAC_VOL, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @MUTE_ON, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @aic3x_write(%struct.snd_soc_codec* %26, i32 %27, i32 %30)
  %32 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %33 = load i32, i32* @RDAC_VOL, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @MUTE_ON, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @aic3x_write(%struct.snd_soc_codec* %32, i32 %33, i32 %36)
  br label %47

38:                                               ; preds = %2
  %39 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %40 = load i32, i32* @LDAC_VOL, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @aic3x_write(%struct.snd_soc_codec* %39, i32 %40, i32 %41)
  %43 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %44 = load i32, i32* @RDAC_VOL, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @aic3x_write(%struct.snd_soc_codec* %43, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %38, %25
  ret i32 0
}

declare dso_local i32 @aic3x_read_reg_cache(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @aic3x_write(%struct.snd_soc_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
