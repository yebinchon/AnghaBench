; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/extr_soc-core.c_soc_pcm_apply_symmetry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/extr_soc-core.c_soc_pcm_apply_symmetry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32, %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.snd_soc_dai_link*, %struct.snd_soc_device* }
%struct.snd_soc_dai_link = type { i32, i64, %struct.snd_soc_dai*, %struct.snd_soc_dai* }
%struct.snd_soc_dai = type { i64 }
%struct.snd_soc_device = type { %struct.snd_soc_card* }
%struct.snd_soc_card = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"Symmetry forces %dHz rate\0A\00", align 1
@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Unable to apply rate symmetry constraint: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @soc_pcm_apply_symmetry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc_pcm_apply_symmetry(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %5 = alloca %struct.snd_soc_device*, align 8
  %6 = alloca %struct.snd_soc_card*, align 8
  %7 = alloca %struct.snd_soc_dai_link*, align 8
  %8 = alloca %struct.snd_soc_dai*, align 8
  %9 = alloca %struct.snd_soc_dai*, align 8
  %10 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 1
  %13 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %12, align 8
  store %struct.snd_soc_pcm_runtime* %13, %struct.snd_soc_pcm_runtime** %4, align 8
  %14 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %15 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %14, i32 0, i32 1
  %16 = load %struct.snd_soc_device*, %struct.snd_soc_device** %15, align 8
  store %struct.snd_soc_device* %16, %struct.snd_soc_device** %5, align 8
  %17 = load %struct.snd_soc_device*, %struct.snd_soc_device** %5, align 8
  %18 = getelementptr inbounds %struct.snd_soc_device, %struct.snd_soc_device* %17, i32 0, i32 0
  %19 = load %struct.snd_soc_card*, %struct.snd_soc_card** %18, align 8
  store %struct.snd_soc_card* %19, %struct.snd_soc_card** %6, align 8
  %20 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %21 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %20, i32 0, i32 0
  %22 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %21, align 8
  store %struct.snd_soc_dai_link* %22, %struct.snd_soc_dai_link** %7, align 8
  %23 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %7, align 8
  %24 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %23, i32 0, i32 3
  %25 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %24, align 8
  store %struct.snd_soc_dai* %25, %struct.snd_soc_dai** %8, align 8
  %26 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %7, align 8
  %27 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %26, i32 0, i32 2
  %28 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %27, align 8
  store %struct.snd_soc_dai* %28, %struct.snd_soc_dai** %9, align 8
  %29 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %9, align 8
  %30 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %1
  %34 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %8, align 8
  %35 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %7, align 8
  %40 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %72

43:                                               ; preds = %38, %33, %1
  %44 = load %struct.snd_soc_card*, %struct.snd_soc_card** %6, align 8
  %45 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %7, align 8
  %48 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @dev_dbg(i32 %46, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %52 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %55 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %7, align 8
  %56 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %7, align 8
  %59 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @snd_pcm_hw_constraint_minmax(i32 %53, i32 %54, i32 %57, i32 %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %43
  %65 = load %struct.snd_soc_card*, %struct.snd_soc_card** %6, align 8
  %66 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @dev_err(i32 %67, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* %10, align 4
  store i32 %70, i32* %2, align 4
  br label %73

71:                                               ; preds = %43
  br label %72

72:                                               ; preds = %71, %38
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %72, %64
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_minmax(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
