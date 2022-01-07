; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_final.c_output_asm_insn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_final.c_output_asm_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_RECOG_OPERANDS = common dso_local global i32 0, align 4
@asm_out_file = common dso_local global i32 0, align 4
@flag_verbose_asm = common dso_local global i64 0, align 8
@flag_print_asm_name = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@insn_counter = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"operand number missing after %%-letter\00", align 1
@this_is_asm_operands = common dso_local global i32 0, align 4
@insn_noperands = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"operand number out of range\00", align 1
@CONST_INT = common dso_local global i32 0, align 4
@HOST_WIDE_INT_PRINT_DEC = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"invalid %%-code\00", align 1
@NULL_RTX = common dso_local global i32 0, align 4
@dialect_number = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @output_asm_insn(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %17 = load i32, i32* @MAX_RECOG_OPERANDS, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %7, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %8, align 8
  %21 = load i32, i32* @MAX_RECOG_OPERANDS, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %24 = load i8*, i8** %3, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  store i32 1, i32* %11, align 4
  br label %283

29:                                               ; preds = %2
  %30 = trunc i64 %22 to i32
  %31 = call i32 @memset(i8* %23, i32 0, i32 %30)
  %32 = load i8*, i8** %3, align 8
  store i8* %32, i8** %5, align 8
  %33 = load i32, i32* @asm_out_file, align 4
  %34 = call i32 @putc(i8 signext 9, i32 %33)
  br label %35

35:                                               ; preds = %267, %29
  %36 = load i8*, i8** %5, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %5, align 8
  %38 = load i8, i8* %36, align 1
  %39 = sext i8 %38 to i32
  store i32 %39, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %268

41:                                               ; preds = %35
  %42 = load i32, i32* %6, align 4
  switch i32 %42, label %262 [
    i32 10, label %43
    i32 37, label %62
  ]

43:                                               ; preds = %41
  %44 = load i64, i64* @flag_verbose_asm, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @output_asm_operand_names(i32* %47, i32* %20, i32 %48)
  br label %50

50:                                               ; preds = %46, %43
  %51 = load i64, i64* @flag_print_asm_name, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = call i32 (...) @output_asm_name()
  br label %55

55:                                               ; preds = %53, %50
  store i32 0, i32* %10, align 4
  %56 = trunc i64 %22 to i32
  %57 = call i32 @memset(i8* %23, i32 0, i32 %56)
  %58 = load i32, i32* %6, align 4
  %59 = trunc i32 %58 to i8
  %60 = load i32, i32* @asm_out_file, align 4
  %61 = call i32 @putc(i8 signext %59, i32 %60)
  br label %267

62:                                               ; preds = %41
  %63 = load i8*, i8** %5, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 37
  br i1 %66, label %67, label %74

67:                                               ; preds = %62
  %68 = load i8*, i8** %5, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %5, align 8
  %70 = load i32, i32* %6, align 4
  %71 = trunc i32 %70 to i8
  %72 = load i32, i32* @asm_out_file, align 4
  %73 = call i32 @putc(i8 signext %71, i32 %72)
  br label %261

74:                                               ; preds = %62
  %75 = load i8*, i8** %5, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 61
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = load i8*, i8** %5, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %5, align 8
  %82 = load i32, i32* @asm_out_file, align 4
  %83 = load i32, i32* @insn_counter, align 4
  %84 = call i32 @fprintf(i32 %82, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %83)
  br label %260

85:                                               ; preds = %74
  %86 = load i8*, i8** %5, align 8
  %87 = load i8, i8* %86, align 1
  %88 = call i32 @ISALPHA(i8 signext %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %215

90:                                               ; preds = %85
  %91 = load i8*, i8** %5, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %5, align 8
  %93 = load i8, i8* %91, align 1
  %94 = sext i8 %93 to i32
  store i32 %94, i32* %12, align 4
  %95 = load i8*, i8** %5, align 8
  %96 = call i64 @strtoul(i8* %95, i8** %14, i32 10)
  store i64 %96, i64* %13, align 8
  %97 = load i8*, i8** %14, align 8
  %98 = load i8*, i8** %5, align 8
  %99 = icmp eq i8* %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %90
  %101 = call i32 @output_operand_lossage(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %196

102:                                              ; preds = %90
  %103 = load i32, i32* @this_is_asm_operands, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %102
  %106 = load i64, i64* %13, align 8
  %107 = load i64, i64* @insn_noperands, align 8
  %108 = icmp uge i64 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %105
  %110 = call i32 @output_operand_lossage(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %195

111:                                              ; preds = %105, %102
  %112 = load i32, i32* %12, align 4
  %113 = icmp eq i32 %112, 108
  br i1 %113, label %114, label %120

114:                                              ; preds = %111
  %115 = load i32*, i32** %4, align 8
  %116 = load i64, i64* %13, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @output_asm_label(i32 %118)
  br label %194

120:                                              ; preds = %111
  %121 = load i32, i32* %12, align 4
  %122 = icmp eq i32 %121, 97
  br i1 %122, label %123, label %129

123:                                              ; preds = %120
  %124 = load i32*, i32** %4, align 8
  %125 = load i64, i64* %13, align 8
  %126 = getelementptr inbounds i32, i32* %124, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @output_address(i32 %127)
  br label %193

129:                                              ; preds = %120
  %130 = load i32, i32* %12, align 4
  %131 = icmp eq i32 %130, 99
  br i1 %131, label %132, label %153

132:                                              ; preds = %129
  %133 = load i32*, i32** %4, align 8
  %134 = load i64, i64* %13, align 8
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @CONSTANT_ADDRESS_P(i32 %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %146

139:                                              ; preds = %132
  %140 = load i32, i32* @asm_out_file, align 4
  %141 = load i32*, i32** %4, align 8
  %142 = load i64, i64* %13, align 8
  %143 = getelementptr inbounds i32, i32* %141, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @output_addr_const(i32 %140, i32 %144)
  br label %152

146:                                              ; preds = %132
  %147 = load i32*, i32** %4, align 8
  %148 = load i64, i64* %13, align 8
  %149 = getelementptr inbounds i32, i32* %147, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @output_operand(i32 %150, i32 99)
  br label %152

152:                                              ; preds = %146, %139
  br label %192

153:                                              ; preds = %129
  %154 = load i32, i32* %12, align 4
  %155 = icmp eq i32 %154, 110
  br i1 %155, label %156, label %184

156:                                              ; preds = %153
  %157 = load i32*, i32** %4, align 8
  %158 = load i64, i64* %13, align 8
  %159 = getelementptr inbounds i32, i32* %157, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @GET_CODE(i32 %160)
  %162 = load i32, i32* @CONST_INT, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %174

164:                                              ; preds = %156
  %165 = load i32, i32* @asm_out_file, align 4
  %166 = load i8*, i8** @HOST_WIDE_INT_PRINT_DEC, align 8
  %167 = load i32*, i32** %4, align 8
  %168 = load i64, i64* %13, align 8
  %169 = getelementptr inbounds i32, i32* %167, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @INTVAL(i32 %170)
  %172 = sub nsw i32 0, %171
  %173 = call i32 @fprintf(i32 %165, i8* %166, i32 %172)
  br label %183

174:                                              ; preds = %156
  %175 = load i32, i32* @asm_out_file, align 4
  %176 = call i32 @putc(i8 signext 45, i32 %175)
  %177 = load i32, i32* @asm_out_file, align 4
  %178 = load i32*, i32** %4, align 8
  %179 = load i64, i64* %13, align 8
  %180 = getelementptr inbounds i32, i32* %178, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @output_addr_const(i32 %177, i32 %181)
  br label %183

183:                                              ; preds = %174, %164
  br label %191

184:                                              ; preds = %153
  %185 = load i32*, i32** %4, align 8
  %186 = load i64, i64* %13, align 8
  %187 = getelementptr inbounds i32, i32* %185, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* %12, align 4
  %190 = call i32 @output_operand(i32 %188, i32 %189)
  br label %191

191:                                              ; preds = %184, %183
  br label %192

192:                                              ; preds = %191, %152
  br label %193

193:                                              ; preds = %192, %123
  br label %194

194:                                              ; preds = %193, %114
  br label %195

195:                                              ; preds = %194, %109
  br label %196

196:                                              ; preds = %195, %100
  %197 = load i64, i64* %13, align 8
  %198 = getelementptr inbounds i8, i8* %23, i64 %197
  %199 = load i8, i8* %198, align 1
  %200 = icmp ne i8 %199, 0
  br i1 %200, label %208, label %201

201:                                              ; preds = %196
  %202 = load i64, i64* %13, align 8
  %203 = trunc i64 %202 to i32
  %204 = load i32, i32* %10, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %10, align 4
  %206 = sext i32 %204 to i64
  %207 = getelementptr inbounds i32, i32* %20, i64 %206
  store i32 %203, i32* %207, align 4
  br label %208

208:                                              ; preds = %201, %196
  %209 = load i64, i64* %13, align 8
  %210 = getelementptr inbounds i8, i8* %23, i64 %209
  store i8 1, i8* %210, align 1
  %211 = load i8*, i8** %14, align 8
  store i8* %211, i8** %5, align 8
  %212 = load i8*, i8** %5, align 8
  %213 = load i8, i8* %212, align 1
  %214 = sext i8 %213 to i32
  store i32 %214, i32* %6, align 4
  br label %259

215:                                              ; preds = %85
  %216 = load i8*, i8** %5, align 8
  %217 = load i8, i8* %216, align 1
  %218 = call i32 @ISDIGIT(i8 signext %217)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %256

220:                                              ; preds = %215
  %221 = load i8*, i8** %5, align 8
  %222 = call i64 @strtoul(i8* %221, i8** %16, i32 10)
  store i64 %222, i64* %15, align 8
  %223 = load i32, i32* @this_is_asm_operands, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %231

225:                                              ; preds = %220
  %226 = load i64, i64* %15, align 8
  %227 = load i64, i64* @insn_noperands, align 8
  %228 = icmp uge i64 %226, %227
  br i1 %228, label %229, label %231

229:                                              ; preds = %225
  %230 = call i32 @output_operand_lossage(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %237

231:                                              ; preds = %225, %220
  %232 = load i32*, i32** %4, align 8
  %233 = load i64, i64* %15, align 8
  %234 = getelementptr inbounds i32, i32* %232, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @output_operand(i32 %235, i32 0)
  br label %237

237:                                              ; preds = %231, %229
  %238 = load i64, i64* %15, align 8
  %239 = getelementptr inbounds i8, i8* %23, i64 %238
  %240 = load i8, i8* %239, align 1
  %241 = icmp ne i8 %240, 0
  br i1 %241, label %249, label %242

242:                                              ; preds = %237
  %243 = load i64, i64* %15, align 8
  %244 = trunc i64 %243 to i32
  %245 = load i32, i32* %10, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %10, align 4
  %247 = sext i32 %245 to i64
  %248 = getelementptr inbounds i32, i32* %20, i64 %247
  store i32 %244, i32* %248, align 4
  br label %249

249:                                              ; preds = %242, %237
  %250 = load i64, i64* %15, align 8
  %251 = getelementptr inbounds i8, i8* %23, i64 %250
  store i8 1, i8* %251, align 1
  %252 = load i8*, i8** %16, align 8
  store i8* %252, i8** %5, align 8
  %253 = load i8*, i8** %5, align 8
  %254 = load i8, i8* %253, align 1
  %255 = sext i8 %254 to i32
  store i32 %255, i32* %6, align 4
  br label %258

256:                                              ; preds = %215
  %257 = call i32 @output_operand_lossage(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %258

258:                                              ; preds = %256, %249
  br label %259

259:                                              ; preds = %258, %208
  br label %260

260:                                              ; preds = %259, %79
  br label %261

261:                                              ; preds = %260, %67
  br label %267

262:                                              ; preds = %41
  %263 = load i32, i32* %6, align 4
  %264 = trunc i32 %263 to i8
  %265 = load i32, i32* @asm_out_file, align 4
  %266 = call i32 @putc(i8 signext %264, i32 %265)
  br label %267

267:                                              ; preds = %262, %261, %55
  br label %35

268:                                              ; preds = %35
  %269 = load i64, i64* @flag_verbose_asm, align 8
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %275

271:                                              ; preds = %268
  %272 = load i32*, i32** %4, align 8
  %273 = load i32, i32* %10, align 4
  %274 = call i32 @output_asm_operand_names(i32* %272, i32* %20, i32 %273)
  br label %275

275:                                              ; preds = %271, %268
  %276 = load i64, i64* @flag_print_asm_name, align 8
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %280

278:                                              ; preds = %275
  %279 = call i32 (...) @output_asm_name()
  br label %280

280:                                              ; preds = %278, %275
  %281 = load i32, i32* @asm_out_file, align 4
  %282 = call i32 @putc(i8 signext 10, i32 %281)
  store i32 0, i32* %11, align 4
  br label %283

283:                                              ; preds = %280, %28
  %284 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %284)
  %285 = load i32, i32* %11, align 4
  switch i32 %285, label %287 [
    i32 0, label %286
    i32 1, label %286
  ]

286:                                              ; preds = %283, %283
  ret void

287:                                              ; preds = %283
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @putc(i8 signext, i32) #2

declare dso_local i32 @output_asm_operand_names(i32*, i32*, i32) #2

declare dso_local i32 @output_asm_name(...) #2

declare dso_local i32 @fprintf(i32, i8*, i32) #2

declare dso_local i32 @ISALPHA(i8 signext) #2

declare dso_local i64 @strtoul(i8*, i8**, i32) #2

declare dso_local i32 @output_operand_lossage(i8*) #2

declare dso_local i32 @output_asm_label(i32) #2

declare dso_local i32 @output_address(i32) #2

declare dso_local i32 @CONSTANT_ADDRESS_P(i32) #2

declare dso_local i32 @output_addr_const(i32, i32) #2

declare dso_local i32 @output_operand(i32, i32) #2

declare dso_local i32 @GET_CODE(i32) #2

declare dso_local i32 @INTVAL(i32) #2

declare dso_local i32 @ISDIGIT(i8 signext) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
