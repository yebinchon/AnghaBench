; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genrecog.c_validate_pattern.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genrecog.c_validate_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pred_data = type { i32, i32, i32 }

@pattern_lineno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"operand %i duplicated before defined\00", align 1
@error_count = common dso_local global i32 0, align 4
@DEFINE_INSN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"warning: unknown predicate '%s'\00", align 1
@DEFINE_EXPAND = common dso_local global i32 0, align 4
@DEFINE_SPLIT = common dso_local global i32 0, align 4
@DEFINE_PEEPHOLE2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"warning: constraints not supported in %s\00", align 1
@rtx_name = common dso_local global i8** null, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"operand %d missing in-out reload\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"operand %d missing output reload\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"warning: destination operand %d allows non-lvalue\00", align 1
@VOIDmode = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"operands\00", align 1
@CALL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"warning: operand %d missing mode?\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"address_operand\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"mode mismatch in set: %smode vs %smode\00", align 1
@PC = common dso_local global i32 0, align 4
@CC0 = common dso_local global i32 0, align 4
@CONST_INT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [12 x i8] c"destination\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"warning: %s missing a mode?\00", align 1
@NULL_RTX = common dso_local global i32* null, align 8
@.str.13 = private unnamed_addr constant [41 x i8] c"operand to label_ref %smode not VOIDmode\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32)* @validate_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @validate_pattern(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.pred_data*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8, align 1
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @GET_CODE(i32* %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  switch i32 %25, label %412 [
    i32 131, label %26
    i32 136, label %27
    i32 133, label %27
    i32 132, label %27
    i32 135, label %43
    i32 134, label %43
    i32 130, label %227
    i32 138, label %365
    i32 128, label %370
    i32 129, label %387
    i32 137, label %396
  ]

26:                                               ; preds = %4
  br label %459

27:                                               ; preds = %4, %4, %4
  %28 = load i32*, i32** %6, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = call i8* @XINT(i32* %29, i32 0)
  %31 = load i32*, i32** %5, align 8
  %32 = call i32* @find_operand(i32* %28, i8* %30, i32* %31)
  %33 = load i32*, i32** %5, align 8
  %34 = icmp eq i32* %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %27
  %36 = load i32, i32* @pattern_lineno, align 4
  %37 = load i32*, i32** %5, align 8
  %38 = call i8* @XINT(i32* %37, i32 0)
  %39 = call i32 (i32, i8*, i8*, ...) @message_with_line(i32 %36, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %38)
  %40 = load i32, i32* @error_count, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* @error_count, align 4
  br label %42

42:                                               ; preds = %35, %27
  br label %413

43:                                               ; preds = %4, %4
  %44 = load i32*, i32** %5, align 8
  %45 = call i8* @XSTR(i32* %44, i32 1)
  store i8* %45, i8** %14, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @GET_CODE(i32* %46)
  %48 = load i32, i32* @DEFINE_INSN, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load i32*, i32** %6, align 8
  %52 = call i8* @XSTR(i32* %51, i32 2)
  store i8* %52, i8** %16, align 8
  br label %56

53:                                               ; preds = %43
  %54 = load i32*, i32** %6, align 8
  %55 = call i8* @XSTR(i32* %54, i32 1)
  store i8* %55, i8** %16, align 8
  br label %56

56:                                               ; preds = %53, %50
  %57 = load i8*, i8** %14, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 0
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %56
  %63 = load i8*, i8** %14, align 8
  %64 = call %struct.pred_data* @lookup_predicate(i8* %63)
  store %struct.pred_data* %64, %struct.pred_data** %15, align 8
  %65 = load %struct.pred_data*, %struct.pred_data** %15, align 8
  %66 = icmp ne %struct.pred_data* %65, null
  br i1 %66, label %71, label %67

67:                                               ; preds = %62
  %68 = load i32, i32* @pattern_lineno, align 4
  %69 = load i8*, i8** %14, align 8
  %70 = call i32 (i32, i8*, i8*, ...) @message_with_line(i32 %68, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %69)
  br label %71

71:                                               ; preds = %67, %62
  br label %73

72:                                               ; preds = %56
  store %struct.pred_data* null, %struct.pred_data** %15, align 8
  br label %73

73:                                               ; preds = %72, %71
  %74 = load i32, i32* %10, align 4
  %75 = icmp eq i32 %74, 135
  br i1 %75, label %76, label %162

76:                                               ; preds = %73
  %77 = load i32*, i32** %5, align 8
  %78 = call i8* @XSTR(i32* %77, i32 2)
  %79 = getelementptr inbounds i8, i8* %78, i64 0
  %80 = load i8, i8* %79, align 1
  store i8 %80, i8* %17, align 1
  %81 = load i32*, i32** %6, align 8
  %82 = call i32 @GET_CODE(i32* %81)
  %83 = load i32, i32* @DEFINE_EXPAND, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %95, label %85

85:                                               ; preds = %76
  %86 = load i32*, i32** %6, align 8
  %87 = call i32 @GET_CODE(i32* %86)
  %88 = load i32, i32* @DEFINE_SPLIT, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %95, label %90

90:                                               ; preds = %85
  %91 = load i32*, i32** %6, align 8
  %92 = call i32 @GET_CODE(i32* %91)
  %93 = load i32, i32* @DEFINE_PEEPHOLE2, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %108

95:                                               ; preds = %90, %85, %76
  %96 = load i8, i8* %17, align 1
  %97 = icmp ne i8 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %95
  %99 = load i32, i32* @pattern_lineno, align 4
  %100 = load i8**, i8*** @rtx_name, align 8
  %101 = load i32*, i32** %6, align 8
  %102 = call i32 @GET_CODE(i32* %101)
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8*, i8** %100, i64 %103
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 (i32, i8*, i8*, ...) @message_with_line(i32 %99, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8* %105)
  br label %107

107:                                              ; preds = %98, %95
  br label %161

108:                                              ; preds = %90
  %109 = load i32*, i32** %7, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %111, label %160

111:                                              ; preds = %108
  %112 = load i8, i8* %17, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %160

115:                                              ; preds = %111
  %116 = load i32, i32* %8, align 4
  %117 = icmp eq i32 %116, 43
  br i1 %117, label %118, label %143

118:                                              ; preds = %115
  %119 = load i8, i8* %17, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp eq i32 %120, 43
  br i1 %121, label %122, label %123

122:                                              ; preds = %118
  br label %142

123:                                              ; preds = %118
  %124 = load i8, i8* %17, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp eq i32 %125, 61
  br i1 %126, label %127, label %134

127:                                              ; preds = %123
  %128 = load i32*, i32** %6, align 8
  %129 = load i32*, i32** %5, align 8
  %130 = call i8* @XINT(i32* %129, i32 0)
  %131 = call i32 @find_matching_operand(i32* %128, i8* %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %127
  br label %141

134:                                              ; preds = %127, %123
  %135 = load i32, i32* @pattern_lineno, align 4
  %136 = load i32*, i32** %5, align 8
  %137 = call i8* @XINT(i32* %136, i32 0)
  %138 = call i32 (i32, i8*, i8*, ...) @message_with_line(i32 %135, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %137)
  %139 = load i32, i32* @error_count, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* @error_count, align 4
  br label %141

141:                                              ; preds = %134, %133
  br label %142

142:                                              ; preds = %141, %122
  br label %159

143:                                              ; preds = %115
  %144 = load i8, i8* %17, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp ne i32 %145, 61
  br i1 %146, label %147, label %158

147:                                              ; preds = %143
  %148 = load i8, i8* %17, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp ne i32 %149, 43
  br i1 %150, label %151, label %158

151:                                              ; preds = %147
  %152 = load i32, i32* @pattern_lineno, align 4
  %153 = load i32*, i32** %5, align 8
  %154 = call i8* @XINT(i32* %153, i32 0)
  %155 = call i32 (i32, i8*, i8*, ...) @message_with_line(i32 %152, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* %154)
  %156 = load i32, i32* @error_count, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* @error_count, align 4
  br label %158

158:                                              ; preds = %151, %147, %143
  br label %159

159:                                              ; preds = %158, %142
  br label %160

160:                                              ; preds = %159, %111, %108
  br label %161

161:                                              ; preds = %160, %107
  br label %162

162:                                              ; preds = %161, %73
  %163 = load i32*, i32** %7, align 8
  %164 = icmp ne i32* %163, null
  br i1 %164, label %165, label %178

165:                                              ; preds = %162
  %166 = load %struct.pred_data*, %struct.pred_data** %15, align 8
  %167 = icmp ne %struct.pred_data* %166, null
  br i1 %167, label %168, label %178

168:                                              ; preds = %165
  %169 = load %struct.pred_data*, %struct.pred_data** %15, align 8
  %170 = getelementptr inbounds %struct.pred_data, %struct.pred_data* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %178

173:                                              ; preds = %168
  %174 = load i32, i32* @pattern_lineno, align 4
  %175 = load i32*, i32** %5, align 8
  %176 = call i8* @XINT(i32* %175, i32 0)
  %177 = call i32 (i32, i8*, i8*, ...) @message_with_line(i32 %174, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i8* %176)
  br label %178

178:                                              ; preds = %173, %168, %165, %162
  %179 = load i32*, i32** %5, align 8
  %180 = call i32 @GET_MODE(i32* %179)
  %181 = load i32, i32* @VOIDmode, align 4
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %183, label %226

183:                                              ; preds = %178
  %184 = load i32, i32* %10, align 4
  %185 = icmp eq i32 %184, 135
  br i1 %185, label %186, label %226

186:                                              ; preds = %183
  %187 = load i32*, i32** %6, align 8
  %188 = call i32 @GET_CODE(i32* %187)
  %189 = load i32, i32* @DEFINE_INSN, align 4
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %191, label %226

191:                                              ; preds = %186
  %192 = load %struct.pred_data*, %struct.pred_data** %15, align 8
  %193 = icmp ne %struct.pred_data* %192, null
  br i1 %193, label %194, label %226

194:                                              ; preds = %191
  %195 = load %struct.pred_data*, %struct.pred_data** %15, align 8
  %196 = getelementptr inbounds %struct.pred_data, %struct.pred_data* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %226, label %199

199:                                              ; preds = %194
  %200 = load %struct.pred_data*, %struct.pred_data** %15, align 8
  %201 = getelementptr inbounds %struct.pred_data, %struct.pred_data* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %226

204:                                              ; preds = %199
  %205 = load i8*, i8** %16, align 8
  %206 = call i32* @strstr(i8* %205, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %207 = icmp eq i32* %206, null
  br i1 %207, label %208, label %226

208:                                              ; preds = %204
  %209 = load i32*, i32** %7, align 8
  %210 = icmp ne i32* %209, null
  br i1 %210, label %211, label %221

211:                                              ; preds = %208
  %212 = load i32*, i32** %7, align 8
  %213 = call i32 @GET_CODE(i32* %212)
  %214 = icmp eq i32 %213, 130
  br i1 %214, label %215, label %221

215:                                              ; preds = %211
  %216 = load i32*, i32** %7, align 8
  %217 = call i32* @SET_SRC(i32* %216)
  %218 = call i32 @GET_CODE(i32* %217)
  %219 = load i32, i32* @CALL, align 4
  %220 = icmp eq i32 %218, %219
  br i1 %220, label %226, label %221

221:                                              ; preds = %215, %211, %208
  %222 = load i32, i32* @pattern_lineno, align 4
  %223 = load i32*, i32** %5, align 8
  %224 = call i8* @XINT(i32* %223, i32 0)
  %225 = call i32 (i32, i8*, i8*, ...) @message_with_line(i32 %222, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i8* %224)
  br label %226

226:                                              ; preds = %221, %215, %204, %199, %194, %191, %186, %183, %178
  br label %459

227:                                              ; preds = %4
  %228 = load i32*, i32** %5, align 8
  %229 = call i32* @SET_DEST(i32* %228)
  store i32* %229, i32** %20, align 8
  %230 = load i32*, i32** %5, align 8
  %231 = call i32* @SET_SRC(i32* %230)
  store i32* %231, i32** %21, align 8
  %232 = load i32*, i32** %20, align 8
  %233 = call i32 @GET_CODE(i32* %232)
  %234 = icmp eq i32 %233, 129
  br i1 %234, label %235, label %238

235:                                              ; preds = %227
  %236 = load i32*, i32** %20, align 8
  %237 = call i32* @XEXP(i32* %236, i64 0)
  store i32* %237, i32** %20, align 8
  br label %238

238:                                              ; preds = %235, %227
  %239 = load i32*, i32** %20, align 8
  %240 = call i32 @GET_CODE(i32* %239)
  %241 = icmp eq i32 %240, 136
  br i1 %241, label %250, label %242

242:                                              ; preds = %238
  %243 = load i32*, i32** %20, align 8
  %244 = call i32 @GET_CODE(i32* %243)
  %245 = icmp eq i32 %244, 133
  br i1 %245, label %250, label %246

246:                                              ; preds = %242
  %247 = load i32*, i32** %20, align 8
  %248 = call i32 @GET_CODE(i32* %247)
  %249 = icmp eq i32 %248, 132
  br i1 %249, label %250, label %255

250:                                              ; preds = %246, %242, %238
  %251 = load i32*, i32** %6, align 8
  %252 = load i32*, i32** %20, align 8
  %253 = call i8* @XINT(i32* %252, i32 0)
  %254 = call i32* @find_operand(i32* %251, i8* %253, i32* null)
  store i32* %254, i32** %20, align 8
  br label %255

255:                                              ; preds = %250, %246
  %256 = load i32*, i32** %21, align 8
  %257 = call i32 @GET_CODE(i32* %256)
  %258 = icmp eq i32 %257, 136
  br i1 %258, label %267, label %259

259:                                              ; preds = %255
  %260 = load i32*, i32** %21, align 8
  %261 = call i32 @GET_CODE(i32* %260)
  %262 = icmp eq i32 %261, 133
  br i1 %262, label %267, label %263

263:                                              ; preds = %259
  %264 = load i32*, i32** %21, align 8
  %265 = call i32 @GET_CODE(i32* %264)
  %266 = icmp eq i32 %265, 132
  br i1 %266, label %267, label %272

267:                                              ; preds = %263, %259, %255
  %268 = load i32*, i32** %6, align 8
  %269 = load i32*, i32** %21, align 8
  %270 = call i8* @XINT(i32* %269, i32 0)
  %271 = call i32* @find_operand(i32* %268, i8* %270, i32* null)
  store i32* %271, i32** %21, align 8
  br label %272

272:                                              ; preds = %267, %263
  %273 = load i32*, i32** %20, align 8
  %274 = call i32 @GET_MODE(i32* %273)
  store i32 %274, i32* %18, align 4
  %275 = load i32*, i32** %21, align 8
  %276 = call i32 @GET_MODE(i32* %275)
  store i32 %276, i32* %19, align 4
  %277 = load i32*, i32** %21, align 8
  %278 = call i32 @GET_CODE(i32* %277)
  %279 = icmp eq i32 %278, 135
  br i1 %279, label %280, label %286

280:                                              ; preds = %272
  %281 = load i32*, i32** %21, align 8
  %282 = call i8* @XSTR(i32* %281, i32 1)
  %283 = call i32 @strcmp(i8* %282, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %286, label %285

285:                                              ; preds = %280
  br label %347

286:                                              ; preds = %280, %272
  %287 = load i32, i32* %18, align 4
  %288 = load i32, i32* @VOIDmode, align 4
  %289 = icmp ne i32 %287, %288
  br i1 %289, label %290, label %307

290:                                              ; preds = %286
  %291 = load i32, i32* %19, align 4
  %292 = load i32, i32* @VOIDmode, align 4
  %293 = icmp ne i32 %291, %292
  br i1 %293, label %294, label %307

294:                                              ; preds = %290
  %295 = load i32, i32* %18, align 4
  %296 = load i32, i32* %19, align 4
  %297 = icmp ne i32 %295, %296
  br i1 %297, label %298, label %307

298:                                              ; preds = %294
  %299 = load i32, i32* @pattern_lineno, align 4
  %300 = load i32, i32* %18, align 4
  %301 = call i8* @GET_MODE_NAME(i32 %300)
  %302 = load i32, i32* %19, align 4
  %303 = call i8* @GET_MODE_NAME(i32 %302)
  %304 = call i32 (i32, i8*, i8*, ...) @message_with_line(i32 %299, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0), i8* %301, i8* %303)
  %305 = load i32, i32* @error_count, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* @error_count, align 4
  br label %346

307:                                              ; preds = %294, %290, %286
  %308 = load i32, i32* %18, align 4
  %309 = load i32, i32* %19, align 4
  %310 = icmp ne i32 %308, %309
  br i1 %310, label %311, label %345

311:                                              ; preds = %307
  %312 = load i32*, i32** %20, align 8
  %313 = call i32 @GET_CODE(i32* %312)
  %314 = load i32, i32* @PC, align 4
  %315 = icmp ne i32 %313, %314
  br i1 %315, label %316, label %345

316:                                              ; preds = %311
  %317 = load i32*, i32** %20, align 8
  %318 = call i32 @GET_CODE(i32* %317)
  %319 = load i32, i32* @CC0, align 4
  %320 = icmp ne i32 %318, %319
  br i1 %320, label %321, label %345

321:                                              ; preds = %316
  %322 = load i32*, i32** %21, align 8
  %323 = call i32 @GET_CODE(i32* %322)
  %324 = load i32, i32* @PC, align 4
  %325 = icmp ne i32 %323, %324
  br i1 %325, label %326, label %345

326:                                              ; preds = %321
  %327 = load i32*, i32** %21, align 8
  %328 = call i32 @GET_CODE(i32* %327)
  %329 = load i32, i32* @CC0, align 4
  %330 = icmp ne i32 %328, %329
  br i1 %330, label %331, label %345

331:                                              ; preds = %326
  %332 = load i32*, i32** %21, align 8
  %333 = call i32 @GET_CODE(i32* %332)
  %334 = load i32, i32* @CONST_INT, align 4
  %335 = icmp ne i32 %333, %334
  br i1 %335, label %336, label %345

336:                                              ; preds = %331
  %337 = load i32, i32* %18, align 4
  %338 = load i32, i32* @VOIDmode, align 4
  %339 = icmp eq i32 %337, %338
  %340 = zext i1 %339 to i64
  %341 = select i1 %339, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0)
  store i8* %341, i8** %22, align 8
  %342 = load i32, i32* @pattern_lineno, align 4
  %343 = load i8*, i8** %22, align 8
  %344 = call i32 (i32, i8*, i8*, ...) @message_with_line(i32 %342, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0), i8* %343)
  br label %345

345:                                              ; preds = %336, %331, %326, %321, %316, %311, %307
  br label %346

346:                                              ; preds = %345, %298
  br label %347

347:                                              ; preds = %346, %285
  %348 = load i32*, i32** %20, align 8
  %349 = load i32*, i32** %5, align 8
  %350 = call i32* @SET_DEST(i32* %349)
  %351 = icmp ne i32* %348, %350
  br i1 %351, label %352, label %356

352:                                              ; preds = %347
  %353 = load i32*, i32** %20, align 8
  %354 = load i32*, i32** %6, align 8
  %355 = load i32*, i32** %5, align 8
  call void @validate_pattern(i32* %353, i32* %354, i32* %355, i32 61)
  br label %356

356:                                              ; preds = %352, %347
  %357 = load i32*, i32** %5, align 8
  %358 = call i32* @SET_DEST(i32* %357)
  %359 = load i32*, i32** %6, align 8
  %360 = load i32*, i32** %5, align 8
  call void @validate_pattern(i32* %358, i32* %359, i32* %360, i32 61)
  %361 = load i32*, i32** %5, align 8
  %362 = call i32* @SET_SRC(i32* %361)
  %363 = load i32*, i32** %6, align 8
  %364 = load i32*, i32** @NULL_RTX, align 8
  call void @validate_pattern(i32* %362, i32* %363, i32* %364, i32 0)
  br label %459

365:                                              ; preds = %4
  %366 = load i32*, i32** %5, align 8
  %367 = call i32* @SET_DEST(i32* %366)
  %368 = load i32*, i32** %6, align 8
  %369 = load i32*, i32** %5, align 8
  call void @validate_pattern(i32* %367, i32* %368, i32* %369, i32 61)
  br label %459

370:                                              ; preds = %4
  %371 = load i32*, i32** %5, align 8
  %372 = call i32* @XEXP(i32* %371, i64 0)
  %373 = load i32*, i32** %6, align 8
  %374 = load i32*, i32** %7, align 8
  %375 = load i32*, i32** %7, align 8
  %376 = icmp ne i32* %375, null
  %377 = zext i1 %376 to i64
  %378 = select i1 %376, i32 43, i32 0
  call void @validate_pattern(i32* %372, i32* %373, i32* %374, i32 %378)
  %379 = load i32*, i32** %5, align 8
  %380 = call i32* @XEXP(i32* %379, i64 1)
  %381 = load i32*, i32** %6, align 8
  %382 = load i32*, i32** @NULL_RTX, align 8
  call void @validate_pattern(i32* %380, i32* %381, i32* %382, i32 0)
  %383 = load i32*, i32** %5, align 8
  %384 = call i32* @XEXP(i32* %383, i64 2)
  %385 = load i32*, i32** %6, align 8
  %386 = load i32*, i32** @NULL_RTX, align 8
  call void @validate_pattern(i32* %384, i32* %385, i32* %386, i32 0)
  br label %459

387:                                              ; preds = %4
  %388 = load i32*, i32** %5, align 8
  %389 = call i32* @XEXP(i32* %388, i64 0)
  %390 = load i32*, i32** %6, align 8
  %391 = load i32*, i32** %7, align 8
  %392 = load i32*, i32** %7, align 8
  %393 = icmp ne i32* %392, null
  %394 = zext i1 %393 to i64
  %395 = select i1 %393, i32 43, i32 0
  call void @validate_pattern(i32* %389, i32* %390, i32* %391, i32 %395)
  br label %459

396:                                              ; preds = %4
  %397 = load i32*, i32** %5, align 8
  %398 = call i32* @XEXP(i32* %397, i64 0)
  %399 = call i32 @GET_MODE(i32* %398)
  %400 = load i32, i32* @VOIDmode, align 4
  %401 = icmp ne i32 %399, %400
  br i1 %401, label %402, label %411

402:                                              ; preds = %396
  %403 = load i32, i32* @pattern_lineno, align 4
  %404 = load i32*, i32** %5, align 8
  %405 = call i32* @XEXP(i32* %404, i64 0)
  %406 = call i32 @GET_MODE(i32* %405)
  %407 = call i8* @GET_MODE_NAME(i32 %406)
  %408 = call i32 (i32, i8*, i8*, ...) @message_with_line(i32 %403, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0), i8* %407)
  %409 = load i32, i32* @error_count, align 4
  %410 = add nsw i32 %409, 1
  store i32 %410, i32* @error_count, align 4
  br label %411

