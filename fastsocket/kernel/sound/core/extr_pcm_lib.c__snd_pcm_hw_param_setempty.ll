; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_pcm_lib.c__snd_pcm_hw_param_setempty.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_pcm_lib.c__snd_pcm_hw_param_setempty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_hw_params = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_snd_pcm_hw_param_setempty(%struct.snd_pcm_hw_params* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_pcm_hw_params*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_params** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = call i64 @hw_is_mask(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %25

8:                                                ; preds = %2
  %9 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @hw_param_mask(%struct.snd_pcm_hw_params* %9, i32 %10)
  %12 = call i32 @snd_mask_none(i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = shl i32 1, %13
  %15 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %3, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_hw_params, %struct.snd_pcm_hw_params* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load i32, i32* %4, align 4
  %20 = shl i32 1, %19
  %21 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %3, align 8
  %22 = getelementptr inbounds %struct.snd_pcm_hw_params, %struct.snd_pcm_hw_params* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  br label %49

25:                                               ; preds = %2
  %26 = load i32, i32* %4, align 4
  %27 = call i64 @hw_is_interval(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %25
  %30 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @hw_param_interval(%struct.snd_pcm_hw_params* %30, i32 %31)
  %33 = call i32 @snd_interval_none(i32 %32)
  %34 = load i32, i32* %4, align 4
  %35 = shl i32 1, %34
  %36 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %3, align 8
  %37 = getelementptr inbounds %struct.snd_pcm_hw_params, %struct.snd_pcm_hw_params* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load i32, i32* %4, align 4
  %41 = shl i32 1, %40
  %42 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %3, align 8
  %43 = getelementptr inbounds %struct.snd_pcm_hw_params, %struct.snd_pcm_hw_params* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  br label %48

46:                                               ; preds = %25
  %47 = call i32 (...) @snd_BUG()
  br label %48

48:                                               ; preds = %46, %29
  br label %49

49:                                               ; preds = %48, %8
  ret void
}

declare dso_local i64 @hw_is_mask(i32) #1

declare dso_local i32 @snd_mask_none(i32) #1

declare dso_local i32 @hw_param_mask(%struct.snd_pcm_hw_params*, i32) #1

declare dso_local i64 @hw_is_interval(i32) #1

declare dso_local i32 @snd_interval_none(i32) #1

declare dso_local i32 @hw_param_interval(%struct.snd_pcm_hw_params*, i32) #1

declare dso_local i32 @snd_BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
