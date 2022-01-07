; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctmixer.c_ct_mixer_kcontrols_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctmixer.c_ct_mixer_kcontrols_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_8__ = type { i64, i32 }
%struct.ct_mixer = type { %struct.ct_atc* }
%struct.ct_atc = type { i32 (%struct.ct_atc*, i32)*, i32 (%struct.ct_atc*, i32)*, i32 (%struct.ct_atc*, i32)*, i32 (%struct.ct_atc*, i32)*, i32 (%struct.ct_atc*, i32)*, i32 (%struct.ct_atc*, i32)*, i32 (%struct.ct_atc*, i32)*, i64 (%struct.ct_atc*)* }

@VOL_MIXER_START = common dso_local global i32 0, align 4
@VOL_MIXER_END = common dso_local global i32 0, align 4
@ct_kcontrol_init_table = common dso_local global %struct.TYPE_9__* null, align 8
@vol_ctl = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@MIXER_DIGITAL_IO_S = common dso_local global i64 0, align 8
@SWH_MIXER_START = common dso_local global i32 0, align 4
@SWH_MIXER_END = common dso_local global i32 0, align 4
@swh_ctl = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@iec958_mask_ctl = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@iec958_default_ctl = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@iec958_ctl = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@MIXER_WAVEF_P_S = common dso_local global i32 0, align 4
@MIXER_WAVES_P_S = common dso_local global i32 0, align 4
@MIXER_WAVEC_P_S = common dso_local global i32 0, align 4
@MIXER_WAVER_P_S = common dso_local global i32 0, align 4
@MIXER_SPDIFO_P_S = common dso_local global i32 0, align 4
@MIXER_LINEIN_P_S = common dso_local global i32 0, align 4
@MIXER_SPDIFI_P_S = common dso_local global i32 0, align 4
@MIXER_PCM_C_S = common dso_local global i32 0, align 4
@MIXER_LINEIN_C_S = common dso_local global i32 0, align 4
@MIXER_SPDIFI_C_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ct_mixer*)* @ct_mixer_kcontrols_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ct_mixer_kcontrols_create(%struct.ct_mixer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ct_mixer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ct_atc*, align 8
  %6 = alloca i32, align 4
  store %struct.ct_mixer* %0, %struct.ct_mixer** %3, align 8
  %7 = load %struct.ct_mixer*, %struct.ct_mixer** %3, align 8
  %8 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %7, i32 0, i32 0
  %9 = load %struct.ct_atc*, %struct.ct_atc** %8, align 8
  store %struct.ct_atc* %9, %struct.ct_atc** %5, align 8
  %10 = load i32, i32* @VOL_MIXER_START, align 4
  store i32 %10, i32* %4, align 4
  br label %11

11:                                               ; preds = %40, %1
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @VOL_MIXER_END, align 4
  %14 = icmp ule i32 %12, %13
  br i1 %14, label %15, label %43

15:                                               ; preds = %11
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ct_kcontrol_init_table, align 8
  %17 = load i32, i32* %4, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %15
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ct_kcontrol_init_table, align 8
  %25 = load i32, i32* %4, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vol_ctl, i32 0, i32 1), align 8
  %30 = load i32, i32* %4, align 4
  %31 = zext i32 %30 to i64
  store i64 %31, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vol_ctl, i32 0, i32 0), align 8
  %32 = load %struct.ct_mixer*, %struct.ct_mixer** %3, align 8
  %33 = call i32 @ct_mixer_kcontrol_new(%struct.ct_mixer* %32, %struct.TYPE_8__* @vol_ctl)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %23
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %2, align 4
  br label %173

38:                                               ; preds = %23
  br label %39

39:                                               ; preds = %38, %15
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %4, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %11

43:                                               ; preds = %11
  %44 = load %struct.ct_atc*, %struct.ct_atc** %5, align 8
  %45 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %44, i32 0, i32 7
  %46 = load i64 (%struct.ct_atc*)*, i64 (%struct.ct_atc*)** %45, align 8
  %47 = load %struct.ct_atc*, %struct.ct_atc** %5, align 8
  %48 = call i64 %46(%struct.ct_atc* %47)
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ct_kcontrol_init_table, align 8
  %50 = load i64, i64* @MIXER_DIGITAL_IO_S, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  store i64 %48, i64* %52, align 8
  %53 = load i32, i32* @SWH_MIXER_START, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %83, %43
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @SWH_MIXER_END, align 4
  %57 = icmp ule i32 %55, %56
  br i1 %57, label %58, label %86

