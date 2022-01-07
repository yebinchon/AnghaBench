; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-spu.c_get_imm.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-spu.c_get_imm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.spu_insn = type { i32*, i32, i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32 }

@.str = private unnamed_addr constant [5 x i8] c"%lo(\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"Using old style, %%lo(expr), please change to PPC style, expr@l.\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%hi(\00", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"Using old style, %%hi(expr), please change to PPC style, expr@h.\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%pic(\00", align 1
@syntax_error_param = common dso_local global i8* null, align 8
@input_line_pointer = common dso_local global i8* null, align 8
@O_constant = common dso_local global i64 0, align 8
@emulate_apuasm = common dso_local global i64 0, align 8
@arg_encode = common dso_local global %struct.TYPE_4__* null, align 8
@A_U7A = common dso_local global i32 0, align 4
@A_U7B = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [47 x i8] c"Constant expression %d out of range, [%d, %d].\00", align 1
@A_S11 = common dso_local global i32 0, align 4
@A_S11I = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, %struct.spu_insn*, i32)* @get_imm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_imm(i8* %0, %struct.spu_insn* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.spu_insn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.spu_insn, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.spu_insn* %1, %struct.spu_insn** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %18 = load %struct.spu_insn*, %struct.spu_insn** %5, align 8
  %19 = getelementptr inbounds %struct.spu_insn, %struct.spu_insn* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp sge i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 1, i32 0
  store i32 %25, i32* %11, align 4
  %26 = load i8*, i8** %4, align 8
  %27 = call i64 @strncasecmp(i8* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %3
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 3
  store i8* %31, i8** %4, align 8
  store i32 1, i32* %9, align 4
  %32 = call i32 @_(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0))
  %33 = call i32 (i32, ...) @as_warn(i32 %32)
  br label %52

34:                                               ; preds = %3
  %35 = load i8*, i8** %4, align 8
  %36 = call i64 @strncasecmp(i8* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load i8*, i8** %4, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 3
  store i8* %40, i8** %4, align 8
  store i32 1, i32* %10, align 4
  %41 = call i32 @_(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0))
  %42 = call i32 (i32, ...) @as_warn(i32 %41)
  br label %51

43:                                               ; preds = %34
  %44 = load i8*, i8** %4, align 8
  %45 = call i64 @strncasecmp(i8* %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 5)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i8*, i8** %4, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 4
  store i8* %49, i8** %4, align 8
  br label %50

50:                                               ; preds = %47, %43
  br label %51

51:                                               ; preds = %50, %38
  br label %52

52:                                               ; preds = %51, %29
  %53 = load i8*, i8** %4, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 36
  br i1 %56, label %57, label %66

57:                                               ; preds = %52
  %58 = load i8*, i8** %4, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i8* @get_reg(i8* %58, %struct.spu_insn* %12, i32 %59, i32 0)
  store i8* %60, i8** %13, align 8
  %61 = load i8*, i8** %13, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i8*, i8** %13, align 8
  store i8* %64, i8** @syntax_error_param, align 8
  br label %65

65:                                               ; preds = %63, %57
  br label %66

66:                                               ; preds = %65, %52
  %67 = load i8*, i8** @input_line_pointer, align 8
  store i8* %67, i8** %8, align 8
  %68 = load i8*, i8** %4, align 8
  store i8* %68, i8** @input_line_pointer, align 8
  %69 = load %struct.spu_insn*, %struct.spu_insn** %5, align 8
  %70 = getelementptr inbounds %struct.spu_insn, %struct.spu_insn* %69, i32 0, i32 3
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i64 %73
  %75 = call i32 @expression(%struct.TYPE_3__* %74)
  %76 = load i8*, i8** @input_line_pointer, align 8
  store i8* %76, i8** %4, align 8
  %77 = load i8*, i8** %8, align 8
  store i8* %77, i8** @input_line_pointer, align 8
  %78 = load i8*, i8** %4, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 0
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 64
  br i1 %82, label %83, label %127

83:                                               ; preds = %66
  %84 = load i8*, i8** %4, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 2
  %86 = load i8, i8* %85, align 1
  %87 = call i32 @ISALNUM(i8 signext %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %127, label %89

89:                                               ; preds = %83
  %90 = load i8*, i8** %4, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 2
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp ne i32 %93, 64
  br i1 %94, label %95, label %127

95:                                               ; preds = %89
  %96 = load i8*, i8** %4, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 1
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 104
  br i1 %100, label %107, label %101

101:                                              ; preds = %95
  %102 = load i8*, i8** %4, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 1
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 72
  br i1 %106, label %107, label %110

107:                                              ; preds = %101, %95
  store i32 1, i32* %10, align 4
  %108 = load i8*, i8** %4, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 2
  store i8* %109, i8** %4, align 8
  br label %126

110:                                              ; preds = %101
  %111 = load i8*, i8** %4, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 1
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp eq i32 %114, 108
  br i1 %115, label %122, label %116

116:                                              ; preds = %110
  %117 = load i8*, i8** %4, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 1
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp eq i32 %120, 76
  br i1 %121, label %122, label %125

122:                                              ; preds = %116, %110
  store i32 1, i32* %9, align 4
  %123 = load i8*, i8** %4, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 2
  store i8* %124, i8** %4, align 8
  br label %125

125:                                              ; preds = %122, %116
  br label %126

126:                                              ; preds = %125, %107
  br label %127

127:                                              ; preds = %126, %89, %83, %66
  %128 = load %struct.spu_insn*, %struct.spu_insn** %5, align 8
  %129 = getelementptr inbounds %struct.spu_insn, %struct.spu_insn* %128, i32 0, i32 3
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %129, align 8
  %131 = load i32, i32* %11, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @O_constant, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %319

138:                                              ; preds = %127
  %139 = load %struct.spu_insn*, %struct.spu_insn** %5, align 8
  %140 = getelementptr inbounds %struct.spu_insn, %struct.spu_insn* %139, i32 0, i32 3
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %140, align 8
  %142 = load i32, i32* %11, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  store i32 %146, i32* %7, align 4
  %147 = load i64, i64* @emulate_apuasm, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %173

149:                                              ; preds = %138
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** @arg_encode, align 8
  %151 = load i32, i32* %6, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %7, align 4
  %157 = shl i32 %156, %155
  store i32 %157, i32* %7, align 4
  %158 = load i32, i32* %6, align 4
  %159 = load i32, i32* @A_U7A, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %164

161:                                              ; preds = %149
  %162 = load i32, i32* %7, align 4
  %163 = sub nsw i32 173, %162
  store i32 %163, i32* %7, align 4
  br label %172

164:                                              ; preds = %149
  %165 = load i32, i32* %6, align 4
  %166 = load i32, i32* @A_U7B, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %171

168:                                              ; preds = %164
  %169 = load i32, i32* %7, align 4
  %170 = sub nsw i32 155, %169
  store i32 %170, i32* %7, align 4
  br label %171

171:                                              ; preds = %168, %164
  br label %172

172:                                              ; preds = %171, %161
  br label %173

173:                                              ; preds = %172, %138
  %174 = load i32, i32* %10, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %173
  %177 = load i32, i32* %7, align 4
  %178 = ashr i32 %177, 16
  store i32 %178, i32* %7, align 4
  br label %186

179:                                              ; preds = %173
  %180 = load i32, i32* %9, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %179
  %183 = load i32, i32* %7, align 4
  %184 = and i32 %183, 65535
  store i32 %184, i32* %7, align 4
  br label %185

185:                                              ; preds = %182, %179
  br label %186

186:                                              ; preds = %185, %176
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** @arg_encode, align 8
  %188 = load i32, i32* %6, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  store i32 %192, i32* %14, align 4
  %193 = load %struct.TYPE_4__*, %struct.TYPE_4__** @arg_encode, align 8
  %194 = load i32, i32* %6, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  store i32 %198, i32* %15, align 4
  %199 = load %struct.TYPE_4__*, %struct.TYPE_4__** @arg_encode, align 8
  %200 = load i32, i32* %6, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 4
  store i32 %204, i32* %16, align 4
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** @arg_encode, align 8
  %206 = load i32, i32* %6, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 4
  %210 = load i32, i32* %209, align 4
  store i32 %210, i32* %17, align 4
  %211 = load i32, i32* %14, align 4
  %212 = load i32, i32* %15, align 4
  %213 = icmp sgt i32 %211, %212
  br i1 %213, label %214, label %228

214:                                              ; preds = %186
  %215 = load i32, i32* %7, align 4
  %216 = load i32, i32* %15, align 4
  %217 = icmp slt i32 %215, %216
  br i1 %217, label %222, label %218

218:                                              ; preds = %214
  %219 = load i32, i32* %7, align 4
  %220 = load i32, i32* %14, align 4
  %221 = icmp sgt i32 %219, %220
  br i1 %221, label %222, label %228

222:                                              ; preds = %218, %214
  %223 = call i32 @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0))
  %224 = load i32, i32* %7, align 4
  %225 = load i32, i32* %15, align 4
  %226 = load i32, i32* %14, align 4
  %227 = call i32 @as_fatal(i32 %223, i32 %224, i32 %225, i32 %226)
  br label %247

228:                                              ; preds = %218, %186
  %229 = load i32, i32* %16, align 4
  %230 = load i32, i32* %17, align 4
  %231 = icmp sgt i32 %229, %230
  br i1 %231, label %232, label %246

232:                                              ; preds = %228
  %233 = load i32, i32* %7, align 4
  %234 = load i32, i32* %17, align 4
  %235 = icmp slt i32 %233, %234
  br i1 %235, label %240, label %236

236:                                              ; preds = %232
  %237 = load i32, i32* %7, align 4
  %238 = load i32, i32* %16, align 4
  %239 = icmp sgt i32 %237, %238
  br i1 %239, label %240, label %246

240:                                              ; preds = %236, %232
  %241 = call i32 @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0))
  %242 = load i32, i32* %7, align 4
  %243 = load i32, i32* %17, align 4
  %244 = load i32, i32* %16, align 4
  %245 = call i32 (i32, ...) @as_warn(i32 %241, i32 %242, i32 %243, i32 %244)
  br label %246

