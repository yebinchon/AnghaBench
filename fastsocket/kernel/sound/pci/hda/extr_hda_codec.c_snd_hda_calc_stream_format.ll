; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_snd_hda_calc_stream_format.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_snd_hda_calc_stream_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@rate_bits = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"invalid rate %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"invalid channels %d\0A\00", align 1
@AC_FMT_BITS_8 = common dso_local global i32 0, align 4
@AC_FMT_BITS_16 = common dso_local global i32 0, align 4
@SNDRV_PCM_FORMAT_FLOAT_LE = common dso_local global i32 0, align 4
@AC_FMT_BITS_32 = common dso_local global i32 0, align 4
@AC_FMT_BITS_24 = common dso_local global i32 0, align 4
@AC_FMT_BITS_20 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"invalid format width %d\0A\00", align 1
@AC_DIG1_NONAUDIO = common dso_local global i16 0, align 2
@AC_FMT_TYPE_NON_PCM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hda_calc_stream_format(i32 %0, i32 %1, i32 %2, i32 %3, i16 zeroext %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i16 %4, i16* %11, align 2
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %14

14:                                               ; preds = %39, %5
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rate_bits, align 8
  %16 = load i32, i32* %12, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %42

22:                                               ; preds = %14
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rate_bits, align 8
  %24 = load i32, i32* %12, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %22
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rate_bits, align 8
  %33 = load i32, i32* %12, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %13, align 4
  br label %42

38:                                               ; preds = %22
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %12, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %12, align 4
  br label %14

42:                                               ; preds = %31, %14
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rate_bits, align 8
  %44 = load i32, i32* %12, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %42
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @snd_printdd(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %51)
  store i32 0, i32* %6, align 4
  br label %118

53:                                               ; preds = %42
  %54 = load i32, i32* %8, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %8, align 4
  %58 = icmp ugt i32 %57, 8
  br i1 %58, label %59, label %62

59:                                               ; preds = %56, %53
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @snd_printdd(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  store i32 0, i32* %6, align 4
  br label %118

62:                                               ; preds = %56
  %63 = load i32, i32* %8, align 4
  %64 = sub i32 %63, 1
  %65 = load i32, i32* %13, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @snd_pcm_format_width(i32 %67)
  switch i32 %68, label %101 [
    i32 8, label %69
    i32 16, label %73
    i32 20, label %77
    i32 24, label %77
    i32 32, label %77
  ]

69:                                               ; preds = %62
  %70 = load i32, i32* @AC_FMT_BITS_8, align 4
  %71 = load i32, i32* %13, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %13, align 4
  br label %105

73:                                               ; preds = %62
  %74 = load i32, i32* @AC_FMT_BITS_16, align 4
  %75 = load i32, i32* %13, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %13, align 4
  br label %105

77:                                               ; preds = %62, %62, %62
  %78 = load i32, i32* %10, align 4
  %79 = icmp uge i32 %78, 32
  br i1 %79, label %84, label %80

80:                                               ; preds = %77
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @SNDRV_PCM_FORMAT_FLOAT_LE, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %80, %77
  %85 = load i32, i32* @AC_FMT_BITS_32, align 4
  %86 = load i32, i32* %13, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %13, align 4
  br label %100

88:                                               ; preds = %80
  %89 = load i32, i32* %10, align 4
  %90 = icmp uge i32 %89, 24
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load i32, i32* @AC_FMT_BITS_24, align 4
  %93 = load i32, i32* %13, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %13, align 4
  br label %99

95:                                               ; preds = %88
  %96 = load i32, i32* @AC_FMT_BITS_20, align 4
  %97 = load i32, i32* %13, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %13, align 4
  br label %99

99:                                               ; preds = %95, %91
  br label %100

100:                                              ; preds = %99, %84
  br label %105

101:                                              ; preds = %62
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @snd_pcm_format_width(i32 %102)
  %104 = call i32 @snd_printdd(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %103)
  store i32 0, i32* %6, align 4
  br label %118

105:                                              ; preds = %100, %73, %69
  %106 = load i16, i16* %11, align 2
  %107 = zext i16 %106 to i32
  %108 = load i16, i16* @AC_DIG1_NONAUDIO, align 2
  %109 = zext i16 %108 to i32
  %110 = and i32 %107, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %105
  %113 = load i32, i32* @AC_FMT_TYPE_NON_PCM, align 4
  %114 = load i32, i32* %13, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %13, align 4
  br label %116

116:                                              ; preds = %112, %105
  %117 = load i32, i32* %13, align 4
  store i32 %117, i32* %6, align 4
  br label %118

118:                                              ; preds = %116, %101, %59, %50
  %119 = load i32, i32* %6, align 4
  ret i32 %119
}

declare dso_local i32 @snd_printdd(i8*, i32) #1

declare dso_local i32 @snd_pcm_format_width(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
