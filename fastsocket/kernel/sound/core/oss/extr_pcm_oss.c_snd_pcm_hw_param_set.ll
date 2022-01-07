; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_pcm_oss.c_snd_pcm_hw_param_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_pcm_oss.c_snd_pcm_hw_param_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, i32, i32, i32)* @snd_pcm_hw_param_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pcm_hw_param_set(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_pcm_substream*, align 8
  %8 = alloca %struct.snd_pcm_hw_params*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %7, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %8, align 8
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* %11, align 4
  %18 = call i32 @_snd_pcm_hw_param_set(%struct.snd_pcm_hw_params* %14, i32 %15, i32 %16, i32 %17)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* %12, align 4
  store i32 %22, i32* %6, align 4
  br label %41

23:                                               ; preds = %5
  %24 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %8, align 8
  %25 = getelementptr inbounds %struct.snd_pcm_hw_params, %struct.snd_pcm_hw_params* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %23
  %29 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %30 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %8, align 8
  %31 = call i32 @snd_pcm_hw_refine(%struct.snd_pcm_substream* %29, %struct.snd_pcm_hw_params* %30)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* %13, align 4
  store i32 %35, i32* %6, align 4
  br label %41

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36, %23
  %38 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %8, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @snd_pcm_hw_param_value(%struct.snd_pcm_hw_params* %38, i32 %39, i32* null)
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %37, %34, %21
  %42 = load i32, i32* %6, align 4
  ret i32 %42
}

declare dso_local i32 @_snd_pcm_hw_param_set(%struct.snd_pcm_hw_params*, i32, i32, i32) #1

declare dso_local i32 @snd_pcm_hw_refine(%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_pcm_hw_param_value(%struct.snd_pcm_hw_params*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
