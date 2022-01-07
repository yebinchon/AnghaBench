; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_expand_builtin_expect_jump.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_expand_builtin_expect_jump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_RTX = common dso_local global i64 0, align 8
@INTEGER_TYPE = common dso_local global i64 0, align 8
@LABEL_REF = common dso_local global i64 0, align 8
@pc_rtx = common dso_local global i64 0, align 8
@PRED_BUILTIN_EXPECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @expand_builtin_expect_jump(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @TREE_OPERAND(i32 %19, i32 1)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @TREE_VALUE(i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @TREE_CHAIN(i32 %23)
  %25 = call i32 @TREE_VALUE(i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i64, i64* @NULL_RTX, align 8
  store i64 %26, i64* %10, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @TREE_TYPE(i32 %27)
  %29 = call i64 @TREE_CODE(i32 %28)
  %30 = load i64, i64* @INTEGER_TYPE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %256

32:                                               ; preds = %3
  %33 = load i32, i32* %9, align 4
  %34 = call i64 @integer_zerop(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %9, align 4
  %38 = call i64 @integer_onep(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %256

40:                                               ; preds = %36, %32
  %41 = call i32 (...) @start_sequence()
  %42 = load i32, i32* %8, align 4
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @do_jump(i32 %42, i64 %43, i64 %44)
  %46 = call i64 (...) @get_insns()
  store i64 %46, i64* %10, align 8
  %47 = call i64 (...) @get_last_insn()
  store i64 %47, i64* %12, align 8
  %48 = load i64, i64* %12, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %40
  %51 = load i64, i64* %12, align 8
  %52 = call i64 @NOTE_P(i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i64, i64* %12, align 8
  %56 = call i64 @prev_nonnote_insn(i64 %55)
  store i64 %56, i64* %12, align 8
  br label %57

57:                                               ; preds = %54, %50, %40
  %58 = load i64, i64* %12, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load i64, i64* %12, align 8
  %62 = call i32 @LABEL_P(i64 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %60
  %65 = load i64, i64* @NULL_RTX, align 8
  store i64 %65, i64* %12, align 8
  br label %66

66:                                               ; preds = %64, %60, %57
  %67 = call i32 (...) @end_sequence()
  %68 = load i64, i64* %6, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %66
  %71 = load i64, i64* %12, align 8
  store i64 %71, i64* %6, align 8
  br label %72

72:                                               ; preds = %70, %66
  %73 = load i64, i64* %5, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %72
  %76 = load i64, i64* %12, align 8
  store i64 %76, i64* %5, align 8
  br label %77

77:                                               ; preds = %75, %72
  %78 = load i64, i64* %10, align 8
  store i64 %78, i64* %11, align 8
  br label %79

79:                                               ; preds = %253, %77
  %80 = load i64, i64* %11, align 8
  %81 = load i64, i64* @NULL_RTX, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %255

83:                                               ; preds = %79
  %84 = load i64, i64* %11, align 8
  %85 = call i64 @NEXT_INSN(i64 %84)
  store i64 %85, i64* %14, align 8
  %86 = load i64, i64* %11, align 8
  %87 = call i64 @JUMP_P(i64 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %253

89:                                               ; preds = %83
  %90 = load i64, i64* %11, align 8
  %91 = call i64 @any_condjump_p(i64 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %253

93:                                               ; preds = %89
  %94 = load i64, i64* %11, align 8
  %95 = call i32 @pc_set(i64 %94)
  %96 = call i64 @SET_SRC(i32 %95)
  store i64 %96, i64* %15, align 8
  %97 = load i64, i64* %15, align 8
  %98 = call i64 @XEXP(i64 %97, i32 1)
  store i64 %98, i64* %16, align 8
  %99 = load i64, i64* %15, align 8
  %100 = call i64 @XEXP(i64 %99, i32 2)
  store i64 %100, i64* %17, align 8
  store i32 -1, i32* %18, align 4
  %101 = load i64, i64* %16, align 8
  %102 = call i64 @GET_CODE(i64 %101)
  %103 = load i64, i64* @LABEL_REF, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %93
  %106 = load i64, i64* %16, align 8
  %107 = call i64 @XEXP(i64 %106, i32 0)
  %108 = load i64, i64* %6, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  store i32 1, i32* %18, align 4
  br label %237

111:                                              ; preds = %105, %93
  %112 = load i64, i64* %16, align 8
  %113 = call i64 @GET_CODE(i64 %112)
  %114 = load i64, i64* @LABEL_REF, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %122

116:                                              ; preds = %111
  %117 = load i64, i64* %16, align 8
  %118 = call i64 @XEXP(i64 %117, i32 0)
  %119 = load i64, i64* %5, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  store i32 0, i32* %18, align 4
  br label %236

122:                                              ; preds = %116, %111
  %123 = load i64, i64* %17, align 8
  %124 = call i64 @GET_CODE(i64 %123)
  %125 = load i64, i64* @LABEL_REF, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %133

127:                                              ; preds = %122
  %128 = load i64, i64* %17, align 8
  %129 = call i64 @XEXP(i64 %128, i32 0)
  %130 = load i64, i64* %5, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %127
  store i32 1, i32* %18, align 4
  br label %235

133:                                              ; preds = %127, %122
  %134 = load i64, i64* %17, align 8
  %135 = call i64 @GET_CODE(i64 %134)
  %136 = load i64, i64* @LABEL_REF, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %144

138:                                              ; preds = %133
  %139 = load i64, i64* %17, align 8
  %140 = call i64 @XEXP(i64 %139, i32 0)
  %141 = load i64, i64* %6, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %138
  store i32 0, i32* %18, align 4
  br label %234

144:                                              ; preds = %138, %133
  %145 = load i64, i64* %17, align 8
  %146 = load i64, i64* @pc_rtx, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %188

148:                                              ; preds = %144
  %149 = load i64, i64* %14, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %158

151:                                              ; preds = %148
  %152 = load i64, i64* %14, align 8
  %153 = call i64 @NOTE_P(i64 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %151
  %156 = load i64, i64* %14, align 8
  %157 = call i64 @next_nonnote_insn(i64 %156)
  store i64 %157, i64* %14, align 8
  br label %158

158:                                              ; preds = %155, %151, %148
  %159 = load i64, i64* %14, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %174

161:                                              ; preds = %158
  %162 = load i64, i64* %14, align 8
  %163 = call i64 @JUMP_P(i64 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %174

165:                                              ; preds = %161
  %166 = load i64, i64* %14, align 8
  %167 = call i64 @any_uncondjump_p(i64 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %165
  %170 = load i64, i64* %14, align 8
  %171 = call i32 @pc_set(i64 %170)
  %172 = call i64 @SET_SRC(i32 %171)
  %173 = call i64 @XEXP(i64 %172, i32 0)
  store i64 %173, i64* %13, align 8
  br label %176

174:                                              ; preds = %165, %161, %158
  %175 = load i64, i64* %14, align 8
  store i64 %175, i64* %13, align 8
  br label %176

176:                                              ; preds = %174, %169
  %177 = load i64, i64* %13, align 8
  %178 = load i64, i64* %5, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %181

180:                                              ; preds = %176
  store i32 1, i32* %18, align 4
  br label %187

181:                                              ; preds = %176
  %182 = load i64, i64* %13, align 8
  %183 = load i64, i64* %6, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %186

185:                                              ; preds = %181
  store i32 0, i32* %18, align 4
  br label %186

186:                                              ; preds = %185, %181
  br label %187

187:                                              ; preds = %186, %180
  br label %233

188:                                              ; preds = %144
  %189 = load i64, i64* %16, align 8
  %190 = load i64, i64* @pc_rtx, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %232

192:                                              ; preds = %188
  %193 = load i64, i64* %14, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %202

195:                                              ; preds = %192
  %196 = load i64, i64* %14, align 8
  %197 = call i64 @NOTE_P(i64 %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %195
  %200 = load i64, i64* %14, align 8
  %201 = call i64 @next_nonnote_insn(i64 %200)
  store i64 %201, i64* %14, align 8
  br label %202

202:                                              ; preds = %199, %195, %192
  %203 = load i64, i64* %14, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %218

205:                                              ; preds = %202
  %206 = load i64, i64* %14, align 8
  %207 = call i64 @JUMP_P(i64 %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %218

209:                                              ; preds = %205
  %210 = load i64, i64* %14, align 8
  %211 = call i64 @any_uncondjump_p(i64 %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %218

213:                                              ; preds = %209
  %214 = load i64, i64* %14, align 8
  %215 = call i32 @pc_set(i64 %214)
  %216 = call i64 @SET_SRC(i32 %215)
  %217 = call i64 @XEXP(i64 %216, i32 0)
  store i64 %217, i64* %13, align 8
  br label %220

218:                                              ; preds = %209, %205, %202
  %219 = load i64, i64* %14, align 8
  store i64 %219, i64* %13, align 8
  br label %220

220:                                              ; preds = %218, %213
  %221 = load i64, i64* %13, align 8
  %222 = load i64, i64* %5, align 8
  %223 = icmp eq i64 %221, %222
  br i1 %223, label %224, label %225

224:                                              ; preds = %220
  store i32 0, i32* %18, align 4
  br label %231

225:                                              ; preds = %220
  %226 = load i64, i64* %13, align 8
  %227 = load i64, i64* %6, align 8
  %228 = icmp eq i64 %226, %227
  br i1 %228, label %229, label %230

229:                                              ; preds = %225
  store i32 1, i32* %18, align 4
  br label %230

230:                                              ; preds = %229, %225
  br label %231

231:                                              ; preds = %230, %224
  br label %232

232:                                              ; preds = %231, %188
  br label %233

233:                                              ; preds = %232, %187
  br label %234

234:                                              ; preds = %233, %143
  br label %235

235:                                              ; preds = %234, %132
  br label %236

236:                                              ; preds = %235, %121
  br label %237

237:                                              ; preds = %236, %110
  %238 = load i32, i32* %18, align 4
  %239 = icmp ne i32 %238, -1
  br i1 %239, label %240, label %252

240:                                              ; preds = %237
  %241 = load i32, i32* %9, align 4
  %242 = call i64 @integer_zerop(i32 %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %247

244:                                              ; preds = %240
  %245 = load i32, i32* %18, align 4
  %246 = sub nsw i32 1, %245
  store i32 %246, i32* %18, align 4
  br label %247

247:                                              ; preds = %244, %240
  %248 = load i64, i64* %11, align 8
  %249 = load i32, i32* @PRED_BUILTIN_EXPECT, align 4
  %250 = load i32, i32* %18, align 4
  %251 = call i32 @predict_insn_def(i64 %248, i32 %249, i32 %250)
  br label %252

252:                                              ; preds = %247, %237
  br label %253

253:                                              ; preds = %252, %89, %83
  %254 = load i64, i64* %14, align 8
  store i64 %254, i64* %11, align 8
  br label %79

255:                                              ; preds = %79
  br label %256

256:                                              ; preds = %255, %36, %3
  %257 = load i64, i64* %10, align 8
  ret i64 %257
}

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @TREE_VALUE(i32) #1

declare dso_local i32 @TREE_CHAIN(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i64 @integer_zerop(i32) #1

declare dso_local i64 @integer_onep(i32) #1

declare dso_local i32 @start_sequence(...) #1

declare dso_local i32 @do_jump(i32, i64, i64) #1

declare dso_local i64 @get_insns(...) #1

declare dso_local i64 @get_last_insn(...) #1

declare dso_local i64 @NOTE_P(i64) #1

declare dso_local i64 @prev_nonnote_insn(i64) #1

declare dso_local i32 @LABEL_P(i64) #1

declare dso_local i32 @end_sequence(...) #1

declare dso_local i64 @NEXT_INSN(i64) #1

declare dso_local i64 @JUMP_P(i64) #1

declare dso_local i64 @any_condjump_p(i64) #1

declare dso_local i64 @SET_SRC(i32) #1

declare dso_local i32 @pc_set(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @next_nonnote_insn(i64) #1

declare dso_local i64 @any_uncondjump_p(i64) #1

declare dso_local i32 @predict_insn_def(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
