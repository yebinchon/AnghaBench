; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_caller-save.c_setup_save_areas.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_caller-save.c_setup_save_areas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FIRST_PSEUDO_REGISTER = common dso_local global i32 0, align 4
@max_regno = common dso_local global i32 0, align 4
@reg_renumber = common dso_local global i32* null, align 8
@hard_regno_nregs = common dso_local global i32** null, align 8
@regno_reg_rtx = common dso_local global i32* null, align 8
@call_used_regs = common dso_local global i64* null, align 8
@MOVE_MAX_WORDS = common dso_local global i32 0, align 4
@regno_save_mode = common dso_local global i64** null, align 8
@VOIDmode = common dso_local global i64 0, align 8
@regno_save_mem = common dso_local global i64** null, align 8
@UNITS_PER_WORD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setup_save_areas() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @CLEAR_HARD_REG_SET(i32 %9)
  %11 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  store i32 %11, i32* %1, align 4
  br label %12

12:                                               ; preds = %70, %0
  %13 = load i32, i32* %1, align 4
  %14 = load i32, i32* @max_regno, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %73

16:                                               ; preds = %12
  %17 = load i32*, i32** @reg_renumber, align 8
  %18 = load i32, i32* %1, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = icmp uge i32 %21, 0
  br i1 %22, label %23, label %69

23:                                               ; preds = %16
  %24 = load i32, i32* %1, align 4
  %25 = call i64 @REG_N_CALLS_CROSSED(i32 %24)
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %69

27:                                               ; preds = %23
  %28 = load i32*, i32** @reg_renumber, align 8
  %29 = load i32, i32* %1, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32**, i32*** @hard_regno_nregs, align 8
  %35 = load i32, i32* %6, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32*, i32** %34, i64 %36
  %38 = load i32*, i32** %37, align 8
  %39 = load i32*, i32** @regno_reg_rtx, align 8
  %40 = load i32, i32* %1, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @GET_MODE(i32 %43)
  %45 = getelementptr inbounds i32, i32* %38, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = add i32 %33, %46
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %65, %27
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ult i32 %50, %51
  br i1 %52, label %53, label %68

