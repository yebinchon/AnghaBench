; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_see.c_see_analyze_one_def.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_see.c_see_analyze_one_def.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_MACHINE_MODE = common dso_local global i32 0, align 4
@NOT_RELEVANT = common dso_local global i32 0, align 4
@REG_LIBCALL = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i32 0, align 4
@REG_RETVAL = common dso_local global i32 0, align 4
@PARALLEL = common dso_local global i32 0, align 4
@SIGN_EXTENDED_DEF = common dso_local global i32 0, align 4
@ZERO_EXTENDED_DEF = common dso_local global i32 0, align 4
@EXTENDED_DEF = common dso_local global i32 0, align 4
@MODE_INT = common dso_local global i32 0, align 4
@BITS_PER_WORD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @see_analyze_one_def to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @see_analyze_one_def(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %22 = load i32, i32* @MAX_MACHINE_MODE, align 4
  %23 = load i32*, i32** %6, align 8
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* @MAX_MACHINE_MODE, align 4
  %25 = load i32*, i32** %7, align 8
  store i32 %24, i32* %25, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* @NOT_RELEVANT, align 4
  store i32 %29, i32* %4, align 4
  br label %242

30:                                               ; preds = %3
  %31 = load i32*, i32** %5, align 8
  %32 = call i64 @INSN_P(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* @NOT_RELEVANT, align 4
  store i32 %35, i32* %4, align 4
  br label %242

36:                                               ; preds = %30
  %37 = load i32*, i32** %5, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @see_get_extension_data(i32* %37, i32* %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  switch i32 %40, label %240 [
    i32 130, label %41
    i32 128, label %41
    i32 129, label %126
  ]

41:                                               ; preds = %36, %36
  %42 = load i32*, i32** %5, align 8
  %43 = call i32* @see_get_extension_reg(i32* %42, i32 0)
  store i32* %43, i32** %12, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = call i32* @PREV_INSN(i32* %44)
  store i32* %45, i32** %13, align 8
  %46 = load i32*, i32** %13, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load i32*, i32** %13, align 8
  %50 = call i64 @INSN_P(i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %48, %41
  %53 = load i32, i32* @NOT_RELEVANT, align 4
  store i32 %53, i32* %4, align 4
  br label %242

54:                                               ; preds = %48
  %55 = load i32*, i32** %12, align 8
  %56 = load i32*, i32** %13, align 8
  %57 = call i32* @PREV_INSN(i32* %56)
  %58 = load i32*, i32** %5, align 8
  %59 = call i32 @reg_set_between_p(i32* %55, i32* %57, i32* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %54
  %62 = load i32, i32* @NOT_RELEVANT, align 4
  store i32 %62, i32* %4, align 4
  br label %242

63:                                               ; preds = %54
  %64 = load i32*, i32** %13, align 8
  %65 = load i32, i32* @REG_LIBCALL, align 4
  %66 = load i32, i32* @NULL_RTX, align 4
  %67 = call i32 @find_reg_note(i32* %64, i32 %65, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = load i32, i32* @NOT_RELEVANT, align 4
  store i32 %70, i32* %4, align 4
  br label %242

71:                                               ; preds = %63
  %72 = load i32*, i32** %13, align 8
  %73 = load i32, i32* @REG_RETVAL, align 4
  %74 = load i32, i32* @NULL_RTX, align 4
  %75 = call i32 @find_reg_note(i32* %72, i32 %73, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %71
  %78 = load i32, i32* @NOT_RELEVANT, align 4
  store i32 %78, i32* %4, align 4
  br label %242

79:                                               ; preds = %71
  %80 = load i32*, i32** %13, align 8
  %81 = call i32* @PATTERN(i32* %80)
  %82 = call i32 @GET_CODE(i32* %81)
  %83 = load i32, i32* @PARALLEL, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %79
  %86 = load i32*, i32** %13, align 8
  %87 = call i32* @PATTERN(i32* %86)
  %88 = call i32 @asm_noperands(i32* %87)
  %89 = icmp sge i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = load i32, i32* @NOT_RELEVANT, align 4
  store i32 %91, i32* %4, align 4
  br label %242

92:                                               ; preds = %85, %79
  %93 = load i32*, i32** %5, align 8
  %94 = call i32* @NEXT_INSN(i32* %93)
  store i32* %94, i32** %14, align 8
  %95 = load i32*, i32** %14, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %119

97:                                               ; preds = %92
  %98 = load i32*, i32** %14, align 8
  %99 = call i64 @INSN_P(i32* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %119

101:                                              ; preds = %97
  %102 = load i32*, i32** %14, align 8
  %103 = call i32 @see_get_extension_data(i32* %102, i32* %16)
  %104 = load i32, i32* @NOT_RELEVANT, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %119

106:                                              ; preds = %101
  %107 = load i32*, i32** %5, align 8
  %108 = call i32* @see_get_extension_reg(i32* %107, i32 1)
  store i32* %108, i32** %20, align 8
  %109 = load i32*, i32** %14, align 8
  %110 = call i32* @see_get_extension_reg(i32* %109, i32 0)
  store i32* %110, i32** %21, align 8
  %111 = load i32*, i32** %20, align 8
  %112 = call i32 @REGNO(i32* %111)
  %113 = load i32*, i32** %21, align 8
  %114 = call i32 @REGNO(i32* %113)
  %115 = icmp eq i32 %112, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %106
  %117 = load i32, i32* @NOT_RELEVANT, align 4
  store i32 %117, i32* %4, align 4
  br label %242

118:                                              ; preds = %106
  br label %119

119:                                              ; preds = %118, %101, %97, %92
  %120 = load i32, i32* %8, align 4
  %121 = icmp eq i32 %120, 130
  br i1 %121, label %122, label %124

122:                                              ; preds = %119
  %123 = load i32, i32* @SIGN_EXTENDED_DEF, align 4
  store i32 %123, i32* %4, align 4
  br label %242

124:                                              ; preds = %119
  %125 = load i32, i32* @ZERO_EXTENDED_DEF, align 4
  store i32 %125, i32* %4, align 4
  br label %242

126:                                              ; preds = %36
  %127 = load i32*, i32** %5, align 8
  %128 = call i32* @single_set(i32* %127)
  store i32* %128, i32** %11, align 8
  %129 = load i32*, i32** %11, align 8
  %130 = icmp ne i32* %129, null
  br i1 %130, label %133, label %131

131:                                              ; preds = %126
  %132 = load i32, i32* @NOT_RELEVANT, align 4
  store i32 %132, i32* %4, align 4
  br label %242

133:                                              ; preds = %126
  %134 = load i32*, i32** %11, align 8
  %135 = call i32* @SET_SRC(i32* %134)
  store i32* %135, i32** %9, align 8
  %136 = load i32*, i32** %11, align 8
  %137 = call i32* @SET_DEST(i32* %136)
  store i32* %137, i32** %10, align 8
  %138 = load i32*, i32** %10, align 8
  %139 = call i32 @REG_P(i32* %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %147, label %141

141:                                              ; preds = %133
  %142 = load i32*, i32** %10, align 8
  %143 = call i32 @SUBREG_REG(i32* %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %147, label %145

145:                                              ; preds = %141
  %146 = load i32, i32* @NOT_RELEVANT, align 4
  store i32 %146, i32* %4, align 4
  br label %242

147:                                              ; preds = %141, %133
  %148 = load i32*, i32** %9, align 8
  %149 = call i32 @GET_CODE(i32* %148)
  switch i32 %149, label %238 [
    i32 130, label %150
    i32 128, label %158
    i32 131, label %166
  ]

150:                                              ; preds = %147
  %151 = load i32*, i32** %9, align 8
  %152 = call i32 @XEXP(i32* %151, i32 0)
  %153 = call i32 @GET_MODE(i32 %152)
  %154 = load i32*, i32** %6, align 8
  store i32 %153, i32* %154, align 4
  %155 = load i32, i32* @MAX_MACHINE_MODE, align 4
  %156 = load i32*, i32** %7, align 8
  store i32 %155, i32* %156, align 4
  %157 = load i32, i32* @EXTENDED_DEF, align 4
  store i32 %157, i32* %4, align 4
  br label %242

158:                                              ; preds = %147
  %159 = load i32, i32* @MAX_MACHINE_MODE, align 4
  %160 = load i32*, i32** %6, align 8
  store i32 %159, i32* %160, align 4
  %161 = load i32*, i32** %9, align 8
  %162 = call i32 @XEXP(i32* %161, i32 0)
  %163 = call i32 @GET_MODE(i32 %162)
  %164 = load i32*, i32** %7, align 8
  store i32 %163, i32* %164, align 4
  %165 = load i32, i32* @EXTENDED_DEF, align 4
  store i32 %165, i32* %4, align 4
  br label %242

166:                                              ; preds = %147
  %167 = load i32*, i32** %9, align 8
  %168 = call i32 @INTVAL(i32* %167)
  store i32 %168, i32* %17, align 4
  %169 = load i32, i32* @MODE_INT, align 4
  %170 = call i32 @GET_CLASS_NARROWEST_MODE(i32 %169)
  store i32 %170, i32* %15, align 4
  store i32 0, i32* %19, align 4
  br label %171

171:                                              ; preds = %219, %166
  %172 = load i32, i32* %15, align 4
  %173 = call i32 @GET_MODE_BITSIZE(i32 %172)
  %174 = load i32, i32* @BITS_PER_WORD, align 4
  %175 = icmp slt i32 %173, %174
  br i1 %175, label %176, label %224

176:                                              ; preds = %171
  %177 = load i32, i32* %17, align 4
  %178 = load i32, i32* %15, align 4
  %179 = call i32 @trunc_int_for_mode(i32 %177, i32 %178)
  store i32 %179, i32* %18, align 4
  %180 = load i32, i32* %18, align 4
  %181 = load i32, i32* %17, align 4
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %183, label %191

183:                                              ; preds = %176
  %184 = load i32*, i32** %6, align 8
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @MAX_MACHINE_MODE, align 4
  %187 = icmp eq i32 %185, %186
  br i1 %187, label %188, label %191

188:                                              ; preds = %183
  %189 = load i32, i32* %15, align 4
  %190 = load i32*, i32** %6, align 8
  store i32 %189, i32* %190, align 4
  br label %191

191:                                              ; preds = %188, %183, %176
  %192 = load i32, i32* %17, align 4
  %193 = load i32, i32* %17, align 4
  %194 = load i32, i32* %15, align 4
  %195 = call i32 @GET_MODE_MASK(i32 %194)
  %196 = and i32 %193, %195
  %197 = icmp eq i32 %192, %196
  br i1 %197, label %198, label %206

198:                                              ; preds = %191
  %199 = load i32*, i32** %7, align 8
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @MAX_MACHINE_MODE, align 4
  %202 = icmp eq i32 %200, %201
  br i1 %202, label %203, label %206

203:                                              ; preds = %198
  %204 = load i32, i32* %15, align 4
  %205 = load i32*, i32** %7, align 8
  store i32 %204, i32* %205, align 4
  br label %206

206:                                              ; preds = %203, %198, %191
  %207 = load i32*, i32** %6, align 8
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* @MAX_MACHINE_MODE, align 4
  %210 = icmp ne i32 %208, %209
  br i1 %210, label %211, label %218

211:                                              ; preds = %206
  %212 = load i32*, i32** %7, align 8
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @MAX_MACHINE_MODE, align 4
  %215 = icmp ne i32 %213, %214
  br i1 %215, label %216, label %218

216:                                              ; preds = %211
  %217 = load i32, i32* @EXTENDED_DEF, align 4
  store i32 %217, i32* %4, align 4
  br label %242

218:                                              ; preds = %211, %206
  br label %219

219:                                              ; preds = %218
  %220 = load i32, i32* %15, align 4
  %221 = call i32 @GET_MODE_WIDER_MODE(i32 %220)
  store i32 %221, i32* %15, align 4
  %222 = load i32, i32* %19, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %19, align 4
  br label %171

224:                                              ; preds = %171
  %225 = load i32*, i32** %6, align 8
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* @MAX_MACHINE_MODE, align 4
  %228 = icmp ne i32 %226, %227
  br i1 %228, label %234, label %229

229:                                              ; preds = %224
  %230 = load i32*, i32** %7, align 8
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* @MAX_MACHINE_MODE, align 4
  %233 = icmp ne i32 %231, %232
  br i1 %233, label %234, label %236

234:                                              ; preds = %229, %224
  %235 = load i32, i32* @EXTENDED_DEF, align 4
  store i32 %235, i32* %4, align 4
  br label %242

236:                                              ; preds = %229
  %237 = load i32, i32* @NOT_RELEVANT, align 4
  store i32 %237, i32* %4, align 4
  br label %242

238:                                              ; preds = %147
  %239 = load i32, i32* @NOT_RELEVANT, align 4
  store i32 %239, i32* %4, align 4
  br label %242

240:                                              ; preds = %36
  %241 = call i32 (...) @gcc_unreachable()
  br label %242

242:                                              ; preds = %28, %34, %52, %61, %69, %77, %90, %116, %122, %124, %131, %145, %150, %158, %216, %234, %236, %238, %240
  %243 = load i32, i32* %4, align 4
  ret i32 %243
}

declare dso_local i64 @INSN_P(i32*) #1

declare dso_local i32 @see_get_extension_data(i32*, i32*) #1

declare dso_local i32* @see_get_extension_reg(i32*, i32) #1

declare dso_local i32* @PREV_INSN(i32*) #1

declare dso_local i32 @reg_set_between_p(i32*, i32*, i32*) #1

declare dso_local i32 @find_reg_note(i32*, i32, i32) #1

declare dso_local i32 @GET_CODE(i32*) #1

declare dso_local i32* @PATTERN(i32*) #1

declare dso_local i32 @asm_noperands(i32*) #1

declare dso_local i32* @NEXT_INSN(i32*) #1

declare dso_local i32 @REGNO(i32*) #1

declare dso_local i32* @single_set(i32*) #1

declare dso_local i32* @SET_SRC(i32*) #1

declare dso_local i32* @SET_DEST(i32*) #1

declare dso_local i32 @REG_P(i32*) #1

declare dso_local i32 @SUBREG_REG(i32*) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @XEXP(i32*, i32) #1

declare dso_local i32 @INTVAL(i32*) #1

declare dso_local i32 @GET_CLASS_NARROWEST_MODE(i32) #1

declare dso_local i32 @GET_MODE_BITSIZE(i32) #1

declare dso_local i32 @trunc_int_for_mode(i32, i32) #1

declare dso_local i32 @GET_MODE_MASK(i32) #1

declare dso_local i32 @GET_MODE_WIDER_MODE(i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
