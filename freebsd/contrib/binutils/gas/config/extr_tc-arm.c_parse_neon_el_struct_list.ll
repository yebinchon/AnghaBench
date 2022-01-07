; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_parse_neon_el_struct_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_parse_neon_el_struct_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neon_type_el = type { i32 }
%struct.neon_typed_alias = type { i32, i32, %struct.neon_type_el }

@REG_TYPE_NDQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"register stride must be 1 or 2\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"mismatched element/structure types in list\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@FAIL = common dso_local global i32 0, align 4
@reg_expected_msgs = common dso_local global i8** null, align 8
@REG_TYPE_NQ = common dso_local global i32 0, align 4
@NEON_INTERLEAVE_LANES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"don't use Rn-Rm syntax with non-unit stride\00", align 1
@NTA_HASINDEX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"error parsing element/structure list\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"expected }\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32*, %struct.neon_type_el*)* @parse_neon_el_struct_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_neon_el_struct_list(i8** %0, i32* %1, %struct.neon_type_el* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.neon_type_el*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.neon_typed_alias, align 4
  %19 = alloca %struct.neon_typed_alias, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.neon_typed_alias, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.neon_type_el* %2, %struct.neon_type_el** %7, align 8
  %24 = load i8**, i8*** %5, align 8
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %8, align 8
  store i32 -1, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 -1, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %26 = load i32, i32* @REG_TYPE_NDQ, align 4
  store i32 %26, i32* %14, align 4
  store i32 1, i32* %15, align 4
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8** %16, align 8
  store i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8** %17, align 8
  %27 = call i32 @skip_past_char(i8** %8, i8 signext 123)
  %28 = load i32, i32* @SUCCESS, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  store i32 1, i32* %13, align 4
  br label %31

31:                                               ; preds = %30, %3
  br label %32

32:                                               ; preds = %224, %31
  %33 = load i32, i32* %14, align 4
  %34 = call i32 @parse_typed_reg_or_scalar(i8** %8, i32 %33, i32* %14, %struct.neon_typed_alias* %19)
  store i32 %34, i32* %20, align 4
  %35 = load i32, i32* %20, align 4
  %36 = load i32, i32* @FAIL, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %32
  %39 = load i8**, i8*** @reg_expected_msgs, align 8
  %40 = load i32, i32* %14, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @_(i8* %43)
  %45 = call i32 @first_error(i32 %44)
  %46 = load i32, i32* @FAIL, align 4
  store i32 %46, i32* %4, align 4
  br label %293

47:                                               ; preds = %32
  %48 = load i32, i32* %9, align 4
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %59

50:                                               ; preds = %47
  %51 = load i32, i32* %20, align 4
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* @REG_TYPE_NQ, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store i32 1, i32* %10, align 4
  store i32 2, i32* %15, align 4
  br label %56

56:                                               ; preds = %55, %50
  %57 = bitcast %struct.neon_typed_alias* %18 to i8*
  %58 = bitcast %struct.neon_typed_alias* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %57, i8* align 4 %58, i64 12, i1 false)
  br label %90

59:                                               ; preds = %47
  %60 = load i32, i32* %10, align 4
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %76

62:                                               ; preds = %59
  %63 = load i32, i32* %20, align 4
  %64 = load i32, i32* %9, align 4
  %65 = sub nsw i32 %63, %64
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp slt i32 %66, 1
  br i1 %67, label %71, label %68

68:                                               ; preds = %62
  %69 = load i32, i32* %10, align 4
  %70 = icmp sgt i32 %69, 2
  br i1 %70, label %71, label %75

71:                                               ; preds = %68, %62
  %72 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0))
  %73 = call i32 @first_error(i32 %72)
  %74 = load i32, i32* @FAIL, align 4
  store i32 %74, i32* %4, align 4
  br label %293

75:                                               ; preds = %68
  br label %89

76:                                               ; preds = %59
  %77 = load i32, i32* %20, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %11, align 4
  %81 = mul nsw i32 %79, %80
  %82 = add nsw i32 %78, %81
  %83 = icmp ne i32 %77, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %76
  %85 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0))
  %86 = call i32 @first_error(i32 %85)
  %87 = load i32, i32* @FAIL, align 4
  store i32 %87, i32* %4, align 4
  br label %293