58:                                               ; preds = %54
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ct_kcontrol_init_table, align 8
  %60 = load i32, i32* %4, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %82

66:                                               ; preds = %58
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ct_kcontrol_init_table, align 8
  %68 = load i32, i32* %4, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @swh_ctl, i32 0, i32 1), align 8
  %73 = load i32, i32* %4, align 4
  %74 = zext i32 %73 to i64
  store i64 %74, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @swh_ctl, i32 0, i32 0), align 8
  %75 = load %struct.ct_mixer*, %struct.ct_mixer** %3, align 8
  %76 = call i32 @ct_mixer_kcontrol_new(%struct.ct_mixer* %75, %struct.TYPE_8__* @swh_ctl)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %66
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %2, align 4
  br label %173

81:                                               ; preds = %66
  br label %82

82:                                               ; preds = %81, %58
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %4, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %4, align 4
  br label %54

86:                                               ; preds = %54
  %87 = load %struct.ct_mixer*, %struct.ct_mixer** %3, align 8
  %88 = call i32 @ct_mixer_kcontrol_new(%struct.ct_mixer* %87, %struct.TYPE_8__* @iec958_mask_ctl)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %2, align 4
  br label %173

93:                                               ; preds = %86
  %94 = load %struct.ct_mixer*, %struct.ct_mixer** %3, align 8
  %95 = call i32 @ct_mixer_kcontrol_new(%struct.ct_mixer* %94, %struct.TYPE_8__* @iec958_default_ctl)
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %6, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %93
  %99 = load i32, i32* %6, align 4
  store i32 %99, i32* %2, align 4
  br label %173

100:                                              ; preds = %93
  %101 = load %struct.ct_mixer*, %struct.ct_mixer** %3, align 8
  %102 = call i32 @ct_mixer_kcontrol_new(%struct.ct_mixer* %101, %struct.TYPE_8__* @iec958_ctl)
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %6, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %100
  %106 = load i32, i32* %6, align 4
  store i32 %106, i32* %2, align 4
  br label %173

