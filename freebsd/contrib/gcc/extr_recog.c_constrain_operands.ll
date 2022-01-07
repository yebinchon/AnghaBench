; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_recog.c_constrain_operands.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_recog.c_constrain_operands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i8**, i32*, i64*, i32* }
%struct.funny_match = type { i32, i32 }

@MAX_RECOG_OPERANDS = common dso_local global i32 0, align 4
@which_alternative = common dso_local global i32 0, align 4
@recog_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@SUBREG = common dso_local global i64 0, align 8
@FIRST_PSEUDO_REGISTER = common dso_local global i64 0, align 8
@GENERAL_REGS = common dso_local global i32 0, align 4
@ALL_REGS = common dso_local global i32 0, align 4
@reload_in_progress = common dso_local global i32 0, align 4
@PRE_DEC = common dso_local global i64 0, align 8
@POST_DEC = common dso_local global i64 0, align 8
@PRE_INC = common dso_local global i64 0, align 8
@POST_INC = common dso_local global i64 0, align 8
@CONST_DOUBLE = common dso_local global i64 0, align 8
@CONST_VECTOR = common dso_local global i64 0, align 8
@MODE_VECTOR_FLOAT = common dso_local global i32 0, align 4
@CONST_INT = common dso_local global i64 0, align 8
@VOIDmode = common dso_local global i32 0, align 4
@NO_REGS = common dso_local global i32 0, align 4
@SCRATCH = common dso_local global i64 0, align 8
@OP_OUT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @constrain_operands(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %29 = load i32, i32* @MAX_RECOG_OPERANDS, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %4, align 8
  %32 = alloca i8*, i64 %30, align 16
  store i64 %30, i64* %5, align 8
  %33 = load i32, i32* @MAX_RECOG_OPERANDS, align 4
  %34 = zext i32 %33 to i64
  %35 = alloca i32, i64 %34, align 16
  store i64 %34, i64* %6, align 8
  %36 = load i32, i32* @MAX_RECOG_OPERANDS, align 4
  %37 = zext i32 %36 to i64
  %38 = alloca i32, i64 %37, align 16
  store i64 %37, i64* %7, align 8
  %39 = load i32, i32* @MAX_RECOG_OPERANDS, align 4
  %40 = zext i32 %39 to i64
  %41 = alloca %struct.funny_match, i64 %40, align 16
  store i64 %40, i64* %9, align 8
  store i32 0, i32* @which_alternative, align 4
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 0), align 8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %1
  %45 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 1), align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44, %1
  store i32 1, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %762

48:                                               ; preds = %44
  store i32 0, i32* %8, align 4
  br label %49

49:                                               ; preds = %65, %48
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 0), align 8
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %68

53:                                               ; preds = %49
  %54 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 2), align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %54, i64 %56
  %58 = load i8*, i8** %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8*, i8** %32, i64 %60
  store i8* %58, i8** %61, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %35, i64 %63
  store i32 -1, i32* %64, align 4
  br label %65

65:                                               ; preds = %53
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %49

68:                                               ; preds = %49
  br label %69

69:                                               ; preds = %751, %68
  store i32 -1, i32* %12, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %13, align 4
  br label %70

70:                                               ; preds = %610, %69
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 0), align 8
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %613

