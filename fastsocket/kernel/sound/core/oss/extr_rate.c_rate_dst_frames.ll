; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_rate.c_rate_dst_frames.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_rate.c_rate_dst_frames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_plugin = type { %struct.TYPE_4__, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.rate_priv = type { i32, i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@SHIFT = common dso_local global i32 0, align 4
@BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_plugin*, i32)* @rate_dst_frames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rate_dst_frames(%struct.snd_pcm_plugin* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_plugin*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rate_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_pcm_plugin* %0, %struct.snd_pcm_plugin** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %4, align 8
  %11 = icmp ne %struct.snd_pcm_plugin* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i64 @snd_BUG_ON(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @ENXIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %111

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %111

23:                                               ; preds = %19
  %24 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %4, align 8
  %25 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.rate_priv*
  store %struct.rate_priv* %27, %struct.rate_priv** %6, align 8
  %28 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %4, align 8
  %29 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %4, align 8
  %33 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp slt i64 %31, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %23
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @SHIFT, align 4
  %40 = shl i32 %38, %39
  %41 = load %struct.rate_priv*, %struct.rate_priv** %6, align 8
  %42 = getelementptr inbounds %struct.rate_priv, %struct.rate_priv* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sdiv i32 %43, 2
  %45 = add nsw i32 %40, %44
  %46 = load %struct.rate_priv*, %struct.rate_priv** %6, align 8
  %47 = getelementptr inbounds %struct.rate_priv, %struct.rate_priv* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sdiv i32 %45, %48
  store i32 %49, i32* %7, align 4
  br label %61

50:                                               ; preds = %23
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.rate_priv*, %struct.rate_priv** %6, align 8
  %53 = getelementptr inbounds %struct.rate_priv, %struct.rate_priv* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 %51, %54
  %56 = load i32, i32* @BITS, align 4
  %57 = sdiv i32 %56, 2
  %58 = add nsw i32 %55, %57
  %59 = load i32, i32* @SHIFT, align 4
  %60 = ashr i32 %58, %59
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %50, %37
  %62 = load %struct.rate_priv*, %struct.rate_priv** %6, align 8
  %63 = getelementptr inbounds %struct.rate_priv, %struct.rate_priv* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %103

66:                                               ; preds = %61
  %67 = load i32, i32* %5, align 4
  store i32 %67, i32* %8, align 4
  %68 = load %struct.rate_priv*, %struct.rate_priv** %6, align 8
  %69 = getelementptr inbounds %struct.rate_priv, %struct.rate_priv* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %9, align 4
  br label %71

71:                                               ; preds = %77, %66
  %72 = load %struct.rate_priv*, %struct.rate_priv** %6, align 8
  %73 = getelementptr inbounds %struct.rate_priv, %struct.rate_priv* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %71
  %78 = load i32, i32* %8, align 4
  %79 = ashr i32 %78, 1
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %9, align 4
  %81 = shl i32 %80, 1
  store i32 %81, i32* %9, align 4
  br label %71

82:                                               ; preds = %71
  br label %83

83:                                               ; preds = %89, %82
  %84 = load %struct.rate_priv*, %struct.rate_priv** %6, align 8
  %85 = getelementptr inbounds %struct.rate_priv, %struct.rate_priv* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp sgt i32 %86, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %83
  %90 = load i32, i32* %8, align 4
  %91 = shl i32 %90, 1
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %9, align 4
  %93 = ashr i32 %92, 1
  store i32 %93, i32* %9, align 4
  br label %83

94:                                               ; preds = %83
  %95 = load %struct.rate_priv*, %struct.rate_priv** %6, align 8
  %96 = getelementptr inbounds %struct.rate_priv, %struct.rate_priv* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %94
  %101 = load i32, i32* %9, align 4
  store i32 %101, i32* %3, align 4
  br label %111

102:                                              ; preds = %94
  br label %103

103:                                              ; preds = %102, %61
  %104 = load i32, i32* %5, align 4
  %105 = load %struct.rate_priv*, %struct.rate_priv** %6, align 8
  %106 = getelementptr inbounds %struct.rate_priv, %struct.rate_priv* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* %7, align 4
  %108 = load %struct.rate_priv*, %struct.rate_priv** %6, align 8
  %109 = getelementptr inbounds %struct.rate_priv, %struct.rate_priv* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* %7, align 4
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %103, %100, %22, %16
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i64 @snd_BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
