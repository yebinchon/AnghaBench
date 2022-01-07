; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_echoaudio_dsp.c_set_audio_format.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_echoaudio_dsp.c_set_audio_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.audioformat = type { i32, i32, i32, i64 }

@DSP_AUDIOFORM_SS_16LE = common dso_local global i64 0, align 8
@DSP_AUDIOFORM_SUPER_INTERLEAVE_16LE = common dso_local global i64 0, align 8
@DSP_AUDIOFORM_SUPER_INTERLEAVE_24LE = common dso_local global i64 0, align 8
@DSP_AUDIOFORM_SUPER_INTERLEAVE_32LE = common dso_local global i64 0, align 8
@DSP_AUDIOFORM_MM_32BE = common dso_local global i64 0, align 8
@DSP_AUDIOFORM_MM_32LE = common dso_local global i64 0, align 8
@DSP_AUDIOFORM_SS_8 = common dso_local global i64 0, align 8
@DSP_AUDIOFORM_MS_8 = common dso_local global i64 0, align 8
@DSP_AUDIOFORM_MS_16LE = common dso_local global i64 0, align 8
@DSP_AUDIOFORM_SS_24LE = common dso_local global i64 0, align 8
@DSP_AUDIOFORM_MS_24LE = common dso_local global i64 0, align 8
@DSP_AUDIOFORM_SS_32LE = common dso_local global i64 0, align 8
@DSP_AUDIOFORM_MS_32LE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"set_audio_format[%d] = %x\0A\00", align 1
@DSP_AUDIOFORM_SS_32BE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.echoaudio*, i64, %struct.audioformat*)* @set_audio_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_audio_format(%struct.echoaudio* %0, i64 %1, %struct.audioformat* %2) #0 {
  %4 = alloca %struct.echoaudio*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.audioformat*, align 8
  %7 = alloca i64, align 8
  store %struct.echoaudio* %0, %struct.echoaudio** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.audioformat* %2, %struct.audioformat** %6, align 8
  %8 = load i64, i64* @DSP_AUDIOFORM_SS_16LE, align 8
  store i64 %8, i64* %7, align 8
  %9 = load %struct.audioformat*, %struct.audioformat** %6, align 8
  %10 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp sgt i32 %11, 2
  br i1 %12, label %13, label %30

13:                                               ; preds = %3
  %14 = load %struct.audioformat*, %struct.audioformat** %6, align 8
  %15 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %23 [
    i32 16, label %17
    i32 24, label %19
    i32 32, label %21
  ]

17:                                               ; preds = %13
  %18 = load i64, i64* @DSP_AUDIOFORM_SUPER_INTERLEAVE_16LE, align 8
  store i64 %18, i64* %7, align 8
  br label %23

19:                                               ; preds = %13
  %20 = load i64, i64* @DSP_AUDIOFORM_SUPER_INTERLEAVE_24LE, align 8
  store i64 %20, i64* %7, align 8
  br label %23

21:                                               ; preds = %13
  %22 = load i64, i64* @DSP_AUDIOFORM_SUPER_INTERLEAVE_32LE, align 8
  store i64 %22, i64* %7, align 8
  br label %23

23:                                               ; preds = %13, %21, %19, %17
  %24 = load %struct.audioformat*, %struct.audioformat** %6, align 8
  %25 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* %7, align 8
  %29 = or i64 %28, %27
  store i64 %29, i64* %7, align 8
  br label %107

30:                                               ; preds = %3
  %31 = load %struct.audioformat*, %struct.audioformat** %6, align 8
  %32 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load %struct.audioformat*, %struct.audioformat** %6, align 8
  %37 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  switch i32 %38, label %41 [
    i32 1, label %39
  ]

39:                                               ; preds = %35
  %40 = load i64, i64* @DSP_AUDIOFORM_MM_32BE, align 8
  store i64 %40, i64* %7, align 8
  br label %41

41:                                               ; preds = %35, %39
  br label %106