74:                                               ; preds = %70
  %75 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 5), align 8
  %76 = load i32, i32* %13, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %15, align 4
  %80 = load i32, i32* %15, align 4
  %81 = call i32 @GET_MODE(i32 %80)
  store i32 %81, i32* %16, align 4
  %82 = load i32, i32* %13, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8*, i8** %32, i64 %83
  %85 = load i8*, i8** %84, align 8
  store i8* %85, i8** %17, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %86 = load i32, i32* %13, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %38, i64 %87
  store i32 0, i32* %88, align 4
  %89 = load i32, i32* %15, align 4
  %90 = call i64 @UNARY_P(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %74
  %93 = load i32, i32* %15, align 4
  %94 = call i32 @XEXP(i32 %93, i32 0)
  store i32 %94, i32* %15, align 4
  br label %95

95:                                               ; preds = %92, %74
  %96 = load i32, i32* %15, align 4
  %97 = call i64 @GET_CODE(i32 %96)
  %98 = load i64, i64* @SUBREG, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %126

100:                                              ; preds = %95
  %101 = load i32, i32* %15, align 4
  %102 = call i32 @SUBREG_REG(i32 %101)
  %103 = call i64 @REG_P(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %123

105:                                              ; preds = %100
  %106 = load i32, i32* %15, align 4
  %107 = call i32 @SUBREG_REG(i32 %106)
  %108 = call i64 @REGNO(i32 %107)
  %109 = load i64, i64* @FIRST_PSEUDO_REGISTER, align 8
  %110 = icmp slt i64 %108, %109
  br i1 %110, label %111, label %123

111:                                              ; preds = %105
  %112 = load i32, i32* %15, align 4
  %113 = call i32 @SUBREG_REG(i32 %112)
  %114 = call i64 @REGNO(i32 %113)
  %115 = load i32, i32* %15, align 4
  %116 = call i32 @SUBREG_REG(i32 %115)
  %117 = call i32 @GET_MODE(i32 %116)
  %118 = load i32, i32* %15, align 4
  %119 = call i32 @SUBREG_BYTE(i32 %118)
  %120 = load i32, i32* %15, align 4
  %121 = call i32 @GET_MODE(i32 %120)
  %122 = call i32 @subreg_regno_offset(i64 %114, i32 %117, i32 %119, i32 %121)
  store i32 %122, i32* %18, align 4
  br label %123

123:                                              ; preds = %111, %105, %100
  %124 = load i32, i32* %15, align 4
  %125 = call i32 @SUBREG_REG(i32 %124)
  store i32 %125, i32* %15, align 4
  br label %126

126:                                              ; preds = %123, %95
  %127 = load i8*, i8** %17, align 8
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %136, label %131

131:                                              ; preds = %126
  %132 = load i8*, i8** %17, align 8
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp eq i32 %134, 44
  br i1 %135, label %136, label %137

136:                                              ; preds = %131, %126
  store i32 1, i32* %19, align 4
  br label %137

137:                                              ; preds = %136, %131
  br label %138

138:                                              ; preds = %594, %137
  %139 = load i8*, i8** %17, align 8
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  store i32 %141, i32* %8, align 4
  %142 = load i32, i32* %8, align 4
  %143 = load i8*, i8** %17, align 8
  %144 = call i32 @CONSTRAINT_LEN(i32 %142, i8* %143)
  store i32 %144, i32* %21, align 4
  %145 = load i32, i32* %8, align 4
  switch i32 %145, label %542 [
    i32 0, label %146
    i32 44, label %147
    i32 63, label %148
    i32 33, label %148
    i32 42, label %148
    i32 37, label %148
    i32 61, label %148
    i32 43, label %148
    i32 35, label %149
    i32 38, label %166
    i32 48, label %175
    i32 49, label %175
    i32 50, label %175
    i32 51, label %175
    i32 52, label %175
    i32 53, label %175
    i32 54, label %175
    i32 55, label %175
    i32 56, label %175
    i32 57, label %175
    i32 112, label %241
    i32 103, label %255
    i32 88, label %294
    i32 109, label %295
    i32 60, label %346
    i32 62, label %364
    i32 69, label %382
    i32 70, label %382
    i32 71, label %400
    i32 72, label %400
    i32 115, label %413
    i32 105, label %430
    i32 110, label %436
    i32 73, label %453
    i32 74, label %453
    i32 75, label %453
    i32 76, label %453
    i32 77, label %453
    i32 78, label %453
    i32 79, label %453
    i32 80, label %453
    i32 86, label %467
    i32 111, label %503
  ]

146:                                              ; preds = %138
  store i32 0, i32* %21, align 4
  br label %593

147:                                              ; preds = %138
  store i32 0, i32* %8, align 4
  br label %593

148:                                              ; preds = %138, %138, %138, %138, %138, %138
  br label %593

149:                                              ; preds = %138
  br label %150

150:                                              ; preds = %163, %149
  %151 = load i8*, i8** %17, align 8
  %152 = getelementptr inbounds i8, i8* %151, i32 1
  store i8* %152, i8** %17, align 8
  br label %153

153:                                              ; preds = %150
  %154 = load i8*, i8** %17, align 8
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i32
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %153
  %159 = load i8*, i8** %17, align 8
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = icmp ne i32 %161, 44
  br label %163

163:                                              ; preds = %158, %153
  %164 = phi i1 [ false, %153 ], [ %162, %158 ]
  br i1 %164, label %150, label %165

165:                                              ; preds = %163
  store i32 0, i32* %21, align 4
  br label %593

166:                                              ; preds = %138
  %167 = load i32, i32* %13, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %38, i64 %168
  store i32 1, i32* %169, align 4
  %170 = load i32, i32* %12, align 4
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %166
  %173 = load i32, i32* %13, align 4
  store i32 %173, i32* %12, align 4
  br label %174

174:                                              ; preds = %172, %166
  br label %593

175:                                              ; preds = %138, %138, %138, %138, %138, %138, %138, %138, %138, %138
  %176 = load i8*, i8** %17, align 8
  %177 = call i32 @strtoul(i8* %176, i8** %22, i32 10)
  store i32 %177, i32* %23, align 4
  %178 = load i8*, i8** %22, align 8
  store i8* %178, i8** %17, align 8
  %179 = load i32, i32* %3, align 4
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %175
  store i32 1, i32* %20, align 4
  br label %210

182:                                              ; preds = %175
  %183 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 5), align 8
  %184 = load i32, i32* %23, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  %187 = load i32, i32* %186, align 4
  store i32 %187, i32* %24, align 4
  %188 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 5), align 8
  %189 = load i32, i32* %13, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  %192 = load i32, i32* %191, align 4
  store i32 %192, i32* %25, align 4
  %193 = load i32, i32* %24, align 4
  %194 = call i64 @UNARY_P(i32 %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %182
  %197 = load i32, i32* %24, align 4
  %198 = call i32 @XEXP(i32 %197, i32 0)
  store i32 %198, i32* %24, align 4
  br label %199

199:                                              ; preds = %196, %182
  %200 = load i32, i32* %25, align 4
  %201 = call i64 @UNARY_P(i32 %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %199
  %204 = load i32, i32* %25, align 4
  %205 = call i32 @XEXP(i32 %204, i32 0)
  store i32 %205, i32* %25, align 4
  br label %206

206:                                              ; preds = %203, %199
  %207 = load i32, i32* %24, align 4
  %208 = load i32, i32* %25, align 4
  %209 = call i32 @operands_match_p(i32 %207, i32 %208)
  store i32 %209, i32* %20, align 4
  br label %210

210:                                              ; preds = %206, %181
  %211 = load i32, i32* %23, align 4
  %212 = load i32, i32* %13, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %35, i64 %213
  store i32 %211, i32* %214, align 4
  %215 = load i32, i32* %13, align 4
  %216 = load i32, i32* %23, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %35, i64 %217
  store i32 %215, i32* %218, align 4
  %219 = load i32, i32* %20, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %210
  store i32 1, i32* %19, align 4
  br label %222

222:                                              ; preds = %221, %210
  %223 = load i32, i32* %20, align 4
  %224 = icmp eq i32 %223, 2
  br i1 %224, label %225, label %240

225:                                              ; preds = %222
  %226 = load i32, i32* %3, align 4
  %227 = icmp sgt i32 %226, 0
  br i1 %227, label %228, label %240

228:                                              ; preds = %225
  %229 = load i32, i32* %13, align 4
  %230 = load i32, i32* %10, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.funny_match, %struct.funny_match* %41, i64 %231
  %233 = getelementptr inbounds %struct.funny_match, %struct.funny_match* %232, i32 0, i32 0
  store i32 %229, i32* %233, align 8
  %234 = load i32, i32* %23, align 4
  %235 = load i32, i32* %10, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %10, align 4
  %237 = sext i32 %235 to i64
  %238 = getelementptr inbounds %struct.funny_match, %struct.funny_match* %41, i64 %237
  %239 = getelementptr inbounds %struct.funny_match, %struct.funny_match* %238, i32 0, i32 1
  store i32 %234, i32* %239, align 4
  br label %240

240:                                              ; preds = %228, %225, %222
  store i32 0, i32* %21, align 4
  br label %593

241:                                              ; preds = %138
  %242 = load i32, i32* %3, align 4
  %243 = icmp sle i32 %242, 0
  br i1 %243, label %253, label %244

244:                                              ; preds = %241
  %245 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 3), align 8
  %246 = load i32, i32* %13, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %245, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* %15, align 4
  %251 = call i32 @strict_memory_address_p(i32 %249, i32 %250)
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %254

253:                                              ; preds = %244, %241
  store i32 1, i32* %19, align 4
  br label %254

254:                                              ; preds = %253, %244
  br label %593

255:                                              ; preds = %138
  %256 = load i32, i32* %15, align 4
  %257 = call i64 @REG_P(i32 %256)
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %283

259:                                              ; preds = %255
  %260 = load i32, i32* %3, align 4
  %261 = icmp slt i32 %260, 0
  br i1 %261, label %281, label %262

262:                                              ; preds = %259
  %263 = load i32, i32* @GENERAL_REGS, align 4
  %264 = load i32, i32* @ALL_REGS, align 4
  %265 = icmp eq i32 %263, %264
  br i1 %265, label %281, label %266

266:                                              ; preds = %262
  %267 = load i32, i32* @reload_in_progress, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %274

269:                                              ; preds = %266
  %270 = load i32, i32* %15, align 4
  %271 = call i64 @REGNO(i32 %270)
  %272 = load i64, i64* @FIRST_PSEUDO_REGISTER, align 8
  %273 = icmp sge i64 %271, %272
  br i1 %273, label %281, label %274

274:                                              ; preds = %269, %266
  %275 = load i32, i32* %15, align 4
  %276 = load i32, i32* @GENERAL_REGS, align 4
  %277 = load i32, i32* %18, align 4
  %278 = load i32, i32* %16, align 4
  %279 = call i32 @reg_fits_class_p(i32 %275, i32 %276, i32 %277, i32 %278)
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %282

281:                                              ; preds = %274, %269, %262, %259
  store i32 1, i32* %19, align 4
  br label %282

282:                                              ; preds = %281, %274
  br label %293

283:                                              ; preds = %255
  %284 = load i32, i32* %3, align 4
  %285 = icmp slt i32 %284, 0
  br i1 %285, label %291, label %286

286:                                              ; preds = %283
  %287 = load i32, i32* %15, align 4
  %288 = load i32, i32* %16, align 4
  %289 = call i32 @general_operand(i32 %287, i32 %288)
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %292

291:                                              ; preds = %286, %283
  store i32 1, i32* %19, align 4
  br label %292

292:                                              ; preds = %291, %286
  br label %293

293:                                              ; preds = %292, %282
  br label %593

294:                                              ; preds = %138
  store i32 1, i32* %19, align 4
  br label %593

295:                                              ; preds = %138
  %296 = load i32, i32* %15, align 4
  %297 = call i64 @MEM_P(i32 %296)
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %322

299:                                              ; preds = %295
  %300 = load i32, i32* %3, align 4
  %301 = icmp sgt i32 %300, 0
  br i1 %301, label %302, label %310

302:                                              ; preds = %299
  %303 = load i32, i32* %15, align 4
  %304 = call i32 @GET_MODE(i32 %303)
  %305 = load i32, i32* %15, align 4
  %306 = call i32 @XEXP(i32 %305, i32 0)
  %307 = call i32 @strict_memory_address_p(i32 %304, i32 %306)
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %310, label %309

309:                                              ; preds = %302
  br label %593

310:                                              ; preds = %302, %299
  %311 = load i32, i32* %3, align 4
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %313, label %321

313:                                              ; preds = %310
  %314 = load i32, i32* %15, align 4
  %315 = call i32 @GET_MODE(i32 %314)
  %316 = load i32, i32* %15, align 4
  %317 = call i32 @XEXP(i32 %316, i32 0)
  %318 = call i32 @memory_address_p(i32 %315, i32 %317)
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %321, label %320

320:                                              ; preds = %313
  br label %593

321:                                              ; preds = %313, %310
  store i32 1, i32* %19, align 4
  br label %345

322:                                              ; preds = %295
  %323 = load i32, i32* %3, align 4
  %324 = icmp slt i32 %323, 0
  br i1 %324, label %325, label %330

325:                                              ; preds = %322
  %326 = load i32, i32* %15, align 4
  %327 = call i32 @CONSTANT_P(i32 %326)
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %330

329:                                              ; preds = %325
  store i32 1, i32* %19, align 4
  br label %344

330:                                              ; preds = %325, %322
  %331 = load i32, i32* @reload_in_progress, align 4
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %343

333:                                              ; preds = %330
  %334 = load i32, i32* %15, align 4
  %335 = call i64 @REG_P(i32 %334)
  %336 = icmp ne i64 %335, 0
  br i1 %336, label %337, label %343

337:                                              ; preds = %333
  %338 = load i32, i32* %15, align 4
  %339 = call i64 @REGNO(i32 %338)
  %340 = load i64, i64* @FIRST_PSEUDO_REGISTER, align 8
  %341 = icmp sge i64 %339, %340
  br i1 %341, label %342, label %343

342:                                              ; preds = %337
  store i32 1, i32* %19, align 4
  br label %343

343:                                              ; preds = %342, %337, %333, %330
  br label %344

344:                                              ; preds = %343, %329
  br label %345

345:                                              ; preds = %344, %321
  br label %593

346:                                              ; preds = %138
  %347 = load i32, i32* %15, align 4
  %348 = call i64 @MEM_P(i32 %347)
  %349 = icmp ne i64 %348, 0
  br i1 %349, label %350, label %363

350:                                              ; preds = %346
  %351 = load i32, i32* %15, align 4
  %352 = call i32 @XEXP(i32 %351, i32 0)
  %353 = call i64 @GET_CODE(i32 %352)
  %354 = load i64, i64* @PRE_DEC, align 8
  %355 = icmp eq i64 %353, %354
  br i1 %355, label %362, label %356

356:                                              ; preds = %350
  %357 = load i32, i32* %15, align 4
  %358 = call i32 @XEXP(i32 %357, i32 0)
  %359 = call i64 @GET_CODE(i32 %358)
  %360 = load i64, i64* @POST_DEC, align 8
  %361 = icmp eq i64 %359, %360
  br i1 %361, label %362, label %363

362:                                              ; preds = %356, %350
  store i32 1, i32* %19, align 4
  br label %363

363:                                              ; preds = %362, %356, %346
  br label %593

364:                                              ; preds = %138
  %365 = load i32, i32* %15, align 4
  %366 = call i64 @MEM_P(i32 %365)
  %367 = icmp ne i64 %366, 0
  br i1 %367, label %368, label %381

368:                                              ; preds = %364
  %369 = load i32, i32* %15, align 4
  %370 = call i32 @XEXP(i32 %369, i32 0)
  %371 = call i64 @GET_CODE(i32 %370)
  %372 = load i64, i64* @PRE_INC, align 8
  %373 = icmp eq i64 %371, %372
  br i1 %373, label %380, label %374

374:                                              ; preds = %368
  %375 = load i32, i32* %15, align 4
  %376 = call i32 @XEXP(i32 %375, i32 0)
  %377 = call i64 @GET_CODE(i32 %376)
  %378 = load i64, i64* @POST_INC, align 8
  %379 = icmp eq i64 %377, %378
  br i1 %379, label %380, label %381

380:                                              ; preds = %374, %368
  store i32 1, i32* %19, align 4
  br label %381

381:                                              ; preds = %380, %374, %364
  br label %593

382:                                              ; preds = %138, %138
  %383 = load i32, i32* %15, align 4
  %384 = call i64 @GET_CODE(i32 %383)
  %385 = load i64, i64* @CONST_DOUBLE, align 8
  %386 = icmp eq i64 %384, %385
  br i1 %386, label %398, label %387

387:                                              ; preds = %382
  %388 = load i32, i32* %15, align 4
  %389 = call i64 @GET_CODE(i32 %388)
  %390 = load i64, i64* @CONST_VECTOR, align 8
  %391 = icmp eq i64 %389, %390
  br i1 %391, label %392, label %399

392:                                              ; preds = %387
  %393 = load i32, i32* %15, align 4
  %394 = call i32 @GET_MODE(i32 %393)
  %395 = call i32 @GET_MODE_CLASS(i32 %394)
  %396 = load i32, i32* @MODE_VECTOR_FLOAT, align 4
  %397 = icmp eq i32 %395, %396
  br i1 %397, label %398, label %399

398:                                              ; preds = %392, %382
  store i32 1, i32* %19, align 4
  br label %399

399:                                              ; preds = %398, %392, %387
  br label %593

400:                                              ; preds = %138, %138
  %401 = load i32, i32* %15, align 4
  %402 = call i64 @GET_CODE(i32 %401)
  %403 = load i64, i64* @CONST_DOUBLE, align 8
  %404 = icmp eq i64 %402, %403
  br i1 %404, label %405, label %412

405:                                              ; preds = %400
  %406 = load i32, i32* %15, align 4
  %407 = load i32, i32* %8, align 4
  %408 = load i8*, i8** %17, align 8
  %409 = call i32 @CONST_DOUBLE_OK_FOR_CONSTRAINT_P(i32 %406, i32 %407, i8* %408)
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %411, label %412

411:                                              ; preds = %405
  store i32 1, i32* %19, align 4
  br label %412

412:                                              ; preds = %411, %405, %400
  br label %593

413:                                              ; preds = %138
  %414 = load i32, i32* %15, align 4
  %415 = call i64 @GET_CODE(i32 %414)
  %416 = load i64, i64* @CONST_INT, align 8
  %417 = icmp eq i64 %415, %416
  br i1 %417, label %428, label %418

418:                                              ; preds = %413
  %419 = load i32, i32* %15, align 4
  %420 = call i64 @GET_CODE(i32 %419)
  %421 = load i64, i64* @CONST_DOUBLE, align 8
  %422 = icmp eq i64 %420, %421
  br i1 %422, label %423, label %429

423:                                              ; preds = %418
  %424 = load i32, i32* %15, align 4
  %425 = call i32 @GET_MODE(i32 %424)
  %426 = load i32, i32* @VOIDmode, align 4
  %427 = icmp eq i32 %425, %426
  br i1 %427, label %428, label %429

428:                                              ; preds = %423, %413
  br label %593

429:                                              ; preds = %423, %418
  br label %430

430:                                              ; preds = %138, %429
  %431 = load i32, i32* %15, align 4
  %432 = call i32 @CONSTANT_P(i32 %431)
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %434, label %435

434:                                              ; preds = %430
  store i32 1, i32* %19, align 4
  br label %435

435:                                              ; preds = %434, %430
  br label %593

436:                                              ; preds = %138
  %437 = load i32, i32* %15, align 4
  %438 = call i64 @GET_CODE(i32 %437)
  %439 = load i64, i64* @CONST_INT, align 8
  %440 = icmp eq i64 %438, %439
  br i1 %440, label %451, label %441

441:                                              ; preds = %436
  %442 = load i32, i32* %15, align 4
  %443 = call i64 @GET_CODE(i32 %442)
  %444 = load i64, i64* @CONST_DOUBLE, align 8
  %445 = icmp eq i64 %443, %444
  br i1 %445, label %446, label %452

446:                                              ; preds = %441
  %447 = load i32, i32* %15, align 4
  %448 = call i32 @GET_MODE(i32 %447)
  %449 = load i32, i32* @VOIDmode, align 4
  %450 = icmp eq i32 %448, %449
  br i1 %450, label %451, label %452

451:                                              ; preds = %446, %436
  store i32 1, i32* %19, align 4
  br label %452

452:                                              ; preds = %451, %446, %441
  br label %593

453:                                              ; preds = %138, %138, %138, %138, %138, %138, %138, %138
  %454 = load i32, i32* %15, align 4
  %455 = call i64 @GET_CODE(i32 %454)
  %456 = load i64, i64* @CONST_INT, align 8
  %457 = icmp eq i64 %455, %456
  br i1 %457, label %458, label %466

458:                                              ; preds = %453
  %459 = load i32, i32* %15, align 4
  %460 = call i32 @INTVAL(i32 %459)
  %461 = load i32, i32* %8, align 4
  %462 = load i8*, i8** %17, align 8
  %463 = call i32 @CONST_OK_FOR_CONSTRAINT_P(i32 %460, i32 %461, i8* %462)
  %464 = icmp ne i32 %463, 0
  br i1 %464, label %465, label %466

465:                                              ; preds = %458
  store i32 1, i32* %19, align 4
  br label %466

466:                                              ; preds = %465, %458, %453
  br label %593

467:                                              ; preds = %138
  %468 = load i32, i32* %15, align 4
  %469 = call i64 @MEM_P(i32 %468)
  %470 = icmp ne i64 %469, 0
  br i1 %470, label %471, label %502

471:                                              ; preds = %467
  %472 = load i32, i32* %3, align 4
  %473 = icmp sgt i32 %472, 0
  br i1 %473, label %474, label %478

474:                                              ; preds = %471
  %475 = load i32, i32* %15, align 4
  %476 = call i32 @offsettable_memref_p(i32 %475)
  %477 = icmp ne i32 %476, 0
  br i1 %477, label %478, label %501

478:                                              ; preds = %474, %471
  %479 = load i32, i32* %3, align 4
  %480 = icmp slt i32 %479, 0
  br i1 %480, label %481, label %489

481:                                              ; preds = %478
  %482 = load i32, i32* %15, align 4
  %483 = call i32 @CONSTANT_P(i32 %482)
  %484 = icmp ne i32 %483, 0
  br i1 %484, label %489, label %485

485:                                              ; preds = %481
  %486 = load i32, i32* %15, align 4
  %487 = call i64 @MEM_P(i32 %486)
  %488 = icmp ne i64 %487, 0
  br i1 %488, label %489, label %501

489:                                              ; preds = %485, %481, %478
  %490 = load i32, i32* @reload_in_progress, align 4
  %491 = icmp ne i32 %490, 0
  br i1 %491, label %492, label %502

492:                                              ; preds = %489
  %493 = load i32, i32* %15, align 4
  %494 = call i64 @REG_P(i32 %493)
  %495 = icmp ne i64 %494, 0
  br i1 %495, label %496, label %501

496:                                              ; preds = %492
  %497 = load i32, i32* %15, align 4
  %498 = call i64 @REGNO(i32 %497)
  %499 = load i64, i64* @FIRST_PSEUDO_REGISTER, align 8
  %500 = icmp sge i64 %498, %499
  br i1 %500, label %502, label %501

501:                                              ; preds = %496, %492, %485, %474
  store i32 1, i32* %19, align 4
  br label %502

502:                                              ; preds = %501, %496, %489, %467
  br label %593

503:                                              ; preds = %138
  %504 = load i32, i32* %3, align 4
  %505 = icmp sgt i32 %504, 0
  br i1 %505, label %506, label %510

506:                                              ; preds = %503
  %507 = load i32, i32* %15, align 4
  %508 = call i32 @offsettable_memref_p(i32 %507)
  %509 = icmp ne i32 %508, 0
  br i1 %509, label %540, label %510

510:                                              ; preds = %506, %503
  %511 = load i32, i32* %3, align 4
  %512 = icmp eq i32 %511, 0
  br i1 %512, label %513, label %517

513:                                              ; preds = %510
  %514 = load i32, i32* %15, align 4
  %515 = call i32 @offsettable_nonstrict_memref_p(i32 %514)
  %516 = icmp ne i32 %515, 0
  br i1 %516, label %540, label %517

517:                                              ; preds = %513, %510
  %518 = load i32, i32* %3, align 4
  %519 = icmp slt i32 %518, 0
  br i1 %519, label %520, label %528

520:                                              ; preds = %517
  %521 = load i32, i32* %15, align 4
  %522 = call i32 @CONSTANT_P(i32 %521)
  %523 = icmp ne i32 %522, 0
  br i1 %523, label %540, label %524

524:                                              ; preds = %520
  %525 = load i32, i32* %15, align 4
  %526 = call i64 @MEM_P(i32 %525)
  %527 = icmp ne i64 %526, 0
  br i1 %527, label %540, label %528

528:                                              ; preds = %524, %517
  %529 = load i32, i32* @reload_in_progress, align 4
  %530 = icmp ne i32 %529, 0
  br i1 %530, label %531, label %541

531:                                              ; preds = %528
  %532 = load i32, i32* %15, align 4
  %533 = call i64 @REG_P(i32 %532)
  %534 = icmp ne i64 %533, 0
  br i1 %534, label %535, label %541

535:                                              ; preds = %531
  %536 = load i32, i32* %15, align 4
  %537 = call i64 @REGNO(i32 %536)
  %538 = load i64, i64* @FIRST_PSEUDO_REGISTER, align 8
  %539 = icmp sge i64 %537, %538
  br i1 %539, label %540, label %541

540:                                              ; preds = %535, %524, %520, %513, %506
  store i32 1, i32* %19, align 4
  br label %541

541:                                              ; preds = %540, %535, %531, %528
  br label %593

542:                                              ; preds = %138
  %543 = load i32, i32* %8, align 4
  %544 = icmp eq i32 %543, 114
  br i1 %544, label %545, label %547

545:                                              ; preds = %542
  %546 = load i32, i32* @GENERAL_REGS, align 4
  br label %551

547:                                              ; preds = %542
  %548 = load i32, i32* %8, align 4
  %549 = load i8*, i8** %17, align 8
  %550 = call i32 @REG_CLASS_FROM_CONSTRAINT(i32 %548, i8* %549)
  br label %551

551:                                              ; preds = %547, %545
  %552 = phi i32 [ %546, %545 ], [ %550, %547 ]
  store i32 %552, i32* %26, align 4
  %553 = load i32, i32* %26, align 4
  %554 = load i32, i32* @NO_REGS, align 4
  %555 = icmp ne i32 %553, %554
  br i1 %555, label %556, label %592

556:                                              ; preds = %551
  %557 = load i32, i32* %3, align 4
  %558 = icmp slt i32 %557, 0
  br i1 %558, label %590, label %559

559:                                              ; preds = %556
  %560 = load i32, i32* %3, align 4
  %561 = icmp eq i32 %560, 0
  br i1 %561, label %562, label %571

562:                                              ; preds = %559
  %563 = load i32, i32* %15, align 4
  %564 = call i64 @REG_P(i32 %563)
  %565 = icmp ne i64 %564, 0
  br i1 %565, label %566, label %571

566:                                              ; preds = %562
  %567 = load i32, i32* %15, align 4
  %568 = call i64 @REGNO(i32 %567)
  %569 = load i64, i64* @FIRST_PSEUDO_REGISTER, align 8
  %570 = icmp sge i64 %568, %569
  br i1 %570, label %590, label %571

571:                                              ; preds = %566, %562, %559
  %572 = load i32, i32* %3, align 4
  %573 = icmp eq i32 %572, 0
  br i1 %573, label %574, label %579

574:                                              ; preds = %571
  %575 = load i32, i32* %15, align 4
  %576 = call i64 @GET_CODE(i32 %575)
  %577 = load i64, i64* @SCRATCH, align 8
  %578 = icmp eq i64 %576, %577
  br i1 %578, label %590, label %579

579:                                              ; preds = %574, %571
  %580 = load i32, i32* %15, align 4
  %581 = call i64 @REG_P(i32 %580)
  %582 = icmp ne i64 %581, 0
  br i1 %582, label %583, label %591

583:                                              ; preds = %579
  %584 = load i32, i32* %15, align 4
  %585 = load i32, i32* %26, align 4
  %586 = load i32, i32* %18, align 4
  %587 = load i32, i32* %16, align 4
  %588 = call i32 @reg_fits_class_p(i32 %584, i32 %585, i32 %586, i32 %587)
  %589 = icmp ne i32 %588, 0
  br i1 %589, label %590, label %591

590:                                              ; preds = %583, %574, %566, %556
  store i32 1, i32* %19, align 4
  br label %591

591:                                              ; preds = %590, %583, %579
  br label %592

592:                                              ; preds = %591, %551
  br label %593

593:                                              ; preds = %592, %541, %502, %466, %452, %435, %428, %412, %399, %381, %363, %345, %320, %309, %294, %293, %254, %240, %174, %165, %148, %147, %146
  br label %594

594:                                              ; preds = %593
  %595 = load i32, i32* %21, align 4
  %596 = load i8*, i8** %17, align 8
  %597 = sext i32 %595 to i64
  %598 = getelementptr inbounds i8, i8* %596, i64 %597
  store i8* %598, i8** %17, align 8
  %599 = load i32, i32* %8, align 4
  %600 = icmp ne i32 %599, 0
  br i1 %600, label %138, label %601

601:                                              ; preds = %594
  %602 = load i8*, i8** %17, align 8
  %603 = load i32, i32* %13, align 4
  %604 = sext i32 %603 to i64
  %605 = getelementptr inbounds i8*, i8** %32, i64 %604
  store i8* %602, i8** %605, align 8
  %606 = load i32, i32* %19, align 4
  %607 = icmp ne i32 %606, 0
  br i1 %607, label %609, label %608

608:                                              ; preds = %601
  store i32 1, i32* %14, align 4
  br label %609

609:                                              ; preds = %608, %601
  br label %610

610:                                              ; preds = %609
  %611 = load i32, i32* %13, align 4
  %612 = add nsw i32 %611, 1
  store i32 %612, i32* %13, align 4
  br label %70

613:                                              ; preds = %70
  %614 = load i32, i32* %14, align 4
  %615 = icmp ne i32 %614, 0
  br i1 %615, label %748, label %616

616:                                              ; preds = %613
  %617 = load i32, i32* %3, align 4
  %618 = icmp sgt i32 %617, 0
  br i1 %618, label %619, label %720

619:                                              ; preds = %616
  %620 = load i32, i32* %12, align 4
  %621 = icmp sge i32 %620, 0
  br i1 %621, label %622, label %720

622:                                              ; preds = %619
  %623 = load i32, i32* %12, align 4
  store i32 %623, i32* %28, align 4
  br label %624

624:                                              ; preds = %716, %622
  %625 = load i32, i32* %28, align 4
  %626 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 0), align 8
  %627 = icmp slt i32 %625, %626
  br i1 %627, label %628, label %719

