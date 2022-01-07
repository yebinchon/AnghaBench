; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_obj-coff.c_coff_frob_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_obj-coff.c_coff_frob_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.internal_auxent = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32 }
%struct.line_no = type { %struct.line_no*, %struct.TYPE_24__, %struct.TYPE_20__* }
%struct.TYPE_24__ = type { %struct.TYPE_19__, i64 }
%struct.TYPE_19__ = type { i32, i32* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_17__ = type { i32* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_24__* }

@coff_frob_symbol.last_tagP = internal global i32* null, align 8
@coff_frob_symbol.block_stack = internal global i32* null, align 8
@coff_frob_symbol.set_end = internal global i32* null, align 8
@abs_symbol = common dso_local global i32 0, align 4
@current_lineno_sym = common dso_local global i64 0, align 8
@C_WEAKEXT = common dso_local global i64 0, align 8
@C_STAT = common dso_local global i64 0, align 8
@C_EXT = common dso_local global i64 0, align 8
@C_LABEL = common dso_local global i64 0, align 8
@C_NULL = common dso_local global i64 0, align 8
@text_section = common dso_local global i64 0, align 8
@C_BLOCK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c".bb\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"mismatched .eb\00", align 1
@coff_last_function = common dso_local global i32* null, align 8
@C_EFCN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"C_EFCN symbol for %s out of scope\00", align 1
@BSF_FUNCTION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"Symbol `%s' can not be both weak and common\00", align 1
@C_EOS = common dso_local global i64 0, align 8
@BSF_NOT_AT_END = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [56 x i8] c"Warning: internal error: forgetting to set endndx of %s\00", align 1
@C_FCN = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [4 x i8] c".bf\00", align 1
@coff_last_bf = common dso_local global i32* null, align 8
@OCTETS_PER_BYTE = common dso_local global i32 0, align 4
@BSF_SECTION_SYM = common dso_local global i32 0, align 4
@C_FILE = common dso_local global i64 0, align 8
@C_NT_WEAK = common dso_local global i64 0, align 8
@absolute_section = common dso_local global i64 0, align 8
@undefined_section = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @coff_frob_symbol(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %union.internal_auxent*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.line_no*, align 8
  %11 = alloca %struct.TYPE_24__*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32* null, i32** %5, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = icmp eq i32* %12, @abs_symbol
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32*, i32** %4, align 8
  store i32 1, i32* %15, align 4
  br label %440

16:                                               ; preds = %2
  %17 = load i64, i64* @current_lineno_sym, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = call i32 @coff_add_linesym(i32* null)
  br label %21

21:                                               ; preds = %19, %16
  %22 = load i32*, i32** @coff_frob_symbol.block_stack, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = call i32* @stack_init(i32 512, i32 8)
  store i32* %25, i32** @coff_frob_symbol.block_stack, align 8
  br label %26

26:                                               ; preds = %24, %21
  %27 = load i32*, i32** %3, align 8
  %28 = call i64 @S_IS_WEAK(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i32*, i32** %3, align 8
  %32 = load i64, i64* @C_WEAKEXT, align 8
  %33 = call i32 @S_SET_STORAGE_CLASS(i32* %31, i64 %32)
  br label %34

34:                                               ; preds = %30, %26
  %35 = load i32*, i32** %3, align 8
  %36 = call i64 @S_IS_DEFINED(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %51, label %38

38:                                               ; preds = %34
  %39 = load i32*, i32** %3, align 8
  %40 = call i64 @S_IS_WEAK(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %38
  %43 = load i32*, i32** %3, align 8
  %44 = call i64 @S_GET_STORAGE_CLASS(i32* %43)
  %45 = load i64, i64* @C_STAT, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i32*, i32** %3, align 8
  %49 = load i64, i64* @C_EXT, align 8
  %50 = call i32 @S_SET_STORAGE_CLASS(i32* %48, i64 %49)
  br label %51

51:                                               ; preds = %47, %42, %38, %34
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 @SF_GET_DEBUG(i32* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %250, label %55

55:                                               ; preds = %51
  %56 = load i32*, i32** %3, align 8
  %57 = call i64 @SF_GET_LOCAL(i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %91, label %59

59:                                               ; preds = %55
  %60 = load i32*, i32** %3, align 8
  %61 = call i32 @SF_GET_STATICS(i32* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %91, label %63

63:                                               ; preds = %59
  %64 = load i32*, i32** %3, align 8
  %65 = call i64 @S_GET_STORAGE_CLASS(i32* %64)
  %66 = load i64, i64* @C_LABEL, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %91

68:                                               ; preds = %63
  %69 = load i32*, i32** %3, align 8
  %70 = call i64 @symbol_constant_p(i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %91

72:                                               ; preds = %68
  %73 = load i32*, i32** %3, align 8
  %74 = call i32 @S_GET_NAME(i32* %73)
  %75 = call i32* @symbol_find_noref(i32 %74, i32 1)
  store i32* %75, i32** %6, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %91

77:                                               ; preds = %72
  %78 = load i32*, i32** %6, align 8
  %79 = call i64 @S_GET_STORAGE_CLASS(i32* %78)
  %80 = load i64, i64* @C_NULL, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %77
  %83 = load i32*, i32** %6, align 8
  %84 = load i32*, i32** %3, align 8
  %85 = icmp ne i32* %83, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %82
  %87 = load i32*, i32** %3, align 8
  %88 = load i32*, i32** %6, align 8
  %89 = call i32 @c_symbol_merge(i32* %87, i32* %88)
  %90 = load i32*, i32** %4, align 8
  store i32 1, i32* %90, align 4
  br label %440

91:                                               ; preds = %82, %77, %72, %68, %63, %59, %55
  %92 = load i32*, i32** %3, align 8
  %93 = call i64 @S_IS_DEFINED(i32* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %114, label %95

95:                                               ; preds = %91
  %96 = load i32*, i32** %3, align 8
  %97 = call i64 @SF_GET_LOCAL(i32* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %114, label %99

99:                                               ; preds = %95
  %100 = load i32*, i32** %3, align 8
  %101 = call i64 @S_GET_VALUE(i32* %100)
  %102 = icmp eq i64 %101, 0
  %103 = zext i1 %102 to i32
  %104 = call i32 @assert(i32 %103)
  %105 = load i32*, i32** %3, align 8
  %106 = call i64 @S_IS_WEAKREFD(i32* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %99
  %109 = load i32*, i32** %4, align 8
  store i32 1, i32* %109, align 4
  br label %113

110:                                              ; preds = %99
  %111 = load i32*, i32** %3, align 8
  %112 = call i32 @S_SET_EXTERNAL(i32* %111)
  br label %113

113:                                              ; preds = %110, %108
  br label %141

114:                                              ; preds = %95, %91
  %115 = load i32*, i32** %3, align 8
  %116 = call i64 @S_GET_STORAGE_CLASS(i32* %115)
  %117 = load i64, i64* @C_NULL, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %140

119:                                              ; preds = %114
  %120 = load i32*, i32** %3, align 8
  %121 = call i64 @S_GET_SEGMENT(i32* %120)
  %122 = load i64, i64* @text_section, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %135

124:                                              ; preds = %119
  %125 = load i32*, i32** %3, align 8
  %126 = load i64, i64* @text_section, align 8
  %127 = call %struct.TYPE_17__* @seg_info(i64 %126)
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = icmp ne i32* %125, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %124
  %132 = load i32*, i32** %3, align 8
  %133 = load i64, i64* @C_LABEL, align 8
  %134 = call i32 @S_SET_STORAGE_CLASS(i32* %132, i64 %133)
  br label %139

135:                                              ; preds = %124, %119
  %136 = load i32*, i32** %3, align 8
  %137 = load i64, i64* @C_STAT, align 8
  %138 = call i32 @S_SET_STORAGE_CLASS(i32* %136, i64 %137)
  br label %139

139:                                              ; preds = %135, %131
  br label %140

140:                                              ; preds = %139, %114
  br label %141

141:                                              ; preds = %140, %113
  %142 = load i32*, i32** %3, align 8
  %143 = call i64 @SF_GET_PROCESS(i32* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %223

145:                                              ; preds = %141
  %146 = load i32*, i32** %3, align 8
  %147 = call i64 @S_GET_STORAGE_CLASS(i32* %146)
  %148 = load i64, i64* @C_BLOCK, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %175

150:                                              ; preds = %145
  %151 = load i32*, i32** %3, align 8
  %152 = call i32 @S_GET_NAME(i32* %151)
  %153 = call i64 @streq(i32 %152, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %150
  %156 = load i32*, i32** @coff_frob_symbol.block_stack, align 8
  %157 = bitcast i32** %3 to i8*
  %158 = call i32 @stack_push(i32* %156, i8* %157)
  br label %174

159:                                              ; preds = %150
  %160 = load i32*, i32** @coff_frob_symbol.block_stack, align 8
  %161 = call i64 @stack_pop(i32* %160)
  %162 = inttoptr i64 %161 to i32**
  %163 = load i32*, i32** %162, align 8
  store i32* %163, i32** %7, align 8
  %164 = load i32*, i32** %7, align 8
  %165 = icmp eq i32* %164, null
  br i1 %165, label %166, label %171

166:                                              ; preds = %159
  %167 = call i32 @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %168 = sext i32 %167 to i64
  %169 = inttoptr i64 %168 to i8*
  %170 = call i32 (i8*, ...) @as_warn(i8* %169)
  br label %173

171:                                              ; preds = %159
  %172 = load i32*, i32** %7, align 8
  store i32* %172, i32** %5, align 8
  br label %173

173:                                              ; preds = %171, %166
  br label %174

174:                                              ; preds = %173, %155
  br label %175

175:                                              ; preds = %174, %145
  %176 = load i32*, i32** @coff_last_function, align 8
  %177 = icmp eq i32* %176, null
  br i1 %177, label %178, label %200

178:                                              ; preds = %175
  %179 = load i32*, i32** %3, align 8
  %180 = call i64 @SF_GET_FUNCTION(i32* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %200

182:                                              ; preds = %178
  %183 = load i32*, i32** %3, align 8
  store i32* %183, i32** @coff_last_function, align 8
  %184 = load i32*, i32** %3, align 8
  %185 = call i32 @S_GET_NUMBER_AUXILIARY(i32* %184)
  %186 = icmp slt i32 %185, 1
  br i1 %186, label %187, label %190

187:                                              ; preds = %182
  %188 = load i32*, i32** %3, align 8
  %189 = call i32 @S_SET_NUMBER_AUXILIARY(i32* %188, i32 1)
  br label %190

190:                                              ; preds = %187, %182
  %191 = load i32*, i32** %3, align 8
  %192 = call %union.internal_auxent* @SYM_AUXENT(i32* %191)
  store %union.internal_auxent* %192, %union.internal_auxent** %8, align 8
  %193 = load %union.internal_auxent*, %union.internal_auxent** %8, align 8
  %194 = bitcast %union.internal_auxent* %193 to %struct.TYPE_23__*
  %195 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @memset(i32 %198, i32 0, i32 4)
  br label %200

200:                                              ; preds = %190, %178, %175
  %201 = load i32*, i32** %3, align 8
  %202 = call i64 @S_GET_STORAGE_CLASS(i32* %201)
  %203 = load i64, i64* @C_EFCN, align 8
  %204 = icmp eq i64 %202, %203
  br i1 %204, label %205, label %222

205:                                              ; preds = %200
  %206 = load i32*, i32** @coff_last_function, align 8
  %207 = icmp eq i32* %206, null
  br i1 %207, label %208, label %213

208:                                              ; preds = %205
  %209 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %210 = load i32*, i32** %3, align 8
  %211 = call i32 @S_GET_NAME(i32* %210)
  %212 = call i32 @as_fatal(i32 %209, i32 %211)
  br label %213

213:                                              ; preds = %208, %205
  %214 = load i32*, i32** @coff_last_function, align 8
  %215 = load i32*, i32** %3, align 8
  %216 = call i64 @S_GET_VALUE(i32* %215)
  %217 = load i32*, i32** @coff_last_function, align 8
  %218 = call i64 @S_GET_VALUE(i32* %217)
  %219 = sub nsw i64 %216, %218
  %220 = call i32 @SA_SET_SYM_FSIZE(i32* %214, i64 %219)
  %221 = load i32*, i32** @coff_last_function, align 8
  store i32* %221, i32** %5, align 8
  store i32* null, i32** @coff_last_function, align 8
  br label %222

222:                                              ; preds = %213, %200
  br label %223

223:                                              ; preds = %222, %141
  %224 = load i32*, i32** %3, align 8
  %225 = call i64 @S_IS_EXTERNAL(i32* %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %231

227:                                              ; preds = %223
  %228 = load i32*, i32** %3, align 8
  %229 = load i64, i64* @C_EXT, align 8
  %230 = call i32 @S_SET_STORAGE_CLASS(i32* %228, i64 %229)
  br label %238

231:                                              ; preds = %223
  %232 = load i32*, i32** %3, align 8
  %233 = call i64 @SF_GET_LOCAL(i32* %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %237

235:                                              ; preds = %231
  %236 = load i32*, i32** %4, align 8
  store i32 1, i32* %236, align 4
  br label %237

237:                                              ; preds = %235, %231
  br label %238

238:                                              ; preds = %237, %227
  %239 = load i32*, i32** %3, align 8
  %240 = call i64 @SF_GET_FUNCTION(i32* %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %249

242:                                              ; preds = %238
  %243 = load i32, i32* @BSF_FUNCTION, align 4
  %244 = load i32*, i32** %3, align 8
  %245 = call %struct.TYPE_16__* @symbol_get_bfdsym(i32* %244)
  %246 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = or i32 %247, %243
  store i32 %248, i32* %246, align 4
  br label %249

249:                                              ; preds = %242, %238
  br label %250

250:                                              ; preds = %249, %51
  %251 = load i32*, i32** %3, align 8
  %252 = call i64 @S_IS_WEAK(i32* %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %263

254:                                              ; preds = %250
  %255 = load i32*, i32** %3, align 8
  %256 = call i64 @S_IS_COMMON(i32* %255)
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %263

258:                                              ; preds = %254
  %259 = call i32 @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %260 = load i32*, i32** %3, align 8
  %261 = call i32 @S_GET_NAME(i32* %260)
  %262 = call i32 @as_bad(i32 %259, i32 %261)
  br label %263

263:                                              ; preds = %258, %254, %250
  %264 = load i32*, i32** %3, align 8
  %265 = call i64 @SF_GET_TAG(i32* %264)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %269

267:                                              ; preds = %263
  %268 = load i32*, i32** %3, align 8
  store i32* %268, i32** @coff_frob_symbol.last_tagP, align 8
  br label %277

269:                                              ; preds = %263
  %270 = load i32*, i32** %3, align 8
  %271 = call i64 @S_GET_STORAGE_CLASS(i32* %270)
  %272 = load i64, i64* @C_EOS, align 8
  %273 = icmp eq i64 %271, %272
  br i1 %273, label %274, label %276

274:                                              ; preds = %269
  %275 = load i32*, i32** @coff_frob_symbol.last_tagP, align 8
  store i32* %275, i32** %5, align 8
  br label %276

276:                                              ; preds = %274, %269
  br label %277

277:                                              ; preds = %276, %267
  %278 = load i32*, i32** @coff_frob_symbol.set_end, align 8
  %279 = icmp ne i32* %278, null
  br i1 %279, label %280, label %312

280:                                              ; preds = %277
  %281 = load i32*, i32** %4, align 8
  %282 = load i32, i32* %281, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %312, label %284

284:                                              ; preds = %280
  %285 = load i32*, i32** %3, align 8
  %286 = call %struct.TYPE_16__* @symbol_get_bfdsym(i32* %285)
  %287 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* @BSF_NOT_AT_END, align 4
  %290 = and i32 %288, %289
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %308, label %292

292:                                              ; preds = %284
  %293 = load i32*, i32** %3, align 8
  %294 = call i64 @S_IS_DEFINED(i32* %293)
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %312

296:                                              ; preds = %292
  %297 = load i32*, i32** %3, align 8
  %298 = call i64 @S_IS_COMMON(i32* %297)
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %312, label %300

300:                                              ; preds = %296
  %301 = load i32*, i32** %3, align 8
  %302 = call i64 @S_IS_EXTERNAL(i32* %301)
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %308

304:                                              ; preds = %300
  %305 = load i32*, i32** %3, align 8
  %306 = call i64 @SF_GET_FUNCTION(i32* %305)
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %312

308:                                              ; preds = %304, %300, %284
  %309 = load i32*, i32** @coff_frob_symbol.set_end, align 8
  %310 = load i32*, i32** %3, align 8
  %311 = call i32 @SA_SET_SYM_ENDNDX(i32* %309, i32* %310)
  store i32* null, i32** @coff_frob_symbol.set_end, align 8
  br label %312

312:                                              ; preds = %308, %304, %296, %292, %280, %277
  %313 = load i32*, i32** %5, align 8
  %314 = icmp ne i32* %313, null
  br i1 %314, label %315, label %324

315:                                              ; preds = %312
  %316 = load i32*, i32** @coff_frob_symbol.set_end, align 8
  %317 = icmp ne i32* %316, null
  br i1 %317, label %318, label %322

318:                                              ; preds = %315
  %319 = load i32*, i32** @coff_frob_symbol.set_end, align 8
  %320 = call i32 @S_GET_NAME(i32* %319)
  %321 = call i32 (i8*, ...) @as_warn(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0), i32 %320)
  br label %322

322:                                              ; preds = %318, %315
  %323 = load i32*, i32** %5, align 8
  store i32* %323, i32** @coff_frob_symbol.set_end, align 8
  br label %324

324:                                              ; preds = %322, %312
  %325 = load i32*, i32** %4, align 8
  %326 = load i32, i32* %325, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %347, label %328

328:                                              ; preds = %324
  %329 = load i32*, i32** %3, align 8
  %330 = call i64 @S_GET_STORAGE_CLASS(i32* %329)
  %331 = load i64, i64* @C_FCN, align 8
  %332 = icmp eq i64 %330, %331
  br i1 %332, label %333, label %347

333:                                              ; preds = %328
  %334 = load i32*, i32** %3, align 8
  %335 = call i32 @S_GET_NAME(i32* %334)
  %336 = call i64 @streq(i32 %335, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %337 = icmp ne i64 %336, 0
  br i1 %337, label %338, label %347

338:                                              ; preds = %333
  %339 = load i32*, i32** @coff_last_bf, align 8
  %340 = icmp ne i32* %339, null
  br i1 %340, label %341, label %345

341:                                              ; preds = %338
  %342 = load i32*, i32** @coff_last_bf, align 8
  %343 = load i32*, i32** %3, align 8
  %344 = call i32 @SA_SET_SYM_ENDNDX(i32* %342, i32* %343)
  br label %345

345:                                              ; preds = %341, %338
  %346 = load i32*, i32** %3, align 8
  store i32* %346, i32** @coff_last_bf, align 8
  br label %347

347:                                              ; preds = %345, %333, %328, %324
  %348 = load i32*, i32** %3, align 8
  %349 = call %struct.TYPE_16__* @symbol_get_bfdsym(i32* %348)
  %350 = call %struct.TYPE_18__* @coffsymbol(%struct.TYPE_16__* %349)
  %351 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %350, i32 0, i32 0
  %352 = load %struct.TYPE_24__*, %struct.TYPE_24__** %351, align 8
  %353 = icmp ne %struct.TYPE_24__* %352, null
  br i1 %353, label %354, label %440

354:                                              ; preds = %347
  %355 = load i32*, i32** %3, align 8
  %356 = call %struct.TYPE_16__* @symbol_get_bfdsym(i32* %355)
  %357 = call %struct.TYPE_18__* @coffsymbol(%struct.TYPE_16__* %356)
  %358 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %357, i32 0, i32 0
  %359 = load %struct.TYPE_24__*, %struct.TYPE_24__** %358, align 8
  %360 = bitcast %struct.TYPE_24__* %359 to %struct.line_no*
  store %struct.line_no* %360, %struct.line_no** %10, align 8
  store i32 0, i32* %9, align 4
  br label %361

361:                                              ; preds = %367, %354
  %362 = load %struct.line_no*, %struct.line_no** %10, align 8
  %363 = icmp ne %struct.line_no* %362, null
  br i1 %363, label %364, label %371

364:                                              ; preds = %361
  %365 = load i32, i32* %9, align 4
  %366 = add nsw i32 %365, 1
  store i32 %366, i32* %9, align 4
  br label %367

367:                                              ; preds = %364
  %368 = load %struct.line_no*, %struct.line_no** %10, align 8
  %369 = getelementptr inbounds %struct.line_no, %struct.line_no* %368, i32 0, i32 0
  %370 = load %struct.line_no*, %struct.line_no** %369, align 8
  store %struct.line_no* %370, %struct.line_no** %10, align 8
  br label %361

371:                                              ; preds = %361
  %372 = load i32*, i32** %3, align 8
  %373 = call %struct.TYPE_16__* @symbol_get_bfdsym(i32* %372)
  %374 = call %struct.TYPE_18__* @coffsymbol(%struct.TYPE_16__* %373)
  %375 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %374, i32 0, i32 0
  %376 = load %struct.TYPE_24__*, %struct.TYPE_24__** %375, align 8
  %377 = bitcast %struct.TYPE_24__* %376 to %struct.line_no*
  store %struct.line_no* %377, %struct.line_no** %10, align 8
  %378 = load i32, i32* %9, align 4
  %379 = add nsw i32 %378, 2
  %380 = sext i32 %379 to i64
  %381 = mul i64 %380, 24
  %382 = trunc i64 %381 to i32
  %383 = call %struct.TYPE_24__* @xmalloc(i32 %382)
  store %struct.TYPE_24__* %383, %struct.TYPE_24__** %11, align 8
  %384 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %385 = load i32*, i32** %3, align 8
  %386 = call %struct.TYPE_16__* @symbol_get_bfdsym(i32* %385)
  %387 = call %struct.TYPE_18__* @coffsymbol(%struct.TYPE_16__* %386)
  %388 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %387, i32 0, i32 0
  store %struct.TYPE_24__* %384, %struct.TYPE_24__** %388, align 8
  %389 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %390 = load i32, i32* %9, align 4
  %391 = add nsw i32 %390, 1
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %389, i64 %392
  %394 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %393, i32 0, i32 1
  store i64 0, i64* %394, align 8
  %395 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %396 = load i32, i32* %9, align 4
  %397 = add nsw i32 %396, 1
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %395, i64 %398
  %400 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %399, i32 0, i32 0
  %401 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %400, i32 0, i32 1
  store i32* null, i32** %401, align 8
  br label %402

402:                                              ; preds = %436, %371
  %403 = load i32, i32* %9, align 4
  %404 = icmp sgt i32 %403, 0
  br i1 %404, label %405, label %439

405:                                              ; preds = %402
  %406 = load %struct.line_no*, %struct.line_no** %10, align 8
  %407 = getelementptr inbounds %struct.line_no, %struct.line_no* %406, i32 0, i32 2
  %408 = load %struct.TYPE_20__*, %struct.TYPE_20__** %407, align 8
  %409 = icmp ne %struct.TYPE_20__* %408, null
  br i1 %409, label %410, label %424

410:                                              ; preds = %405
  %411 = load %struct.line_no*, %struct.line_no** %10, align 8
  %412 = getelementptr inbounds %struct.line_no, %struct.line_no* %411, i32 0, i32 2
  %413 = load %struct.TYPE_20__*, %struct.TYPE_20__** %412, align 8
  %414 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %413, i32 0, i32 0
  %415 = load i32, i32* %414, align 4
  %416 = load i32, i32* @OCTETS_PER_BYTE, align 4
  %417 = sdiv i32 %415, %416
  %418 = load %struct.line_no*, %struct.line_no** %10, align 8
  %419 = getelementptr inbounds %struct.line_no, %struct.line_no* %418, i32 0, i32 1
  %420 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %419, i32 0, i32 0
  %421 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %420, i32 0, i32 0
  %422 = load i32, i32* %421, align 8
  %423 = add nsw i32 %422, %417
  store i32 %423, i32* %421, align 8
  br label %424

424:                                              ; preds = %410, %405
  %425 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %426 = load i32, i32* %9, align 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %425, i64 %427
  %429 = load %struct.line_no*, %struct.line_no** %10, align 8
  %430 = getelementptr inbounds %struct.line_no, %struct.line_no* %429, i32 0, i32 1
  %431 = bitcast %struct.TYPE_24__* %428 to i8*
  %432 = bitcast %struct.TYPE_24__* %430 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %431, i8* align 8 %432, i64 24, i1 false)
  %433 = load %struct.line_no*, %struct.line_no** %10, align 8
  %434 = getelementptr inbounds %struct.line_no, %struct.line_no* %433, i32 0, i32 0
  %435 = load %struct.line_no*, %struct.line_no** %434, align 8
  store %struct.line_no* %435, %struct.line_no** %10, align 8
  br label %436

436:                                              ; preds = %424
  %437 = load i32, i32* %9, align 4
  %438 = add nsw i32 %437, -1
  store i32 %438, i32* %9, align 4
  br label %402

439:                                              ; preds = %402
  br label %440

440:                                              ; preds = %14, %86, %439, %347
  ret void
}

declare dso_local i32 @coff_add_linesym(i32*) #1

declare dso_local i32* @stack_init(i32, i32) #1

declare dso_local i64 @S_IS_WEAK(i32*) #1

declare dso_local i32 @S_SET_STORAGE_CLASS(i32*, i64) #1

declare dso_local i64 @S_IS_DEFINED(i32*) #1

declare dso_local i64 @S_GET_STORAGE_CLASS(i32*) #1

declare dso_local i32 @SF_GET_DEBUG(i32*) #1

declare dso_local i64 @SF_GET_LOCAL(i32*) #1

declare dso_local i32 @SF_GET_STATICS(i32*) #1

declare dso_local i64 @symbol_constant_p(i32*) #1

declare dso_local i32* @symbol_find_noref(i32, i32) #1

declare dso_local i32 @S_GET_NAME(i32*) #1

declare dso_local i32 @c_symbol_merge(i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @S_GET_VALUE(i32*) #1

declare dso_local i64 @S_IS_WEAKREFD(i32*) #1

declare dso_local i32 @S_SET_EXTERNAL(i32*) #1

declare dso_local i64 @S_GET_SEGMENT(i32*) #1

declare dso_local %struct.TYPE_17__* @seg_info(i64) #1

declare dso_local i64 @SF_GET_PROCESS(i32*) #1

declare dso_local i64 @streq(i32, i8*) #1

declare dso_local i32 @stack_push(i32*, i8*) #1

declare dso_local i64 @stack_pop(i32*) #1

declare dso_local i32 @as_warn(i8*, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @SF_GET_FUNCTION(i32*) #1

declare dso_local i32 @S_GET_NUMBER_AUXILIARY(i32*) #1

declare dso_local i32 @S_SET_NUMBER_AUXILIARY(i32*, i32) #1

declare dso_local %union.internal_auxent* @SYM_AUXENT(i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @as_fatal(i32, i32) #1

declare dso_local i32 @SA_SET_SYM_FSIZE(i32*, i64) #1

declare dso_local i64 @S_IS_EXTERNAL(i32*) #1

declare dso_local %struct.TYPE_16__* @symbol_get_bfdsym(i32*) #1

declare dso_local i64 @S_IS_COMMON(i32*) #1

declare dso_local i32 @as_bad(i32, i32) #1

declare dso_local i64 @SF_GET_TAG(i32*) #1

declare dso_local i32 @SA_SET_SYM_ENDNDX(i32*, i32*) #1

declare dso_local %struct.TYPE_18__* @coffsymbol(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_24__* @xmalloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
