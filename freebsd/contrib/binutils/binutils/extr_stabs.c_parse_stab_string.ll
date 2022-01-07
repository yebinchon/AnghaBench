; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_stabs.c_parse_stab_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_stabs.c_parse_stab_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stab_handle = type { i32, i64, %struct.stab_tag*, i32, i32**, i32 }
%struct.stab_tag = type { i8*, %struct.stab_tag*, i32 }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"this\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"eh_throw\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"unknown C++ encoded name\00", align 1
@DEBUG_TYPE_NULL = common dso_local global i32 0, align 4
@DEBUG_GLOBAL = common dso_local global i32 0, align 4
@DEBUG_LOCAL = common dso_local global i32 0, align 4
@DEBUG_PARM_STACK = common dso_local global i32 0, align 4
@N_FUN = common dso_local global i32 0, align 4
@DEBUG_PARM_REG = common dso_local global i32 0, align 4
@DEBUG_REGISTER = common dso_local global i32 0, align 4
@DEBUG_STATIC = common dso_local global i32 0, align 4
@DEBUG_LOCAL_STATIC = common dso_local global i32 0, align 4
@DEBUG_PARM_REFERENCE = common dso_local global i32 0, align 4
@DEBUG_PARM_REF_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.stab_handle*, i32, i32, i32, i8*)* @parse_stab_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_stab_string(i8* %0, %struct.stab_handle* %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.stab_handle*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i8, align 1
  %23 = alloca i64, align 8
  %24 = alloca i32**, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  %27 = alloca %struct.stab_tag**, align 8
  store i8* %0, i8** %8, align 8
  store %struct.stab_handle* %1, %struct.stab_handle** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %28 = load i8*, i8** %13, align 8
  %29 = call i8* @strchr(i8* %28, i8 signext 58)
  store i8* %29, i8** %14, align 8
  %30 = load i8*, i8** %14, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %6
  %33 = load i32, i32* @TRUE, align 4
  store i32 %33, i32* %7, align 4
  br label %726

34:                                               ; preds = %6
  br label %35

35:                                               ; preds = %52, %34
  %36 = load i8*, i8** %14, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 58
  br i1 %40, label %41, label %53

41:                                               ; preds = %35
  %42 = load i8*, i8** %14, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 2
  store i8* %43, i8** %14, align 8
  %44 = load i8*, i8** %14, align 8
  %45 = call i8* @strchr(i8* %44, i8 signext 58)
  store i8* %45, i8** %14, align 8
  %46 = load i8*, i8** %14, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load i8*, i8** %13, align 8
  %50 = call i32 @bad_stab(i8* %49)
  %51 = load i32, i32* @FALSE, align 4
  store i32 %51, i32* %7, align 4
  br label %726

52:                                               ; preds = %41
  br label %35

53:                                               ; preds = %35
  %54 = load %struct.stab_handle*, %struct.stab_handle** %9, align 8
  %55 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp sge i32 %56, 2
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* %11, align 4
  store i32 %59, i32* %20, align 4
  br label %61

60:                                               ; preds = %53
  store i32 0, i32* %20, align 4
  br label %61

61:                                               ; preds = %60, %58
  store i8* null, i8** %15, align 8
  %62 = load i8*, i8** %13, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 0
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 36
  br i1 %66, label %67, label %82

67:                                               ; preds = %61
  %68 = load i8*, i8** %13, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 1
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  switch i32 %71, label %77 [
    i32 116, label %72
    i32 118, label %73
    i32 101, label %74
    i32 95, label %75
    i32 88, label %76
  ]

72:                                               ; preds = %67
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %15, align 8
  br label %81

73:                                               ; preds = %67
  br label %81

74:                                               ; preds = %67
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %15, align 8
  br label %81

75:                                               ; preds = %67
  br label %81

76:                                               ; preds = %67
  br label %81

77:                                               ; preds = %67
  %78 = load i8*, i8** %13, align 8
  %79 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %80 = call i32 @warn_stab(i8* %78, i32 %79)
  br label %81

81:                                               ; preds = %77, %76, %75, %74, %73, %72
  br label %82

82:                                               ; preds = %81, %61
  %83 = load i8*, i8** %15, align 8
  %84 = icmp eq i8* %83, null
  br i1 %84, label %85, label %111

85:                                               ; preds = %82
  %86 = load i8*, i8** %14, align 8
  %87 = load i8*, i8** %13, align 8
  %88 = icmp eq i8* %86, %87
  br i1 %88, label %100, label %89

89:                                               ; preds = %85
  %90 = load i8*, i8** %13, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 0
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 32
  br i1 %94, label %95, label %101

95:                                               ; preds = %89
  %96 = load i8*, i8** %14, align 8
  %97 = load i8*, i8** %13, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 1
  %99 = icmp eq i8* %96, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %95, %85
  store i8* null, i8** %15, align 8
  br label %110

101:                                              ; preds = %95, %89
  %102 = load i8*, i8** %13, align 8
  %103 = load i8*, i8** %14, align 8
  %104 = load i8*, i8** %13, align 8
  %105 = ptrtoint i8* %103 to i64
  %106 = ptrtoint i8* %104 to i64
  %107 = sub i64 %105, %106
  %108 = trunc i64 %107 to i32
  %109 = call i8* @savestring(i8* %102, i32 %108)
  store i8* %109, i8** %15, align 8
  br label %110

110:                                              ; preds = %101, %100
  br label %111

111:                                              ; preds = %110, %82
  %112 = load i8*, i8** %14, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %14, align 8
  %114 = load i8*, i8** %14, align 8
  %115 = load i8, i8* %114, align 1
  %116 = call i64 @ISDIGIT(i8 signext %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %128, label %118

118:                                              ; preds = %111
  %119 = load i8*, i8** %14, align 8
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp eq i32 %121, 40
  br i1 %122, label %128, label %123

123:                                              ; preds = %118
  %124 = load i8*, i8** %14, align 8
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp eq i32 %126, 45
  br i1 %127, label %128, label %129

128:                                              ; preds = %123, %118, %111
  store i32 108, i32* %16, align 4
  br label %134

129:                                              ; preds = %123
  %130 = load i8*, i8** %14, align 8
  %131 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %131, i8** %14, align 8
  %132 = load i8, i8* %130, align 1
  %133 = sext i8 %132 to i32
  store i32 %133, i32* %16, align 4
  br label %134

134:                                              ; preds = %129, %128
  %135 = load i32, i32* %16, align 4
  switch i32 %135, label %720 [
    i32 99, label %136
    i32 67, label %206
    i32 102, label %225
    i32 70, label %225
    i32 71, label %264
    i32 108, label %343
    i32 115, label %343
    i32 112, label %364
    i32 80, label %408
    i32 82, label %431
    i32 114, label %451
    i32 83, label %472
    i32 116, label %493
    i32 84, label %525
    i32 86, label %638
    i32 118, label %659
    i32 97, label %679
    i32 88, label %699
  ]

136:                                              ; preds = %134
  %137 = load i8*, i8** %14, align 8
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = icmp ne i32 %139, 61
  br i1 %140, label %141, label %145

141:                                              ; preds = %136
  %142 = load i8*, i8** %13, align 8
  %143 = call i32 @bad_stab(i8* %142)
  %144 = load i32, i32* @FALSE, align 4
  store i32 %144, i32* %7, align 4
  br label %726

145:                                              ; preds = %136
  %146 = load i8*, i8** %14, align 8
  %147 = getelementptr inbounds i8, i8* %146, i32 1
  store i8* %147, i8** %14, align 8
  %148 = load i8*, i8** %14, align 8
  %149 = getelementptr inbounds i8, i8* %148, i32 1
  store i8* %149, i8** %14, align 8
  %150 = load i8, i8* %148, align 1
  %151 = sext i8 %150 to i32
  switch i32 %151, label %201 [
    i32 114, label %152
    i32 105, label %162
    i32 101, label %172
  ]

152:                                              ; preds = %145
  %153 = load i8*, i8** %8, align 8
  %154 = load i8*, i8** %15, align 8
  %155 = load i8*, i8** %14, align 8
  %156 = call i32 @atof(i8* %155)
  %157 = call i32 @debug_record_float_const(i8* %153, i8* %154, i32 %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %161, label %159

159:                                              ; preds = %152
  %160 = load i32, i32* @FALSE, align 4
  store i32 %160, i32* %7, align 4
  br label %726

161:                                              ; preds = %152
  br label %205

162:                                              ; preds = %145
  %163 = load i8*, i8** %8, align 8
  %164 = load i8*, i8** %15, align 8
  %165 = load i8*, i8** %14, align 8
  %166 = call i32 @atoi(i8* %165)
  %167 = call i32 @debug_record_int_const(i8* %163, i8* %164, i32 %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %171, label %169

169:                                              ; preds = %162
  %170 = load i32, i32* @FALSE, align 4
  store i32 %170, i32* %7, align 4
  br label %726

171:                                              ; preds = %162
  br label %205

172:                                              ; preds = %145
  %173 = load i8*, i8** %8, align 8
  %174 = load %struct.stab_handle*, %struct.stab_handle** %9, align 8
  %175 = call i32 @parse_stab_type(i8* %173, %struct.stab_handle* %174, i8* null, i8** %14, i32** null)
  store i32 %175, i32* %17, align 4
  %176 = load i32, i32* %17, align 4
  %177 = load i32, i32* @DEBUG_TYPE_NULL, align 4
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %179, label %181

179:                                              ; preds = %172
  %180 = load i32, i32* @FALSE, align 4
  store i32 %180, i32* %7, align 4
  br label %726

181:                                              ; preds = %172
  %182 = load i8*, i8** %14, align 8
  %183 = load i8, i8* %182, align 1
  %184 = sext i8 %183 to i32
  %185 = icmp ne i32 %184, 44
  br i1 %185, label %186, label %190

186:                                              ; preds = %181
  %187 = load i8*, i8** %13, align 8
  %188 = call i32 @bad_stab(i8* %187)
  %189 = load i32, i32* @FALSE, align 4
  store i32 %189, i32* %7, align 4
  br label %726

190:                                              ; preds = %181
  %191 = load i8*, i8** %8, align 8
  %192 = load i8*, i8** %15, align 8
  %193 = load i32, i32* %17, align 4
  %194 = load i8*, i8** %14, align 8
  %195 = call i32 @atoi(i8* %194)
  %196 = call i32 @debug_record_typed_const(i8* %191, i8* %192, i32 %193, i32 %195)
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %200, label %198

198:                                              ; preds = %190
  %199 = load i32, i32* @FALSE, align 4
  store i32 %199, i32* %7, align 4
  br label %726

200:                                              ; preds = %190
  br label %205

201:                                              ; preds = %145
  %202 = load i8*, i8** %13, align 8
  %203 = call i32 @bad_stab(i8* %202)
  %204 = load i32, i32* @FALSE, align 4
  store i32 %204, i32* %7, align 4
  br label %726

205:                                              ; preds = %200, %171, %161
  br label %724

206:                                              ; preds = %134
  %207 = load i8*, i8** %8, align 8
  %208 = load %struct.stab_handle*, %struct.stab_handle** %9, align 8
  %209 = call i32 @parse_stab_type(i8* %207, %struct.stab_handle* %208, i8* null, i8** %14, i32** null)
  store i32 %209, i32* %17, align 4
  %210 = load i32, i32* %17, align 4
  %211 = load i32, i32* @DEBUG_TYPE_NULL, align 4
  %212 = icmp eq i32 %210, %211
  br i1 %212, label %213, label %215

213:                                              ; preds = %206
  %214 = load i32, i32* @FALSE, align 4
  store i32 %214, i32* %7, align 4
  br label %726

215:                                              ; preds = %206
  %216 = load i8*, i8** %8, align 8
  %217 = load i8*, i8** %15, align 8
  %218 = load i32, i32* %17, align 4
  %219 = load i32, i32* %12, align 4
  %220 = call i32 @debug_record_label(i8* %216, i8* %217, i32 %218, i32 %219)
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %224, label %222

222:                                              ; preds = %215
  %223 = load i32, i32* @FALSE, align 4
  store i32 %223, i32* %7, align 4
  br label %726

224:                                              ; preds = %215
  br label %724

225:                                              ; preds = %134, %134
  %226 = load i8*, i8** %8, align 8
  %227 = load %struct.stab_handle*, %struct.stab_handle** %9, align 8
  %228 = call i32 @parse_stab_type(i8* %226, %struct.stab_handle* %227, i8* null, i8** %14, i32** null)
  store i32 %228, i32* %17, align 4
  %229 = load i32, i32* %17, align 4
  %230 = load i32, i32* @DEBUG_TYPE_NULL, align 4
  %231 = icmp eq i32 %229, %230
  br i1 %231, label %232, label %234

232:                                              ; preds = %225
  %233 = load i32, i32* @FALSE, align 4
  store i32 %233, i32* %7, align 4
  br label %726

234:                                              ; preds = %225
  %235 = load i8*, i8** %8, align 8
  %236 = load i8*, i8** %15, align 8
  %237 = load i32, i32* %17, align 4
  %238 = load i32, i32* %16, align 4
  %239 = icmp eq i32 %238, 70
  %240 = zext i1 %239 to i32
  %241 = load i32, i32* %12, align 4
  %242 = call i32 @debug_record_function(i8* %235, i8* %236, i32 %237, i32 %240, i32 %241)
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %246, label %244

244:                                              ; preds = %234
  %245 = load i32, i32* @FALSE, align 4
  store i32 %245, i32* %7, align 4
  br label %726

246:                                              ; preds = %234
  br label %247

247:                                              ; preds = %262, %246
  %248 = load i8*, i8** %14, align 8
  %249 = load i8, i8* %248, align 1
  %250 = sext i8 %249 to i32
  %251 = icmp eq i32 %250, 59
  br i1 %251, label %252, label %263

252:                                              ; preds = %247
  %253 = load i8*, i8** %14, align 8
  %254 = getelementptr inbounds i8, i8* %253, i32 1
  store i8* %254, i8** %14, align 8
  %255 = load i8*, i8** %8, align 8
  %256 = load %struct.stab_handle*, %struct.stab_handle** %9, align 8
  %257 = call i32 @parse_stab_type(i8* %255, %struct.stab_handle* %256, i8* null, i8** %14, i32** null)
  %258 = load i32, i32* @DEBUG_TYPE_NULL, align 4
  %259 = icmp eq i32 %257, %258
  br i1 %259, label %260, label %262

260:                                              ; preds = %252
  %261 = load i32, i32* @FALSE, align 4
  store i32 %261, i32* %7, align 4
  br label %726

262:                                              ; preds = %252
  br label %247

263:                                              ; preds = %247
  br label %724

264:                                              ; preds = %134
  %265 = load i8*, i8** %8, align 8
  %266 = load %struct.stab_handle*, %struct.stab_handle** %9, align 8
  %267 = call i32 @parse_stab_type(i8* %265, %struct.stab_handle* %266, i8* null, i8** %14, i32** null)
  store i32 %267, i32* %17, align 4
  %268 = load i32, i32* %17, align 4
  %269 = load i32, i32* @DEBUG_TYPE_NULL, align 4
  %270 = icmp eq i32 %268, %269
  br i1 %270, label %271, label %273

271:                                              ; preds = %264
  %272 = load i32, i32* @FALSE, align 4
  store i32 %272, i32* %7, align 4
  br label %726

273:                                              ; preds = %264
  %274 = load %struct.stab_handle*, %struct.stab_handle** %9, align 8
  %275 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %274, i32 0, i32 5
  %276 = load i32, i32* %275, align 8
  %277 = call signext i8 @bfd_get_symbol_leading_char(i32 %276)
  store i8 %277, i8* %22, align 1
  %278 = load %struct.stab_handle*, %struct.stab_handle** %9, align 8
  %279 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %278, i32 0, i32 1
  %280 = load i64, i64* %279, align 8
  store i64 %280, i64* %23, align 8
  %281 = load %struct.stab_handle*, %struct.stab_handle** %9, align 8
  %282 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %281, i32 0, i32 4
  %283 = load i32**, i32*** %282, align 8
  store i32** %283, i32*** %24, align 8
  br label %284

284:                                              ; preds = %319, %273
  %285 = load i64, i64* %23, align 8
  %286 = icmp sgt i64 %285, 0
  br i1 %286, label %287, label %324

287:                                              ; preds = %284
  %288 = load i32**, i32*** %24, align 8
  %289 = load i32*, i32** %288, align 8
  %290 = call i8* @bfd_asymbol_name(i32* %289)
  store i8* %290, i8** %25, align 8
  %291 = load i8, i8* %22, align 1
  %292 = sext i8 %291 to i32
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %304

294:                                              ; preds = %287
  %295 = load i8*, i8** %25, align 8
  %296 = load i8, i8* %295, align 1
  %297 = sext i8 %296 to i32
  %298 = load i8, i8* %22, align 1
  %299 = sext i8 %298 to i32
  %300 = icmp eq i32 %297, %299
  br i1 %300, label %301, label %304

301:                                              ; preds = %294
  %302 = load i8*, i8** %25, align 8
  %303 = getelementptr inbounds i8, i8* %302, i32 1
  store i8* %303, i8** %25, align 8
  br label %304

304:                                              ; preds = %301, %294, %287
  %305 = load i8*, i8** %25, align 8
  %306 = load i8, i8* %305, align 1
  %307 = sext i8 %306 to i32
  %308 = load i8*, i8** %15, align 8
  %309 = load i8, i8* %308, align 1
  %310 = sext i8 %309 to i32
  %311 = icmp eq i32 %307, %310
  br i1 %311, label %312, label %318

312:                                              ; preds = %304
  %313 = load i8*, i8** %25, align 8
  %314 = load i8*, i8** %15, align 8
  %315 = call i32 @strcmp(i8* %313, i8* %314)
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %317, label %318

317:                                              ; preds = %312
  br label %324

318:                                              ; preds = %312, %304
  br label %319

319:                                              ; preds = %318
  %320 = load i64, i64* %23, align 8
  %321 = add nsw i64 %320, -1
  store i64 %321, i64* %23, align 8
  %322 = load i32**, i32*** %24, align 8
  %323 = getelementptr inbounds i32*, i32** %322, i32 1
  store i32** %323, i32*** %24, align 8
  br label %284

324:                                              ; preds = %317, %284
  %325 = load i64, i64* %23, align 8
  %326 = icmp sgt i64 %325, 0
  br i1 %326, label %327, label %331

327:                                              ; preds = %324
  %328 = load i32**, i32*** %24, align 8
  %329 = load i32*, i32** %328, align 8
  %330 = call i32 @bfd_asymbol_value(i32* %329)
  store i32 %330, i32* %12, align 4
  br label %331

331:                                              ; preds = %327, %324
  %332 = load i8*, i8** %8, align 8
  %333 = load %struct.stab_handle*, %struct.stab_handle** %9, align 8
  %334 = load i8*, i8** %15, align 8
  %335 = load i32, i32* %17, align 4
  %336 = load i32, i32* @DEBUG_GLOBAL, align 4
  %337 = load i32, i32* %12, align 4
  %338 = call i32 @stab_record_variable(i8* %332, %struct.stab_handle* %333, i8* %334, i32 %335, i32 %336, i32 %337)
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %342, label %340

340:                                              ; preds = %331
  %341 = load i32, i32* @FALSE, align 4
  store i32 %341, i32* %7, align 4
  br label %726

342:                                              ; preds = %331
  br label %724

343:                                              ; preds = %134, %134
  %344 = load i8*, i8** %8, align 8
  %345 = load %struct.stab_handle*, %struct.stab_handle** %9, align 8
  %346 = call i32 @parse_stab_type(i8* %344, %struct.stab_handle* %345, i8* null, i8** %14, i32** null)
  store i32 %346, i32* %17, align 4
  %347 = load i32, i32* %17, align 4
  %348 = load i32, i32* @DEBUG_TYPE_NULL, align 4
  %349 = icmp eq i32 %347, %348
  br i1 %349, label %350, label %352

350:                                              ; preds = %343
  %351 = load i32, i32* @FALSE, align 4
  store i32 %351, i32* %7, align 4
  br label %726

352:                                              ; preds = %343
  %353 = load i8*, i8** %8, align 8
  %354 = load %struct.stab_handle*, %struct.stab_handle** %9, align 8
  %355 = load i8*, i8** %15, align 8
  %356 = load i32, i32* %17, align 4
  %357 = load i32, i32* @DEBUG_LOCAL, align 4
  %358 = load i32, i32* %12, align 4
  %359 = call i32 @stab_record_variable(i8* %353, %struct.stab_handle* %354, i8* %355, i32 %356, i32 %357, i32 %358)
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %363, label %361

361:                                              ; preds = %352
  %362 = load i32, i32* @FALSE, align 4
  store i32 %362, i32* %7, align 4
  br label %726

363:                                              ; preds = %352
  br label %724

364:                                              ; preds = %134
  %365 = load i8*, i8** %14, align 8
  %366 = load i8, i8* %365, align 1
  %367 = sext i8 %366 to i32
  %368 = icmp ne i32 %367, 70
  br i1 %368, label %369, label %373

369:                                              ; preds = %364
  %370 = load i8*, i8** %8, align 8
  %371 = load %struct.stab_handle*, %struct.stab_handle** %9, align 8
  %372 = call i32 @parse_stab_type(i8* %370, %struct.stab_handle* %371, i8* null, i8** %14, i32** null)
  store i32 %372, i32* %17, align 4
  br label %391

373:                                              ; preds = %364
  %374 = load i8*, i8** %14, align 8
  %375 = getelementptr inbounds i8, i8* %374, i32 1
  store i8* %375, i8** %14, align 8
  %376 = load i8*, i8** %8, align 8
  %377 = load %struct.stab_handle*, %struct.stab_handle** %9, align 8
  %378 = call i32 @parse_stab_type(i8* %376, %struct.stab_handle* %377, i8* null, i8** %14, i32** null)
  store i32 %378, i32* %17, align 4
  %379 = load i32, i32* %17, align 4
  %380 = load i32, i32* @DEBUG_TYPE_NULL, align 4
  %381 = icmp ne i32 %379, %380
  br i1 %381, label %382, label %390

382:                                              ; preds = %373
  %383 = load i8*, i8** %8, align 8
  %384 = load i32, i32* %17, align 4
  %385 = load i32, i32* @FALSE, align 4
  %386 = call i32 @debug_make_function_type(i8* %383, i32 %384, i32* null, i32 %385)
  store i32 %386, i32* %26, align 4
  %387 = load i8*, i8** %8, align 8
  %388 = load i32, i32* %26, align 4
  %389 = call i32 @debug_make_pointer_type(i8* %387, i32 %388)
  store i32 %389, i32* %17, align 4
  br label %390

390:                                              ; preds = %382, %373
  br label %391

391:                                              ; preds = %390, %369
  %392 = load i32, i32* %17, align 4
  %393 = load i32, i32* @DEBUG_TYPE_NULL, align 4
  %394 = icmp eq i32 %392, %393
  br i1 %394, label %395, label %397

395:                                              ; preds = %391
  %396 = load i32, i32* @FALSE, align 4
  store i32 %396, i32* %7, align 4
  br label %726

397:                                              ; preds = %391
  %398 = load i8*, i8** %8, align 8
  %399 = load i8*, i8** %15, align 8
  %400 = load i32, i32* %17, align 4
  %401 = load i32, i32* @DEBUG_PARM_STACK, align 4
  %402 = load i32, i32* %12, align 4
  %403 = call i32 @debug_record_parameter(i8* %398, i8* %399, i32 %400, i32 %401, i32 %402)
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %407, label %405

405:                                              ; preds = %397
  %406 = load i32, i32* @FALSE, align 4
  store i32 %406, i32* %7, align 4
  br label %726

407:                                              ; preds = %397
  br label %724

408:                                              ; preds = %134
  %409 = load i32, i32* %10, align 4
  %410 = load i32, i32* @N_FUN, align 4
  %411 = icmp eq i32 %409, %410
  br i1 %411, label %412, label %430

412:                                              ; preds = %408
  br label %413

413:                                              ; preds = %428, %412
  %414 = load i8*, i8** %14, align 8
  %415 = load i8, i8* %414, align 1
  %416 = sext i8 %415 to i32
  %417 = icmp eq i32 %416, 59
  br i1 %417, label %418, label %429

418:                                              ; preds = %413
  %419 = load i8*, i8** %14, align 8
  %420 = getelementptr inbounds i8, i8* %419, i32 1
  store i8* %420, i8** %14, align 8
  %421 = load i8*, i8** %8, align 8
  %422 = load %struct.stab_handle*, %struct.stab_handle** %9, align 8
  %423 = call i32 @parse_stab_type(i8* %421, %struct.stab_handle* %422, i8* null, i8** %14, i32** null)
  %424 = load i32, i32* @DEBUG_TYPE_NULL, align 4
  %425 = icmp eq i32 %423, %424
  br i1 %425, label %426, label %428

426:                                              ; preds = %418
  %427 = load i32, i32* @FALSE, align 4
  store i32 %427, i32* %7, align 4
  br label %726

428:                                              ; preds = %418
  br label %413

429:                                              ; preds = %413
  br label %724

430:                                              ; preds = %408
  br label %431

431:                                              ; preds = %134, %430
  %432 = load i8*, i8** %8, align 8
  %433 = load %struct.stab_handle*, %struct.stab_handle** %9, align 8
  %434 = call i32 @parse_stab_type(i8* %432, %struct.stab_handle* %433, i8* null, i8** %14, i32** null)
  store i32 %434, i32* %17, align 4
  %435 = load i32, i32* %17, align 4
  %436 = load i32, i32* @DEBUG_TYPE_NULL, align 4
  %437 = icmp eq i32 %435, %436
  br i1 %437, label %438, label %440

438:                                              ; preds = %431
  %439 = load i32, i32* @FALSE, align 4
  store i32 %439, i32* %7, align 4
  br label %726

440:                                              ; preds = %431
  %441 = load i8*, i8** %8, align 8
  %442 = load i8*, i8** %15, align 8
  %443 = load i32, i32* %17, align 4
  %444 = load i32, i32* @DEBUG_PARM_REG, align 4
  %445 = load i32, i32* %12, align 4
  %446 = call i32 @debug_record_parameter(i8* %441, i8* %442, i32 %443, i32 %444, i32 %445)
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %450, label %448

448:                                              ; preds = %440
  %449 = load i32, i32* @FALSE, align 4
  store i32 %449, i32* %7, align 4
  br label %726

450:                                              ; preds = %440
  br label %724

451:                                              ; preds = %134
  %452 = load i8*, i8** %8, align 8
  %453 = load %struct.stab_handle*, %struct.stab_handle** %9, align 8
  %454 = call i32 @parse_stab_type(i8* %452, %struct.stab_handle* %453, i8* null, i8** %14, i32** null)
  store i32 %454, i32* %17, align 4
  %455 = load i32, i32* %17, align 4
  %456 = load i32, i32* @DEBUG_TYPE_NULL, align 4
  %457 = icmp eq i32 %455, %456
  br i1 %457, label %458, label %460

458:                                              ; preds = %451
  %459 = load i32, i32* @FALSE, align 4
  store i32 %459, i32* %7, align 4
  br label %726

460:                                              ; preds = %451
  %461 = load i8*, i8** %8, align 8
  %462 = load %struct.stab_handle*, %struct.stab_handle** %9, align 8
  %463 = load i8*, i8** %15, align 8
  %464 = load i32, i32* %17, align 4
  %465 = load i32, i32* @DEBUG_REGISTER, align 4
  %466 = load i32, i32* %12, align 4
  %467 = call i32 @stab_record_variable(i8* %461, %struct.stab_handle* %462, i8* %463, i32 %464, i32 %465, i32 %466)
  %468 = icmp ne i32 %467, 0
  br i1 %468, label %471, label %469

469:                                              ; preds = %460
  %470 = load i32, i32* @FALSE, align 4
  store i32 %470, i32* %7, align 4
  br label %726

471:                                              ; preds = %460
  br label %724

472:                                              ; preds = %134
  %473 = load i8*, i8** %8, align 8
  %474 = load %struct.stab_handle*, %struct.stab_handle** %9, align 8
  %475 = call i32 @parse_stab_type(i8* %473, %struct.stab_handle* %474, i8* null, i8** %14, i32** null)
  store i32 %475, i32* %17, align 4
  %476 = load i32, i32* %17, align 4
  %477 = load i32, i32* @DEBUG_TYPE_NULL, align 4
  %478 = icmp eq i32 %476, %477
  br i1 %478, label %479, label %481

479:                                              ; preds = %472
  %480 = load i32, i32* @FALSE, align 4
  store i32 %480, i32* %7, align 4
  br label %726

481:                                              ; preds = %472
  %482 = load i8*, i8** %8, align 8
  %483 = load %struct.stab_handle*, %struct.stab_handle** %9, align 8
  %484 = load i8*, i8** %15, align 8
  %485 = load i32, i32* %17, align 4
  %486 = load i32, i32* @DEBUG_STATIC, align 4
  %487 = load i32, i32* %12, align 4
  %488 = call i32 @stab_record_variable(i8* %482, %struct.stab_handle* %483, i8* %484, i32 %485, i32 %486, i32 %487)
  %489 = icmp ne i32 %488, 0
  br i1 %489, label %492, label %490

490:                                              ; preds = %481
  %491 = load i32, i32* @FALSE, align 4
  store i32 %491, i32* %7, align 4
  br label %726

492:                                              ; preds = %481
  br label %724

493:                                              ; preds = %134
  %494 = load i8*, i8** %8, align 8
  %495 = load %struct.stab_handle*, %struct.stab_handle** %9, align 8
  %496 = load i8*, i8** %15, align 8
  %497 = call i32 @parse_stab_type(i8* %494, %struct.stab_handle* %495, i8* %496, i8** %14, i32** %21)
  store i32 %497, i32* %17, align 4
  %498 = load i32, i32* %17, align 4
  %499 = load i32, i32* @DEBUG_TYPE_NULL, align 4
  %500 = icmp eq i32 %498, %499
  br i1 %500, label %501, label %503

501:                                              ; preds = %493
  %502 = load i32, i32* @FALSE, align 4
  store i32 %502, i32* %7, align 4
  br label %726

503:                                              ; preds = %493
  %504 = load i8*, i8** %15, align 8
  %505 = icmp eq i8* %504, null
  br i1 %505, label %506, label %508

506:                                              ; preds = %503
  %507 = load i32, i32* @TRUE, align 4
  store i32 %507, i32* %7, align 4
  br label %726

508:                                              ; preds = %503
  %509 = load i8*, i8** %8, align 8
  %510 = load i8*, i8** %15, align 8
  %511 = load i32, i32* %17, align 4
  %512 = call i32 @debug_name_type(i8* %509, i8* %510, i32 %511)
  store i32 %512, i32* %17, align 4
  %513 = load i32, i32* %17, align 4
  %514 = load i32, i32* @DEBUG_TYPE_NULL, align 4
  %515 = icmp eq i32 %513, %514
  br i1 %515, label %516, label %518

516:                                              ; preds = %508
  %517 = load i32, i32* @FALSE, align 4
  store i32 %517, i32* %7, align 4
  br label %726

518:                                              ; preds = %508
  %519 = load i32*, i32** %21, align 8
  %520 = icmp ne i32* %519, null
  br i1 %520, label %521, label %524

521:                                              ; preds = %518
  %522 = load i32, i32* %17, align 4
  %523 = load i32*, i32** %21, align 8
  store i32 %522, i32* %523, align 4
  br label %524

524:                                              ; preds = %521, %518
  br label %724

525:                                              ; preds = %134
  %526 = load i8*, i8** %14, align 8
  %527 = load i8, i8* %526, align 1
  %528 = sext i8 %527 to i32
  %529 = icmp ne i32 %528, 116
  br i1 %529, label %530, label %532

530:                                              ; preds = %525
  %531 = load i32, i32* @FALSE, align 4
  store i32 %531, i32* %18, align 4
  br label %536

532:                                              ; preds = %525
  %533 = load i32, i32* @TRUE, align 4
  store i32 %533, i32* %18, align 4
  %534 = load i8*, i8** %14, align 8
  %535 = getelementptr inbounds i8, i8* %534, i32 1
  store i8* %535, i8** %14, align 8
  br label %536

536:                                              ; preds = %532, %530
  %537 = load i8*, i8** %8, align 8
  %538 = load %struct.stab_handle*, %struct.stab_handle** %9, align 8
  %539 = load i8*, i8** %15, align 8
  %540 = call i32 @parse_stab_type(i8* %537, %struct.stab_handle* %538, i8* %539, i8** %14, i32** %21)
  store i32 %540, i32* %17, align 4
  %541 = load i32, i32* %17, align 4
  %542 = load i32, i32* @DEBUG_TYPE_NULL, align 4
  %543 = icmp eq i32 %541, %542
  br i1 %543, label %544, label %546

544:                                              ; preds = %536
  %545 = load i32, i32* @FALSE, align 4
  store i32 %545, i32* %7, align 4
  br label %726

546:                                              ; preds = %536
  %547 = load i8*, i8** %15, align 8
  %548 = icmp eq i8* %547, null
  br i1 %548, label %549, label %551

549:                                              ; preds = %546
  %550 = load i32, i32* @TRUE, align 4
  store i32 %550, i32* %7, align 4
  br label %726

551:                                              ; preds = %546
  %552 = load %struct.stab_handle*, %struct.stab_handle** %9, align 8
  %553 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %552, i32 0, i32 3
  %554 = load i32, i32* %553, align 8
  store i32 %554, i32* %19, align 4
  %555 = load i8*, i8** %8, align 8
  %556 = load i8*, i8** %15, align 8
  %557 = load i32, i32* %17, align 4
  %558 = call i32 @debug_tag_type(i8* %555, i8* %556, i32 %557)
  store i32 %558, i32* %17, align 4
  %559 = load i32, i32* %17, align 4
  %560 = load i32, i32* @DEBUG_TYPE_NULL, align 4
  %561 = icmp eq i32 %559, %560
  br i1 %561, label %562, label %564

562:                                              ; preds = %551
  %563 = load i32, i32* @FALSE, align 4
  store i32 %563, i32* %7, align 4
  br label %726

564:                                              ; preds = %551
  %565 = load i32*, i32** %21, align 8
  %566 = icmp ne i32* %565, null
  br i1 %566, label %567, label %570

567:                                              ; preds = %564
  %568 = load i32, i32* %17, align 4
  %569 = load i32*, i32** %21, align 8
  store i32 %568, i32* %569, align 4
  br label %570

570:                                              ; preds = %567, %564
  %571 = load i32, i32* %19, align 4
  %572 = icmp ne i32 %571, 0
  br i1 %572, label %617, label %573

573:                                              ; preds = %570
  %574 = load %struct.stab_handle*, %struct.stab_handle** %9, align 8
  %575 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %574, i32 0, i32 2
  store %struct.stab_tag** %575, %struct.stab_tag*** %27, align 8
  br label %576

576:                                              ; preds = %612, %573
  %577 = load %struct.stab_tag**, %struct.stab_tag*** %27, align 8
  %578 = load %struct.stab_tag*, %struct.stab_tag** %577, align 8
  %579 = icmp ne %struct.stab_tag* %578, null
  br i1 %579, label %580, label %616

580:                                              ; preds = %576
  %581 = load %struct.stab_tag**, %struct.stab_tag*** %27, align 8
  %582 = load %struct.stab_tag*, %struct.stab_tag** %581, align 8
  %583 = getelementptr inbounds %struct.stab_tag, %struct.stab_tag* %582, i32 0, i32 0
  %584 = load i8*, i8** %583, align 8
  %585 = getelementptr inbounds i8, i8* %584, i64 0
  %586 = load i8, i8* %585, align 1
  %587 = sext i8 %586 to i32
  %588 = load i8*, i8** %15, align 8
  %589 = getelementptr inbounds i8, i8* %588, i64 0
  %590 = load i8, i8* %589, align 1
  %591 = sext i8 %590 to i32
  %592 = icmp eq i32 %587, %591
  br i1 %592, label %593, label %611

593:                                              ; preds = %580
  %594 = load %struct.stab_tag**, %struct.stab_tag*** %27, align 8
  %595 = load %struct.stab_tag*, %struct.stab_tag** %594, align 8
  %596 = getelementptr inbounds %struct.stab_tag, %struct.stab_tag* %595, i32 0, i32 0
  %597 = load i8*, i8** %596, align 8
  %598 = load i8*, i8** %15, align 8
  %599 = call i32 @strcmp(i8* %597, i8* %598)
  %600 = icmp eq i32 %599, 0
  br i1 %600, label %601, label %611

601:                                              ; preds = %593
  %602 = load i32, i32* %17, align 4
  %603 = load %struct.stab_tag**, %struct.stab_tag*** %27, align 8
  %604 = load %struct.stab_tag*, %struct.stab_tag** %603, align 8
  %605 = getelementptr inbounds %struct.stab_tag, %struct.stab_tag* %604, i32 0, i32 2
  store i32 %602, i32* %605, align 8
  %606 = load %struct.stab_tag**, %struct.stab_tag*** %27, align 8
  %607 = load %struct.stab_tag*, %struct.stab_tag** %606, align 8
  %608 = getelementptr inbounds %struct.stab_tag, %struct.stab_tag* %607, i32 0, i32 1
  %609 = load %struct.stab_tag*, %struct.stab_tag** %608, align 8
  %610 = load %struct.stab_tag**, %struct.stab_tag*** %27, align 8
  store %struct.stab_tag* %609, %struct.stab_tag** %610, align 8
  br label %616

611:                                              ; preds = %593, %580
  br label %612

612:                                              ; preds = %611
  %613 = load %struct.stab_tag**, %struct.stab_tag*** %27, align 8
  %614 = load %struct.stab_tag*, %struct.stab_tag** %613, align 8
  %615 = getelementptr inbounds %struct.stab_tag, %struct.stab_tag* %614, i32 0, i32 1
  store %struct.stab_tag** %615, %struct.stab_tag*** %27, align 8
  br label %576

616:                                              ; preds = %601, %576
  br label %617

617:                                              ; preds = %616, %570
  %618 = load i32, i32* %18, align 4
  %619 = icmp ne i32 %618, 0
  br i1 %619, label %620, label %637

620:                                              ; preds = %617
  %621 = load i8*, i8** %8, align 8
  %622 = load i8*, i8** %15, align 8
  %623 = load i32, i32* %17, align 4
  %624 = call i32 @debug_name_type(i8* %621, i8* %622, i32 %623)
  store i32 %624, i32* %17, align 4
  %625 = load i32, i32* %17, align 4
  %626 = load i32, i32* @DEBUG_TYPE_NULL, align 4
  %627 = icmp eq i32 %625, %626
  br i1 %627, label %628, label %630

628:                                              ; preds = %620
  %629 = load i32, i32* @FALSE, align 4
  store i32 %629, i32* %7, align 4
  br label %726

630:                                              ; preds = %620
  %631 = load i32*, i32** %21, align 8
  %632 = icmp ne i32* %631, null
  br i1 %632, label %633, label %636

633:                                              ; preds = %630
  %634 = load i32, i32* %17, align 4
  %635 = load i32*, i32** %21, align 8
  store i32 %634, i32* %635, align 4
  br label %636

636:                                              ; preds = %633, %630
  br label %637

637:                                              ; preds = %636, %617
  br label %724

638:                                              ; preds = %134
  %639 = load i8*, i8** %8, align 8
  %640 = load %struct.stab_handle*, %struct.stab_handle** %9, align 8
  %641 = call i32 @parse_stab_type(i8* %639, %struct.stab_handle* %640, i8* null, i8** %14, i32** null)
  store i32 %641, i32* %17, align 4
  %642 = load i32, i32* %17, align 4
  %643 = load i32, i32* @DEBUG_TYPE_NULL, align 4
  %644 = icmp eq i32 %642, %643
  br i1 %644, label %645, label %647

645:                                              ; preds = %638
  %646 = load i32, i32* @FALSE, align 4
  store i32 %646, i32* %7, align 4
  br label %726

647:                                              ; preds = %638
  %648 = load i8*, i8** %8, align 8
  %649 = load %struct.stab_handle*, %struct.stab_handle** %9, align 8
  %650 = load i8*, i8** %15, align 8
  %651 = load i32, i32* %17, align 4
  %652 = load i32, i32* @DEBUG_LOCAL_STATIC, align 4
  %653 = load i32, i32* %12, align 4
  %654 = call i32 @stab_record_variable(i8* %648, %struct.stab_handle* %649, i8* %650, i32 %651, i32 %652, i32 %653)
  %655 = icmp ne i32 %654, 0
  br i1 %655, label %658, label %656

656:                                              ; preds = %647
  %657 = load i32, i32* @FALSE, align 4
  store i32 %657, i32* %7, align 4
  br label %726

658:                                              ; preds = %647
  br label %724

659:                                              ; preds = %134
  %660 = load i8*, i8** %8, align 8
  %661 = load %struct.stab_handle*, %struct.stab_handle** %9, align 8
  %662 = call i32 @parse_stab_type(i8* %660, %struct.stab_handle* %661, i8* null, i8** %14, i32** null)
  store i32 %662, i32* %17, align 4
  %663 = load i32, i32* %17, align 4
  %664 = load i32, i32* @DEBUG_TYPE_NULL, align 4
  %665 = icmp eq i32 %663, %664
  br i1 %665, label %666, label %668

666:                                              ; preds = %659
  %667 = load i32, i32* @FALSE, align 4
  store i32 %667, i32* %7, align 4
  br label %726

668:                                              ; preds = %659
  %669 = load i8*, i8** %8, align 8
  %670 = load i8*, i8** %15, align 8
  %671 = load i32, i32* %17, align 4
  %672 = load i32, i32* @DEBUG_PARM_REFERENCE, align 4
  %673 = load i32, i32* %12, align 4
  %674 = call i32 @debug_record_parameter(i8* %669, i8* %670, i32 %671, i32 %672, i32 %673)
  %675 = icmp ne i32 %674, 0
  br i1 %675, label %678, label %676

676:                                              ; preds = %668
  %677 = load i32, i32* @FALSE, align 4
  store i32 %677, i32* %7, align 4
  br label %726

678:                                              ; preds = %668
  br label %724

679:                                              ; preds = %134
  %680 = load i8*, i8** %8, align 8
  %681 = load %struct.stab_handle*, %struct.stab_handle** %9, align 8
  %682 = call i32 @parse_stab_type(i8* %680, %struct.stab_handle* %681, i8* null, i8** %14, i32** null)
  store i32 %682, i32* %17, align 4
  %683 = load i32, i32* %17, align 4
  %684 = load i32, i32* @DEBUG_TYPE_NULL, align 4
  %685 = icmp eq i32 %683, %684
  br i1 %685, label %686, label %688

686:                                              ; preds = %679
  %687 = load i32, i32* @FALSE, align 4
  store i32 %687, i32* %7, align 4
  br label %726

688:                                              ; preds = %679
  %689 = load i8*, i8** %8, align 8
  %690 = load i8*, i8** %15, align 8
  %691 = load i32, i32* %17, align 4
  %692 = load i32, i32* @DEBUG_PARM_REF_REG, align 4
  %693 = load i32, i32* %12, align 4
  %694 = call i32 @debug_record_parameter(i8* %689, i8* %690, i32 %691, i32 %692, i32 %693)
  %695 = icmp ne i32 %694, 0
  br i1 %695, label %698, label %696

696:                                              ; preds = %688
  %697 = load i32, i32* @FALSE, align 4
  store i32 %697, i32* %7, align 4
  br label %726

698:                                              ; preds = %688
  br label %724

699:                                              ; preds = %134
  %700 = load i8*, i8** %8, align 8
  %701 = load %struct.stab_handle*, %struct.stab_handle** %9, align 8
  %702 = call i32 @parse_stab_type(i8* %700, %struct.stab_handle* %701, i8* null, i8** %14, i32** null)
  store i32 %702, i32* %17, align 4
  %703 = load i32, i32* %17, align 4
  %704 = load i32, i32* @DEBUG_TYPE_NULL, align 4
  %705 = icmp eq i32 %703, %704
  br i1 %705, label %706, label %708

706:                                              ; preds = %699
  %707 = load i32, i32* @FALSE, align 4
  store i32 %707, i32* %7, align 4
  br label %726

708:                                              ; preds = %699
  %709 = load i8*, i8** %8, align 8
  %710 = load %struct.stab_handle*, %struct.stab_handle** %9, align 8
  %711 = load i8*, i8** %15, align 8
  %712 = load i32, i32* %17, align 4
  %713 = load i32, i32* @DEBUG_LOCAL, align 4
  %714 = load i32, i32* %12, align 4
  %715 = call i32 @stab_record_variable(i8* %709, %struct.stab_handle* %710, i8* %711, i32 %712, i32 %713, i32 %714)
  %716 = icmp ne i32 %715, 0
  br i1 %716, label %719, label %717

717:                                              ; preds = %708
  %718 = load i32, i32* @FALSE, align 4
  store i32 %718, i32* %7, align 4
  br label %726

719:                                              ; preds = %708
  br label %724

720:                                              ; preds = %134
  %721 = load i8*, i8** %13, align 8
  %722 = call i32 @bad_stab(i8* %721)
  %723 = load i32, i32* @FALSE, align 4
  store i32 %723, i32* %7, align 4
  br label %726

724:                                              ; preds = %719, %698, %678, %658, %637, %524, %492, %471, %450, %429, %407, %363, %342, %263, %224, %205
  %725 = load i32, i32* @TRUE, align 4
  store i32 %725, i32* %7, align 4
  br label %726

726:                                              ; preds = %724, %720, %717, %706, %696, %686, %676, %666, %656, %645, %628, %562, %549, %544, %516, %506, %501, %490, %479, %469, %458, %448, %438, %426, %405, %395, %361, %350, %340, %271, %260, %244, %232, %222, %213, %201, %198, %186, %179, %169, %159, %141, %48, %32
  %727 = load i32, i32* %7, align 4
  ret i32 %727
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @bad_stab(i8*) #1

declare dso_local i32 @warn_stab(i8*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @savestring(i8*, i32) #1

declare dso_local i64 @ISDIGIT(i8 signext) #1

declare dso_local i32 @debug_record_float_const(i8*, i8*, i32) #1

declare dso_local i32 @atof(i8*) #1

declare dso_local i32 @debug_record_int_const(i8*, i8*, i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @parse_stab_type(i8*, %struct.stab_handle*, i8*, i8**, i32**) #1

declare dso_local i32 @debug_record_typed_const(i8*, i8*, i32, i32) #1

declare dso_local i32 @debug_record_label(i8*, i8*, i32, i32) #1

declare dso_local i32 @debug_record_function(i8*, i8*, i32, i32, i32) #1

declare dso_local signext i8 @bfd_get_symbol_leading_char(i32) #1

declare dso_local i8* @bfd_asymbol_name(i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @bfd_asymbol_value(i32*) #1

declare dso_local i32 @stab_record_variable(i8*, %struct.stab_handle*, i8*, i32, i32, i32) #1

declare dso_local i32 @debug_make_function_type(i8*, i32, i32*, i32) #1

declare dso_local i32 @debug_make_pointer_type(i8*, i32) #1

declare dso_local i32 @debug_record_parameter(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @debug_name_type(i8*, i8*, i32) #1

declare dso_local i32 @debug_tag_type(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