628:                                              ; preds = %624
  %629 = load i32, i32* %28, align 4
  %630 = sext i32 %629 to i64
  %631 = getelementptr inbounds i32, i32* %38, i64 %630
  %632 = load i32, i32* %631, align 4
  %633 = icmp ne i32 %632, 0
  br i1 %633, label %634, label %715

634:                                              ; preds = %628
  %635 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 5), align 8
  %636 = load i32, i32* %28, align 4
  %637 = sext i32 %636 to i64
  %638 = getelementptr inbounds i32, i32* %635, i64 %637
  %639 = load i32, i32* %638, align 4
  %640 = call i64 @REG_P(i32 %639)
  %641 = icmp ne i64 %640, 0
  br i1 %641, label %642, label %715

642:                                              ; preds = %634
  store i32 0, i32* %27, align 4
  br label %643

643:                                              ; preds = %711, %642
  %644 = load i32, i32* %27, align 4
  %645 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 0), align 8
  %646 = icmp slt i32 %644, %645
  br i1 %646, label %647, label %714

647:                                              ; preds = %643
  %648 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 5), align 8
  %649 = load i32, i32* %27, align 4
  %650 = sext i32 %649 to i64
  %651 = getelementptr inbounds i32, i32* %648, i64 %650
  %652 = load i32, i32* %651, align 4
  %653 = call i64 @MEM_P(i32 %652)
  %654 = icmp ne i64 %653, 0
  br i1 %654, label %663, label %655

