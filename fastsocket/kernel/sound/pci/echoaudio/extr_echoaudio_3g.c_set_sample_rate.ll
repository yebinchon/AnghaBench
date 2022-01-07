; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_echoaudio_3g.c_set_sample_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_echoaudio_3g.c_set_sample_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { i64, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i32 }

@ECHO_CLOCK_INTERNAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [80 x i8] c"set_sample_rate: Cannot set sample rate - clock not set to CLK_CLOCKININTERNAL\0A\00", align 1
@DIGITAL_MODE_ADAT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@E3G_CLOCK_CLEAR_MASK = common dso_local global i32 0, align 4
@E3G_96KHZ = common dso_local global i32 0, align 4
@E3G_88KHZ = common dso_local global i32 0, align 4
@E3G_48KHZ = common dso_local global i32 0, align 4
@E3G_44KHZ = common dso_local global i32 0, align 4
@E3G_32KHZ = common dso_local global i32 0, align 4
@E3G_CONTINUOUS_CLOCK = common dso_local global i32 0, align 4
@E3G_DOUBLE_SPEED_MODE = common dso_local global i32 0, align 4
@E3G_MAGIC_NUMBER = common dso_local global i32 0, align 4
@E3G_FREQ_REG_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"SetSampleRate: %d clock %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.echoaudio*, i32)* @set_sample_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_sample_rate(%struct.echoaudio* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.echoaudio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.echoaudio* %0, %struct.echoaudio** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %11 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @ECHO_CLOCK_INTERNAL, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %2
  %16 = call i32 @DE_ACT(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %5, align 4
  %18 = call i8* @cpu_to_le32(i32 %17)
  %19 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %20 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %19, i32 0, i32 3
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i8* %18, i8** %22, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %25 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %27 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %28 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @set_input_clock(%struct.echoaudio* %26, i64 %29)
  store i32 0, i32* %3, align 4
  br label %125

31:                                               ; preds = %2
  %32 = load i32, i32* %5, align 4
  %33 = icmp sge i32 %32, 50000
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %36 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @DIGITAL_MODE_ADAT, align 8
  %39 = icmp eq i64 %37, %38
  br label %40

40:                                               ; preds = %34, %31
  %41 = phi i1 [ false, %31 ], [ %39, %34 ]
  %42 = zext i1 %41 to i32
  %43 = call i64 @snd_BUG_ON(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %125

48:                                               ; preds = %40
  store i32 0, i32* %7, align 4
  %49 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %50 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %49, i32 0, i32 3
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @le32_to_cpu(i32 %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* @E3G_CLOCK_CLEAR_MASK, align 4
  %56 = load i32, i32* %6, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %5, align 4
  switch i32 %58, label %69 [
    i32 96000, label %59
    i32 88200, label %61
    i32 48000, label %63
    i32 44100, label %65
    i32 32000, label %67
  ]

59:                                               ; preds = %48
  %60 = load i32, i32* @E3G_96KHZ, align 4
  store i32 %60, i32* %7, align 4
  br label %78

61:                                               ; preds = %48
  %62 = load i32, i32* @E3G_88KHZ, align 4
  store i32 %62, i32* %7, align 4
  br label %78

63:                                               ; preds = %48
  %64 = load i32, i32* @E3G_48KHZ, align 4
  store i32 %64, i32* %7, align 4
  br label %78

65:                                               ; preds = %48
  %66 = load i32, i32* @E3G_44KHZ, align 4
  store i32 %66, i32* %7, align 4
  br label %78

67:                                               ; preds = %48
  %68 = load i32, i32* @E3G_32KHZ, align 4
  store i32 %68, i32* %7, align 4
  br label %78

69:                                               ; preds = %48
  %70 = load i32, i32* @E3G_CONTINUOUS_CLOCK, align 4
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp sgt i32 %71, 50000
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = load i32, i32* @E3G_DOUBLE_SPEED_MODE, align 4
  %75 = load i32, i32* %7, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %73, %69
  br label %78

78:                                               ; preds = %77, %67, %65, %63, %61, %59
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %6, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %6, align 4
  %82 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @set_spdif_bits(%struct.echoaudio* %82, i32 %83, i32 %84)
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %5, align 4
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp sgt i32 %87, 50000
  br i1 %88, label %89, label %92

89:                                               ; preds = %78
  %90 = load i32, i32* %8, align 4
  %91 = sdiv i32 %90, 2
  store i32 %91, i32* %8, align 4
  br label %92

92:                                               ; preds = %89, %78
  %93 = load i32, i32* %8, align 4
  %94 = icmp slt i32 %93, 32000
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  store i32 32000, i32* %8, align 4
  br label %96

96:                                               ; preds = %95, %92
  %97 = load i32, i32* @E3G_MAGIC_NUMBER, align 4
  %98 = load i32, i32* %8, align 4
  %99 = sdiv i32 %97, %98
  %100 = sub nsw i32 %99, 2
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* @E3G_FREQ_REG_MAX, align 4
  %103 = icmp sgt i32 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %96
  %105 = load i32, i32* @E3G_FREQ_REG_MAX, align 4
  store i32 %105, i32* %9, align 4
  br label %106

106:                                              ; preds = %104, %96
  %107 = load i32, i32* %5, align 4
  %108 = call i8* @cpu_to_le32(i32 %107)
  %109 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %110 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %109, i32 0, i32 3
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  store i8* %108, i8** %112, align 8
  %113 = load i32, i32* %5, align 4
  %114 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %115 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 8
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* %6, align 4
  %118 = sext i32 %117 to i64
  %119 = inttoptr i64 %118 to i8*
  %120 = call i32 @DE_ACT(i8* %119)
  %121 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* %9, align 4
  %124 = call i32 @write_control_reg(%struct.echoaudio* %121, i32 %122, i32 %123, i32 0)
  store i32 %124, i32* %3, align 4
  br label %125

125:                                              ; preds = %106, %45, %15
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i32 @DE_ACT(i8*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @set_input_clock(%struct.echoaudio*, i64) #1

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @set_spdif_bits(%struct.echoaudio*, i32, i32) #1

declare dso_local i32 @write_control_reg(%struct.echoaudio*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
