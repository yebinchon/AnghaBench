; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-iv.c_get_biv_step_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-iv.c_get_biv_step_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.df_ref = type { i32 }

@NULL_RTX = common dso_local global i64 0, align 8
@GRD_INVALID = common dso_local global i32 0, align 4
@GRD_INVARIANT = common dso_local global i32 0, align 4
@GRD_MAYBE_BIV = common dso_local global i32 0, align 4
@const0_rtx = common dso_local global i64 0, align 8
@UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.df_ref*, i64, i64*, i32*, i32*, i32, i64*)* @get_biv_step_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_biv_step_1(%struct.df_ref* %0, i64 %1, i64* %2, i32* %3, i32* %4, i32 %5, i64* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.df_ref*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca %struct.df_ref*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.df_ref* %0, %struct.df_ref** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64* %2, i64** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i64* %6, i64** %15, align 8
  %28 = load i64, i64* @NULL_RTX, align 8
  store i64 %28, i64* %18, align 8
  %29 = load i64, i64* @NULL_RTX, align 8
  store i64 %29, i64* %19, align 8
  %30 = load %struct.df_ref*, %struct.df_ref** %9, align 8
  %31 = call i64 @DF_REF_INSN(%struct.df_ref* %30)
  store i64 %31, i64* %24, align 8
  %32 = load i64, i64* %24, align 8
  %33 = call i64 @single_set(i64 %32)
  store i64 %33, i64* %16, align 8
  %34 = load i64, i64* %16, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %259

37:                                               ; preds = %7
  %38 = load i64, i64* %24, align 8
  %39 = call i64 @find_reg_equal_equiv_note(i64 %38)
  store i64 %39, i64* %17, align 8
  %40 = load i64, i64* %17, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i64, i64* %17, align 8
  %44 = call i64 @XEXP(i64 %43, i32 0)
  store i64 %44, i64* %17, align 8
  br label %48

45:                                               ; preds = %37
  %46 = load i64, i64* %16, align 8
  %47 = call i64 @SET_SRC(i64 %46)
  store i64 %47, i64* %17, align 8
  br label %48

48:                                               ; preds = %45, %42
  %49 = load i64, i64* %17, align 8
  %50 = call i32 @GET_CODE(i64 %49)
  store i32 %50, i32* %23, align 4
  %51 = load i32, i32* %23, align 4
  switch i32 %51, label %113 [
    i32 129, label %52
    i32 131, label %52
    i32 132, label %54
    i32 133, label %54
    i32 130, label %98
    i32 128, label %98
  ]

52:                                               ; preds = %48, %48
  %53 = load i64, i64* %17, align 8
  store i64 %53, i64* %20, align 8
  br label %114

54:                                               ; preds = %48, %48
  %55 = load i64, i64* %17, align 8
  %56 = call i64 @XEXP(i64 %55, i32 0)
  store i64 %56, i64* %18, align 8
  %57 = load i64, i64* %17, align 8
  %58 = call i64 @XEXP(i64 %57, i32 1)
  store i64 %58, i64* %19, align 8
  %59 = load i32, i32* %23, align 4
  %60 = icmp eq i32 %59, 132
  br i1 %60, label %61, label %69

61:                                               ; preds = %54
  %62 = load i64, i64* %18, align 8
  %63 = call i32 @CONSTANT_P(i64 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load i64, i64* %18, align 8
  store i64 %66, i64* %22, align 8
  %67 = load i64, i64* %19, align 8
  store i64 %67, i64* %18, align 8
  %68 = load i64, i64* %22, align 8
  store i64 %68, i64* %19, align 8
  br label %69

69:                                               ; preds = %65, %61, %54
  %70 = load i64, i64* %18, align 8
  %71 = call i32 @simple_reg_p(i64 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = load i64, i64* %19, align 8
  %75 = call i32 @CONSTANT_P(i64 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %73, %69
  store i32 0, i32* %8, align 4
  br label %259

78:                                               ; preds = %73
  %79 = load i64, i64* %17, align 8
  %80 = call i32 @GET_MODE(i64 %79)
  %81 = load i32, i32* %14, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %96

83:                                               ; preds = %78
  %84 = load i64, i64* %18, align 8
  %85 = call i32 @GET_CODE(i64 %84)
  %86 = icmp ne i32 %85, 129
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  store i32 0, i32* %8, align 4
  br label %259

88:                                               ; preds = %83
  %89 = load i64, i64* %18, align 8
  %90 = call i64 @SUBREG_REG(i64 %89)
  %91 = call i32 @GET_MODE(i64 %90)
  %92 = load i32, i32* %14, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  store i32 0, i32* %8, align 4
  br label %259

95:                                               ; preds = %88
  br label %96

96:                                               ; preds = %95, %78
  %97 = load i64, i64* %18, align 8
  store i64 %97, i64* %20, align 8
  br label %114

98:                                               ; preds = %48, %48
  %99 = load i64, i64* %17, align 8
  %100 = call i32 @GET_MODE(i64 %99)
  %101 = load i32, i32* %14, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  store i32 0, i32* %8, align 4
  br label %259

104:                                              ; preds = %98
  %105 = load i64, i64* %17, align 8
  %106 = call i64 @XEXP(i64 %105, i32 0)
  store i64 %106, i64* %18, align 8
  %107 = load i64, i64* %18, align 8
  %108 = call i32 @simple_reg_p(i64 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %104
  store i32 0, i32* %8, align 4
  br label %259

111:                                              ; preds = %104
  %112 = load i64, i64* %18, align 8
  store i64 %112, i64* %20, align 8
  br label %114

113:                                              ; preds = %48
  store i32 0, i32* %8, align 4
  br label %259

114:                                              ; preds = %111, %96, %52
  %115 = load i64, i64* %20, align 8
  %116 = call i32 @GET_CODE(i64 %115)
  %117 = icmp eq i32 %116, 129
  br i1 %117, label %118, label %132

118:                                              ; preds = %114
  %119 = load i64, i64* %20, align 8
  %120 = call i32 @subreg_lowpart_p(i64 %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %118
  store i32 0, i32* %8, align 4
  br label %259

123:                                              ; preds = %118
  %124 = load i64, i64* %20, align 8
  %125 = call i64 @SUBREG_REG(i64 %124)
  store i64 %125, i64* %21, align 8
  %126 = load i64, i64* %21, align 8
  %127 = call i32 @GET_MODE(i64 %126)
  %128 = load i32, i32* %14, align 4
  %129 = icmp ne i32 %127, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %123
  store i32 0, i32* %8, align 4
  br label %259

131:                                              ; preds = %123
  br label %134

132:                                              ; preds = %114
  %133 = load i64, i64* %20, align 8
  store i64 %133, i64* %21, align 8
  br label %134

134:                                              ; preds = %132, %131
  %135 = load i64, i64* %24, align 8
  %136 = load i64, i64* %21, align 8
  %137 = call i32 @iv_get_reaching_def(i64 %135, i64 %136, %struct.df_ref** %25)
  store i32 %137, i32* %26, align 4
  %138 = load i32, i32* %26, align 4
  %139 = load i32, i32* @GRD_INVALID, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %145, label %141

141:                                              ; preds = %134
  %142 = load i32, i32* %26, align 4
  %143 = load i32, i32* @GRD_INVARIANT, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %141, %134
  store i32 0, i32* %8, align 4
  br label %259

146:                                              ; preds = %141
  %147 = load i32, i32* %26, align 4
  %148 = load i32, i32* @GRD_MAYBE_BIV, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %165

150:                                              ; preds = %146
  %151 = load i64, i64* %21, align 8
  %152 = load i64, i64* %10, align 8
  %153 = call i32 @rtx_equal_p(i64 %151, i64 %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %156, label %155

155:                                              ; preds = %150
  store i32 0, i32* %8, align 4
  br label %259

156:                                              ; preds = %150
  %157 = load i64, i64* @const0_rtx, align 8
  %158 = load i64*, i64** %11, align 8
  store i64 %157, i64* %158, align 8
  %159 = load i32, i32* @UNKNOWN, align 4
  %160 = load i32*, i32** %13, align 8
  store i32 %159, i32* %160, align 4
  %161 = load i32, i32* %14, align 4
  %162 = load i32*, i32** %12, align 8
  store i32 %161, i32* %162, align 4
  %163 = load i64, i64* @const0_rtx, align 8
  %164 = load i64*, i64** %15, align 8
  store i64 %163, i64* %164, align 8
  br label %177

165:                                              ; preds = %146
  %166 = load %struct.df_ref*, %struct.df_ref** %25, align 8
  %167 = load i64, i64* %10, align 8
  %168 = load i64*, i64** %11, align 8
  %169 = load i32*, i32** %12, align 8
  %170 = load i32*, i32** %13, align 8
  %171 = load i32, i32* %14, align 4
  %172 = load i64*, i64** %15, align 8
  %173 = call i32 @get_biv_step_1(%struct.df_ref* %166, i64 %167, i64* %168, i32* %169, i32* %170, i32 %171, i64* %172)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %176, label %175

175:                                              ; preds = %165
  store i32 0, i32* %8, align 4
  br label %259

176:                                              ; preds = %165
  br label %177

177:                                              ; preds = %176, %156
  %178 = load i64, i64* %20, align 8
  %179 = call i32 @GET_CODE(i64 %178)
  %180 = icmp eq i32 %179, 129
  br i1 %180, label %181, label %205

181:                                              ; preds = %177
  %182 = load i64, i64* %20, align 8
  %183 = call i32 @GET_MODE(i64 %182)
  store i32 %183, i32* %27, align 4
  %184 = load i32, i32* %27, align 4
  %185 = call i64 @GET_MODE_SIZE(i32 %184)
  %186 = load i32*, i32** %12, align 8
  %187 = load i32, i32* %186, align 4
  %188 = call i64 @GET_MODE_SIZE(i32 %187)
  %189 = icmp sgt i64 %185, %188
  br i1 %189, label %190, label %191

190:                                              ; preds = %181
  store i32 0, i32* %8, align 4
  br label %259

191:                                              ; preds = %181
  %192 = load i32, i32* %27, align 4
  %193 = load i32*, i32** %12, align 8
  store i32 %192, i32* %193, align 4
  %194 = load i32, i32* %14, align 4
  %195 = load i64*, i64** %11, align 8
  %196 = load i64, i64* %195, align 8
  %197 = load i64*, i64** %15, align 8
  %198 = load i64, i64* %197, align 8
  %199 = call i64 @simplify_gen_binary(i32 132, i32 %194, i64 %196, i64 %198)
  %200 = load i64*, i64** %11, align 8
  store i64 %199, i64* %200, align 8
  %201 = load i64, i64* @const0_rtx, align 8
  %202 = load i64*, i64** %15, align 8
  store i64 %201, i64* %202, align 8
  %203 = load i32, i32* @UNKNOWN, align 4
  %204 = load i32*, i32** %13, align 8
  store i32 %203, i32* %204, align 4
  br label %205

205:                                              ; preds = %191, %177
  %206 = load i32, i32* %23, align 4
  switch i32 %206, label %257 [
    i32 131, label %207
    i32 129, label %207
    i32 132, label %208
    i32 133, label %208
    i32 130, label %235
    i32 128, label %235
  ]

207:                                              ; preds = %205, %205
  br label %258

208:                                              ; preds = %205, %205
  %209 = load i32*, i32** %12, align 8
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* %14, align 4
  %212 = icmp eq i32 %210, %211
  br i1 %212, label %218, label %213

213:                                              ; preds = %208
  %214 = load i64, i64* %17, align 8
  %215 = call i32 @GET_MODE(i64 %214)
  %216 = load i32, i32* %14, align 4
  %217 = icmp ne i32 %215, %216
  br i1 %217, label %218, label %226

218:                                              ; preds = %213, %208
  %219 = load i32, i32* %23, align 4
  %220 = load i32, i32* %14, align 4
  %221 = load i64*, i64** %11, align 8
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* %19, align 8
  %224 = call i64 @simplify_gen_binary(i32 %219, i32 %220, i64 %222, i64 %223)
  %225 = load i64*, i64** %11, align 8
  store i64 %224, i64* %225, align 8
  br label %234

226:                                              ; preds = %213
  %227 = load i32, i32* %23, align 4
  %228 = load i32, i32* %14, align 4
  %229 = load i64*, i64** %15, align 8
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* %19, align 8
  %232 = call i64 @simplify_gen_binary(i32 %227, i32 %228, i64 %230, i64 %231)
  %233 = load i64*, i64** %15, align 8
  store i64 %232, i64* %233, align 8
  br label %234

234:                                              ; preds = %226, %218
  br label %258

235:                                              ; preds = %205, %205
  %236 = load i64, i64* %18, align 8
  %237 = call i32 @GET_MODE(i64 %236)
  %238 = load i32*, i32** %12, align 8
  %239 = load i32, i32* %238, align 4
  %240 = icmp eq i32 %237, %239
  br i1 %240, label %241, label %251

241:                                              ; preds = %235
  %242 = load i32*, i32** %13, align 8
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* @UNKNOWN, align 4
  %245 = icmp eq i32 %243, %244
  br i1 %245, label %246, label %251

246:                                              ; preds = %241
  %247 = load i64*, i64** %15, align 8
  %248 = load i64, i64* %247, align 8
  %249 = load i64, i64* @const0_rtx, align 8
  %250 = icmp eq i64 %248, %249
  br label %251

251:                                              ; preds = %246, %241, %235
  %252 = phi i1 [ false, %241 ], [ false, %235 ], [ %250, %246 ]
  %253 = zext i1 %252 to i32
  %254 = call i32 @gcc_assert(i32 %253)
  %255 = load i32, i32* %23, align 4
  %256 = load i32*, i32** %13, align 8
  store i32 %255, i32* %256, align 4
  br label %258

257:                                              ; preds = %205
  store i32 0, i32* %8, align 4
  br label %259

258:                                              ; preds = %251, %234, %207
  store i32 1, i32* %8, align 4
  br label %259

259:                                              ; preds = %258, %257, %190, %175, %155, %145, %130, %122, %113, %110, %103, %94, %87, %77, %36
  %260 = load i32, i32* %8, align 4
  ret i32 %260
}

declare dso_local i64 @DF_REF_INSN(%struct.df_ref*) #1

declare dso_local i64 @single_set(i64) #1

declare dso_local i64 @find_reg_equal_equiv_note(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @SET_SRC(i64) #1

declare dso_local i32 @GET_CODE(i64) #1

declare dso_local i32 @CONSTANT_P(i64) #1

declare dso_local i32 @simple_reg_p(i64) #1

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i64 @SUBREG_REG(i64) #1

declare dso_local i32 @subreg_lowpart_p(i64) #1

declare dso_local i32 @iv_get_reaching_def(i64, i64, %struct.df_ref**) #1

declare dso_local i32 @rtx_equal_p(i64, i64) #1

declare dso_local i64 @GET_MODE_SIZE(i32) #1

declare dso_local i64 @simplify_gen_binary(i32, i32, i64, i64) #1

declare dso_local i32 @gcc_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