246:                                              ; preds = %240, %236, %228
  br label %247

247:                                              ; preds = %246, %222
  %248 = load i32, i32* %6, align 4
  %249 = load i32, i32* @A_U7A, align 4
  %250 = icmp eq i32 %248, %249
  br i1 %250, label %251, label %254

251:                                              ; preds = %247
  %252 = load i32, i32* %7, align 4
  %253 = sub nsw i32 173, %252
  store i32 %253, i32* %7, align 4
  br label %262

254:                                              ; preds = %247
  %255 = load i32, i32* %6, align 4
  %256 = load i32, i32* @A_U7B, align 4
  %257 = icmp eq i32 %255, %256
  br i1 %257, label %258, label %261

258:                                              ; preds = %254
  %259 = load i32, i32* %7, align 4
  %260 = sub nsw i32 155, %259
  store i32 %260, i32* %7, align 4
  br label %261

261:                                              ; preds = %258, %254
  br label %262

262:                                              ; preds = %261, %251
  %263 = load i32, i32* %6, align 4
  %264 = load i32, i32* @A_S11, align 4
  %265 = icmp eq i32 %263, %264
  br i1 %265, label %270, label %266

266:                                              ; preds = %262
  %267 = load i32, i32* %6, align 4
  %268 = load i32, i32* @A_S11I, align 4
  %269 = icmp eq i32 %267, %268
  br i1 %269, label %270, label %278

