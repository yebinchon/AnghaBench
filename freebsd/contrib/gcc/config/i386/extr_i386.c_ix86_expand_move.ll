; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_expand_move.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_expand_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reload_in_progress = common dso_local global i64 0, align 8
@reload_completed = common dso_local global i64 0, align 8
@SYMBOL_REF = common dso_local global i64 0, align 8
@CONST = common dso_local global i64 0, align 8
@PLUS = common dso_local global i64 0, align 8
@Pmode = common dso_local global i32 0, align 4
@OPTAB_DIRECT = common dso_local global i32 0, align 4
@flag_pic = common dso_local global i64 0, align 8
@TARGET_MACHO = common dso_local global i64 0, align 8
@TARGET_64BIT = common dso_local global i64 0, align 8
@MEM = common dso_local global i64 0, align 8
@DImode = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@optimize = common dso_local global i64 0, align 8
@CONST_DOUBLE = common dso_local global i64 0, align 8
@MACHOPIC_INDIRECT = common dso_local global i64 0, align 8
@MACHOPIC_PURE = common dso_local global i64 0, align 8
@REG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ix86_expand_move(i32 %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i64* %1, i64** %4, align 8
  %11 = load i64, i64* @reload_in_progress, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i64, i64* @reload_completed, align 8
  %15 = icmp ne i64 %14, 0
  br label %16

16:                                               ; preds = %13, %2
  %17 = phi i1 [ true, %2 ], [ %15, %13 ]
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %5, align 4
  %19 = load i64*, i64** %4, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %6, align 8
  %22 = load i64*, i64** %4, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 1
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call i64 @GET_CODE(i64 %25)
  %27 = load i64, i64* @SYMBOL_REF, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %47

29:                                               ; preds = %16
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @SYMBOL_REF_TLS_MODEL(i64 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %29
  %35 = load i64, i64* %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i64 @legitimize_tls_address(i64 %35, i32 %36, i32 1)
  store i64 %37, i64* %7, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* %6, align 8
  %40 = call i64 @force_operand(i64 %38, i64 %39)
  store i64 %40, i64* %7, align 8
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* %6, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  br label %250

45:                                               ; preds = %34
  br label %46

46:                                               ; preds = %45, %29
  br label %97

47:                                               ; preds = %16
  %48 = load i64, i64* %7, align 8
  %49 = call i64 @GET_CODE(i64 %48)
  %50 = load i64, i64* @CONST, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %96

52:                                               ; preds = %47
  %53 = load i64, i64* %7, align 8
  %54 = call i64 @XEXP(i64 %53, i32 0)
  %55 = call i64 @GET_CODE(i64 %54)
  %56 = load i64, i64* @PLUS, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %96

58:                                               ; preds = %52
  %59 = load i64, i64* %7, align 8
  %60 = call i64 @XEXP(i64 %59, i32 0)
  %61 = call i64 @XEXP(i64 %60, i32 0)
  %62 = call i64 @GET_CODE(i64 %61)
  %63 = load i64, i64* @SYMBOL_REF, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %96

65:                                               ; preds = %58
  %66 = load i64, i64* %7, align 8
  %67 = call i64 @XEXP(i64 %66, i32 0)
  %68 = call i64 @XEXP(i64 %67, i32 0)
  %69 = call i32 @SYMBOL_REF_TLS_MODEL(i64 %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %95

72:                                               ; preds = %65
  %73 = load i64, i64* %7, align 8
  %74 = call i64 @XEXP(i64 %73, i32 0)
  %75 = call i64 @XEXP(i64 %74, i32 1)
  store i64 %75, i64* %9, align 8
  %76 = load i64, i64* %7, align 8
  %77 = call i64 @XEXP(i64 %76, i32 0)
  %78 = call i64 @XEXP(i64 %77, i32 0)
  %79 = load i32, i32* %8, align 4
  %80 = call i64 @legitimize_tls_address(i64 %78, i32 %79, i32 1)
  store i64 %80, i64* %7, align 8
  %81 = load i64, i64* %7, align 8
  %82 = call i64 @force_operand(i64 %81, i64 0)
  store i64 %82, i64* %7, align 8
  %83 = load i32, i32* @Pmode, align 4
  %84 = load i64, i64* @PLUS, align 8
  %85 = load i64, i64* %7, align 8
  %86 = load i64, i64* %9, align 8
  %87 = load i64, i64* %6, align 8
  %88 = load i32, i32* @OPTAB_DIRECT, align 4
  %89 = call i64 @expand_simple_binop(i32 %83, i64 %84, i64 %85, i64 %86, i64 %87, i32 1, i32 %88)
  store i64 %89, i64* %7, align 8
  %90 = load i64, i64* %7, align 8
  %91 = load i64, i64* %6, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %72
  br label %250

94:                                               ; preds = %72
  br label %95

95:                                               ; preds = %94, %65
  br label %96

96:                                               ; preds = %95, %58, %52, %47
  br label %97

97:                                               ; preds = %96, %46
  %98 = load i64, i64* @flag_pic, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %132

100:                                              ; preds = %97
  %101 = load i32, i32* %3, align 4
  %102 = load i32, i32* @Pmode, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %132

104:                                              ; preds = %100
  %105 = load i64, i64* %7, align 8
  %106 = load i32, i32* @Pmode, align 4
  %107 = call i64 @symbolic_operand(i64 %105, i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %132

109:                                              ; preds = %104
  %110 = load i64, i64* @TARGET_MACHO, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %109
  %113 = load i64, i64* @TARGET_64BIT, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %112
  br label %131

116:                                              ; preds = %112, %109
  %117 = load i64, i64* %6, align 8
  %118 = call i64 @GET_CODE(i64 %117)
  %119 = load i64, i64* @MEM, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %116
  %122 = load i32, i32* @Pmode, align 4
  %123 = load i64, i64* %7, align 8
  %124 = call i64 @force_reg(i32 %122, i64 %123)
  store i64 %124, i64* %7, align 8
  br label %130

125:                                              ; preds = %116
  %126 = load i64, i64* %7, align 8
  %127 = load i64, i64* %7, align 8
  %128 = load i32, i32* @Pmode, align 4
  %129 = call i64 @legitimize_address(i64 %126, i64 %127, i32 %128)
  store i64 %129, i64* %7, align 8
  br label %130

130:                                              ; preds = %125, %121
  br label %131

131:                                              ; preds = %130, %115
  br label %244

132:                                              ; preds = %104, %100, %97
  %133 = load i64, i64* %6, align 8
  %134 = call i64 @GET_CODE(i64 %133)
  %135 = load i64, i64* @MEM, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %158

137:                                              ; preds = %132
  %138 = load i32, i32* %3, align 4
  %139 = call i64 @GET_MODE_SIZE(i32 %138)
  %140 = call i64 @PUSH_ROUNDING(i64 %139)
  %141 = load i32, i32* %3, align 4
  %142 = call i64 @GET_MODE_SIZE(i32 %141)
  %143 = icmp ne i64 %140, %142
  br i1 %143, label %149, label %144

144:                                              ; preds = %137
  %145 = load i64, i64* %6, align 8
  %146 = load i32, i32* %3, align 4
  %147 = call i64 @push_operand(i64 %145, i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %158, label %149

149:                                              ; preds = %144, %137
  %150 = load i64, i64* %7, align 8
  %151 = call i64 @GET_CODE(i64 %150)
  %152 = load i64, i64* @MEM, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %158

154:                                              ; preds = %149
  %155 = load i32, i32* %3, align 4
  %156 = load i64, i64* %7, align 8
  %157 = call i64 @force_reg(i32 %155, i64 %156)
  store i64 %157, i64* %7, align 8
  br label %158

158:                                              ; preds = %154, %149, %144, %132
  %159 = load i64, i64* %6, align 8
  %160 = load i32, i32* %3, align 4
  %161 = call i64 @push_operand(i64 %159, i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %172

163:                                              ; preds = %158
  %164 = load i64, i64* %7, align 8
  %165 = load i32, i32* %3, align 4
  %166 = call i32 @general_no_elim_operand(i64 %164, i32 %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %172, label %168

168:                                              ; preds = %163
  %169 = load i32, i32* %3, align 4
  %170 = load i64, i64* %7, align 8
  %171 = call i64 @copy_to_mode_reg(i32 %169, i64 %170)
  store i64 %171, i64* %7, align 8
  br label %172

172:                                              ; preds = %168, %163, %158
  %173 = load i64, i64* @TARGET_64BIT, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %207

175:                                              ; preds = %172
  %176 = load i32, i32* %3, align 4
  %177 = load i32, i32* @DImode, align 4
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %179, label %207

179:                                              ; preds = %175
  %180 = load i64, i64* %7, align 8
  %181 = load i32, i32* %3, align 4
  %182 = call i64 @immediate_operand(i64 %180, i32 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %207

184:                                              ; preds = %179
  %185 = load i64, i64* %7, align 8
  %186 = load i32, i32* @VOIDmode, align 4
  %187 = call i32 @x86_64_zext_immediate_operand(i64 %185, i32 %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %207, label %189

189:                                              ; preds = %184
  %190 = load i64, i64* %6, align 8
  %191 = load i32, i32* %3, align 4
  %192 = call i32 @register_operand(i64 %190, i32 %191)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %207, label %194

194:                                              ; preds = %189
  %195 = load i64, i64* @optimize, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %207

197:                                              ; preds = %194
  %198 = load i64, i64* @reload_completed, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %207, label %200

200:                                              ; preds = %197
  %201 = load i64, i64* @reload_in_progress, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %207, label %203

203:                                              ; preds = %200
  %204 = load i32, i32* %3, align 4
  %205 = load i64, i64* %7, align 8
  %206 = call i64 @copy_to_mode_reg(i32 %204, i64 %205)
  store i64 %206, i64* %7, align 8
  br label %207

207:                                              ; preds = %203, %200, %197, %194, %189, %184, %179, %175, %172
  %208 = load i32, i32* %3, align 4
  %209 = call i64 @FLOAT_MODE_P(i32 %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %243

211:                                              ; preds = %207
  %212 = load i32, i32* %5, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %211
  br label %242

215:                                              ; preds = %211
  %216 = load i64, i64* %7, align 8
  %217 = call i64 @GET_CODE(i64 %216)
  %218 = load i64, i64* @CONST_DOUBLE, align 8
  %219 = icmp eq i64 %217, %218
  br i1 %219, label %220, label %241

220:                                              ; preds = %215
  %221 = load i32, i32* %3, align 4
  %222 = load i64, i64* %7, align 8
  %223 = call i32 @force_const_mem(i32 %221, i64 %222)
  %224 = call i64 @validize_mem(i32 %223)
  store i64 %224, i64* %7, align 8
  %225 = load i64, i64* %6, align 8
  %226 = load i32, i32* %3, align 4
  %227 = call i32 @register_operand(i64 %225, i32 %226)
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %240, label %229

229:                                              ; preds = %220
  %230 = load i32, i32* %3, align 4
  %231 = call i64 @gen_reg_rtx(i32 %230)
  store i64 %231, i64* %10, align 8
  %232 = load i32, i32* @VOIDmode, align 4
  %233 = load i64, i64* %10, align 8
  %234 = load i64, i64* %7, align 8
  %235 = call i32 @gen_rtx_SET(i32 %232, i64 %233, i64 %234)
  %236 = call i32 @emit_insn(i32 %235)
  %237 = load i64, i64* %6, align 8
  %238 = load i64, i64* %10, align 8
  %239 = call i32 @emit_move_insn(i64 %237, i64 %238)
  br label %250

240:                                              ; preds = %220
  br label %241

241:                                              ; preds = %240, %215
  br label %242

242:                                              ; preds = %241, %214
  br label %243

243:                                              ; preds = %242, %207
  br label %244

244:                                              ; preds = %243, %131
  %245 = load i32, i32* @VOIDmode, align 4
  %246 = load i64, i64* %6, align 8
  %247 = load i64, i64* %7, align 8
  %248 = call i32 @gen_rtx_SET(i32 %245, i64 %246, i64 %247)
  %249 = call i32 @emit_insn(i32 %248)
  br label %250

250:                                              ; preds = %244, %229, %93, %44
  ret void
}

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i32 @SYMBOL_REF_TLS_MODEL(i64) #1

declare dso_local i64 @legitimize_tls_address(i64, i32, i32) #1

declare dso_local i64 @force_operand(i64, i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @expand_simple_binop(i32, i64, i64, i64, i64, i32, i32) #1

declare dso_local i64 @symbolic_operand(i64, i32) #1

declare dso_local i64 @force_reg(i32, i64) #1

declare dso_local i64 @legitimize_address(i64, i64, i32) #1

declare dso_local i64 @PUSH_ROUNDING(i64) #1

declare dso_local i64 @GET_MODE_SIZE(i32) #1

declare dso_local i64 @push_operand(i64, i32) #1

declare dso_local i32 @general_no_elim_operand(i64, i32) #1

declare dso_local i64 @copy_to_mode_reg(i32, i64) #1

declare dso_local i64 @immediate_operand(i64, i32) #1

declare dso_local i32 @x86_64_zext_immediate_operand(i64, i32) #1

declare dso_local i32 @register_operand(i64, i32) #1

declare dso_local i64 @FLOAT_MODE_P(i32) #1

declare dso_local i64 @validize_mem(i32) #1

declare dso_local i32 @force_const_mem(i32, i64) #1

declare dso_local i64 @gen_reg_rtx(i32) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_rtx_SET(i32, i64, i64) #1

declare dso_local i32 @emit_move_insn(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
