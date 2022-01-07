; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_create_input_ctls.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_create_input_ctls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i64, i64, i8**, i64, i64, i32*, %struct.auto_pin_cfg }
%struct.auto_pin_cfg = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@PIN_IN = common dso_local global i32 0, align 4
@AUTO_PIN_MIC = common dso_local global i64 0, align 8
@CFG_IDX_MIX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Stereo Mix\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @create_input_ctls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_input_ctls(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.hda_gen_spec*, align 8
  %5 = alloca %struct.auto_pin_cfg*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %12 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %13 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %12, i32 0, i32 0
  %14 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %13, align 8
  store %struct.hda_gen_spec* %14, %struct.hda_gen_spec** %4, align 8
  %15 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %16 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %15, i32 0, i32 6
  store %struct.auto_pin_cfg* %16, %struct.auto_pin_cfg** %5, align 8
  %17 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %18 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %6, align 8
  %20 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %21 = call i32 @fill_adc_nids(%struct.hda_codec* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %174

25:                                               ; preds = %1
  %26 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %27 = call i32 @fill_input_pin_labels(%struct.hda_codec* %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %2, align 4
  br label %174

32:                                               ; preds = %25
  store i32 0, i32* %8, align 4
  br label %33

33:                                               ; preds = %151, %32
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %36 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %154

39:                                               ; preds = %33
  %40 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %41 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %11, align 8
  %48 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %49 = load i64, i64* %11, align 8
  %50 = call i32 @is_input_pin(%struct.hda_codec* %48, i64 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %39
  br label %151

53:                                               ; preds = %39
  %54 = load i32, i32* @PIN_IN, align 4
  store i32 %54, i32* %10, align 4
  %55 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %56 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @AUTO_PIN_MIC, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %53
  %66 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %67 = load i64, i64* %11, align 8
  %68 = call i32 @snd_hda_get_default_vref(%struct.hda_codec* %66, i64 %67)
  %69 = load i32, i32* %10, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %10, align 4
  br label %71

71:                                               ; preds = %65, %53
  %72 = load i64, i64* %11, align 8
  %73 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %74 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %72, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %71
  %78 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %79 = load i64, i64* %11, align 8
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @set_pin_target(%struct.hda_codec* %78, i64 %79, i32 %80, i32 0)
  br label %82

82:                                               ; preds = %77, %71
  %83 = load i64, i64* %6, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %117

85:                                               ; preds = %82
  %86 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %87 = load i64, i64* %11, align 8
  %88 = load i64, i64* %6, align 8
  %89 = call i64 @is_reachable_path(%struct.hda_codec* %86, i64 %87, i64 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %116

91:                                               ; preds = %85
  %92 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %93 = load i32, i32* %8, align 4
  %94 = load i64, i64* %11, align 8
  %95 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %96 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %95, i32 0, i32 2
  %97 = load i8**, i8*** %96, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8*, i8** %97, i64 %99
  %101 = load i8*, i8** %100, align 8
  %102 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %103 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %102, i32 0, i32 5
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load i64, i64* %6, align 8
  %110 = call i32 @new_analog_input(%struct.hda_codec* %92, i32 %93, i64 %94, i8* %101, i32 %108, i64 %109)
  store i32 %110, i32* %9, align 4
  %111 = load i32, i32* %9, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %91
  %114 = load i32, i32* %9, align 4
  store i32 %114, i32* %2, align 4
  br label %174

115:                                              ; preds = %91
  br label %116

116:                                              ; preds = %115, %85
  br label %117

117:                                              ; preds = %116, %82
  %118 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %119 = load i64, i64* %11, align 8
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* %7, align 4
  %122 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %123 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %122, i32 0, i32 2
  %124 = load i8**, i8*** %123, align 8
  %125 = load i32, i32* %8, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8*, i8** %124, i64 %126
  %128 = load i8*, i8** %127, align 8
  %129 = load i64, i64* %6, align 8
  %130 = sub nsw i64 0, %129
  %131 = call i32 @parse_capture_source(%struct.hda_codec* %118, i64 %119, i32 %120, i32 %121, i8* %128, i64 %130)
  store i32 %131, i32* %9, align 4
  %132 = load i32, i32* %9, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %117
  %135 = load i32, i32* %9, align 4
  store i32 %135, i32* %2, align 4
  br label %174

136:                                              ; preds = %117
  %137 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %138 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %137, i32 0, i32 4
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %150

141:                                              ; preds = %136
  %142 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %143 = load i64, i64* %11, align 8
  %144 = call i32 @create_in_jack_mode(%struct.hda_codec* %142, i64 %143)
  store i32 %144, i32* %9, align 4
  %145 = load i32, i32* %9, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %141
  %148 = load i32, i32* %9, align 4
  store i32 %148, i32* %2, align 4
  br label %174

149:                                              ; preds = %141
  br label %150

150:                                              ; preds = %149, %136
  br label %151

151:                                              ; preds = %150, %52
  %152 = load i32, i32* %8, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %8, align 4
  br label %33

154:                                              ; preds = %33
  %155 = load i64, i64* %6, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %173

157:                                              ; preds = %154
  %158 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %159 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %158, i32 0, i32 3
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %173

162:                                              ; preds = %157
  %163 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %164 = load i64, i64* %6, align 8
  %165 = load i32, i32* @CFG_IDX_MIX, align 4
  %166 = load i32, i32* %7, align 4
  %167 = call i32 @parse_capture_source(%struct.hda_codec* %163, i64 %164, i32 %165, i32 %166, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 0)
  store i32 %167, i32* %9, align 4
  %168 = load i32, i32* %9, align 4
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %162
  %171 = load i32, i32* %9, align 4
  store i32 %171, i32* %2, align 4
  br label %174

172:                                              ; preds = %162
  br label %173

173:                                              ; preds = %172, %157, %154
  store i32 0, i32* %2, align 4
  br label %174

174:                                              ; preds = %173, %170, %147, %134, %113, %30, %24
  %175 = load i32, i32* %2, align 4
  ret i32 %175
}

declare dso_local i32 @fill_adc_nids(%struct.hda_codec*) #1

declare dso_local i32 @fill_input_pin_labels(%struct.hda_codec*) #1

declare dso_local i32 @is_input_pin(%struct.hda_codec*, i64) #1

declare dso_local i32 @snd_hda_get_default_vref(%struct.hda_codec*, i64) #1

declare dso_local i32 @set_pin_target(%struct.hda_codec*, i64, i32, i32) #1

declare dso_local i64 @is_reachable_path(%struct.hda_codec*, i64, i64) #1

declare dso_local i32 @new_analog_input(%struct.hda_codec*, i32, i64, i8*, i32, i64) #1

declare dso_local i32 @parse_capture_source(%struct.hda_codec*, i64, i32, i32, i8*, i64) #1

declare dso_local i32 @create_in_jack_mode(%struct.hda_codec*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