107:                                              ; preds = %100
  %108 = load %struct.ct_atc*, %struct.ct_atc** %5, align 8
  %109 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %108, i32 0, i32 6
  %110 = load i32 (%struct.ct_atc*, i32)*, i32 (%struct.ct_atc*, i32)** %109, align 8
  %111 = load %struct.ct_atc*, %struct.ct_atc** %5, align 8
  %112 = call i32 %110(%struct.ct_atc* %111, i32 1)
  %113 = load %struct.ct_mixer*, %struct.ct_mixer** %3, align 8
  %114 = load i32, i32* @MIXER_WAVEF_P_S, align 4
  %115 = call i32 @set_switch_state(%struct.ct_mixer* %113, i32 %114, i32 1)
  %116 = load %struct.ct_atc*, %struct.ct_atc** %5, align 8
  %117 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %116, i32 0, i32 5
  %118 = load i32 (%struct.ct_atc*, i32)*, i32 (%struct.ct_atc*, i32)** %117, align 8
  %119 = load %struct.ct_atc*, %struct.ct_atc** %5, align 8
  %120 = call i32 %118(%struct.ct_atc* %119, i32 0)
  %121 = load %struct.ct_mixer*, %struct.ct_mixer** %3, align 8
  %122 = load i32, i32* @MIXER_WAVES_P_S, align 4
  %123 = call i32 @set_switch_state(%struct.ct_mixer* %121, i32 %122, i32 0)
  %124 = load %struct.ct_atc*, %struct.ct_atc** %5, align 8
  %125 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %124, i32 0, i32 4
  %126 = load i32 (%struct.ct_atc*, i32)*, i32 (%struct.ct_atc*, i32)** %125, align 8
  %127 = load %struct.ct_atc*, %struct.ct_atc** %5, align 8
  %128 = call i32 %126(%struct.ct_atc* %127, i32 0)
  %129 = load %struct.ct_mixer*, %struct.ct_mixer** %3, align 8
  %130 = load i32, i32* @MIXER_WAVEC_P_S, align 4
  %131 = call i32 @set_switch_state(%struct.ct_mixer* %129, i32 %130, i32 0)
  %132 = load %struct.ct_atc*, %struct.ct_atc** %5, align 8
  %133 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %132, i32 0, i32 3
  %134 = load i32 (%struct.ct_atc*, i32)*, i32 (%struct.ct_atc*, i32)** %133, align 8
  %135 = load %struct.ct_atc*, %struct.ct_atc** %5, align 8
  %136 = call i32 %134(%struct.ct_atc* %135, i32 0)
  %137 = load %struct.ct_mixer*, %struct.ct_mixer** %3, align 8
  %138 = load i32, i32* @MIXER_WAVER_P_S, align 4
  %139 = call i32 @set_switch_state(%struct.ct_mixer* %137, i32 %138, i32 0)
  %140 = load %struct.ct_atc*, %struct.ct_atc** %5, align 8
  %141 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %140, i32 0, i32 2
  %142 = load i32 (%struct.ct_atc*, i32)*, i32 (%struct.ct_atc*, i32)** %141, align 8
  %143 = load %struct.ct_atc*, %struct.ct_atc** %5, align 8
  %144 = call i32 %142(%struct.ct_atc* %143, i32 0)
  %145 = load %struct.ct_mixer*, %struct.ct_mixer** %3, align 8
  %146 = load i32, i32* @MIXER_SPDIFO_P_S, align 4
  %147 = call i32 @set_switch_state(%struct.ct_mixer* %145, i32 %146, i32 0)
  %148 = load %struct.ct_atc*, %struct.ct_atc** %5, align 8
  %149 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %148, i32 0, i32 1
  %150 = load i32 (%struct.ct_atc*, i32)*, i32 (%struct.ct_atc*, i32)** %149, align 8
  %151 = load %struct.ct_atc*, %struct.ct_atc** %5, align 8
  %152 = call i32 %150(%struct.ct_atc* %151, i32 0)
  %153 = load %struct.ct_mixer*, %struct.ct_mixer** %3, align 8
  %154 = load i32, i32* @MIXER_LINEIN_P_S, align 4
  %155 = call i32 @set_switch_state(%struct.ct_mixer* %153, i32 %154, i32 0)
  %156 = load %struct.ct_atc*, %struct.ct_atc** %5, align 8
  %157 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %156, i32 0, i32 0
  %158 = load i32 (%struct.ct_atc*, i32)*, i32 (%struct.ct_atc*, i32)** %157, align 8
  %159 = load %struct.ct_atc*, %struct.ct_atc** %5, align 8
  %160 = call i32 %158(%struct.ct_atc* %159, i32 0)
  %161 = load %struct.ct_mixer*, %struct.ct_mixer** %3, align 8
  %162 = load i32, i32* @MIXER_SPDIFI_P_S, align 4
  %163 = call i32 @set_switch_state(%struct.ct_mixer* %161, i32 %162, i32 0)
  %164 = load %struct.ct_mixer*, %struct.ct_mixer** %3, align 8
  %165 = load i32, i32* @MIXER_PCM_C_S, align 4
  %166 = call i32 @set_switch_state(%struct.ct_mixer* %164, i32 %165, i32 1)
  %167 = load %struct.ct_mixer*, %struct.ct_mixer** %3, align 8
  %168 = load i32, i32* @MIXER_LINEIN_C_S, align 4
  %169 = call i32 @set_switch_state(%struct.ct_mixer* %167, i32 %168, i32 1)
  %170 = load %struct.ct_mixer*, %struct.ct_mixer** %3, align 8
  %171 = load i32, i32* @MIXER_SPDIFI_C_S, align 4
  %172 = call i32 @set_switch_state(%struct.ct_mixer* %170, i32 %171, i32 1)
  store i32 0, i32* %2, align 4
  br label %173

173:                                              ; preds = %107, %105, %98, %91, %79, %36
  %174 = load i32, i32* %2, align 4
  ret i32 %174
}

declare dso_local i32 @ct_mixer_kcontrol_new(%struct.ct_mixer*, %struct.TYPE_8__*) #1

declare dso_local i32 @set_switch_state(%struct.ct_mixer*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
