; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8350.c_wm8350_out1_ramp_step.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8350.c_wm8350_out1_ramp_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_codec = type { %struct.wm8350*, %struct.wm8350_data* }
%struct.wm8350 = type { i32 }
%struct.wm8350_data = type { %struct.wm8350_output }
%struct.wm8350_output = type { i64, i32, i32 }

@WM8350_LOUT1_VOLUME = common dso_local global i32 0, align 4
@WM8350_OUT1L_VOL_MASK = common dso_local global i32 0, align 4
@WM8350_OUT1L_VOL_SHIFT = common dso_local global i32 0, align 4
@WM8350_RAMP_UP = common dso_local global i64 0, align 8
@WM8350_RAMP_DOWN = common dso_local global i64 0, align 8
@WM8350_ROUT1_VOLUME = common dso_local global i32 0, align 4
@WM8350_OUT1R_VOL_MASK = common dso_local global i32 0, align 4
@WM8350_OUT1R_VOL_SHIFT = common dso_local global i32 0, align 4
@WM8350_OUT1_VU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_codec*)* @wm8350_out1_ramp_step to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8350_out1_ramp_step(%struct.snd_soc_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_codec*, align 8
  %4 = alloca %struct.wm8350_data*, align 8
  %5 = alloca %struct.wm8350_output*, align 8
  %6 = alloca %struct.wm8350*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_soc_codec* %0, %struct.snd_soc_codec** %3, align 8
  %11 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %12 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %11, i32 0, i32 1
  %13 = load %struct.wm8350_data*, %struct.wm8350_data** %12, align 8
  store %struct.wm8350_data* %13, %struct.wm8350_data** %4, align 8
  %14 = load %struct.wm8350_data*, %struct.wm8350_data** %4, align 8
  %15 = getelementptr inbounds %struct.wm8350_data, %struct.wm8350_data* %14, i32 0, i32 0
  store %struct.wm8350_output* %15, %struct.wm8350_output** %5, align 8
  %16 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %17 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %16, i32 0, i32 0
  %18 = load %struct.wm8350*, %struct.wm8350** %17, align 8
  store %struct.wm8350* %18, %struct.wm8350** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %19 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %20 = load i32, i32* @WM8350_LOUT1_VOLUME, align 4
  %21 = call i32 @wm8350_reg_read(%struct.wm8350* %19, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @WM8350_OUT1L_VOL_MASK, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @WM8350_OUT1L_VOL_SHIFT, align 4
  %26 = ashr i32 %24, %25
  store i32 %26, i32* %10, align 4
  %27 = load %struct.wm8350_output*, %struct.wm8350_output** %5, align 8
  %28 = getelementptr inbounds %struct.wm8350_output, %struct.wm8350_output* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @WM8350_RAMP_UP, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %55

32:                                               ; preds = %1
  %33 = load i32, i32* %10, align 4
  %34 = load %struct.wm8350_output*, %struct.wm8350_output** %5, align 8
  %35 = getelementptr inbounds %struct.wm8350_output, %struct.wm8350_output* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %32
  %39 = load i32, i32* %10, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* @WM8350_OUT1L_VOL_MASK, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %9, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %9, align 4
  %45 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %46 = load i32, i32* @WM8350_LOUT1_VOLUME, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @WM8350_OUT1L_VOL_SHIFT, align 4
  %50 = shl i32 %48, %49
  %51 = or i32 %47, %50
  %52 = call i32 @wm8350_reg_write(%struct.wm8350* %45, i32 %46, i32 %51)
  br label %54

53:                                               ; preds = %32
  store i32 1, i32* %7, align 4
  br label %54

54:                                               ; preds = %53, %38
  br label %83

55:                                               ; preds = %1
  %56 = load %struct.wm8350_output*, %struct.wm8350_output** %5, align 8
  %57 = getelementptr inbounds %struct.wm8350_output, %struct.wm8350_output* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @WM8350_RAMP_DOWN, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %81

61:                                               ; preds = %55
  %62 = load i32, i32* %10, align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %79

64:                                               ; preds = %61
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* @WM8350_OUT1L_VOL_MASK, align 4
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %9, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %9, align 4
  %71 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %72 = load i32, i32* @WM8350_LOUT1_VOLUME, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* @WM8350_OUT1L_VOL_SHIFT, align 4
  %76 = shl i32 %74, %75
  %77 = or i32 %73, %76
  %78 = call i32 @wm8350_reg_write(%struct.wm8350* %71, i32 %72, i32 %77)
  br label %80

79:                                               ; preds = %61
  store i32 1, i32* %7, align 4
  br label %80

80:                                               ; preds = %79, %64
  br label %82

81:                                               ; preds = %55
  store i32 1, i32* %2, align 4
  br label %162

82:                                               ; preds = %80
  br label %83

83:                                               ; preds = %82, %54
  %84 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %85 = load i32, i32* @WM8350_ROUT1_VOLUME, align 4
  %86 = call i32 @wm8350_reg_read(%struct.wm8350* %84, i32 %85)
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* @WM8350_OUT1R_VOL_MASK, align 4
  %89 = and i32 %87, %88
  %90 = load i32, i32* @WM8350_OUT1R_VOL_SHIFT, align 4
  %91 = ashr i32 %89, %90
  store i32 %91, i32* %10, align 4
  %92 = load %struct.wm8350_output*, %struct.wm8350_output** %5, align 8
  %93 = getelementptr inbounds %struct.wm8350_output, %struct.wm8350_output* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @WM8350_RAMP_UP, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %120

97:                                               ; preds = %83
  %98 = load i32, i32* %10, align 4
  %99 = load %struct.wm8350_output*, %struct.wm8350_output** %5, align 8
  %100 = getelementptr inbounds %struct.wm8350_output, %struct.wm8350_output* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = icmp slt i32 %98, %101
  br i1 %102, label %103, label %118

103:                                              ; preds = %97
  %104 = load i32, i32* %10, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %10, align 4
  %106 = load i32, i32* @WM8350_OUT1R_VOL_MASK, align 4
  %107 = xor i32 %106, -1
  %108 = load i32, i32* %9, align 4
  %109 = and i32 %108, %107
  store i32 %109, i32* %9, align 4
  %110 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %111 = load i32, i32* @WM8350_ROUT1_VOLUME, align 4
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* @WM8350_OUT1R_VOL_SHIFT, align 4
  %115 = shl i32 %113, %114
  %116 = or i32 %112, %115
  %117 = call i32 @wm8350_reg_write(%struct.wm8350* %110, i32 %111, i32 %116)
  br label %119

118:                                              ; preds = %97
  store i32 1, i32* %8, align 4
  br label %119

119:                                              ; preds = %118, %103
  br label %147

120:                                              ; preds = %83
  %121 = load %struct.wm8350_output*, %struct.wm8350_output** %5, align 8
  %122 = getelementptr inbounds %struct.wm8350_output, %struct.wm8350_output* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @WM8350_RAMP_DOWN, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %146

126:                                              ; preds = %120
  %127 = load i32, i32* %10, align 4
  %128 = icmp sgt i32 %127, 0
  br i1 %128, label %129, label %144

129:                                              ; preds = %126
  %130 = load i32, i32* %10, align 4
  %131 = add nsw i32 %130, -1
  store i32 %131, i32* %10, align 4
  %132 = load i32, i32* @WM8350_OUT1R_VOL_MASK, align 4
  %133 = xor i32 %132, -1
  %134 = load i32, i32* %9, align 4
  %135 = and i32 %134, %133
  store i32 %135, i32* %9, align 4
  %136 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %137 = load i32, i32* @WM8350_ROUT1_VOLUME, align 4
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* %10, align 4
  %140 = load i32, i32* @WM8350_OUT1R_VOL_SHIFT, align 4
  %141 = shl i32 %139, %140
  %142 = or i32 %138, %141
  %143 = call i32 @wm8350_reg_write(%struct.wm8350* %136, i32 %137, i32 %142)
  br label %145

144:                                              ; preds = %126
  store i32 1, i32* %8, align 4
  br label %145

145:                                              ; preds = %144, %129
  br label %146

146:                                              ; preds = %145, %120
  br label %147

147:                                              ; preds = %146, %119
  %148 = load i32, i32* %7, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %147
  %151 = load i32, i32* %8, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %158, label %153

153:                                              ; preds = %150, %147
  %154 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %155 = load i32, i32* @WM8350_LOUT1_VOLUME, align 4
  %156 = load i32, i32* @WM8350_OUT1_VU, align 4
  %157 = call i32 @wm8350_set_bits(%struct.wm8350* %154, i32 %155, i32 %156)
  br label %158

158:                                              ; preds = %153, %150
  %159 = load i32, i32* %7, align 4
  %160 = load i32, i32* %8, align 4
  %161 = and i32 %159, %160
  store i32 %161, i32* %2, align 4
  br label %162

162:                                              ; preds = %158, %81
  %163 = load i32, i32* %2, align 4
  ret i32 %163
}

declare dso_local i32 @wm8350_reg_read(%struct.wm8350*, i32) #1

declare dso_local i32 @wm8350_reg_write(%struct.wm8350*, i32, i32) #1

declare dso_local i32 @wm8350_set_bits(%struct.wm8350*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
