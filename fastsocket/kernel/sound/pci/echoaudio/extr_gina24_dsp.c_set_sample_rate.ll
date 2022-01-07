; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_gina24_dsp.c_set_sample_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_gina24_dsp.c_set_sample_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { i64, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i32 }

@DIGITAL_MODE_ADAT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ECHO_CLOCK_INTERNAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [80 x i8] c"set_sample_rate: Cannot set sample rate - clock not set to CLK_CLOCKININTERNAL\0A\00", align 1
@GML_CLOCK_CLEAR_MASK = common dso_local global i32 0, align 4
@GML_SPDIF_RATE_CLEAR_MASK = common dso_local global i32 0, align 4
@GML_96KHZ = common dso_local global i32 0, align 4
@GML_88KHZ = common dso_local global i32 0, align 4
@GML_48KHZ = common dso_local global i32 0, align 4
@GML_SPDIF_SAMPLE_RATE1 = common dso_local global i32 0, align 4
@GML_44KHZ = common dso_local global i32 0, align 4
@GML_SPDIF_PRO_MODE = common dso_local global i32 0, align 4
@GML_SPDIF_SAMPLE_RATE0 = common dso_local global i32 0, align 4
@GML_32KHZ = common dso_local global i32 0, align 4
@GML_22KHZ = common dso_local global i32 0, align 4
@GML_16KHZ = common dso_local global i32 0, align 4
@GML_11KHZ = common dso_local global i32 0, align 4
@GML_8KHZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"set_sample_rate: %d invalid!\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"set_sample_rate: %d clock %d\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.echoaudio*, i32)* @set_sample_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_sample_rate(%struct.echoaudio* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.echoaudio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.echoaudio* %0, %struct.echoaudio** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp sge i32 %8, 50000
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %12 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @DIGITAL_MODE_ADAT, align 8
  %15 = icmp eq i64 %13, %14
  br label %16

16:                                               ; preds = %10, %2
  %17 = phi i1 [ false, %2 ], [ %15, %10 ]
  %18 = zext i1 %17 to i32
  %19 = call i64 @snd_BUG_ON(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %116

24:                                               ; preds = %16
  %25 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %26 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ECHO_CLOCK_INTERNAL, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %24
  %31 = call i32 @DE_ACT(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* %5, align 4
  %33 = call i8* @cpu_to_le32(i32 %32)
  %34 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %35 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %34, i32 0, i32 3
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i8* %33, i8** %37, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %40 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  store i32 0, i32* %3, align 4
  br label %116

41:                                               ; preds = %24
  store i32 0, i32* %7, align 4
  %42 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %43 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %42, i32 0, i32 3
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @le32_to_cpu(i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* @GML_CLOCK_CLEAR_MASK, align 4
  %49 = load i32, i32* @GML_SPDIF_RATE_CLEAR_MASK, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* %6, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %5, align 4
  switch i32 %53, label %87 [
    i32 96000, label %54
    i32 88200, label %56
    i32 48000, label %58
    i32 44100, label %62
    i32 32000, label %73
    i32 22050, label %79
    i32 16000, label %81
    i32 11025, label %83
    i32 8000, label %85
  ]

54:                                               ; preds = %41
  %55 = load i32, i32* @GML_96KHZ, align 4
  store i32 %55, i32* %7, align 4
  br label %94

56:                                               ; preds = %41
  %57 = load i32, i32* @GML_88KHZ, align 4
  store i32 %57, i32* %7, align 4
  br label %94

58:                                               ; preds = %41
  %59 = load i32, i32* @GML_48KHZ, align 4
  %60 = load i32, i32* @GML_SPDIF_SAMPLE_RATE1, align 4
  %61 = or i32 %59, %60
  store i32 %61, i32* %7, align 4
  br label %94

62:                                               ; preds = %41
  %63 = load i32, i32* @GML_44KHZ, align 4
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @GML_SPDIF_PRO_MODE, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %62
  %69 = load i32, i32* @GML_SPDIF_SAMPLE_RATE0, align 4
  %70 = load i32, i32* %7, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %68, %62
  br label %94

73:                                               ; preds = %41
  %74 = load i32, i32* @GML_32KHZ, align 4
  %75 = load i32, i32* @GML_SPDIF_SAMPLE_RATE0, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @GML_SPDIF_SAMPLE_RATE1, align 4
  %78 = or i32 %76, %77
  store i32 %78, i32* %7, align 4
  br label %94

79:                                               ; preds = %41
  %80 = load i32, i32* @GML_22KHZ, align 4
  store i32 %80, i32* %7, align 4
  br label %94

81:                                               ; preds = %41
  %82 = load i32, i32* @GML_16KHZ, align 4
  store i32 %82, i32* %7, align 4
  br label %94

83:                                               ; preds = %41
  %84 = load i32, i32* @GML_11KHZ, align 4
  store i32 %84, i32* %7, align 4
  br label %94

85:                                               ; preds = %41
  %86 = load i32, i32* @GML_8KHZ, align 4
  store i32 %86, i32* %7, align 4
  br label %94

87:                                               ; preds = %41
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = inttoptr i64 %89 to i8*
  %91 = call i32 @DE_ACT(i8* %90)
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %3, align 4
  br label %116

94:                                               ; preds = %85, %83, %81, %79, %73, %72, %58, %56, %54
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* %6, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %5, align 4
  %99 = call i8* @cpu_to_le32(i32 %98)
  %100 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %101 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %100, i32 0, i32 3
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  store i8* %99, i8** %103, align 8
  %104 = load i32, i32* %5, align 4
  %105 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %106 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 8
  %107 = load i32, i32* %5, align 4
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = inttoptr i64 %109 to i8*
  %111 = call i32 @DE_ACT(i8* %110)
  %112 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* @FALSE, align 4
  %115 = call i32 @write_control_reg(%struct.echoaudio* %112, i32 %113, i32 %114)
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %94, %87, %30, %21
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @DE_ACT(i8*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @write_control_reg(%struct.echoaudio*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
