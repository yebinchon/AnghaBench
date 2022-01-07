; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_check_dyn_adc_switch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_check_dyn_adc_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i32, i32*, i32, i64, i64, i64**, i32*, %struct.hda_input_mux }
%struct.hda_input_mux = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"hda-codec: enabling ADC switching\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"hda-codec: reducing to a single ADC\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @check_dyn_adc_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_dyn_adc_switch(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.hda_gen_spec*, align 8
  %4 = alloca %struct.hda_input_mux*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %9 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %10 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %9, i32 0, i32 0
  %11 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %10, align 8
  store %struct.hda_gen_spec* %11, %struct.hda_gen_spec** %3, align 8
  %12 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %13 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %12, i32 0, i32 7
  store %struct.hda_input_mux* %13, %struct.hda_input_mux** %4, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %59, %1
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %17 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %62

20:                                               ; preds = %14
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %42, %20
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.hda_input_mux*, %struct.hda_input_mux** %4, align 8
  %24 = getelementptr inbounds %struct.hda_input_mux, %struct.hda_input_mux* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %45

27:                                               ; preds = %21
  %28 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %29 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %28, i32 0, i32 5
  %30 = load i64**, i64*** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64*, i64** %30, i64 %32
  %34 = load i64*, i64** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %27
  br label %45

41:                                               ; preds = %27
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %21

45:                                               ; preds = %40, %21
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.hda_input_mux*, %struct.hda_input_mux** %4, align 8
  %48 = getelementptr inbounds %struct.hda_input_mux, %struct.hda_input_mux* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp sge i32 %46, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %45
  %52 = load i32, i32* %7, align 4
  %53 = shl i32 1, %52
  %54 = load i32, i32* %5, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %51, %45
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %14

62:                                               ; preds = %14
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %112, label %65

65:                                               ; preds = %62
  store i32 0, i32* %6, align 4
  br label %66

66:                                               ; preds = %105, %65
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.hda_input_mux*, %struct.hda_input_mux** %4, align 8
  %69 = getelementptr inbounds %struct.hda_input_mux, %struct.hda_input_mux* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %108

72:                                               ; preds = %66
  store i32 0, i32* %7, align 4
  br label %73

73:                                               ; preds = %101, %72
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %76 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %79, label %104

79:                                               ; preds = %73
  %80 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %81 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %80, i32 0, i32 5
  %82 = load i64**, i64*** %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64*, i64** %82, i64 %84
  %86 = load i64*, i64** %85, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %86, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %79
  %93 = load i32, i32* %7, align 4
  %94 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %95 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  store i32 %93, i32* %99, align 4
  br label %104

100:                                              ; preds = %79
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %7, align 4
  br label %73

104:                                              ; preds = %92, %73
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %6, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %6, align 4
  br label %66

108:                                              ; preds = %66
  %109 = call i32 @snd_printdd(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %110 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %111 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %110, i32 0, i32 2
  store i32 1, i32* %111, align 8
  br label %206

112:                                              ; preds = %62
  %113 = load i32, i32* %8, align 4
  %114 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %115 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp ne i32 %113, %116
  br i1 %117, label %118, label %205

118:                                              ; preds = %112
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %119

119:                                              ; preds = %198, %118
  %120 = load i32, i32* %7, align 4
  %121 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %122 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp slt i32 %120, %123
  br i1 %124, label %125, label %201

125:                                              ; preds = %119
  %126 = load i32, i32* %5, align 4
  %127 = load i32, i32* %7, align 4
  %128 = shl i32 1, %127
  %129 = and i32 %126, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %125
  br label %198

132:                                              ; preds = %125
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* %8, align 4
  %135 = icmp ne i32 %133, %134
  br i1 %135, label %136, label %195

136:                                              ; preds = %132
  %137 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %138 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %137, i32 0, i32 6
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %7, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %145 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %144, i32 0, i32 6
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %8, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  store i32 %143, i32* %149, align 4
  store i32 0, i32* %6, align 4
  br label %150

150:                                              ; preds = %191, %136
  %151 = load i32, i32* %6, align 4
  %152 = load %struct.hda_input_mux*, %struct.hda_input_mux** %4, align 8
  %153 = getelementptr inbounds %struct.hda_input_mux, %struct.hda_input_mux* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = icmp slt i32 %151, %154
  br i1 %155, label %156, label %194

156:                                              ; preds = %150
  %157 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %158 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %159 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %158, i32 0, i32 5
  %160 = load i64**, i64*** %159, align 8
  %161 = load i32, i32* %6, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i64*, i64** %160, i64 %162
  %164 = load i64*, i64** %163, align 8
  %165 = load i32, i32* %8, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i64, i64* %164, i64 %166
  %168 = load i64, i64* %167, align 8
  %169 = call i32 @invalidate_nid_path(%struct.hda_codec* %157, i64 %168)
  %170 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %171 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %170, i32 0, i32 5
  %172 = load i64**, i64*** %171, align 8
  %173 = load i32, i32* %6, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i64*, i64** %172, i64 %174
  %176 = load i64*, i64** %175, align 8
  %177 = load i32, i32* %7, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i64, i64* %176, i64 %178
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %182 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %181, i32 0, i32 5
  %183 = load i64**, i64*** %182, align 8
  %184 = load i32, i32* %6, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i64*, i64** %183, i64 %185
  %187 = load i64*, i64** %186, align 8
  %188 = load i32, i32* %8, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i64, i64* %187, i64 %189
  store i64 %180, i64* %190, align 8
  br label %191

191:                                              ; preds = %156
  %192 = load i32, i32* %6, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %6, align 4
  br label %150

194:                                              ; preds = %150
  br label %195

195:                                              ; preds = %194, %132
  %196 = load i32, i32* %8, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %8, align 4
  br label %198

198:                                              ; preds = %195, %131
  %199 = load i32, i32* %7, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %7, align 4
  br label %119

201:                                              ; preds = %119
  %202 = load i32, i32* %8, align 4
  %203 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %204 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %203, i32 0, i32 0
  store i32 %202, i32* %204, align 8
  br label %205

205:                                              ; preds = %201, %112
  br label %206

206:                                              ; preds = %205, %108
  %207 = load %struct.hda_input_mux*, %struct.hda_input_mux** %4, align 8
  %208 = getelementptr inbounds %struct.hda_input_mux, %struct.hda_input_mux* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = icmp eq i32 %209, 1
  br i1 %210, label %221, label %211

211:                                              ; preds = %206
  %212 = load %struct.hda_input_mux*, %struct.hda_input_mux** %4, align 8
  %213 = getelementptr inbounds %struct.hda_input_mux, %struct.hda_input_mux* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = icmp eq i32 %214, 2
  br i1 %215, label %216, label %225

216:                                              ; preds = %211
  %217 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %218 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %217, i32 0, i32 4
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %225

221:                                              ; preds = %216, %206
  %222 = call i32 @snd_printdd(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %223 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %224 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %223, i32 0, i32 0
  store i32 1, i32* %224, align 8
  br label %225

225:                                              ; preds = %221, %216, %211
  %226 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %227 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 8
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %238, label %230

230:                                              ; preds = %225
  %231 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %232 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %231, i32 0, i32 3
  %233 = load i64, i64* %232, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %238

235:                                              ; preds = %230
  %236 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %237 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %236, i32 0, i32 0
  store i32 1, i32* %237, align 8
  br label %238

238:                                              ; preds = %235, %230, %225
  ret i32 0
}

declare dso_local i32 @snd_printdd(i8*) #1

declare dso_local i32 @invalidate_nid_path(%struct.hda_codec*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
