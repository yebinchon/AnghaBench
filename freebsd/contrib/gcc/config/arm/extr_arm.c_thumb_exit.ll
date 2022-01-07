; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_thumb_exit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_thumb_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@LR_REGNUM = common dso_local global i32 0, align 4
@TARGET_BACKTRACE = common dso_local global i64 0, align 8
@ARM_HARD_FRAME_POINTER_REGNUM = common dso_local global i32 0, align 4
@SP_REGNUM = common dso_local global i32 0, align 4
@current_function_calls_eh_return = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"\09add\09%r, %r\0A\00", align 1
@ARM_EH_STACKADJ_REGNUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"\09bx\09%r\0A\00", align 1
@TARGET_INTERWORK = common dso_local global i32 0, align 4
@current_function_decl = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"\09pop\09{%r}\0A\00", align 1
@PC_REGNUM = common dso_local global i32 0, align 4
@current_function_return_rtx = common dso_local global i64 0, align 8
@VOIDmode = common dso_local global i32 0, align 4
@LAST_ARG_REGNUM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"\09mov\09%r, %r\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@IP_REGNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @thumb_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @thumb_exit(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %12, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %28

21:                                               ; preds = %2
  %22 = load i32, i32* @LR_REGNUM, align 4
  %23 = shl i32 1, %22
  %24 = load i32, i32* %6, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %21, %2
  %29 = load i64, i64* @TARGET_BACKTRACE, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %28
  %32 = load i32, i32* @ARM_HARD_FRAME_POINTER_REGNUM, align 4
  %33 = shl i32 1, %32
  %34 = load i32, i32* @SP_REGNUM, align 4
  %35 = shl i32 1, %34
  %36 = or i32 %33, %35
  %37 = load i32, i32* %6, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 2
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %31, %28
  %42 = load i32, i32* %7, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %41
  %45 = load i64, i64* @current_function_calls_eh_return, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load i32*, i32** %3, align 8
  %49 = load i32, i32* @SP_REGNUM, align 4
  %50 = load i32, i32* @ARM_EH_STACKADJ_REGNUM, align 4
  %51 = call i32 (i32*, i8*, i32, ...) @asm_fprintf(i32* %48, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %47, %44
  %53 = load i32*, i32** %3, align 8
  %54 = load i32, i32* %4, align 4
  %55 = call i32 (i32*, i8*, i32, ...) @asm_fprintf(i32* %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  br label %348

56:                                               ; preds = %41
  %57 = load i32, i32* @TARGET_INTERWORK, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %73, label %59

59:                                               ; preds = %56
  %60 = load i64, i64* @TARGET_BACKTRACE, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %73, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* @current_function_decl, align 4
  %64 = call i32 @is_called_in_ARM_mode(i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %62
  %67 = load i64, i64* @current_function_calls_eh_return, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %66
  %70 = load i32*, i32** %3, align 8
  %71 = load i32, i32* @PC_REGNUM, align 4
  %72 = call i32 (i32*, i8*, i32, ...) @asm_fprintf(i32* %70, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %71)
  br label %348

73:                                               ; preds = %66, %62, %59, %56
  br label %74

74:                                               ; preds = %73
  store i32 0, i32* %5, align 4
  %75 = load i64, i64* @current_function_calls_eh_return, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  store i32 12, i32* %11, align 4
  br label %131

78:                                               ; preds = %74
  %79 = load i64, i64* @current_function_return_rtx, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i64, i64* @current_function_return_rtx, align 8
  %83 = call i32 @GET_MODE(i64 %82)
  store i32 %83, i32* %10, align 4
  br label %88

84:                                               ; preds = %78
  %85 = load i32, i32* @current_function_decl, align 4
  %86 = call i32 @DECL_RESULT(i32 %85)
  %87 = call i32 @DECL_MODE(i32 %86)
  store i32 %87, i32* %10, align 4
  br label %88

88:                                               ; preds = %84, %81
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @GET_MODE_SIZE(i32 %89)
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %11, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %113

93:                                               ; preds = %88
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* @VOIDmode, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %106

97:                                               ; preds = %93
  %98 = call i32 @ARG_REGISTER(i32 1)
  %99 = shl i32 1, %98
  %100 = call i32 @ARG_REGISTER(i32 2)
  %101 = shl i32 1, %100
  %102 = or i32 %99, %101
  %103 = call i32 @ARG_REGISTER(i32 3)
  %104 = shl i32 1, %103
  %105 = or i32 %102, %104
  store i32 %105, i32* %5, align 4
  br label %112

106:                                              ; preds = %93
  %107 = call i32 @ARG_REGISTER(i32 2)
  %108 = shl i32 1, %107
  %109 = call i32 @ARG_REGISTER(i32 3)
  %110 = shl i32 1, %109
  %111 = or i32 %108, %110
  store i32 %111, i32* %5, align 4
  br label %112

112:                                              ; preds = %106, %97
  br label %130

113:                                              ; preds = %88
  %114 = load i32, i32* %11, align 4
  %115 = icmp sle i32 %114, 4
  br i1 %115, label %116, label %122

116:                                              ; preds = %113
  %117 = call i32 @ARG_REGISTER(i32 2)
  %118 = shl i32 1, %117
  %119 = call i32 @ARG_REGISTER(i32 3)
  %120 = shl i32 1, %119
  %121 = or i32 %118, %120
  store i32 %121, i32* %5, align 4
  br label %129

122:                                              ; preds = %113
  %123 = load i32, i32* %11, align 4
  %124 = icmp sle i32 %123, 8
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = call i32 @ARG_REGISTER(i32 3)
  %127 = shl i32 1, %126
  store i32 %127, i32* %5, align 4
  br label %128

128:                                              ; preds = %125, %122
  br label %129

129:                                              ; preds = %128, %116
  br label %130

130:                                              ; preds = %129, %112
  br label %131

131:                                              ; preds = %130, %77
  %132 = load i32, i32* %5, align 4
  store i32 %132, i32* %8, align 4
  %133 = load i32, i32* %6, align 4
  store i32 %133, i32* %9, align 4
  br label %134

134:                                              ; preds = %145, %131
  %135 = load i32, i32* %9, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load i32, i32* %8, align 4
  %139 = icmp ne i32 %138, 0
  br label %140

140:                                              ; preds = %137, %134
  %141 = phi i1 [ false, %134 ], [ %139, %137 ]
  br i1 %141, label %142, label %160

142:                                              ; preds = %140
  %143 = load i32, i32* %7, align 4
  %144 = add nsw i32 %143, -1
  store i32 %144, i32* %7, align 4
  br label %145

145:                                              ; preds = %142
  %146 = load i32, i32* %8, align 4
  %147 = load i32, i32* %8, align 4
  %148 = sub i32 0, %147
  %149 = and i32 %146, %148
  %150 = xor i32 %149, -1
  %151 = load i32, i32* %8, align 4
  %152 = and i32 %151, %150
  store i32 %152, i32* %8, align 4
  %153 = load i32, i32* %9, align 4
  %154 = load i32, i32* %9, align 4
  %155 = sub i32 0, %154
  %156 = and i32 %153, %155
  %157 = xor i32 %156, -1
  %158 = load i32, i32* %9, align 4
  %159 = and i32 %158, %157
  store i32 %159, i32* %9, align 4
  br label %134

160:                                              ; preds = %140
  %161 = load i32, i32* %8, align 4
  %162 = icmp ugt i32 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %160
  %164 = load i32, i32* %8, align 4
  %165 = xor i32 %164, -1
  %166 = load i32, i32* %5, align 4
  %167 = and i32 %166, %165
  store i32 %167, i32* %5, align 4
  br label %207

168:                                              ; preds = %160
  %169 = load i32, i32* %7, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %206

171:                                              ; preds = %168
  %172 = load i32, i32* %5, align 4
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %184

174:                                              ; preds = %171
  %175 = load i32, i32* %4, align 4
  %176 = load i32, i32* @LAST_ARG_REGNUM, align 4
  %177 = icmp eq i32 %175, %176
  br i1 %177, label %178, label %184

178:                                              ; preds = %174
  %179 = load i32*, i32** %3, align 8
  %180 = load i32, i32* @LR_REGNUM, align 4
  %181 = load i32, i32* @LAST_ARG_REGNUM, align 4
  %182 = call i32 (i32*, i8*, i32, ...) @asm_fprintf(i32* %179, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %180, i32 %181)
  %183 = load i32, i32* @LR_REGNUM, align 4
  store i32 %183, i32* %4, align 4
  br label %194

184:                                              ; preds = %174, %171
  %185 = load i32, i32* %11, align 4
  %186 = icmp sgt i32 %185, 12
  br i1 %186, label %187, label %193

187:                                              ; preds = %184
  %188 = load i32, i32* @TRUE, align 4
  store i32 %188, i32* %12, align 4
  %189 = load i32*, i32** %3, align 8
  %190 = load i32, i32* @IP_REGNUM, align 4
  %191 = load i32, i32* @LAST_ARG_REGNUM, align 4
  %192 = call i32 (i32*, i8*, i32, ...) @asm_fprintf(i32* %189, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %190, i32 %191)
  br label %193

193:                                              ; preds = %187, %184
  br label %194

194:                                              ; preds = %193, %178
  %195 = load i32, i32* %4, align 4
  %196 = load i32, i32* @LAST_ARG_REGNUM, align 4
  %197 = icmp ne i32 %195, %196
  br i1 %197, label %198, label %205

198:                                              ; preds = %194
  %199 = load i32, i32* @LAST_ARG_REGNUM, align 4
  %200 = shl i32 1, %199
  %201 = load i32, i32* %5, align 4
  %202 = or i32 %201, %200
  store i32 %202, i32* %5, align 4
  %203 = load i32, i32* %7, align 4
  %204 = add nsw i32 %203, -1
  store i32 %204, i32* %7, align 4
  br label %205

205:                                              ; preds = %198, %194
  br label %206

206:                                              ; preds = %205, %168
  br label %207

207:                                              ; preds = %206, %163
  %208 = load i32*, i32** %3, align 8
  %209 = load i32, i32* %5, align 4
  %210 = load i32, i32* @FALSE, align 4
  %211 = load i32, i32* %5, align 4
  %212 = call i32 @thumb_pushpop(i32* %208, i32 %209, i32 %210, i32* null, i32 %211)
  %213 = load i32, i32* %4, align 4
  %214 = icmp eq i32 %213, -1
  br i1 %214, label %215, label %228

215:                                              ; preds = %207
  %216 = load i32, i32* @LR_REGNUM, align 4
  %217 = shl i32 1, %216
  %218 = xor i32 %217, -1
  %219 = load i32, i32* %6, align 4
  %220 = and i32 %219, %218
  store i32 %220, i32* %6, align 4
  %221 = load i32, i32* %5, align 4
  %222 = call i32 @number_of_first_bit_set(i32 %221)
  store i32 %222, i32* %4, align 4
  %223 = load i32, i32* %4, align 4
  %224 = shl i32 1, %223
  %225 = xor i32 %224, -1
  %226 = load i32, i32* %5, align 4
  %227 = and i32 %226, %225
  store i32 %227, i32* %5, align 4
  br label %228

228:                                              ; preds = %215, %207
  %229 = load i32, i32* %5, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %263

231:                                              ; preds = %228
  %232 = load i32, i32* %5, align 4
  %233 = call i32 @number_of_first_bit_set(i32 %232)
  store i32 %233, i32* %13, align 4
  %234 = load i32*, i32** %3, align 8
  %235 = load i32, i32* @ARM_HARD_FRAME_POINTER_REGNUM, align 4
  %236 = load i32, i32* %13, align 4
  %237 = call i32 (i32*, i8*, i32, ...) @asm_fprintf(i32* %234, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %235, i32 %236)
  %238 = load i32, i32* %13, align 4
  %239 = shl i32 1, %238
  %240 = xor i32 %239, -1
  %241 = load i32, i32* %5, align 4
  %242 = and i32 %241, %240
  store i32 %242, i32* %5, align 4
  %243 = load i32, i32* @ARM_HARD_FRAME_POINTER_REGNUM, align 4
  %244 = shl i32 1, %243
  %245 = xor i32 %244, -1
  %246 = load i32, i32* %6, align 4
  %247 = and i32 %246, %245
  store i32 %247, i32* %6, align 4
  %248 = load i32, i32* %5, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %257

250:                                              ; preds = %231
  %251 = load i32, i32* %5, align 4
  %252 = call i32 @number_of_first_bit_set(i32 %251)
  store i32 %252, i32* %14, align 4
  %253 = load i32*, i32** %3, align 8
  %254 = load i32, i32* @SP_REGNUM, align 4
  %255 = load i32, i32* %14, align 4
  %256 = call i32 (i32*, i8*, i32, ...) @asm_fprintf(i32* %253, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %254, i32 %255)
  br label %262

257:                                              ; preds = %231
  %258 = load i32, i32* %13, align 4
  %259 = shl i32 1, %258
  %260 = load i32, i32* %5, align 4
  %261 = or i32 %260, %259
  store i32 %261, i32* %5, align 4
  br label %262

262:                                              ; preds = %257, %250
  br label %263

263:                                              ; preds = %262, %228
  %264 = load i32, i32* %5, align 4
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %266, label %279

266:                                              ; preds = %263
  %267 = load i32, i32* %7, align 4
  %268 = icmp sgt i32 %267, 0
  br i1 %268, label %269, label %279

269:                                              ; preds = %266
  %270 = load i32, i32* %4, align 4
  %271 = shl i32 1, %270
  %272 = load i32, i32* %5, align 4
  %273 = or i32 %272, %271
  store i32 %273, i32* %5, align 4
  %274 = load i32*, i32** %3, align 8
  %275 = load i32, i32* @LR_REGNUM, align 4
  %276 = load i32, i32* %4, align 4
  %277 = call i32 (i32*, i8*, i32, ...) @asm_fprintf(i32* %274, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %275, i32 %276)
  %278 = load i32, i32* @LR_REGNUM, align 4
  store i32 %278, i32* %4, align 4
  br label %279

279:                                              ; preds = %269, %266, %263
  %280 = load i32, i32* %7, align 4
  %281 = icmp sgt i32 %280, 0
  br i1 %281, label %282, label %303

282:                                              ; preds = %279
  %283 = load i32*, i32** %3, align 8
  %284 = load i32, i32* %5, align 4
  %285 = load i32, i32* @FALSE, align 4
  %286 = load i32, i32* %5, align 4
  %287 = call i32 @thumb_pushpop(i32* %283, i32 %284, i32 %285, i32* null, i32 %286)
  %288 = load i32, i32* %5, align 4
  %289 = call i32 @number_of_first_bit_set(i32 %288)
  store i32 %289, i32* %15, align 4
  %290 = load i32, i32* %6, align 4
  %291 = call i32 @number_of_first_bit_set(i32 %290)
  store i32 %291, i32* %16, align 4
  %292 = load i32*, i32** %3, align 8
  %293 = load i32, i32* %16, align 4
  %294 = load i32, i32* %15, align 4
  %295 = call i32 (i32*, i8*, i32, ...) @asm_fprintf(i32* %292, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %293, i32 %294)
  %296 = load i32, i32* %16, align 4
  %297 = shl i32 1, %296
  %298 = xor i32 %297, -1
  %299 = load i32, i32* %6, align 4
  %300 = and i32 %299, %298
  store i32 %300, i32* %6, align 4
  %301 = load i32, i32* %7, align 4
  %302 = add nsw i32 %301, -1
  store i32 %302, i32* %7, align 4
  br label %303

303:                                              ; preds = %282, %279
  %304 = load i32, i32* %7, align 4
  %305 = icmp sgt i32 %304, 0
  br i1 %305, label %306, label %318

306:                                              ; preds = %303
  %307 = load i32*, i32** %3, align 8
  %308 = load i32, i32* %5, align 4
  %309 = load i32, i32* @FALSE, align 4
  %310 = load i32, i32* %5, align 4
  %311 = call i32 @thumb_pushpop(i32* %307, i32 %308, i32 %309, i32* null, i32 %310)
  %312 = load i32, i32* %5, align 4
  %313 = call i32 @number_of_first_bit_set(i32 %312)
  store i32 %313, i32* %17, align 4
  %314 = load i32*, i32** %3, align 8
  %315 = load i32, i32* @SP_REGNUM, align 4
  %316 = load i32, i32* %17, align 4
  %317 = call i32 (i32*, i8*, i32, ...) @asm_fprintf(i32* %314, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %315, i32 %316)
  br label %318

318:                                              ; preds = %306, %303
  %319 = load i32, i32* %12, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %336

321:                                              ; preds = %318
  %322 = load i32, i32* %4, align 4
  %323 = load i32, i32* @LR_REGNUM, align 4
  %324 = icmp ne i32 %322, %323
  br i1 %324, label %325, label %331

325:                                              ; preds = %321
  %326 = load i32*, i32** %3, align 8
  %327 = load i32, i32* @LR_REGNUM, align 4
  %328 = load i32, i32* @LAST_ARG_REGNUM, align 4
  %329 = call i32 (i32*, i8*, i32, ...) @asm_fprintf(i32* %326, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %327, i32 %328)
  %330 = load i32, i32* @LR_REGNUM, align 4
  store i32 %330, i32* %4, align 4
  br label %331

331:                                              ; preds = %325, %321
  %332 = load i32*, i32** %3, align 8
  %333 = load i32, i32* @LAST_ARG_REGNUM, align 4
  %334 = load i32, i32* @IP_REGNUM, align 4
  %335 = call i32 (i32*, i8*, i32, ...) @asm_fprintf(i32* %332, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %333, i32 %334)
  br label %336

336:                                              ; preds = %331, %318
  %337 = load i64, i64* @current_function_calls_eh_return, align 8
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %339, label %344

339:                                              ; preds = %336
  %340 = load i32*, i32** %3, align 8
  %341 = load i32, i32* @SP_REGNUM, align 4
  %342 = load i32, i32* @ARM_EH_STACKADJ_REGNUM, align 4
  %343 = call i32 (i32*, i8*, i32, ...) @asm_fprintf(i32* %340, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %341, i32 %342)
  br label %344

344:                                              ; preds = %339, %336
  %345 = load i32*, i32** %3, align 8
  %346 = load i32, i32* %4, align 4
  %347 = call i32 (i32*, i8*, i32, ...) @asm_fprintf(i32* %345, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %346)
  br label %348

348:                                              ; preds = %344, %69, %52
  ret void
}

declare dso_local i32 @asm_fprintf(i32*, i8*, i32, ...) #1

declare dso_local i32 @is_called_in_ARM_mode(i32) #1

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i32 @DECL_MODE(i32) #1

declare dso_local i32 @DECL_RESULT(i32) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @ARG_REGISTER(i32) #1

declare dso_local i32 @thumb_pushpop(i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @number_of_first_bit_set(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