411:                                              ; preds = %402, %396
  br label %413

412:                                              ; preds = %4
  br label %413

413:                                              ; preds = %412, %411, %42
  %414 = load i32, i32* %10, align 4
  %415 = call i8* @GET_RTX_FORMAT(i32 %414)
  store i8* %415, i8** %9, align 8
  %416 = load i32, i32* %10, align 4
  %417 = call i64 @GET_RTX_LENGTH(i32 %416)
  store i64 %417, i64* %12, align 8
  store i64 0, i64* %11, align 8
  br label %418

418:                                              ; preds = %456, %413
  %419 = load i64, i64* %11, align 8
  %420 = load i64, i64* %12, align 8
  %421 = icmp ult i64 %419, %420
  br i1 %421, label %422, label %459

422:                                              ; preds = %418
  %423 = load i8*, i8** %9, align 8
  %424 = load i64, i64* %11, align 8
  %425 = getelementptr inbounds i8, i8* %423, i64 %424
  %426 = load i8, i8* %425, align 1
  %427 = sext i8 %426 to i32
  switch i32 %427, label %453 [
    i32 101, label %428
    i32 117, label %428
    i32 69, label %434
    i32 105, label %452
    i32 119, label %452
    i32 48, label %452
    i32 115, label %452
  ]

