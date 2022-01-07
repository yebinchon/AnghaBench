; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_mona_dsp.c_set_sample_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_mona_dsp.c_set_sample_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firmware = type { i32 }
%struct.echoaudio = type { i64, i32, i64, i64, %struct.TYPE_2__*, %struct.firmware*, i32 }
%struct.TYPE_2__ = type { i8*, i32 }

@ECHO_CLOCK_INTERNAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [80 x i8] c"set_sample_rate: Cannot set sample rate - clock not set to CLK_CLOCKININTERNAL\0A\00", align 1
@DIGITAL_MODE_ADAT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@DEVICE_ID_56361 = common dso_local global i64 0, align 8
@card_fw = common dso_local global %struct.firmware* null, align 8
@FW_MONA_361_1_ASIC96 = common dso_local global i64 0, align 8
@FW_MONA_301_1_ASIC96 = common dso_local global i64 0, align 8
@FW_MONA_361_1_ASIC48 = common dso_local global i64 0, align 8
@FW_MONA_301_1_ASIC48 = common dso_local global i64 0, align 8
@DSP_FNC_LOAD_MONA_PCI_CARD_ASIC = common dso_local global i32 0, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.echoaudio*, i32)* @set_sample_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_sample_rate(%struct.echoaudio* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.echoaudio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.firmware*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store %struct.echoaudio* %0, %struct.echoaudio** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %12 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ECHO_CLOCK_INTERNAL, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %2
  %17 = call i32 @DE_ACT(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %5, align 4
  %19 = call i8* @cpu_to_le32(i32 %18)
  %20 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %21 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %20, i32 0, i32 4
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i8* %19, i8** %23, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %26 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  store i32 0, i32* %3, align 4
  br label %170

27:                                               ; preds = %2
  %28 = load i32, i32* %5, align 4
  %29 = icmp sge i32 %28, 88200
  br i1 %29, label %30, label %54

30:                                               ; preds = %27
  %31 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %32 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @DIGITAL_MODE_ADAT, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %170

39:                                               ; preds = %30
  %40 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %41 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @DEVICE_ID_56361, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load %struct.firmware*, %struct.firmware** @card_fw, align 8
  %47 = load i64, i64* @FW_MONA_361_1_ASIC96, align 8
  %48 = getelementptr inbounds %struct.firmware, %struct.firmware* %46, i64 %47
  store %struct.firmware* %48, %struct.firmware** %8, align 8
  br label %53

49:                                               ; preds = %39
  %50 = load %struct.firmware*, %struct.firmware** @card_fw, align 8
  %51 = load i64, i64* @FW_MONA_301_1_ASIC96, align 8
  %52 = getelementptr inbounds %struct.firmware, %struct.firmware* %50, i64 %51
  store %struct.firmware* %52, %struct.firmware** %8, align 8
  br label %53

53:                                               ; preds = %49, %45
  br label %69

54:                                               ; preds = %27
  %55 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %56 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @DEVICE_ID_56361, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load %struct.firmware*, %struct.firmware** @card_fw, align 8
  %62 = load i64, i64* @FW_MONA_361_1_ASIC48, align 8
  %63 = getelementptr inbounds %struct.firmware, %struct.firmware* %61, i64 %62
  store %struct.firmware* %63, %struct.firmware** %8, align 8
  br label %68

64:                                               ; preds = %54
  %65 = load %struct.firmware*, %struct.firmware** @card_fw, align 8
  %66 = load i64, i64* @FW_MONA_301_1_ASIC48, align 8
  %67 = getelementptr inbounds %struct.firmware, %struct.firmware* %65, i64 %66
  store %struct.firmware* %67, %struct.firmware** %8, align 8
  br label %68

68:                                               ; preds = %64, %60
  br label %69

69:                                               ; preds = %68, %53
  store i8 0, i8* %9, align 1
  %70 = load %struct.firmware*, %struct.firmware** %8, align 8
  %71 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %72 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %71, i32 0, i32 5
  %73 = load %struct.firmware*, %struct.firmware** %72, align 8
  %74 = icmp ne %struct.firmware* %70, %73
  br i1 %74, label %75, label %94

75:                                               ; preds = %69
  %76 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %77 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %76, i32 0, i32 6
  %78 = call i32 @spin_unlock_irq(i32* %77)
  %79 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %80 = load i32, i32* @DSP_FNC_LOAD_MONA_PCI_CARD_ASIC, align 4
  %81 = load %struct.firmware*, %struct.firmware** %8, align 8
  %82 = call i32 @load_asic_generic(%struct.echoaudio* %79, i32 %80, %struct.firmware* %81)
  store i32 %82, i32* %10, align 4
  %83 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %84 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %83, i32 0, i32 6
  %85 = call i32 @spin_lock_irq(i32* %84)
  %86 = load i32, i32* %10, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %75
  %89 = load i32, i32* %10, align 4
  store i32 %89, i32* %3, align 4
  br label %170

90:                                               ; preds = %75
  %91 = load %struct.firmware*, %struct.firmware** %8, align 8
  %92 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %93 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %92, i32 0, i32 5
  store %struct.firmware* %91, %struct.firmware** %93, align 8
  store i8 1, i8* %9, align 1
  br label %94

94:                                               ; preds = %90, %69
  store i32 0, i32* %7, align 4
  %95 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %96 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %95, i32 0, i32 4
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @le32_to_cpu(i32 %99)
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* @GML_CLOCK_CLEAR_MASK, align 4
  %102 = load i32, i32* %6, align 4
  %103 = and i32 %102, %101
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* @GML_SPDIF_RATE_CLEAR_MASK, align 4
  %105 = load i32, i32* %6, align 4
  %106 = and i32 %105, %104
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* %5, align 4
  switch i32 %107, label %141 [
    i32 96000, label %108
    i32 88200, label %110
    i32 48000, label %112
    i32 44100, label %116
    i32 32000, label %127
    i32 22050, label %133
    i32 16000, label %135
    i32 11025, label %137
    i32 8000, label %139
  ]

108:                                              ; preds = %94
  %109 = load i32, i32* @GML_96KHZ, align 4
  store i32 %109, i32* %7, align 4
  br label %148

110:                                              ; preds = %94
  %111 = load i32, i32* @GML_88KHZ, align 4
  store i32 %111, i32* %7, align 4
  br label %148

112:                                              ; preds = %94
  %113 = load i32, i32* @GML_48KHZ, align 4
  %114 = load i32, i32* @GML_SPDIF_SAMPLE_RATE1, align 4
  %115 = or i32 %113, %114
  store i32 %115, i32* %7, align 4
  br label %148

116:                                              ; preds = %94
  %117 = load i32, i32* @GML_44KHZ, align 4
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* @GML_SPDIF_PRO_MODE, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %116
  %123 = load i32, i32* @GML_SPDIF_SAMPLE_RATE0, align 4
  %124 = load i32, i32* %7, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %7, align 4
  br label %126

126:                                              ; preds = %122, %116
  br label %148

127:                                              ; preds = %94
  %128 = load i32, i32* @GML_32KHZ, align 4
  %129 = load i32, i32* @GML_SPDIF_SAMPLE_RATE0, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* @GML_SPDIF_SAMPLE_RATE1, align 4
  %132 = or i32 %130, %131
  store i32 %132, i32* %7, align 4
  br label %148

133:                                              ; preds = %94
  %134 = load i32, i32* @GML_22KHZ, align 4
  store i32 %134, i32* %7, align 4
  br label %148

135:                                              ; preds = %94
  %136 = load i32, i32* @GML_16KHZ, align 4
  store i32 %136, i32* %7, align 4
  br label %148

137:                                              ; preds = %94
  %138 = load i32, i32* @GML_11KHZ, align 4
  store i32 %138, i32* %7, align 4
  br label %148

139:                                              ; preds = %94
  %140 = load i32, i32* @GML_8KHZ, align 4
  store i32 %140, i32* %7, align 4
  br label %148

141:                                              ; preds = %94
  %142 = load i32, i32* %5, align 4
  %143 = sext i32 %142 to i64
  %144 = inttoptr i64 %143 to i8*
  %145 = call i32 @DE_ACT(i8* %144)
  %146 = load i32, i32* @EINVAL, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %3, align 4
  br label %170

148:                                              ; preds = %139, %137, %135, %133, %127, %126, %112, %110, %108
  %149 = load i32, i32* %7, align 4
  %150 = load i32, i32* %6, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %6, align 4
  %152 = load i32, i32* %5, align 4
  %153 = call i8* @cpu_to_le32(i32 %152)
  %154 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %155 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %154, i32 0, i32 4
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 0
  store i8* %153, i8** %157, align 8
  %158 = load i32, i32* %5, align 4
  %159 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %160 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %159, i32 0, i32 1
  store i32 %158, i32* %160, align 8
  %161 = load i32, i32* %5, align 4
  %162 = load i32, i32* %7, align 4
  %163 = sext i32 %162 to i64
  %164 = inttoptr i64 %163 to i8*
  %165 = call i32 @DE_ACT(i8* %164)
  %166 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %167 = load i32, i32* %6, align 4
  %168 = load i8, i8* %9, align 1
  %169 = call i32 @write_control_reg(%struct.echoaudio* %166, i32 %167, i8 signext %168)
  store i32 %169, i32* %3, align 4
  br label %170

170:                                              ; preds = %148, %141, %88, %36, %16
  %171 = load i32, i32* %3, align 4
  ret i32 %171
}

declare dso_local i32 @DE_ACT(i8*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @load_asic_generic(%struct.echoaudio*, i32, %struct.firmware*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @write_control_reg(%struct.echoaudio*, i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
