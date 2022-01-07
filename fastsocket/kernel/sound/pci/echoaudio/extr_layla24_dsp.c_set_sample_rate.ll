; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_layla24_dsp.c_set_sample_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_layla24_dsp.c_set_sample_rate.c"
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
@LAYLA24_CONTINUOUS_CLOCK = common dso_local global i32 0, align 4
@GML_DOUBLE_SPEED_MODE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@LAYLA24_MAGIC_NUMBER = common dso_local global i32 0, align 4
@DSP_VC_SET_LAYLA24_FREQUENCY_REG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"set_sample_rate: %d clock %d\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.echoaudio*, i32)* @set_sample_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_sample_rate(%struct.echoaudio* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.echoaudio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.echoaudio* %0, %struct.echoaudio** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp sge i32 %9, 50000
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %13 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @DIGITAL_MODE_ADAT, align 8
  %16 = icmp eq i64 %14, %15
  br label %17

17:                                               ; preds = %11, %2
  %18 = phi i1 [ false, %2 ], [ %16, %11 ]
  %19 = zext i1 %18 to i32
  %20 = call i64 @snd_BUG_ON(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %148

25:                                               ; preds = %17
  %26 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %27 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ECHO_CLOCK_INTERNAL, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %25
  %32 = call i32 @DE_ACT(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* %5, align 4
  %34 = call i8* @cpu_to_le32(i32 %33)
  %35 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %36 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %35, i32 0, i32 3
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i8* %34, i8** %38, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %41 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  store i32 0, i32* %3, align 4
  br label %148

42:                                               ; preds = %25
  %43 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %44 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %43, i32 0, i32 3
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @le32_to_cpu(i32 %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* @GML_CLOCK_CLEAR_MASK, align 4
  %50 = load i32, i32* @GML_SPDIF_RATE_CLEAR_MASK, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* %6, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %54 = load i32, i32* %5, align 4
  switch i32 %54, label %88 [
    i32 96000, label %55
    i32 88200, label %57
    i32 48000, label %59
    i32 44100, label %63
    i32 32000, label %74
    i32 22050, label %80
    i32 16000, label %82
    i32 11025, label %84
    i32 8000, label %86
  ]

55:                                               ; preds = %42
  %56 = load i32, i32* @GML_96KHZ, align 4
  store i32 %56, i32* %7, align 4
  br label %126

57:                                               ; preds = %42
  %58 = load i32, i32* @GML_88KHZ, align 4
  store i32 %58, i32* %7, align 4
  br label %126

59:                                               ; preds = %42
  %60 = load i32, i32* @GML_48KHZ, align 4
  %61 = load i32, i32* @GML_SPDIF_SAMPLE_RATE1, align 4
  %62 = or i32 %60, %61
  store i32 %62, i32* %7, align 4
  br label %126

63:                                               ; preds = %42
  %64 = load i32, i32* @GML_44KHZ, align 4
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @GML_SPDIF_PRO_MODE, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load i32, i32* @GML_SPDIF_SAMPLE_RATE0, align 4
  %71 = load i32, i32* %7, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %7, align 4
  br label %73

73:                                               ; preds = %69, %63
  br label %126

74:                                               ; preds = %42
  %75 = load i32, i32* @GML_32KHZ, align 4
  %76 = load i32, i32* @GML_SPDIF_SAMPLE_RATE0, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @GML_SPDIF_SAMPLE_RATE1, align 4
  %79 = or i32 %77, %78
  store i32 %79, i32* %7, align 4
  br label %126

80:                                               ; preds = %42
  %81 = load i32, i32* @GML_22KHZ, align 4
  store i32 %81, i32* %7, align 4
  br label %126

82:                                               ; preds = %42
  %83 = load i32, i32* @GML_16KHZ, align 4
  store i32 %83, i32* %7, align 4
  br label %126

84:                                               ; preds = %42
  %85 = load i32, i32* @GML_11KHZ, align 4
  store i32 %85, i32* %7, align 4
  br label %126

86:                                               ; preds = %42
  %87 = load i32, i32* @GML_8KHZ, align 4
  store i32 %87, i32* %7, align 4
  br label %126

88:                                               ; preds = %42
  %89 = load i32, i32* @LAYLA24_CONTINUOUS_CLOCK, align 4
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %5, align 4
  %91 = icmp sgt i32 %90, 50000
  br i1 %91, label %92, label %98

92:                                               ; preds = %88
  %93 = load i32, i32* %5, align 4
  %94 = ashr i32 %93, 1
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* @GML_DOUBLE_SPEED_MODE, align 4
  %96 = load i32, i32* %6, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %6, align 4
  br label %100

98:                                               ; preds = %88
  %99 = load i32, i32* %5, align 4
  store i32 %99, i32* %8, align 4
  br label %100

100:                                              ; preds = %98, %92
  %101 = load i32, i32* %8, align 4
  %102 = icmp slt i32 %101, 25000
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  store i32 25000, i32* %8, align 4
  br label %104

104:                                              ; preds = %103, %100
  %105 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %106 = call i32 @wait_handshake(%struct.echoaudio* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %104
  %109 = load i32, i32* @EIO, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %3, align 4
  br label %148

111:                                              ; preds = %104
  %112 = load i32, i32* @LAYLA24_MAGIC_NUMBER, align 4
  %113 = load i32, i32* %8, align 4
  %114 = sdiv i32 %112, %113
  %115 = sub nsw i32 %114, 2
  %116 = call i8* @cpu_to_le32(i32 %115)
  %117 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %118 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %117, i32 0, i32 3
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  store i8* %116, i8** %120, align 8
  %121 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %122 = call i32 @clear_handshake(%struct.echoaudio* %121)
  %123 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %124 = load i32, i32* @DSP_VC_SET_LAYLA24_FREQUENCY_REG, align 4
  %125 = call i32 @send_vector(%struct.echoaudio* %123, i32 %124)
  br label %126

126:                                              ; preds = %111, %86, %84, %82, %80, %74, %73, %59, %57, %55
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* %6, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %6, align 4
  %130 = load i32, i32* %5, align 4
  %131 = call i8* @cpu_to_le32(i32 %130)
  %132 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %133 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %132, i32 0, i32 3
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  store i8* %131, i8** %135, align 8
  %136 = load i32, i32* %5, align 4
  %137 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %138 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %137, i32 0, i32 2
  store i32 %136, i32* %138, align 8
  %139 = load i32, i32* %5, align 4
  %140 = load i32, i32* %6, align 4
  %141 = sext i32 %140 to i64
  %142 = inttoptr i64 %141 to i8*
  %143 = call i32 @DE_ACT(i8* %142)
  %144 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %145 = load i32, i32* %6, align 4
  %146 = load i32, i32* @FALSE, align 4
  %147 = call i32 @write_control_reg(%struct.echoaudio* %144, i32 %145, i32 %146)
  store i32 %147, i32* %3, align 4
  br label %148

148:                                              ; preds = %126, %108, %31, %22
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @DE_ACT(i8*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @wait_handshake(%struct.echoaudio*) #1

declare dso_local i32 @clear_handshake(%struct.echoaudio*) #1

declare dso_local i32 @send_vector(%struct.echoaudio*, i32) #1

declare dso_local i32 @write_control_reg(%struct.echoaudio*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
