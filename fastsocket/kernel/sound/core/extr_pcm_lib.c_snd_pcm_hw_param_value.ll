; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_pcm_lib.c_snd_pcm_hw_param_value.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_pcm_lib.c_snd_pcm_hw_param_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_mask = type { i32 }
%struct.snd_interval = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_pcm_hw_param_value(%struct.snd_pcm_hw_params* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.snd_mask*, align 8
  %9 = alloca %struct.snd_interval*, align 8
  store %struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_params** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i64 @hw_is_mask(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %31

13:                                               ; preds = %3
  %14 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call %struct.snd_mask* @hw_param_mask_c(%struct.snd_pcm_hw_params* %14, i32 %15)
  store %struct.snd_mask* %16, %struct.snd_mask** %8, align 8
  %17 = load %struct.snd_mask*, %struct.snd_mask** %8, align 8
  %18 = call i32 @snd_mask_single(%struct.snd_mask* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %13
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %59

23:                                               ; preds = %13
  %24 = load i32*, i32** %7, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32*, i32** %7, align 8
  store i32 0, i32* %27, align 4
  br label %28

28:                                               ; preds = %26, %23
  %29 = load %struct.snd_mask*, %struct.snd_mask** %8, align 8
  %30 = call i32 @snd_mask_value(%struct.snd_mask* %29)
  store i32 %30, i32* %4, align 4
  br label %59

31:                                               ; preds = %3
  %32 = load i32, i32* %6, align 4
  %33 = call i64 @hw_is_interval(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %56

35:                                               ; preds = %31
  %36 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call %struct.snd_interval* @hw_param_interval_c(%struct.snd_pcm_hw_params* %36, i32 %37)
  store %struct.snd_interval* %38, %struct.snd_interval** %9, align 8
  %39 = load %struct.snd_interval*, %struct.snd_interval** %9, align 8
  %40 = call i32 @snd_interval_single(%struct.snd_interval* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %35
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %59

45:                                               ; preds = %35
  %46 = load i32*, i32** %7, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load %struct.snd_interval*, %struct.snd_interval** %9, align 8
  %50 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %7, align 8
  store i32 %51, i32* %52, align 4
  br label %53

53:                                               ; preds = %48, %45
  %54 = load %struct.snd_interval*, %struct.snd_interval** %9, align 8
  %55 = call i32 @snd_interval_value(%struct.snd_interval* %54)
  store i32 %55, i32* %4, align 4
  br label %59

56:                                               ; preds = %31
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %56, %53, %42, %28, %20
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i64 @hw_is_mask(i32) #1

declare dso_local %struct.snd_mask* @hw_param_mask_c(%struct.snd_pcm_hw_params*, i32) #1

declare dso_local i32 @snd_mask_single(%struct.snd_mask*) #1

declare dso_local i32 @snd_mask_value(%struct.snd_mask*) #1

declare dso_local i64 @hw_is_interval(i32) #1

declare dso_local %struct.snd_interval* @hw_param_interval_c(%struct.snd_pcm_hw_params*, i32) #1

declare dso_local i32 @snd_interval_single(%struct.snd_interval*) #1

declare dso_local i32 @snd_interval_value(%struct.snd_interval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