88:                                               ; preds = %76
  br label %89

89:                                               ; preds = %88, %75
  br label %90

90:                                               ; preds = %89, %56
  %91 = call i32 @neon_alias_types_same(%struct.neon_typed_alias* %19, %struct.neon_typed_alias* %18)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %90
  %94 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i32 0, i32 0))
  %95 = call i32 @first_error(i32 %94)
  %96 = load i32, i32* @FAIL, align 4
  store i32 %96, i32* %4, align 4
  br label %293

97:                                               ; preds = %90
  %98 = load i8*, i8** %8, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 0
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %101, 45
  br i1 %102, label %103, label %166

103:                                              ; preds = %97
  %104 = load i32, i32* %14, align 4
  %105 = load i32, i32* @REG_TYPE_NQ, align 4
  %106 = icmp eq i32 %104, %105
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i32 2, i32 1
  store i32 %108, i32* %23, align 4
  %109 = load i32, i32* %12, align 4
  %110 = icmp eq i32 %109, -1
  br i1 %110, label %111, label %113

111:                                              ; preds = %103
  %112 = load i32, i32* @NEON_INTERLEAVE_LANES, align 4
  store i32 %112, i32* %12, align 4
  br label %122

113:                                              ; preds = %103
  %114 = load i32, i32* %12, align 4
  %115 = load i32, i32* @NEON_INTERLEAVE_LANES, align 4
  %116 = icmp ne i32 %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %113
  %118 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i32 0, i32 0))
  %119 = call i32 @first_error(i32 %118)
  %120 = load i32, i32* @FAIL, align 4
  store i32 %120, i32* %4, align 4
  br label %293

121:                                              ; preds = %113
  br label %122

122:                                              ; preds = %121, %111
  %123 = load i32, i32* %10, align 4
  %124 = icmp eq i32 %123, -1
  br i1 %124, label %125, label %126

125:                                              ; preds = %122
  store i32 1, i32* %10, align 4
  br label %134

126:                                              ; preds = %122
  %127 = load i32, i32* %10, align 4
  %128 = icmp ne i32 %127, 1
  br i1 %128, label %129, label %133

129:                                              ; preds = %126
  %130 = call i32 @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %131 = call i32 @first_error(i32 %130)
  %132 = load i32, i32* @FAIL, align 4
  store i32 %132, i32* %4, align 4
  br label %293

133:                                              ; preds = %126
  br label %134

134:                                              ; preds = %133, %125
  %135 = load i8*, i8** %8, align 8
  %136 = getelementptr inbounds i8, i8* %135, i32 1
  store i8* %136, i8** %8, align 8
  %137 = load i32, i32* %14, align 4
  %138 = call i32 @parse_typed_reg_or_scalar(i8** %8, i32 %137, i32* null, %struct.neon_typed_alias* %21)
  store i32 %138, i32* %22, align 4
  %139 = load i32, i32* %22, align 4
  %140 = load i32, i32* @FAIL, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %151

142:                                              ; preds = %134
  %143 = load i8**, i8*** @reg_expected_msgs, align 8
  %144 = load i32, i32* %14, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds i8*, i8** %143, i64 %145
  %147 = load i8*, i8** %146, align 8
  %148 = call i32 @_(i8* %147)
  %149 = call i32 @first_error(i32 %148)
  %150 = load i32, i32* @FAIL, align 4
  store i32 %150, i32* %4, align 4
  br label %293

151:                                              ; preds = %134
  %152 = call i32 @neon_alias_types_same(%struct.neon_typed_alias* %21, %struct.neon_typed_alias* %18)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %158, label %154

154:                                              ; preds = %151
  %155 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i32 0, i32 0))
  %156 = call i32 @first_error(i32 %155)
  %157 = load i32, i32* @FAIL, align 4
  store i32 %157, i32* %4, align 4
  br label %293

