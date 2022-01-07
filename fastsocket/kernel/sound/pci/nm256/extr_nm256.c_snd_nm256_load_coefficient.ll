; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/nm256/extr_nm256.c_snd_nm256_load_coefficient.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/nm256/extr_nm256.c_snd_nm256_load_coefficient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nm256 = type { i32, i64, i32 }

@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@NM_RECORD_ENABLE_REG = common dso_local global i64 0, align 8
@NM_PLAYBACK_ENABLE_REG = common dso_local global i64 0, align 8
@NM_COEFF_START_OFFSET = common dso_local global i64 0, align 8
@NM_RECORD_REG_OFFSET = common dso_local global i64 0, align 8
@NM_PLAYBACK_REG_OFFSET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"NM256: Engine was enabled while loading coefficients!\0A\00", align 1
@coefficients = common dso_local global i32 0, align 4
@NM_TOTAL_COEFF_COUNT = common dso_local global i32 0, align 4
@coefficient_sizes = common dso_local global i64* null, align 8
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nm256*, i32, i32)* @snd_nm256_load_coefficient to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_nm256_load_coefficient(%struct.nm256* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nm256*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.nm256* %0, %struct.nm256** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i64, i64* @NM_RECORD_ENABLE_REG, align 8
  br label %19

17:                                               ; preds = %3
  %18 = load i64, i64* @NM_PLAYBACK_ENABLE_REG, align 8
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i64 [ %16, %15 ], [ %18, %17 ]
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* @NM_COEFF_START_OFFSET, align 8
  store i64 %21, i64* %8, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i64, i64* @NM_RECORD_REG_OFFSET, align 8
  br label %29

27:                                               ; preds = %19
  %28 = load i64, i64* @NM_PLAYBACK_REG_OFFSET, align 8
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i64 [ %26, %25 ], [ %28, %27 ]
  %31 = load i64, i64* %8, align 8
  %32 = add nsw i64 %31, %30
  store i64 %32, i64* %8, align 8
  %33 = load %struct.nm256*, %struct.nm256** %4, align 8
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @snd_nm256_readb(%struct.nm256* %33, i64 %34)
  %36 = and i32 %35, 1
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = call i32 @snd_printd(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  br label %109

40:                                               ; preds = %29
  %41 = load i32, i32* %6, align 4
  %42 = and i32 %41, 7
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 8
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %46, %40
  %50 = load %struct.nm256*, %struct.nm256** %4, align 8
  %51 = getelementptr inbounds %struct.nm256, %struct.nm256* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %49
  %55 = load %struct.nm256*, %struct.nm256** %4, align 8
  %56 = load i32, i32* %5, align 4
  %57 = load i64, i64* %8, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @snd_nm256_load_one_coefficient(%struct.nm256* %55, i32 %56, i64 %57, i32 %58)
  br label %109

60:                                               ; preds = %49
  %61 = load %struct.nm256*, %struct.nm256** %4, align 8
  %62 = getelementptr inbounds %struct.nm256, %struct.nm256* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %76, label %65

65:                                               ; preds = %60
  %66 = load %struct.nm256*, %struct.nm256** %4, align 8
  %67 = load i32, i32* @coefficients, align 4
  %68 = load %struct.nm256*, %struct.nm256** %4, align 8
  %69 = getelementptr inbounds %struct.nm256, %struct.nm256* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* @NM_TOTAL_COEFF_COUNT, align 4
  %72 = mul nsw i32 %71, 4
  %73 = call i32 @snd_nm256_write_buffer(%struct.nm256* %66, i32 %67, i64 %70, i32 %72)
  %74 = load %struct.nm256*, %struct.nm256** %4, align 8
  %75 = getelementptr inbounds %struct.nm256, %struct.nm256* %74, i32 0, i32 0
  store i32 1, i32* %75, align 8
  br label %109

76:                                               ; preds = %60
  %77 = load %struct.nm256*, %struct.nm256** %4, align 8
  %78 = getelementptr inbounds %struct.nm256, %struct.nm256* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %9, align 8
  %80 = load i32, i32* %6, align 4
  %81 = call i64 @snd_nm256_get_start_offset(i32 %80)
  store i64 %81, i64* %10, align 8
  %82 = load i64, i64* %10, align 8
  %83 = load i64*, i64** @coefficient_sizes, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %83, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %82, %87
  store i64 %88, i64* %11, align 8
  %89 = load %struct.nm256*, %struct.nm256** %4, align 8
  %90 = load i64, i64* %8, align 8
  %91 = load i64, i64* %9, align 8
  %92 = load i64, i64* %10, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 @snd_nm256_writel(%struct.nm256* %89, i64 %90, i64 %93)
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %76
  %99 = load i64, i64* %11, align 8
  %100 = add nsw i64 %99, -1
  store i64 %100, i64* %11, align 8
  br label %101

101:                                              ; preds = %98, %76
  %102 = load %struct.nm256*, %struct.nm256** %4, align 8
  %103 = load i64, i64* %8, align 8
  %104 = add nsw i64 %103, 4
  %105 = load i64, i64* %9, align 8
  %106 = load i64, i64* %11, align 8
  %107 = add nsw i64 %105, %106
  %108 = call i32 @snd_nm256_writel(%struct.nm256* %102, i64 %104, i64 %107)
  br label %109

109:                                              ; preds = %38, %54, %101, %65
  ret void
}

declare dso_local i32 @snd_nm256_readb(%struct.nm256*, i64) #1

declare dso_local i32 @snd_printd(i8*) #1

declare dso_local i32 @snd_nm256_load_one_coefficient(%struct.nm256*, i32, i64, i32) #1

declare dso_local i32 @snd_nm256_write_buffer(%struct.nm256*, i32, i64, i32) #1

declare dso_local i64 @snd_nm256_get_start_offset(i32) #1

declare dso_local i32 @snd_nm256_writel(%struct.nm256*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