655:                                              ; preds = %647
  %656 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 4), align 8
  %657 = load i32, i32* %27, align 4
  %658 = sext i32 %657 to i64
  %659 = getelementptr inbounds i64, i64* %656, i64 %658
  %660 = load i64, i64* %659, align 8
  %661 = load i64, i64* @OP_OUT, align 8
  %662 = icmp ne i64 %660, %661
  br i1 %662, label %663, label %710

663:                                              ; preds = %655, %647
  %664 = load i32, i32* %27, align 4
  %665 = load i32, i32* %28, align 4
  %666 = icmp ne i32 %664, %665
  br i1 %666, label %667, label %710

667:                                              ; preds = %663
  %668 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 2), align 8
  %669 = load i32, i32* %27, align 4
  %670 = sext i32 %669 to i64
  %671 = getelementptr inbounds i8*, i8** %668, i64 %670
  %672 = load i8*, i8** %671, align 8
  %673 = load i8, i8* %672, align 1
  %674 = sext i8 %673 to i32
  %675 = icmp ne i32 %674, 0
  br i1 %675, label %676, label %710

676:                                              ; preds = %667
  %677 = load i32, i32* %27, align 4
  %678 = sext i32 %677 to i64
  %679 = getelementptr inbounds i32, i32* %35, i64 %678
  %680 = load i32, i32* %679, align 4
  %681 = load i32, i32* %28, align 4
  %682 = icmp eq i32 %680, %681
  br i1 %682, label %683, label %696