158:                                              ; preds = %151
  %159 = load i32, i32* %22, align 4
  %160 = load i32, i32* %23, align 4
  %161 = add nsw i32 %159, %160
  %162 = load i32, i32* %20, align 4
  %163 = sub nsw i32 %161, %162
  %164 = load i32, i32* %11, align 4
  %165 = add nsw i32 %164, %163
  store i32 %165, i32* %11, align 4
  br label %214

166:                                              ; preds = %97
  %167 = load i32, i32* %14, align 4
  %168 = load i32, i32* @REG_TYPE_NQ, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %170, label %173

170:                                              ; preds = %166
  %171 = load i32, i32* %11, align 4
  %172 = add nsw i32 %171, 2
  store i32 %172, i32* %11, align 4
  br label %214

173:                                              ; preds = %166
  %174 = getelementptr inbounds %struct.neon_typed_alias, %struct.neon_typed_alias* %19, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @NTA_HASINDEX, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %196

179:                                              ; preds = %173
  %180 = load i32, i32* %12, align 4
  %181 = icmp eq i32 %180, -1
  br i1 %181, label %182, label %185

182:                                              ; preds = %179
  %183 = getelementptr inbounds %struct.neon_typed_alias, %struct.neon_typed_alias* %19, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  store i32 %184, i32* %12, align 4
  br label %195

185:                                              ; preds = %179
  %186 = load i32, i32* %12, align 4
  %187 = getelementptr inbounds %struct.neon_typed_alias, %struct.neon_typed_alias* %19, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = icmp ne i32 %186, %188
  br i1 %189, label %190, label %194

190:                                              ; preds = %185
  %191 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i32 0, i32 0))
  %192 = call i32 @first_error(i32 %191)
  %193 = load i32, i32* @FAIL, align 4
  store i32 %193, i32* %4, align 4
  br label %293

194:                                              ; preds = %185
  br label %195

195:                                              ; preds = %194, %182
  br label %211

196:                                              ; preds = %173
  %197 = load i32, i32* %12, align 4
  %198 = icmp eq i32 %197, -1
  br i1 %198, label %199, label %201

199:                                              ; preds = %196
  %200 = load i32, i32* @NEON_INTERLEAVE_LANES, align 4
  store i32 %200, i32* %12, align 4
  br label %210

201:                                              ; preds = %196
  %202 = load i32, i32* %12, align 4
  %203 = load i32, i32* @NEON_INTERLEAVE_LANES, align 4
  %204 = icmp ne i32 %202, %203
  br i1 %204, label %205, label %209

205:                                              ; preds = %201
  %206 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i32 0, i32 0))
  %207 = call i32 @first_error(i32 %206)
  %208 = load i32, i32* @FAIL, align 4
  store i32 %208, i32* %4, align 4
  br label %293

209:                                              ; preds = %201
  br label %210

210:                                              ; preds = %209, %199
  br label %211

211:                                              ; preds = %210, %195
  %212 = load i32, i32* %11, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %11, align 4
  br label %214

214:                                              ; preds = %211, %170, %158
  %215 = load i32, i32* %11, align 4
  %216 = icmp ne i32 %215, 1
  br i1 %216, label %220, label %217

217:                                              ; preds = %214
  %218 = load i32, i32* %13, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %224

220:                                              ; preds = %217, %214
  %221 = call i32 @skip_past_comma(i8** %8)
  %222 = load i32, i32* @FAIL, align 4
  %223 = icmp ne i32 %221, %222
  br label %224

224:                                              ; preds = %220, %217
  %225 = phi i1 [ false, %217 ], [ %223, %220 ]
  br i1 %225, label %32, label %226

226:                                              ; preds = %224
  %227 = load i32, i32* %12, align 4
  %228 = icmp eq i32 %227, -1
  br i1 %228, label %229, label %231

229:                                              ; preds = %226
  %230 = load i32, i32* @NEON_INTERLEAVE_LANES, align 4
  store i32 %230, i32* %12, align 4
  br label %231

231:                                              ; preds = %229, %226
  %232 = load i32, i32* %12, align 4
  %233 = icmp eq i32 %232, -1
  br i1 %233, label %249, label %234

234:                                              ; preds = %231
  %235 = load i32, i32* %9, align 4
  %236 = icmp eq i32 %235, -1
  br i1 %236, label %249, label %237

