; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_pcm_lib.c_snd_pcm_hw_constraint_mask64.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_pcm_lib.c_snd_pcm_hw_constraint_mask64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_runtime = type { %struct.snd_pcm_hw_constraints }
%struct.snd_pcm_hw_constraints = type { i32 }
%struct.snd_mask = type { i32* }

@SNDRV_MASK_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_pcm_hw_constraint_mask64(%struct.snd_pcm_runtime* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_pcm_hw_constraints*, align 8
  %9 = alloca %struct.snd_mask*, align 8
  store %struct.snd_pcm_runtime* %0, %struct.snd_pcm_runtime** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %10, i32 0, i32 0
  store %struct.snd_pcm_hw_constraints* %11, %struct.snd_pcm_hw_constraints** %8, align 8
  %12 = load %struct.snd_pcm_hw_constraints*, %struct.snd_pcm_hw_constraints** %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.snd_mask* @constrs_mask(%struct.snd_pcm_hw_constraints* %12, i32 %13)
  store %struct.snd_mask* %14, %struct.snd_mask** %9, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.snd_mask*, %struct.snd_mask** %9, align 8
  %17 = getelementptr inbounds %struct.snd_mask, %struct.snd_mask* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, %15
  store i32 %21, i32* %19, align 4
  %22 = load i32, i32* %7, align 4
  %23 = ashr i32 %22, 32
  %24 = load %struct.snd_mask*, %struct.snd_mask** %9, align 8
  %25 = getelementptr inbounds %struct.snd_mask, %struct.snd_mask* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, %23
  store i32 %29, i32* %27, align 4
  %30 = load %struct.snd_mask*, %struct.snd_mask** %9, align 8
  %31 = getelementptr inbounds %struct.snd_mask, %struct.snd_mask* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  %34 = load i32, i32* @SNDRV_MASK_MAX, align 4
  %35 = sub nsw i32 %34, 64
  %36 = sdiv i32 %35, 8
  %37 = call i32 @memset(i32* %33, i32 0, i32 %36)
  %38 = load %struct.snd_mask*, %struct.snd_mask** %9, align 8
  %39 = getelementptr inbounds %struct.snd_mask, %struct.snd_mask* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %3
  %45 = load %struct.snd_mask*, %struct.snd_mask** %9, align 8
  %46 = getelementptr inbounds %struct.snd_mask, %struct.snd_mask* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %44
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %55

54:                                               ; preds = %44, %3
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %51
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local %struct.snd_mask* @constrs_mask(%struct.snd_pcm_hw_constraints*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
