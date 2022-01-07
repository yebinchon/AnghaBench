; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/parisc/extr_harmony.c_snd_harmony_playback_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/parisc/extr_harmony.c_snd_harmony_playback_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i32, i32 }
%struct.snd_harmony = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i64, i64 }

@EBUSY = common dso_local global i32 0, align 4
@HARMONY_SS_STEREO = common dso_local global i32 0, align 4
@HARMONY_SS_MONO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_harmony_playback_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_harmony_playback_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_harmony*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %7 = call %struct.snd_harmony* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %6)
  store %struct.snd_harmony* %7, %struct.snd_harmony** %4, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 0
  %10 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  store %struct.snd_pcm_runtime* %10, %struct.snd_pcm_runtime** %5, align 8
  %11 = load %struct.snd_harmony*, %struct.snd_harmony** %4, align 8
  %12 = getelementptr inbounds %struct.snd_harmony, %struct.snd_harmony* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @EBUSY, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %85

19:                                               ; preds = %1
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %21 = call i64 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream* %20)
  %22 = load %struct.snd_harmony*, %struct.snd_harmony** %4, align 8
  %23 = getelementptr inbounds %struct.snd_harmony, %struct.snd_harmony* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i64 %21, i64* %24, align 8
  %25 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %26 = call i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream* %25)
  %27 = load %struct.snd_harmony*, %struct.snd_harmony** %4, align 8
  %28 = getelementptr inbounds %struct.snd_harmony, %struct.snd_harmony* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 3
  store i32 %26, i32* %29, align 4
  %30 = load %struct.snd_harmony*, %struct.snd_harmony** %4, align 8
  %31 = getelementptr inbounds %struct.snd_harmony, %struct.snd_harmony* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.snd_harmony*, %struct.snd_harmony** %4, align 8
  %35 = getelementptr inbounds %struct.snd_harmony, %struct.snd_harmony* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp sge i64 %33, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %19
  %40 = load %struct.snd_harmony*, %struct.snd_harmony** %4, align 8
  %41 = getelementptr inbounds %struct.snd_harmony, %struct.snd_harmony* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  store i64 0, i64* %42, align 8
  br label %43

43:                                               ; preds = %39, %19
  %44 = load %struct.snd_harmony*, %struct.snd_harmony** %4, align 8
  %45 = getelementptr inbounds %struct.snd_harmony, %struct.snd_harmony* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 3
  store i64 0, i64* %46, align 8
  %47 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %48 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @snd_harmony_rate_bits(i32 %49)
  %51 = load %struct.snd_harmony*, %struct.snd_harmony** %4, align 8
  %52 = getelementptr inbounds %struct.snd_harmony, %struct.snd_harmony* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  store i32 %50, i32* %53, align 8
  %54 = load %struct.snd_harmony*, %struct.snd_harmony** %4, align 8
  %55 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %56 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @snd_harmony_set_data_format(%struct.snd_harmony* %54, i32 %57, i32 0)
  %59 = load %struct.snd_harmony*, %struct.snd_harmony** %4, align 8
  %60 = getelementptr inbounds %struct.snd_harmony, %struct.snd_harmony* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  store i32 %58, i32* %61, align 4
  %62 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %63 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, 2
  br i1 %65, label %66, label %71

66:                                               ; preds = %43
  %67 = load i32, i32* @HARMONY_SS_STEREO, align 4
  %68 = load %struct.snd_harmony*, %struct.snd_harmony** %4, align 8
  %69 = getelementptr inbounds %struct.snd_harmony, %struct.snd_harmony* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 8
  br label %76

71:                                               ; preds = %43
  %72 = load i32, i32* @HARMONY_SS_MONO, align 4
  %73 = load %struct.snd_harmony*, %struct.snd_harmony** %4, align 8
  %74 = getelementptr inbounds %struct.snd_harmony, %struct.snd_harmony* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 8
  br label %76

76:                                               ; preds = %71, %66
  %77 = load %struct.snd_harmony*, %struct.snd_harmony** %4, align 8
  %78 = call i32 @harmony_set_control(%struct.snd_harmony* %77)
  %79 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %80 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.snd_harmony*, %struct.snd_harmony** %4, align 8
  %83 = getelementptr inbounds %struct.snd_harmony, %struct.snd_harmony* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 2
  store i32 %81, i32* %84, align 8
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %76, %16
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local %struct.snd_harmony* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i64 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_harmony_rate_bits(i32) #1

declare dso_local i32 @snd_harmony_set_data_format(%struct.snd_harmony*, i32, i32) #1

declare dso_local i32 @harmony_set_control(%struct.snd_harmony*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