53:                                               ; preds = %49
  %54 = load i64*, i64** @call_used_regs, align 8
  %55 = load i32, i32* %4, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %53
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @SET_HARD_REG_BIT(i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %60, %53
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %4, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %4, align 4
  br label %49

68:                                               ; preds = %49
  br label %69

69:                                               ; preds = %68, %23, %16
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %1, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %1, align 4
  br label %12

73:                                               ; preds = %12
  store i32 0, i32* %1, align 4
  br label %74

74:                                               ; preds = %223, %73
  %75 = load i32, i32* %1, align 4
  %76 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %226

78:                                               ; preds = %74
  %79 = load i32, i32* @MOVE_MAX_WORDS, align 4
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %219, %78
  %81 = load i32, i32* %2, align 4
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %222

83:                                               ; preds = %80
  store i32 1, i32* %8, align 4
  %84 = load i64**, i64*** @regno_save_mode, align 8
  %85 = load i32, i32* %1, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64*, i64** %84, i64 %86
  %88 = load i64*, i64** %87, align 8
  %89 = load i32, i32* %2, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @VOIDmode, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %104, label %95

95:                                               ; preds = %83
  %96 = load i64**, i64*** @regno_save_mem, align 8
  %97 = load i32, i32* %1, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i64*, i64** %96, i64 %98
  %100 = load i64*, i64** %99, align 8
  %101 = getelementptr inbounds i64, i64* %100, i64 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %95, %83
  br label %219

105:                                              ; preds = %95
  store i32 0, i32* %3, align 4
  br label %106

106:                                              ; preds = %123, %105
  %107 = load i32, i32* %3, align 4
  %108 = load i32, i32* %2, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %126

110:                                              ; preds = %106
  %111 = load i64**, i64*** @regno_save_mem, align 8
  %112 = load i32, i32* %1, align 4
  %113 = load i32, i32* %3, align 4
  %114 = add nsw i32 %112, %113
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i64*, i64** %111, i64 %115
  %117 = load i64*, i64** %116, align 8
  %118 = getelementptr inbounds i64, i64* %117, i64 1
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %110
  store i32 0, i32* %8, align 4
  br label %126

122:                                              ; preds = %110
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %3, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %3, align 4
  br label %106

126:                                              ; preds = %121, %106
  %127 = load i32, i32* %8, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %126
  br label %219

130:                                              ; preds = %126
  store i32 0, i32* %3, align 4
  br label %131

131:                                              ; preds = %144, %130
  %132 = load i32, i32* %3, align 4
  %133 = load i32, i32* %2, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %147

135:                                              ; preds = %131
  %136 = load i32, i32* %5, align 4
  %137 = load i32, i32* %1, align 4
  %138 = load i32, i32* %3, align 4
  %139 = add nsw i32 %137, %138
  %140 = call i32 @TEST_HARD_REG_BIT(i32 %136, i32 %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %135
  store i32 0, i32* %8, align 4
  br label %147

143:                                              ; preds = %135
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %3, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %3, align 4
  br label %131

147:                                              ; preds = %142, %131
  %148 = load i32, i32* %8, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %147
  br label %219

151:                                              ; preds = %147
  %152 = load i64**, i64*** @regno_save_mode, align 8
  %153 = load i32, i32* %1, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i64*, i64** %152, i64 %154
  %156 = load i64*, i64** %155, align 8
  %157 = load i32, i32* %2, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i64, i64* %156, i64 %158
  %160 = load i64, i64* %159, align 8
  %161 = load i64**, i64*** @regno_save_mode, align 8
  %162 = load i32, i32* %1, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i64*, i64** %161, i64 %163
  %165 = load i64*, i64** %164, align 8
  %166 = load i32, i32* %2, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i64, i64* %165, i64 %167
  %169 = load i64, i64* %168, align 8
  %170 = call i32 @GET_MODE_SIZE(i64 %169)
  %171 = call i64 @assign_stack_local(i64 %160, i32 %170, i32 0)
  %172 = load i64**, i64*** @regno_save_mem, align 8
  %173 = load i32, i32* %1, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i64*, i64** %172, i64 %174
  %176 = load i64*, i64** %175, align 8
  %177 = load i32, i32* %2, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i64, i64* %176, i64 %178
  store i64 %171, i64* %179, align 8
  store i32 0, i32* %3, align 4
  br label %180

180:                                              ; preds = %215, %151
  %181 = load i32, i32* %3, align 4
  %182 = load i32, i32* %2, align 4
  %183 = icmp slt i32 %181, %182
  br i1 %183, label %184, label %218

184:                                              ; preds = %180
  %185 = load i64**, i64*** @regno_save_mem, align 8
  %186 = load i32, i32* %1, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i64*, i64** %185, i64 %187
  %189 = load i64*, i64** %188, align 8
  %190 = load i32, i32* %2, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i64, i64* %189, i64 %191
  %193 = load i64, i64* %192, align 8
  %194 = load i64**, i64*** @regno_save_mode, align 8
  %195 = load i32, i32* %1, align 4
  %196 = load i32, i32* %3, align 4
  %197 = add nsw i32 %195, %196
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i64*, i64** %194, i64 %198
  %200 = load i64*, i64** %199, align 8
  %201 = getelementptr inbounds i64, i64* %200, i64 1
  %202 = load i64, i64* %201, align 8
  %203 = load i32, i32* %3, align 4
  %204 = load i32, i32* @UNITS_PER_WORD, align 4
  %205 = mul nsw i32 %203, %204
  %206 = call i64 @adjust_address_nv(i64 %193, i64 %202, i32 %205)
  %207 = load i64**, i64*** @regno_save_mem, align 8
  %208 = load i32, i32* %1, align 4
  %209 = load i32, i32* %3, align 4
  %210 = add nsw i32 %208, %209
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i64*, i64** %207, i64 %211
  %213 = load i64*, i64** %212, align 8
  %214 = getelementptr inbounds i64, i64* %213, i64 1
  store i64 %206, i64* %214, align 8
  br label %215

215:                                              ; preds = %184
  %216 = load i32, i32* %3, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %3, align 4
  br label %180

218:                                              ; preds = %180
  br label %219

219:                                              ; preds = %218, %150, %129, %104
  %220 = load i32, i32* %2, align 4
  %221 = add nsw i32 %220, -1
  store i32 %221, i32* %2, align 4
  br label %80

222:                                              ; preds = %80
  br label %223

223:                                              ; preds = %222
  %224 = load i32, i32* %1, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %1, align 4
  br label %74

226:                                              ; preds = %74
  store i32 0, i32* %1, align 4
  br label %227

227:                                              ; preds = %264, %226
  %228 = load i32, i32* %1, align 4
  %229 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %230 = icmp slt i32 %228, %229
  br i1 %230, label %231, label %267

231:                                              ; preds = %227
  %232 = load i32, i32* @MOVE_MAX_WORDS, align 4
  store i32 %232, i32* %2, align 4
  br label %233

233:                                              ; preds = %260, %231
  %234 = load i32, i32* %2, align 4
  %235 = icmp sgt i32 %234, 0
  br i1 %235, label %236, label %263

236:                                              ; preds = %233
  %237 = load i64**, i64*** @regno_save_mem, align 8
  %238 = load i32, i32* %1, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i64*, i64** %237, i64 %239
  %241 = load i64*, i64** %240, align 8
  %242 = load i32, i32* %2, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i64, i64* %241, i64 %243
  %245 = load i64, i64* %244, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %259

247:                                              ; preds = %236
  %248 = load i64**, i64*** @regno_save_mem, align 8
  %249 = load i32, i32* %1, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i64*, i64** %248, i64 %250
  %252 = load i64*, i64** %251, align 8
  %253 = load i32, i32* %2, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i64, i64* %252, i64 %254
  %256 = load i64, i64* %255, align 8
  %257 = call i32 (...) @get_frame_alias_set()
  %258 = call i32 @set_mem_alias_set(i64 %256, i32 %257)
  br label %259

259:                                              ; preds = %247, %236
  br label %260

260:                                              ; preds = %259
  %261 = load i32, i32* %2, align 4
  %262 = add nsw i32 %261, -1
  store i32 %262, i32* %2, align 4
  br label %233

263:                                              ; preds = %233
  br label %264

264:                                              ; preds = %263
  %265 = load i32, i32* %1, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %1, align 4
  br label %227

267:                                              ; preds = %227
  ret void
}

declare dso_local i32 @CLEAR_HARD_REG_SET(i32) #1

declare dso_local i64 @REG_N_CALLS_CROSSED(i32) #1

declare dso_local i64 @GET_MODE(i32) #1

declare dso_local i32 @SET_HARD_REG_BIT(i32, i32) #1

declare dso_local i32 @TEST_HARD_REG_BIT(i32, i32) #1

declare dso_local i64 @assign_stack_local(i64, i32, i32) #1

declare dso_local i32 @GET_MODE_SIZE(i64) #1

declare dso_local i64 @adjust_address_nv(i64, i64, i32) #1

declare dso_local i32 @set_mem_alias_set(i64, i32) #1

declare dso_local i32 @get_frame_alias_set(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
