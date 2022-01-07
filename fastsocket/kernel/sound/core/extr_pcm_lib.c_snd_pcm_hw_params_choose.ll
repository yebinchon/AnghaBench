; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_pcm_lib.c_snd_pcm_hw_params_choose.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_pcm_lib.c_snd_pcm_hw_params_choose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }

@snd_pcm_hw_params_choose.vars = internal global [9 x i32] [i32 135, i32 132, i32 129, i32 133, i32 130, i32 131, i32 134, i32 128, i32 -1], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_pcm_hw_params_choose(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  store i32* getelementptr inbounds ([9 x i32], [9 x i32]* @snd_pcm_hw_params_choose.vars, i64 0, i64 0), i32** %7, align 8
  br label %8

8:                                                ; preds = %37, %2
  %9 = load i32*, i32** %7, align 8
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, -1
  br i1 %11, label %12, label %40

12:                                               ; preds = %8
  %13 = load i32*, i32** %7, align 8
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 134
  br i1 %15, label %16, label %22

16:                                               ; preds = %12
  %17 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %18 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @snd_pcm_hw_param_first(%struct.snd_pcm_substream* %17, %struct.snd_pcm_hw_params* %18, i32 %20, i32* null)
  store i32 %21, i32* %6, align 4
  br label %28

22:                                               ; preds = %12
  %23 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %24 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @snd_pcm_hw_param_last(%struct.snd_pcm_substream* %23, %struct.snd_pcm_hw_params* %24, i32 %26, i32* null)
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %22, %16
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i64 @snd_BUG_ON(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  br label %41

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36
  %38 = load i32*, i32** %7, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %7, align 8
  br label %8

40:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %34
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @snd_pcm_hw_param_first(%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, i32, i32*) #1

declare dso_local i32 @snd_pcm_hw_param_last(%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, i32, i32*) #1

declare dso_local i64 @snd_BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