683:                                              ; preds = %676
  %684 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 5), align 8
  %685 = load i32, i32* %27, align 4
  %686 = sext i32 %685 to i64
  %687 = getelementptr inbounds i32, i32* %684, i64 %686
  %688 = load i32, i32* %687, align 4
  %689 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 5), align 8
  %690 = load i32, i32* %28, align 4
  %691 = sext i32 %690 to i64
  %692 = getelementptr inbounds i32, i32* %689, i64 %691
  %693 = load i32, i32* %692, align 4
  %694 = call i32 @operands_match_p(i32 %688, i32 %693)
  %695 = icmp ne i32 %694, 0
  br i1 %695, label %710, label %696

696:                                              ; preds = %683, %676
  %697 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 5), align 8
  %698 = load i32, i32* %27, align 4
  %699 = sext i32 %698 to i64
  %700 = getelementptr inbounds i32, i32* %697, i64 %699
  %701 = load i32, i32* %700, align 4
  %702 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 5), align 8
  %703 = load i32, i32* %28, align 4
  %704 = sext i32 %703 to i64
  %705 = getelementptr inbounds i32, i32* %702, i64 %704
  %706 = load i32, i32* %705, align 4
  %707 = call i32 @safe_from_earlyclobber(i32 %701, i32 %706)
  %708 = icmp ne i32 %707, 0
  br i1 %708, label %710, label %709