428:                                              ; preds = %422, %422
  %429 = load i32*, i32** %5, align 8
  %430 = load i64, i64* %11, align 8
  %431 = call i32* @XEXP(i32* %429, i64 %430)
  %432 = load i32*, i32** %6, align 8
  %433 = load i32*, i32** @NULL_RTX, align 8
  call void @validate_pattern(i32* %431, i32* %432, i32* %433, i32 0)
  br label %455

434:                                              ; preds = %422
  store i32 0, i32* %13, align 4
  br label %435

435:                                              ; preds = %448, %434
  %436 = load i32, i32* %13, align 4
  %437 = load i32*, i32** %5, align 8
  %438 = load i64, i64* %11, align 8
  %439 = call i32 @XVECLEN(i32* %437, i64 %438)
  %440 = icmp slt i32 %436, %439
  br i1 %440, label %441, label %451

441:                                              ; preds = %435
  %442 = load i32*, i32** %5, align 8
  %443 = load i64, i64* %11, align 8
  %444 = load i32, i32* %13, align 4
  %445 = call i32* @XVECEXP(i32* %442, i64 %443, i32 %444)
  %446 = load i32*, i32** %6, align 8
  %447 = load i32*, i32** @NULL_RTX, align 8
  call void @validate_pattern(i32* %445, i32* %446, i32* %447, i32 0)
  br label %448

