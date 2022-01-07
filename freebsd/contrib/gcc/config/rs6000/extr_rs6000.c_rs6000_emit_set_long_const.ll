; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_emit_set_long_const.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_emit_set_long_const.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_POWERPC64 = common dso_local global i32 0, align 4
@WORDS_BIG_ENDIAN = common dso_local global i64 0, align 8
@DImode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @rs6000_emit_set_long_const to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs6000_emit_set_long_const(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* @TARGET_POWERPC64, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %36, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* %4, align 4
  %17 = load i64, i64* @WORDS_BIG_ENDIAN, align 8
  %18 = icmp eq i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = load i32, i32* @DImode, align 4
  %21 = call i32 @operand_subword_force(i32 %16, i32 %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i64, i64* @WORDS_BIG_ENDIAN, align 8
  %24 = icmp ne i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = load i32, i32* @DImode, align 4
  %27 = call i32 @operand_subword_force(i32 %22, i32 %25, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @GEN_INT(i32 %29)
  %31 = call i32 @emit_move_insn(i32 %28, i32 %30)
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @GEN_INT(i32 %33)
  %35 = call i32 @emit_move_insn(i32 %32, i32 %34)
  br label %262

36:                                               ; preds = %3
  %37 = load i32, i32* %5, align 4
  %38 = and i32 %37, 65535
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %5, align 4
  %40 = and i32 %39, -65536
  %41 = lshr i32 %40, 16
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %6, align 4
  %43 = and i32 %42, 65535
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %6, align 4
  %45 = and i32 %44, -65536
  %46 = lshr i32 %45, 16
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp eq i32 %47, 65535
  br i1 %48, label %49, label %59

49:                                               ; preds = %36
  %50 = load i32, i32* %11, align 4
  %51 = icmp eq i32 %50, 65535
  br i1 %51, label %52, label %59

52:                                               ; preds = %49
  %53 = load i32, i32* %10, align 4
  %54 = icmp eq i32 %53, 65535
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load i32, i32* %9, align 4
  %57 = and i32 %56, 32768
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %72, label %59

59:                                               ; preds = %55, %52, %49, %36
  %60 = load i32, i32* %12, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %89

62:                                               ; preds = %59
  %63 = load i32, i32* %11, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %89

65:                                               ; preds = %62
  %66 = load i32, i32* %10, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %89

68:                                               ; preds = %65
  %69 = load i32, i32* %9, align 4
  %70 = and i32 %69, 32768
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %89, label %72

72:                                               ; preds = %68, %55
  %73 = load i32, i32* %9, align 4
  %74 = and i32 %73, 32768
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %72
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* %9, align 4
  %79 = xor i32 %78, 32768
  %80 = sub nsw i32 %79, 32768
  %81 = call i32 @GEN_INT(i32 %80)
  %82 = call i32 @emit_move_insn(i32 %77, i32 %81)
  br label %88

83:                                               ; preds = %72
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @GEN_INT(i32 %85)
  %87 = call i32 @emit_move_insn(i32 %84, i32 %86)
  br label %88

88:                                               ; preds = %83, %76
  br label %261

89:                                               ; preds = %68, %65, %62, %59
  %90 = load i32, i32* %12, align 4
  %91 = icmp eq i32 %90, 65535
  br i1 %91, label %92, label %99

92:                                               ; preds = %89
  %93 = load i32, i32* %11, align 4
  %94 = icmp eq i32 %93, 65535
  br i1 %94, label %95, label %99

95:                                               ; preds = %92
  %96 = load i32, i32* %10, align 4
  %97 = and i32 %96, 32768
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %109, label %99

99:                                               ; preds = %95, %92, %89
  %100 = load i32, i32* %12, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %139

102:                                              ; preds = %99
  %103 = load i32, i32* %11, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %139

105:                                              ; preds = %102
  %106 = load i32, i32* %10, align 4
  %107 = and i32 %106, 32768
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %139, label %109

109:                                              ; preds = %105, %95
  %110 = load i32, i32* %10, align 4
  %111 = and i32 %110, 32768
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %109
  %114 = load i32, i32* %4, align 4
  %115 = load i32, i32* %10, align 4
  %116 = shl i32 %115, 16
  %117 = xor i32 %116, -2147483648
  %118 = sub i32 %117, -2147483648
  %119 = call i32 @GEN_INT(i32 %118)
  %120 = call i32 @emit_move_insn(i32 %114, i32 %119)
  br label %127

121:                                              ; preds = %109
  %122 = load i32, i32* %4, align 4
  %123 = load i32, i32* %10, align 4
  %124 = shl i32 %123, 16
  %125 = call i32 @GEN_INT(i32 %124)
  %126 = call i32 @emit_move_insn(i32 %122, i32 %125)
  br label %127

127:                                              ; preds = %121, %113
  %128 = load i32, i32* %9, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %138

130:                                              ; preds = %127
  %131 = load i32, i32* %4, align 4
  %132 = load i32, i32* @DImode, align 4
  %133 = load i32, i32* %4, align 4
  %134 = load i32, i32* %9, align 4
  %135 = call i32 @GEN_INT(i32 %134)
  %136 = call i32 @gen_rtx_IOR(i32 %132, i32 %133, i32 %135)
  %137 = call i32 @emit_move_insn(i32 %131, i32 %136)
  br label %138

138:                                              ; preds = %130, %127
  br label %260

139:                                              ; preds = %105, %102, %99
  %140 = load i32, i32* %12, align 4
  %141 = icmp eq i32 %140, 65535
  br i1 %141, label %142, label %146

142:                                              ; preds = %139
  %143 = load i32, i32* %11, align 4
  %144 = and i32 %143, 32768
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %153, label %146

146:                                              ; preds = %142, %139
  %147 = load i32, i32* %12, align 4
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %200

149:                                              ; preds = %146
  %150 = load i32, i32* %11, align 4
  %151 = and i32 %150, 32768
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %200, label %153

153:                                              ; preds = %149, %142
  %154 = load i32, i32* %11, align 4
  %155 = and i32 %154, 32768
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %165

157:                                              ; preds = %153
  %158 = load i32, i32* %4, align 4
  %159 = load i32, i32* %11, align 4
  %160 = shl i32 %159, 16
  %161 = xor i32 %160, -2147483648
  %162 = sub i32 %161, -2147483648
  %163 = call i32 @GEN_INT(i32 %162)
  %164 = call i32 @emit_move_insn(i32 %158, i32 %163)
  br label %171

165:                                              ; preds = %153
  %166 = load i32, i32* %4, align 4
  %167 = load i32, i32* %11, align 4
  %168 = shl i32 %167, 16
  %169 = call i32 @GEN_INT(i32 %168)
  %170 = call i32 @emit_move_insn(i32 %166, i32 %169)
  br label %171

171:                                              ; preds = %165, %157
  %172 = load i32, i32* %10, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %182

174:                                              ; preds = %171
  %175 = load i32, i32* %4, align 4
  %176 = load i32, i32* @DImode, align 4
  %177 = load i32, i32* %4, align 4
  %178 = load i32, i32* %10, align 4
  %179 = call i32 @GEN_INT(i32 %178)
  %180 = call i32 @gen_rtx_IOR(i32 %176, i32 %177, i32 %179)
  %181 = call i32 @emit_move_insn(i32 %175, i32 %180)
  br label %182

182:                                              ; preds = %174, %171
  %183 = load i32, i32* %4, align 4
  %184 = load i32, i32* @DImode, align 4
  %185 = load i32, i32* %4, align 4
  %186 = call i32 @GEN_INT(i32 16)
  %187 = call i32 @gen_rtx_ASHIFT(i32 %184, i32 %185, i32 %186)
  %188 = call i32 @emit_move_insn(i32 %183, i32 %187)
  %189 = load i32, i32* %9, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %199

191:                                              ; preds = %182
  %192 = load i32, i32* %4, align 4
  %193 = load i32, i32* @DImode, align 4
  %194 = load i32, i32* %4, align 4
  %195 = load i32, i32* %9, align 4
  %196 = call i32 @GEN_INT(i32 %195)
  %197 = call i32 @gen_rtx_IOR(i32 %193, i32 %194, i32 %196)
  %198 = call i32 @emit_move_insn(i32 %192, i32 %197)
  br label %199

199:                                              ; preds = %191, %182
  br label %259

200:                                              ; preds = %149, %146
  %201 = load i32, i32* %12, align 4
  %202 = and i32 %201, 32768
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %212

204:                                              ; preds = %200
  %205 = load i32, i32* %4, align 4
  %206 = load i32, i32* %12, align 4
  %207 = shl i32 %206, 16
  %208 = xor i32 %207, -2147483648
  %209 = sub i32 %208, -2147483648
  %210 = call i32 @GEN_INT(i32 %209)
  %211 = call i32 @emit_move_insn(i32 %205, i32 %210)
  br label %218

212:                                              ; preds = %200
  %213 = load i32, i32* %4, align 4
  %214 = load i32, i32* %12, align 4
  %215 = shl i32 %214, 16
  %216 = call i32 @GEN_INT(i32 %215)
  %217 = call i32 @emit_move_insn(i32 %213, i32 %216)
  br label %218

218:                                              ; preds = %212, %204
  %219 = load i32, i32* %11, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %229

221:                                              ; preds = %218
  %222 = load i32, i32* %4, align 4
  %223 = load i32, i32* @DImode, align 4
  %224 = load i32, i32* %4, align 4
  %225 = load i32, i32* %11, align 4
  %226 = call i32 @GEN_INT(i32 %225)
  %227 = call i32 @gen_rtx_IOR(i32 %223, i32 %224, i32 %226)
  %228 = call i32 @emit_move_insn(i32 %222, i32 %227)
  br label %229

229:                                              ; preds = %221, %218
  %230 = load i32, i32* %4, align 4
  %231 = load i32, i32* @DImode, align 4
  %232 = load i32, i32* %4, align 4
  %233 = call i32 @GEN_INT(i32 32)
  %234 = call i32 @gen_rtx_ASHIFT(i32 %231, i32 %232, i32 %233)
  %235 = call i32 @emit_move_insn(i32 %230, i32 %234)
  %236 = load i32, i32* %10, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %247

238:                                              ; preds = %229
  %239 = load i32, i32* %4, align 4
  %240 = load i32, i32* @DImode, align 4
  %241 = load i32, i32* %4, align 4
  %242 = load i32, i32* %10, align 4
  %243 = shl i32 %242, 16
  %244 = call i32 @GEN_INT(i32 %243)
  %245 = call i32 @gen_rtx_IOR(i32 %240, i32 %241, i32 %244)
  %246 = call i32 @emit_move_insn(i32 %239, i32 %245)
  br label %247

247:                                              ; preds = %238, %229
  %248 = load i32, i32* %9, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %258

250:                                              ; preds = %247
  %251 = load i32, i32* %4, align 4
  %252 = load i32, i32* @DImode, align 4
  %253 = load i32, i32* %4, align 4
  %254 = load i32, i32* %9, align 4
  %255 = call i32 @GEN_INT(i32 %254)
  %256 = call i32 @gen_rtx_IOR(i32 %252, i32 %253, i32 %255)
  %257 = call i32 @emit_move_insn(i32 %251, i32 %256)
  br label %258

258:                                              ; preds = %250, %247
  br label %259

259:                                              ; preds = %258, %199
  br label %260

260:                                              ; preds = %259, %138
  br label %261

261:                                              ; preds = %260, %88
  br label %262

262:                                              ; preds = %261, %15
  %263 = load i32, i32* %4, align 4
  ret i32 %263
}

declare dso_local i32 @operand_subword_force(i32, i32, i32) #1

declare dso_local i32 @emit_move_insn(i32, i32) #1

declare dso_local i32 @GEN_INT(i32) #1

declare dso_local i32 @gen_rtx_IOR(i32, i32, i32) #1

declare dso_local i32 @gen_rtx_ASHIFT(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