709:                                              ; preds = %696
  store i32 1, i32* %14, align 4
  br label %710

710:                                              ; preds = %709, %696, %683, %667, %663, %655
  br label %711

711:                                              ; preds = %710
  %712 = load i32, i32* %27, align 4
  %713 = add nsw i32 %712, 1
  store i32 %713, i32* %27, align 4
  br label %643

714:                                              ; preds = %643
  br label %715

715:                                              ; preds = %714, %634, %628
  br label %716

716:                                              ; preds = %715
  %717 = load i32, i32* %28, align 4
  %718 = add nsw i32 %717, 1
  store i32 %718, i32* %28, align 4
  br label %624

719:                                              ; preds = %624
  br label %720

720:                                              ; preds = %719, %619, %616
  %721 = load i32, i32* %14, align 4
  %722 = icmp ne i32 %721, 0
  br i1 %722, label %747, label %723

723:                                              ; preds = %720
  br label %724

724:                                              ; preds = %728, %723
  %725 = load i32, i32* %10, align 4
  %726 = add nsw i32 %725, -1
  store i32 %726, i32* %10, align 4
  %727 = icmp sge i32 %726, 0
  br i1 %727, label %728, label %746

728:                                              ; preds = %724
  %729 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 5), align 8
  %730 = load i32, i32* %10, align 4
  %731 = sext i32 %730 to i64
  %732 = getelementptr inbounds %struct.funny_match, %struct.funny_match* %41, i64 %731
  %733 = getelementptr inbounds %struct.funny_match, %struct.funny_match* %732, i32 0, i32 0
  %734 = load i32, i32* %733, align 8
  %735 = sext i32 %734 to i64
  %736 = getelementptr inbounds i32, i32* %729, i64 %735
  %737 = load i32, i32* %736, align 4
  %738 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 5), align 8
  %739 = load i32, i32* %10, align 4
  %740 = sext i32 %739 to i64
  %741 = getelementptr inbounds %struct.funny_match, %struct.funny_match* %41, i64 %740
  %742 = getelementptr inbounds %struct.funny_match, %struct.funny_match* %741, i32 0, i32 1
  %743 = load i32, i32* %742, align 4
  %744 = sext i32 %743 to i64
  %745 = getelementptr inbounds i32, i32* %738, i64 %744
  store i32 %737, i32* %745, align 4
  br label %724

