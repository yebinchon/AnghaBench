; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_pcm_oss.c__snd_pcm_hw_param_max.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_pcm_oss.c__snd_pcm_hw_param_max.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_hw_params = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_hw_params*, i32, i32, i32)* @_snd_pcm_hw_param_max to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_snd_pcm_hw_param_max(%struct.snd_pcm_hw_params* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_params** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %4
  %15 = load i32, i32* %9, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 1, i32* %11, align 4
  br label %25

18:                                               ; preds = %14
  %19 = load i32, i32* %9, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  store i32 1, i32* %11, align 4
  %22 = load i32, i32* %8, align 4
  %23 = add i32 %22, 1
  store i32 %23, i32* %8, align 4
  br label %24

24:                                               ; preds = %21, %18
  br label %25

25:                                               ; preds = %24, %17
  br label %26

26:                                               ; preds = %25, %4
  %27 = load i32, i32* %7, align 4
  %28 = call i64 @hw_is_mask(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %56

30:                                               ; preds = %26
  %31 = load i32, i32* %8, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %30
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @hw_param_mask(%struct.snd_pcm_hw_params* %37, i32 %38)
  %40 = call i32 @snd_mask_none(i32 %39)
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %10, align 4
  br label %55

43:                                               ; preds = %33, %30
  %44 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @hw_param_mask(%struct.snd_pcm_hw_params* %44, i32 %45)
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = sub i32 %47, %52
  %54 = call i32 @snd_mask_refine_max(i32 %46, i32 %53)
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %43, %36
  br label %71

56:                                               ; preds = %26
  %57 = load i32, i32* %7, align 4
  %58 = call i64 @hw_is_interval(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %56
  %61 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @hw_param_interval(%struct.snd_pcm_hw_params* %61, i32 %62)
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @snd_interval_refine_max(i32 %63, i32 %64, i32 %65)
  store i32 %66, i32* %10, align 4
  br label %70

67:                                               ; preds = %56
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %5, align 4
  br label %89

70:                                               ; preds = %60
  br label %71

71:                                               ; preds = %70, %55
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %71
  %75 = load i32, i32* %7, align 4
  %76 = shl i32 1, %75
  %77 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %78 = getelementptr inbounds %struct.snd_pcm_hw_params, %struct.snd_pcm_hw_params* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 4
  %81 = load i32, i32* %7, align 4
  %82 = shl i32 1, %81
  %83 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %84 = getelementptr inbounds %struct.snd_pcm_hw_params, %struct.snd_pcm_hw_params* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %74, %71
  %88 = load i32, i32* %10, align 4
  store i32 %88, i32* %5, align 4
  br label %89

89:                                               ; preds = %87, %67
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local i64 @hw_is_mask(i32) #1

declare dso_local i32 @snd_mask_none(i32) #1

declare dso_local i32 @hw_param_mask(%struct.snd_pcm_hw_params*, i32) #1

declare dso_local i32 @snd_mask_refine_max(i32, i32) #1

declare dso_local i64 @hw_is_interval(i32) #1

declare dso_local i32 @snd_interval_refine_max(i32, i32, i32) #1

declare dso_local i32 @hw_param_interval(%struct.snd_pcm_hw_params*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