270:                                              ; preds = %266, %262
  %271 = load i32, i32* %7, align 4
  %272 = ashr i32 %271, 2
  %273 = and i32 %272, 127
  %274 = load %struct.spu_insn*, %struct.spu_insn** %5, align 8
  %275 = getelementptr inbounds %struct.spu_insn, %struct.spu_insn* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 8
  %277 = or i32 %276, %273
  store i32 %277, i32* %275, align 8
  br label %278

278:                                              ; preds = %270, %266
  %279 = load i32, i32* %7, align 4
  %280 = load %struct.TYPE_4__*, %struct.TYPE_4__** @arg_encode, align 8
  %281 = load i32, i32* %6, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %280, i64 %282
  %284 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = ashr i32 %279, %285
  %287 = load %struct.TYPE_4__*, %struct.TYPE_4__** @arg_encode, align 8
  %288 = load i32, i32* %6, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %287, i64 %289
  %291 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %290, i32 0, i32 5
  %292 = load i32, i32* %291, align 4
  %293 = shl i32 1, %292
  %294 = sub nsw i32 %293, 1
  %295 = and i32 %286, %294
  %296 = load %struct.TYPE_4__*, %struct.TYPE_4__** @arg_encode, align 8
  %297 = load i32, i32* %6, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %296, i64 %298
  %300 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %299, i32 0, i32 6
  %301 = load i32, i32* %300, align 4
  %302 = shl i32 %295, %301
  %303 = load %struct.spu_insn*, %struct.spu_insn** %5, align 8
  %304 = getelementptr inbounds %struct.spu_insn, %struct.spu_insn* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 8
  %306 = or i32 %305, %302
  store i32 %306, i32* %304, align 8
  %307 = load %struct.spu_insn*, %struct.spu_insn** %5, align 8
  %308 = getelementptr inbounds %struct.spu_insn, %struct.spu_insn* %307, i32 0, i32 0
  %309 = load i32*, i32** %308, align 8
  %310 = load i32, i32* %11, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i32, i32* %309, i64 %311
  store i32 -1, i32* %312, align 4
  %313 = load %struct.spu_insn*, %struct.spu_insn** %5, align 8
  %314 = getelementptr inbounds %struct.spu_insn, %struct.spu_insn* %313, i32 0, i32 2
  %315 = load i32*, i32** %314, align 8
  %316 = load i32, i32* %11, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i32, i32* %315, i64 %317
  store i32 0, i32* %318, align 4
  br label %348

