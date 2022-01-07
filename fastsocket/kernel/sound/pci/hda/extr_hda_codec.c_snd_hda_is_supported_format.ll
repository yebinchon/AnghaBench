; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_snd_hda_is_supported_format.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_snd_hda_is_supported_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.hda_codec = type { i32 }

@AC_PAR_PCM_RATE_BITS = common dso_local global i32 0, align 4
@rate_bits = common dso_local global %struct.TYPE_2__* null, align 8
@AC_SUPFMT_PCM = common dso_local global i32 0, align 4
@AC_SUPPCM_BITS_8 = common dso_local global i32 0, align 4
@AC_SUPPCM_BITS_16 = common dso_local global i32 0, align 4
@AC_SUPPCM_BITS_20 = common dso_local global i32 0, align 4
@AC_SUPPCM_BITS_24 = common dso_local global i32 0, align 4
@AC_SUPPCM_BITS_32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hda_is_supported_format(%struct.hda_codec* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %12 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @query_pcm_param(%struct.hda_codec* %12, i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %105

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = and i32 %19, 65280
  store i32 %20, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %43, %18
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @AC_PAR_PCM_RATE_BITS, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %46

25:                                               ; preds = %21
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rate_bits, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %25
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %8, align 4
  %37 = shl i32 1, %36
  %38 = and i32 %35, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %46

41:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %105

42:                                               ; preds = %25
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  br label %21

46:                                               ; preds = %40, %21
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @AC_PAR_PCM_RATE_BITS, align 4
  %49 = icmp sge i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 0, i32* %4, align 4
  br label %105

51:                                               ; preds = %46
  %52 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @query_stream_param(%struct.hda_codec* %52, i32 %53)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %51
  store i32 0, i32* %4, align 4
  br label %105

58:                                               ; preds = %51
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @AC_SUPFMT_PCM, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %103

63:                                               ; preds = %58
  %64 = load i32, i32* %7, align 4
  %65 = and i32 %64, 240
  switch i32 %65, label %101 [
    i32 0, label %66
    i32 16, label %73
    i32 32, label %80
    i32 48, label %87
    i32 64, label %94
  ]

66:                                               ; preds = %63
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @AC_SUPPCM_BITS_8, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %66
  store i32 0, i32* %4, align 4
  br label %105

72:                                               ; preds = %66
  br label %102

73:                                               ; preds = %63
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @AC_SUPPCM_BITS_16, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %73
  store i32 0, i32* %4, align 4
  br label %105

79:                                               ; preds = %73
  br label %102

80:                                               ; preds = %63
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @AC_SUPPCM_BITS_20, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %80
  store i32 0, i32* %4, align 4
  br label %105

86:                                               ; preds = %80
  br label %102

87:                                               ; preds = %63
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* @AC_SUPPCM_BITS_24, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %87
  store i32 0, i32* %4, align 4
  br label %105

93:                                               ; preds = %87
  br label %102

94:                                               ; preds = %63
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* @AC_SUPPCM_BITS_32, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %94
  store i32 0, i32* %4, align 4
  br label %105

100:                                              ; preds = %94
  br label %102

101:                                              ; preds = %63
  store i32 0, i32* %4, align 4
  br label %105

102:                                              ; preds = %100, %93, %86, %79, %72
  br label %104

103:                                              ; preds = %58
  br label %104

104:                                              ; preds = %103, %102
  store i32 1, i32* %4, align 4
  br label %105

105:                                              ; preds = %104, %101, %99, %92, %85, %78, %71, %57, %50, %41, %17
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i32 @query_pcm_param(%struct.hda_codec*, i32) #1

declare dso_local i32 @query_stream_param(%struct.hda_codec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
