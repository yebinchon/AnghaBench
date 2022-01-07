; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctmixer.c_do_switch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctmixer.c_do_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ct_atc = type { i32 (%struct.ct_atc*, i32)*, i32 (%struct.ct_atc*, i32)*, i32 (%struct.ct_atc*, i32)*, i32 (%struct.ct_atc*, i32)*, i32 (%struct.ct_atc*, i32)*, i32 (%struct.ct_atc*, i32)*, i32 (%struct.ct_atc*, i32)*, %struct.ct_mixer* }
%struct.ct_mixer = type { i32 }

@SWH_CAPTURE_START = common dso_local global i32 0, align 4
@SWH_CAPTURE_END = common dso_local global i32 0, align 4
@MIXER_LINEIN_C_S = common dso_local global i32 0, align 4
@MIXER_MIC_C_S = common dso_local global i32 0, align 4
@MIXER_WAVEF_P_S = common dso_local global i32 0, align 4
@MIXER_WAVES_P_S = common dso_local global i32 0, align 4
@MIXER_WAVEC_P_S = common dso_local global i32 0, align 4
@MIXER_WAVER_P_S = common dso_local global i32 0, align 4
@MIXER_LINEIN_P_S = common dso_local global i32 0, align 4
@MIXER_SPDIFO_P_S = common dso_local global i32 0, align 4
@MIXER_SPDIFI_P_S = common dso_local global i32 0, align 4
@MIXER_DIGITAL_IO_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ct_atc*, i32, i32)* @do_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_switch(%struct.ct_atc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ct_atc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ct_mixer*, align 8
  store %struct.ct_atc* %0, %struct.ct_atc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %9 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %8, i32 0, i32 7
  %10 = load %struct.ct_mixer*, %struct.ct_mixer** %9, align 8
  store %struct.ct_mixer* %10, %struct.ct_mixer** %7, align 8
  %11 = load i32, i32* @SWH_CAPTURE_START, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ule i32 %11, %12
  br i1 %13, label %14, label %32

14:                                               ; preds = %3
  %15 = load i32, i32* @SWH_CAPTURE_END, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp uge i32 %15, %16
  br i1 %17, label %18, label %32

18:                                               ; preds = %14
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load %struct.ct_mixer*, %struct.ct_mixer** %7, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @get_amixer_index(i32 %23)
  %25 = call i32 @ct_mixer_recording_select(%struct.ct_mixer* %22, i32 %24)
  br label %31

26:                                               ; preds = %18
  %27 = load %struct.ct_mixer*, %struct.ct_mixer** %7, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @get_amixer_index(i32 %28)
  %30 = call i32 @ct_mixer_recording_unselect(%struct.ct_mixer* %27, i32 %29)
  br label %31

31:                                               ; preds = %26, %21
  br label %32

32:                                               ; preds = %31, %14, %3
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %32
  %36 = load i32, i32* @MIXER_LINEIN_C_S, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* @MIXER_MIC_C_S, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %39, %35
  %44 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @do_line_mic_switch(%struct.ct_atc* %44, i32 %45)
  br label %140

47:                                               ; preds = %39, %32
  %48 = load i32, i32* @MIXER_WAVEF_P_S, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %47
  %52 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %53 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %52, i32 0, i32 6
  %54 = load i32 (%struct.ct_atc*, i32)*, i32 (%struct.ct_atc*, i32)** %53, align 8
  %55 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 %54(%struct.ct_atc* %55, i32 %56)
  br label %139

58:                                               ; preds = %47
  %59 = load i32, i32* @MIXER_WAVES_P_S, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %58
  %63 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %64 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %63, i32 0, i32 5
  %65 = load i32 (%struct.ct_atc*, i32)*, i32 (%struct.ct_atc*, i32)** %64, align 8
  %66 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i32 %65(%struct.ct_atc* %66, i32 %67)
  br label %138

69:                                               ; preds = %58
  %70 = load i32, i32* @MIXER_WAVEC_P_S, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %69
  %74 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %75 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %74, i32 0, i32 4
  %76 = load i32 (%struct.ct_atc*, i32)*, i32 (%struct.ct_atc*, i32)** %75, align 8
  %77 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %78 = load i32, i32* %6, align 4
  %79 = call i32 %76(%struct.ct_atc* %77, i32 %78)
  br label %137

80:                                               ; preds = %69
  %81 = load i32, i32* @MIXER_WAVER_P_S, align 4
  %82 = load i32, i32* %5, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %80
  %85 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %86 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %85, i32 0, i32 3
  %87 = load i32 (%struct.ct_atc*, i32)*, i32 (%struct.ct_atc*, i32)** %86, align 8
  %88 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %89 = load i32, i32* %6, align 4
  %90 = call i32 %87(%struct.ct_atc* %88, i32 %89)
  br label %136

91:                                               ; preds = %80
  %92 = load i32, i32* @MIXER_LINEIN_P_S, align 4
  %93 = load i32, i32* %5, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %91
  %96 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %97 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %96, i32 0, i32 2
  %98 = load i32 (%struct.ct_atc*, i32)*, i32 (%struct.ct_atc*, i32)** %97, align 8
  %99 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %100 = load i32, i32* %6, align 4
  %101 = call i32 %98(%struct.ct_atc* %99, i32 %100)
  br label %135

102:                                              ; preds = %91
  %103 = load i32, i32* @MIXER_SPDIFO_P_S, align 4
  %104 = load i32, i32* %5, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %113

106:                                              ; preds = %102
  %107 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %108 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %107, i32 0, i32 1
  %109 = load i32 (%struct.ct_atc*, i32)*, i32 (%struct.ct_atc*, i32)** %108, align 8
  %110 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %111 = load i32, i32* %6, align 4
  %112 = call i32 %109(%struct.ct_atc* %110, i32 %111)
  br label %134

113:                                              ; preds = %102
  %114 = load i32, i32* @MIXER_SPDIFI_P_S, align 4
  %115 = load i32, i32* %5, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %124

117:                                              ; preds = %113
  %118 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %119 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %118, i32 0, i32 0
  %120 = load i32 (%struct.ct_atc*, i32)*, i32 (%struct.ct_atc*, i32)** %119, align 8
  %121 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %122 = load i32, i32* %6, align 4
  %123 = call i32 %120(%struct.ct_atc* %121, i32 %122)
  br label %133

124:                                              ; preds = %113
  %125 = load i32, i32* @MIXER_DIGITAL_IO_S, align 4
  %126 = load i32, i32* %5, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %124
  %129 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %130 = load i32, i32* %6, align 4
  %131 = call i32 @do_digit_io_switch(%struct.ct_atc* %129, i32 %130)
  br label %132

132:                                              ; preds = %128, %124
  br label %133

133:                                              ; preds = %132, %117
  br label %134

134:                                              ; preds = %133, %106
  br label %135

135:                                              ; preds = %134, %95
  br label %136

136:                                              ; preds = %135, %84
  br label %137

137:                                              ; preds = %136, %73
  br label %138

138:                                              ; preds = %137, %62
  br label %139

139:                                              ; preds = %138, %51
  br label %140

140:                                              ; preds = %139, %43
  ret void
}

declare dso_local i32 @ct_mixer_recording_select(%struct.ct_mixer*, i32) #1

declare dso_local i32 @get_amixer_index(i32) #1

declare dso_local i32 @ct_mixer_recording_unselect(%struct.ct_mixer*, i32) #1

declare dso_local i32 @do_line_mic_switch(%struct.ct_atc*, i32) #1

declare dso_local i32 @do_digit_io_switch(%struct.ct_atc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