448:                                              ; preds = %441
  %449 = load i32, i32* %13, align 4
  %450 = add nsw i32 %449, 1
  store i32 %450, i32* %13, align 4
  br label %435

451:                                              ; preds = %435
  br label %455

452:                                              ; preds = %422, %422, %422, %422
  br label %455

453:                                              ; preds = %422
  %454 = call i32 (...) @gcc_unreachable()
  br label %455

455:                                              ; preds = %453, %452, %451, %428
  br label %456

456:                                              ; preds = %455
  %457 = load i64, i64* %11, align 8
  %458 = add i64 %457, 1
  store i64 %458, i64* %11, align 8
  br label %418

459:                                              ; preds = %26, %226, %356, %365, %370, %387, %418
  ret void
}

declare dso_local i32 @GET_CODE(i32*) #1

declare dso_local i32* @find_operand(i32*, i8*, i32*) #1

declare dso_local i8* @XINT(i32*, i32) #1

declare dso_local i32 @message_with_line(i32, i8*, i8*, ...) #1

declare dso_local i8* @XSTR(i32*, i32) #1

declare dso_local %struct.pred_data* @lookup_predicate(i8*) #1

declare dso_local i32 @find_matching_operand(i32*, i8*) #1

declare dso_local i32 @GET_MODE(i32*) #1

declare dso_local i32* @strstr(i8*, i8*) #1

declare dso_local i32* @SET_SRC(i32*) #1

declare dso_local i32* @SET_DEST(i32*) #1

declare dso_local i32* @XEXP(i32*, i64) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @GET_MODE_NAME(i32) #1

declare dso_local i8* @GET_RTX_FORMAT(i32) #1

declare dso_local i64 @GET_RTX_LENGTH(i32) #1

declare dso_local i32 @XVECLEN(i32*, i64) #1

declare dso_local i32* @XVECEXP(i32*, i64, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
