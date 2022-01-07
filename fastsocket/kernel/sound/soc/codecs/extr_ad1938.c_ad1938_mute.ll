; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_ad1938.c_ad1938_mute.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_ad1938.c_ad1938_mute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { i32 (%struct.snd_soc_codec*, i32)*, i32 (%struct.snd_soc_codec*, i32, i32)* }

@AD1938_DAC_CTRL2 = common dso_local global i32 0, align 4
@AD1938_DAC_MASTER_MUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @ad1938_mute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad1938_mute(%struct.snd_soc_dai* %0, i32 %1) #0 {
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
  %11 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %10, i32 0, i32 0
  %12 = load i32 (%struct.snd_soc_codec*, i32)*, i32 (%struct.snd_soc_codec*, i32)** %11, align 8
  %13 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %14 = load i32, i32* @AD1938_DAC_CTRL2, align 4
  %15 = call i32 %12(%struct.snd_soc_codec* %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @AD1938_DAC_MASTER_MUTE, align 4
  %21 = or i32 %19, %20
  br label %27

22:                                               ; preds = %2
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @AD1938_DAC_MASTER_MUTE, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  br label %27

27:                                               ; preds = %22, %18
  %28 = phi i32 [ %21, %18 ], [ %26, %22 ]
  store i32 %28, i32* %6, align 4
  %29 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %30 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %29, i32 0, i32 1
  %31 = load i32 (%struct.snd_soc_codec*, i32, i32)*, i32 (%struct.snd_soc_codec*, i32, i32)** %30, align 8
  %32 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %33 = load i32, i32* @AD1938_DAC_CTRL2, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 %31(%struct.snd_soc_codec* %32, i32 %33, i32 %34)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
