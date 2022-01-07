; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_xonar_dg.c_set_cs4245_dac_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_xonar_dg.c_set_cs4245_dac_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { %struct.dg* }
%struct.dg = type { i32* }
%struct.snd_pcm_hw_params = type { i32 }

@CS4245_DAC_CTRL_1 = common dso_local global i64 0, align 8
@CS4245_DAC_FM_MASK = common dso_local global i32 0, align 4
@CS4245_DAC_FM_SINGLE = common dso_local global i32 0, align 4
@CS4245_DAC_FM_DOUBLE = common dso_local global i32 0, align 4
@CS4245_DAC_FM_QUAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oxygen*, %struct.snd_pcm_hw_params*)* @set_cs4245_dac_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_cs4245_dac_params(%struct.oxygen* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca %struct.oxygen*, align 8
  %4 = alloca %struct.snd_pcm_hw_params*, align 8
  %5 = alloca %struct.dg*, align 8
  %6 = alloca i32, align 4
  store %struct.oxygen* %0, %struct.oxygen** %3, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %4, align 8
  %7 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %8 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %7, i32 0, i32 0
  %9 = load %struct.dg*, %struct.dg** %8, align 8
  store %struct.dg* %9, %struct.dg** %5, align 8
  %10 = load %struct.dg*, %struct.dg** %5, align 8
  %11 = getelementptr inbounds %struct.dg, %struct.dg* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i64, i64* @CS4245_DAC_CTRL_1, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @CS4245_DAC_FM_MASK, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  store i32 %18, i32* %6, align 4
  %19 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %20 = call i32 @params_rate(%struct.snd_pcm_hw_params* %19)
  %21 = icmp sle i32 %20, 50000
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load i32, i32* @CS4245_DAC_FM_SINGLE, align 4
  %24 = load i32, i32* %6, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %6, align 4
  br label %39

26:                                               ; preds = %2
  %27 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %28 = call i32 @params_rate(%struct.snd_pcm_hw_params* %27)
  %29 = icmp sle i32 %28, 100000
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i32, i32* @CS4245_DAC_FM_DOUBLE, align 4
  %32 = load i32, i32* %6, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %6, align 4
  br label %38

34:                                               ; preds = %26
  %35 = load i32, i32* @CS4245_DAC_FM_QUAD, align 4
  %36 = load i32, i32* %6, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %34, %30
  br label %39

39:                                               ; preds = %38, %22
  %40 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %41 = load i64, i64* @CS4245_DAC_CTRL_1, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @cs4245_write_cached(%struct.oxygen* %40, i64 %41, i32 %42)
  ret void
}

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @cs4245_write_cached(%struct.oxygen*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