319:                                              ; preds = %127
  %320 = load i32, i32* %6, align 4
  %321 = load %struct.spu_insn*, %struct.spu_insn** %5, align 8
  %322 = getelementptr inbounds %struct.spu_insn, %struct.spu_insn* %321, i32 0, i32 0
  %323 = load i32*, i32** %322, align 8
  %324 = load i32, i32* %11, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i32, i32* %323, i64 %325
  store i32 %320, i32* %326, align 4
  %327 = load i32, i32* %10, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %336

329:                                              ; preds = %319
  %330 = load %struct.spu_insn*, %struct.spu_insn** %5, align 8
  %331 = getelementptr inbounds %struct.spu_insn, %struct.spu_insn* %330, i32 0, i32 2
  %332 = load i32*, i32** %331, align 8
  %333 = load i32, i32* %11, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i32, i32* %332, i64 %334
  store i32 1, i32* %335, align 4
  br label %347

336:                                              ; preds = %319
  %337 = load i32, i32* %9, align 4
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %346

339:                                              ; preds = %336
  %340 = load %struct.spu_insn*, %struct.spu_insn** %5, align 8
  %341 = getelementptr inbounds %struct.spu_insn, %struct.spu_insn* %340, i32 0, i32 2
  %342 = load i32*, i32** %341, align 8
  %343 = load i32, i32* %11, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i32, i32* %342, i64 %344
  store i32 2, i32* %345, align 4
  br label %346

346:                                              ; preds = %339, %336
  br label %347

347:                                              ; preds = %346, %329
  br label %348

348:                                              ; preds = %347, %278
  %349 = load i8*, i8** %4, align 8
  ret i8* %349
}

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @as_warn(i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @get_reg(i8*, %struct.spu_insn*, i32, i32) #1

declare dso_local i32 @expression(%struct.TYPE_3__*) #1

declare dso_local i32 @ISALNUM(i8 signext) #1

declare dso_local i32 @as_fatal(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
