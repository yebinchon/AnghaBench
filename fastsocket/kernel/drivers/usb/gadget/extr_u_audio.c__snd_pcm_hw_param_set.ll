; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_u_audio.c__snd_pcm_hw_param_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_u_audio.c__snd_pcm_hw_param_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_hw_params = type { i32, i32 }
%struct.snd_mask = type { i32 }
%struct.snd_interval = type { i32, i32, i32, i32, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_hw_params*, i32, i32, i32)* @_snd_pcm_hw_param_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_snd_pcm_hw_param_set(%struct.snd_pcm_hw_params* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.snd_mask*, align 8
  %12 = alloca %struct.snd_interval*, align 8
  %13 = alloca %struct.snd_interval, align 8
  store %struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_params** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i64 @hw_is_mask(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %51

17:                                               ; preds = %4
  %18 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call %struct.snd_mask* @hw_param_mask(%struct.snd_pcm_hw_params* %18, i32 %19)
  store %struct.snd_mask* %20, %struct.snd_mask** %11, align 8
  %21 = load i32, i32* %8, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %10, align 4
  %29 = load %struct.snd_mask*, %struct.snd_mask** %11, align 8
  %30 = call i32 @snd_mask_none(%struct.snd_mask* %29)
  br label %50

31:                                               ; preds = %23, %17
  %32 = load i32, i32* %9, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, i32* %8, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %8, align 4
  br label %44

37:                                               ; preds = %31
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* %8, align 4
  %42 = add i32 %41, -1
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %40, %37
  br label %44

44:                                               ; preds = %43, %34
  %45 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call %struct.snd_mask* @hw_param_mask(%struct.snd_pcm_hw_params* %45, i32 %46)
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @snd_mask_refine_set(%struct.snd_mask* %47, i32 %48)
  store i32 %49, i32* %10, align 4
  br label %50

50:                                               ; preds = %44, %26
  br label %104

51:                                               ; preds = %4
  %52 = load i32, i32* %7, align 4
  %53 = call i64 @hw_is_interval(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %100

55:                                               ; preds = %51
  %56 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params* %56, i32 %57)
  store %struct.snd_interval* %58, %struct.snd_interval** %12, align 8
  %59 = load i32, i32* %8, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %55
  %62 = load i32, i32* %9, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %10, align 4
  %67 = load %struct.snd_interval*, %struct.snd_interval** %12, align 8
  %68 = call i32 @snd_interval_none(%struct.snd_interval* %67)
  br label %99

69:                                               ; preds = %61, %55
  %70 = load i32, i32* %9, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load %struct.snd_interval*, %struct.snd_interval** %12, align 8
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @snd_interval_refine_set(%struct.snd_interval* %73, i32 %74)
  store i32 %75, i32* %10, align 4
  br label %98

76:                                               ; preds = %69
  %77 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %13, i32 0, i32 0
  store i32 1, i32* %77, align 8
  %78 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %13, i32 0, i32 1
  store i32 1, i32* %78, align 4
  %79 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %13, i32 0, i32 5
  store i64 0, i64* %79, align 8
  %80 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %13, i32 0, i32 4
  store i64 0, i64* %80, align 8
  %81 = load i32, i32* %9, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %76
  %84 = load i32, i32* %8, align 4
  %85 = sub i32 %84, 1
  %86 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %13, i32 0, i32 2
  store i32 %85, i32* %86, align 8
  %87 = load i32, i32* %8, align 4
  %88 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %13, i32 0, i32 3
  store i32 %87, i32* %88, align 4
  br label %95

89:                                               ; preds = %76
  %90 = load i32, i32* %8, align 4
  %91 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %13, i32 0, i32 2
  store i32 %90, i32* %91, align 8
  %92 = load i32, i32* %8, align 4
  %93 = add i32 %92, 1
  %94 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %13, i32 0, i32 3
  store i32 %93, i32* %94, align 4
  br label %95

95:                                               ; preds = %89, %83
  %96 = load %struct.snd_interval*, %struct.snd_interval** %12, align 8
  %97 = call i32 @snd_interval_refine(%struct.snd_interval* %96, %struct.snd_interval* %13)
  store i32 %97, i32* %10, align 4
  br label %98

98:                                               ; preds = %95, %72
  br label %99

99:                                               ; preds = %98, %64
  br label %103

100:                                              ; preds = %51
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %5, align 4
  br label %122

103:                                              ; preds = %99
  br label %104

104:                                              ; preds = %103, %50
  %105 = load i32, i32* %10, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %120

107:                                              ; preds = %104
  %108 = load i32, i32* %7, align 4
  %109 = shl i32 1, %108
  %110 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %111 = getelementptr inbounds %struct.snd_pcm_hw_params, %struct.snd_pcm_hw_params* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 4
  %114 = load i32, i32* %7, align 4
  %115 = shl i32 1, %114
  %116 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %117 = getelementptr inbounds %struct.snd_pcm_hw_params, %struct.snd_pcm_hw_params* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 4
  br label %120

120:                                              ; preds = %107, %104
  %121 = load i32, i32* %10, align 4
  store i32 %121, i32* %5, align 4
  br label %122

122:                                              ; preds = %120, %100
  %123 = load i32, i32* %5, align 4
  ret i32 %123
}

declare dso_local i64 @hw_is_mask(i32) #1

declare dso_local %struct.snd_mask* @hw_param_mask(%struct.snd_pcm_hw_params*, i32) #1

declare dso_local i32 @snd_mask_none(%struct.snd_mask*) #1

declare dso_local i32 @snd_mask_refine_set(%struct.snd_mask*, i32) #1

declare dso_local i64 @hw_is_interval(i32) #1

declare dso_local %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params*, i32) #1

declare dso_local i32 @snd_interval_none(%struct.snd_interval*) #1

declare dso_local i32 @snd_interval_refine_set(%struct.snd_interval*, i32) #1

declare dso_local i32 @snd_interval_refine(%struct.snd_interval*, %struct.snd_interval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