42:                                               ; preds = %30
  %43 = load %struct.audioformat*, %struct.audioformat** %6, align 8
  %44 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %59

47:                                               ; preds = %42
  %48 = load %struct.audioformat*, %struct.audioformat** %6, align 8
  %49 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 32
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load %struct.audioformat*, %struct.audioformat** %6, align 8
  %54 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %52
  %58 = load i64, i64* @DSP_AUDIOFORM_MM_32LE, align 8
  store i64 %58, i64* %7, align 8
  br label %105

59:                                               ; preds = %52, %47, %42
  %60 = load %struct.audioformat*, %struct.audioformat** %6, align 8
  %61 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  switch i32 %62, label %73 [
    i32 8, label %63
    i32 16, label %74
    i32 24, label %84
    i32 32, label %94
  ]

63:                                               ; preds = %59
  %64 = load %struct.audioformat*, %struct.audioformat** %6, align 8
  %65 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 %66, 2
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i64, i64* @DSP_AUDIOFORM_SS_8, align 8
  store i64 %69, i64* %7, align 8
  br label %72

70:                                               ; preds = %63
  %71 = load i64, i64* @DSP_AUDIOFORM_MS_8, align 8
  store i64 %71, i64* %7, align 8
  br label %72

72:                                               ; preds = %70, %68
  br label %104

73:                                               ; preds = %59
  br label %74

74:                                               ; preds = %59, %73
  %75 = load %struct.audioformat*, %struct.audioformat** %6, align 8
  %76 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp eq i32 %77, 2
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load i64, i64* @DSP_AUDIOFORM_SS_16LE, align 8
  store i64 %80, i64* %7, align 8
  br label %83

81:                                               ; preds = %74
  %82 = load i64, i64* @DSP_AUDIOFORM_MS_16LE, align 8
  store i64 %82, i64* %7, align 8
  br label %83

83:                                               ; preds = %81, %79
  br label %104

84:                                               ; preds = %59
  %85 = load %struct.audioformat*, %struct.audioformat** %6, align 8
  %86 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp eq i32 %87, 2
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  %90 = load i64, i64* @DSP_AUDIOFORM_SS_24LE, align 8
  store i64 %90, i64* %7, align 8
  br label %93

91:                                               ; preds = %84
  %92 = load i64, i64* @DSP_AUDIOFORM_MS_24LE, align 8
  store i64 %92, i64* %7, align 8
  br label %93

93:                                               ; preds = %91, %89
  br label %104

94:                                               ; preds = %59
  %95 = load %struct.audioformat*, %struct.audioformat** %6, align 8
  %96 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp eq i32 %97, 2
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = load i64, i64* @DSP_AUDIOFORM_SS_32LE, align 8
  store i64 %100, i64* %7, align 8
  br label %103

101:                                              ; preds = %94
  %102 = load i64, i64* @DSP_AUDIOFORM_MS_32LE, align 8
  store i64 %102, i64* %7, align 8
  br label %103

103:                                              ; preds = %101, %99
  br label %104

104:                                              ; preds = %103, %93, %83, %72
  br label %105

105:                                              ; preds = %104, %57
  br label %106

106:                                              ; preds = %105, %41
  br label %107

107:                                              ; preds = %106, %23
  %108 = load i64, i64* %5, align 8
  %109 = load i64, i64* %7, align 8
  %110 = inttoptr i64 %109 to i8*
  %111 = call i32 @DE_ACT(i8* %110)
  %112 = load i64, i64* %7, align 8
  %113 = call i32 @cpu_to_le16(i64 %112)
  %114 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %115 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %114, i32 0, i32 0
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = load i64, i64* %5, align 8
  %120 = getelementptr inbounds i32, i32* %118, i64 %119
  store i32 %113, i32* %120, align 4
  ret void
}

declare dso_local i32 @DE_ACT(i8*) #1

declare dso_local i32 @cpu_to_le16(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
