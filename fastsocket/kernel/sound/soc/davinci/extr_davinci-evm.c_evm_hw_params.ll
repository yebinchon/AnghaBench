; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/davinci/extr_davinci-evm.c_evm_hw_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/davinci/extr_davinci-evm.c_evm_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_soc_dai*, %struct.snd_soc_dai* }
%struct.snd_soc_dai = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@AUDIO_FORMAT = common dso_local global i32 0, align 4
@SND_SOC_CLOCK_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @evm_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evm_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_dai*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %12, align 8
  store %struct.snd_soc_pcm_runtime* %13, %struct.snd_soc_pcm_runtime** %6, align 8
  %14 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %15 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %17, align 8
  store %struct.snd_soc_dai* %18, %struct.snd_soc_dai** %7, align 8
  %19 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %20 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %22, align 8
  store %struct.snd_soc_dai* %23, %struct.snd_soc_dai** %8, align 8
  store i32 0, i32* %9, align 4
  %24 = call i64 (...) @machine_is_davinci_dm355_evm()
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = call i64 (...) @machine_is_davinci_dm6467_evm()
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26, %2
  store i32 27000000, i32* %10, align 4
  br label %46

30:                                               ; preds = %26
  %31 = call i64 (...) @machine_is_davinci_evm()
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 12288000, i32* %10, align 4
  br label %45

34:                                               ; preds = %30
  %35 = call i64 (...) @machine_is_davinci_da830_evm()
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = call i64 (...) @machine_is_davinci_da850_evm()
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37, %34
  store i32 24576000, i32* %10, align 4
  br label %44

41:                                               ; preds = %37
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %72

44:                                               ; preds = %40
  br label %45

45:                                               ; preds = %44, %33
  br label %46

46:                                               ; preds = %45, %29
  %47 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %48 = load i32, i32* @AUDIO_FORMAT, align 4
  %49 = call i32 @snd_soc_dai_set_fmt(%struct.snd_soc_dai* %47, i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %3, align 4
  br label %72

54:                                               ; preds = %46
  %55 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %8, align 8
  %56 = load i32, i32* @AUDIO_FORMAT, align 4
  %57 = call i32 @snd_soc_dai_set_fmt(%struct.snd_soc_dai* %55, i32 %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %3, align 4
  br label %72

62:                                               ; preds = %54
  %63 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* @SND_SOC_CLOCK_OUT, align 4
  %66 = call i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai* %63, i32 0, i32 %64, i32 %65)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = load i32, i32* %9, align 4
  store i32 %70, i32* %3, align 4
  br label %72

71:                                               ; preds = %62
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %69, %60, %52, %41
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i64 @machine_is_davinci_dm355_evm(...) #1

declare dso_local i64 @machine_is_davinci_dm6467_evm(...) #1

declare dso_local i64 @machine_is_davinci_evm(...) #1

declare dso_local i64 @machine_is_davinci_da830_evm(...) #1

declare dso_local i64 @machine_is_davinci_da850_evm(...) #1

declare dso_local i32 @snd_soc_dai_set_fmt(%struct.snd_soc_dai*, i32) #1

declare dso_local i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