746:                                              ; preds = %724
  store i32 1, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %762

747:                                              ; preds = %720
  br label %748

748:                                              ; preds = %747, %613
  %749 = load i32, i32* @which_alternative, align 4
  %750 = add nsw i32 %749, 1
  store i32 %750, i32* @which_alternative, align 4
  br label %751

751:                                              ; preds = %748
  %752 = load i32, i32* @which_alternative, align 4
  %753 = sext i32 %752 to i64
  %754 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 1), align 8
  %755 = icmp slt i64 %753, %754
  br i1 %755, label %69, label %756

756:                                              ; preds = %751
  store i32 -1, i32* @which_alternative, align 4
  %757 = load i32, i32* %3, align 4
  %758 = icmp eq i32 %757, 0
  br i1 %758, label %759, label %761

759:                                              ; preds = %756
  %760 = call i32 @constrain_operands(i32 -1)
  store i32 %760, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %762

761:                                              ; preds = %756
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %762

762:                                              ; preds = %761, %759, %746, %47
  %763 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %763)
  %764 = load i32, i32* %2, align 4
  ret i32 %764
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GET_MODE(i32) #2

declare dso_local i64 @UNARY_P(i32) #2

declare dso_local i32 @XEXP(i32, i32) #2

declare dso_local i64 @GET_CODE(i32) #2

