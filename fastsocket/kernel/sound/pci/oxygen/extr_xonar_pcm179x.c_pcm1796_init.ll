; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_xonar_pcm179x.c_pcm1796_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_xonar_pcm179x.c_pcm1796_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { %struct.xonar_pcm179x* }
%struct.xonar_pcm179x = type { i32**, i32, i64, i32 }

@PCM1796_DMF_DISABLED = common dso_local global i32 0, align 4
@PCM1796_FMT_24_I2S = common dso_local global i32 0, align 4
@PCM1796_ATLD = common dso_local global i32 0, align 4
@PCM1796_REG_BASE = common dso_local global i32 0, align 4
@PCM1796_MUTE = common dso_local global i32 0, align 4
@PCM1796_FLT_SHARP = common dso_local global i32 0, align 4
@PCM1796_ATS_1 = common dso_local global i32 0, align 4
@PCM1796_OS_64 = common dso_local global i32 0, align 4
@PCM1796_OS_128 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oxygen*)* @pcm1796_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcm1796_init(%struct.oxygen* %0) #0 {
  %2 = alloca %struct.oxygen*, align 8
  %3 = alloca %struct.xonar_pcm179x*, align 8
  store %struct.oxygen* %0, %struct.oxygen** %2, align 8
  %4 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %5 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %4, i32 0, i32 0
  %6 = load %struct.xonar_pcm179x*, %struct.xonar_pcm179x** %5, align 8
  store %struct.xonar_pcm179x* %6, %struct.xonar_pcm179x** %3, align 8
  %7 = load i32, i32* @PCM1796_DMF_DISABLED, align 4
  %8 = load i32, i32* @PCM1796_FMT_24_I2S, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @PCM1796_ATLD, align 4
  %11 = or i32 %9, %10
  %12 = load %struct.xonar_pcm179x*, %struct.xonar_pcm179x** %3, align 8
  %13 = getelementptr inbounds %struct.xonar_pcm179x, %struct.xonar_pcm179x* %12, i32 0, i32 0
  %14 = load i32**, i32*** %13, align 8
  %15 = getelementptr inbounds i32*, i32** %14, i64 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* @PCM1796_REG_BASE, align 4
  %18 = sub nsw i32 18, %17
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  store i32 %11, i32* %20, align 4
  %21 = load %struct.xonar_pcm179x*, %struct.xonar_pcm179x** %3, align 8
  %22 = getelementptr inbounds %struct.xonar_pcm179x, %struct.xonar_pcm179x* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @PCM1796_MUTE, align 4
  %27 = load %struct.xonar_pcm179x*, %struct.xonar_pcm179x** %3, align 8
  %28 = getelementptr inbounds %struct.xonar_pcm179x, %struct.xonar_pcm179x* %27, i32 0, i32 0
  %29 = load i32**, i32*** %28, align 8
  %30 = getelementptr inbounds i32*, i32** %29, i64 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* @PCM1796_REG_BASE, align 4
  %33 = sub nsw i32 18, %32
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %26
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %25, %1
  %39 = load i32, i32* @PCM1796_FLT_SHARP, align 4
  %40 = load i32, i32* @PCM1796_ATS_1, align 4
  %41 = or i32 %39, %40
  %42 = load %struct.xonar_pcm179x*, %struct.xonar_pcm179x** %3, align 8
  %43 = getelementptr inbounds %struct.xonar_pcm179x, %struct.xonar_pcm179x* %42, i32 0, i32 0
  %44 = load i32**, i32*** %43, align 8
  %45 = getelementptr inbounds i32*, i32** %44, i64 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* @PCM1796_REG_BASE, align 4
  %48 = sub nsw i32 19, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  store i32 %41, i32* %50, align 4
  %51 = load %struct.xonar_pcm179x*, %struct.xonar_pcm179x** %3, align 8
  %52 = getelementptr inbounds %struct.xonar_pcm179x, %struct.xonar_pcm179x* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %38
  %56 = load i32, i32* @PCM1796_OS_64, align 4
  br label %59

57:                                               ; preds = %38
  %58 = load i32, i32* @PCM1796_OS_128, align 4
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i32 [ %56, %55 ], [ %58, %57 ]
  %61 = load %struct.xonar_pcm179x*, %struct.xonar_pcm179x** %3, align 8
  %62 = getelementptr inbounds %struct.xonar_pcm179x, %struct.xonar_pcm179x* %61, i32 0, i32 0
  %63 = load i32**, i32*** %62, align 8
  %64 = getelementptr inbounds i32*, i32** %63, i64 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* @PCM1796_REG_BASE, align 4
  %67 = sub nsw i32 20, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  store i32 %60, i32* %69, align 4
  %70 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %71 = call i32 @pcm1796_registers_init(%struct.oxygen* %70)
  %72 = load %struct.xonar_pcm179x*, %struct.xonar_pcm179x** %3, align 8
  %73 = getelementptr inbounds %struct.xonar_pcm179x, %struct.xonar_pcm179x* %72, i32 0, i32 1
  store i32 48000, i32* %73, align 8
  ret void
}

declare dso_local i32 @pcm1796_registers_init(%struct.oxygen*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