237:                                              ; preds = %234
  %238 = load i32, i32* %11, align 4
  %239 = icmp slt i32 %238, 1
  br i1 %239, label %249, label %240

240:                                              ; preds = %237
  %241 = load i32, i32* %11, align 4
  %242 = icmp sgt i32 %241, 4
  br i1 %242, label %249, label %243

243:                                              ; preds = %240
  %244 = load i32, i32* %11, align 4
  %245 = icmp sgt i32 %244, 1
  br i1 %245, label %246, label %253

246:                                              ; preds = %243
  %247 = load i32, i32* %10, align 4
  %248 = icmp eq i32 %247, -1
  br i1 %248, label %249, label %253

249:                                              ; preds = %246, %240, %237, %234, %231
  %250 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %251 = call i32 @first_error(i32 %250)
  %252 = load i32, i32* @FAIL, align 4
  store i32 %252, i32* %4, align 4
  br label %293

253:                                              ; preds = %246, %243
  %254 = load i32, i32* %11, align 4
  %255 = icmp sgt i32 %254, 1
  br i1 %255, label %259, label %256

256:                                              ; preds = %253
  %257 = load i32, i32* %13, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %267

259:                                              ; preds = %256, %253
  %260 = call i32 @skip_past_char(i8** %8, i8 signext 125)
  %261 = load i32, i32* @FAIL, align 4
  %262 = icmp eq i32 %260, %261
  br i1 %262, label %263, label %267

263:                                              ; preds = %259
  %264 = call i32 @_(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %265 = call i32 @first_error(i32 %264)
  %266 = load i32, i32* @FAIL, align 4
  store i32 %266, i32* %4, align 4
  br label %293

267:                                              ; preds = %259, %256
  %268 = load i32, i32* %10, align 4
  %269 = icmp eq i32 %268, -1
  br i1 %269, label %270, label %271

270:                                              ; preds = %267
  store i32 1, i32* %10, align 4
  br label %271

271:                                              ; preds = %270, %267
  %272 = load %struct.neon_type_el*, %struct.neon_type_el** %7, align 8
  %273 = icmp ne %struct.neon_type_el* %272, null
  br i1 %273, label %274, label %279

274:                                              ; preds = %271
  %275 = load %struct.neon_type_el*, %struct.neon_type_el** %7, align 8
  %276 = getelementptr inbounds %struct.neon_typed_alias, %struct.neon_typed_alias* %18, i32 0, i32 2
  %277 = bitcast %struct.neon_type_el* %275 to i8*
  %278 = bitcast %struct.neon_type_el* %276 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %277, i8* align 4 %278, i64 4, i1 false)
  br label %279

279:                                              ; preds = %274, %271
  %280 = load i32, i32* %9, align 4
  %281 = load i32*, i32** %6, align 8
  store i32 %280, i32* %281, align 4
  %282 = load i8*, i8** %8, align 8
  %283 = load i8**, i8*** %5, align 8
  store i8* %282, i8** %283, align 8
  %284 = load i32, i32* %12, align 4
  %285 = load i32, i32* %10, align 4
  %286 = sub nsw i32 %285, 1
  %287 = shl i32 %286, 4
  %288 = or i32 %284, %287
  %289 = load i32, i32* %11, align 4
  %290 = sub nsw i32 %289, 1
  %291 = shl i32 %290, 5
  %292 = or i32 %288, %291
  store i32 %292, i32* %4, align 4
  br label %293

293:                                              ; preds = %279, %263, %249, %205, %190, %154, %142, %129, %117, %93, %84, %71, %38
  %294 = load i32, i32* %4, align 4
  ret i32 %294
}

declare dso_local i32 @skip_past_char(i8**, i8 signext) #1

declare dso_local i32 @parse_typed_reg_or_scalar(i8**, i32, i32*, %struct.neon_typed_alias*) #1

declare dso_local i32 @first_error(i32) #1

declare dso_local i32 @_(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @neon_alias_types_same(%struct.neon_typed_alias*, %struct.neon_typed_alias*) #1

declare dso_local i32 @skip_past_comma(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