declare dso_local i64 @REG_P(i32) #2

declare dso_local i32 @SUBREG_REG(i32) #2

declare dso_local i64 @REGNO(i32) #2

declare dso_local i32 @subreg_regno_offset(i64, i32, i32, i32) #2

declare dso_local i32 @SUBREG_BYTE(i32) #2

declare dso_local i32 @CONSTRAINT_LEN(i32, i8*) #2

declare dso_local i32 @strtoul(i8*, i8**, i32) #2

declare dso_local i32 @operands_match_p(i32, i32) #2

declare dso_local i32 @strict_memory_address_p(i32, i32) #2

declare dso_local i32 @reg_fits_class_p(i32, i32, i32, i32) #2

declare dso_local i32 @general_operand(i32, i32) #2

declare dso_local i64 @MEM_P(i32) #2

declare dso_local i32 @memory_address_p(i32, i32) #2

declare dso_local i32 @CONSTANT_P(i32) #2

declare dso_local i32 @GET_MODE_CLASS(i32) #2

declare dso_local i32 @CONST_DOUBLE_OK_FOR_CONSTRAINT_P(i32, i32, i8*) #2

declare dso_local i32 @CONST_OK_FOR_CONSTRAINT_P(i32, i32, i8*) #2

declare dso_local i32 @INTVAL(i32) #2

declare dso_local i32 @offsettable_memref_p(i32) #2

declare dso_local i32 @offsettable_nonstrict_memref_p(i32) #2

declare dso_local i32 @REG_CLASS_FROM_CONSTRAINT(i32, i8*) #2

declare dso_local i32 @safe_from_earlyclobber(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
