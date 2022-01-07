; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_cs4270.c_cs4270_dai_mute.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_cs4270.c_cs4270_dai_mute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { %struct.cs4270_private* }
%struct.cs4270_private = type { i32 }

@CS4270_MUTE = common dso_local global i32 0, align 4
@CS4270_MUTE_DAC_A = common dso_local global i32 0, align 4
@CS4270_MUTE_DAC_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @cs4270_dai_mute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs4270_dai_mute(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_dai*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_codec*, align 8
  %6 = alloca %struct.cs4270_private*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %9 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %8, i32 0, i32 0
  %10 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %9, align 8
  store %struct.snd_soc_codec* %10, %struct.snd_soc_codec** %5, align 8
  %11 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %12 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %11, i32 0, i32 0
  %13 = load %struct.cs4270_private*, %struct.cs4270_private** %12, align 8
  store %struct.cs4270_private* %13, %struct.cs4270_private** %6, align 8
  %14 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %15 = load i32, i32* @CS4270_MUTE, align 4
  %16 = call i32 @snd_soc_read(%struct.snd_soc_codec* %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load i32, i32* @CS4270_MUTE_DAC_A, align 4
  %21 = load i32, i32* @CS4270_MUTE_DAC_B, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* %7, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %7, align 4
  br label %37

25:                                               ; preds = %2
  %26 = load i32, i32* @CS4270_MUTE_DAC_A, align 4
  %27 = load i32, i32* @CS4270_MUTE_DAC_B, align 4
  %28 = or i32 %26, %27
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %7, align 4
  %32 = load %struct.cs4270_private*, %struct.cs4270_private** %6, align 8
  %33 = getelementptr inbounds %struct.cs4270_private, %struct.cs4270_private* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %7, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %25, %19
  %38 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %39 = load i32, i32* @CS4270_MUTE, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @snd_soc_write(%struct.snd_soc_codec* %38, i32 %39, i32 %40)
  ret i32 %41
}

declare dso_local i32 @snd_soc_read(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @snd_soc_write(%struct.snd_soc_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
