; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_objcopy.c_copy_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_objcopy.c_copy_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_16__* }
%struct.section_list = type { i32, i64 }
%struct.TYPE_17__ = type { i32* }

@status = common dso_local global i64 0, align 8
@SEC_GROUP = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@bfd_core = common dso_local global i64 0, align 8
@bfd_error_invalid_operation = common dso_local global i64 0, align 8
@isympp = common dso_local global i32 0, align 4
@strip_symbols = common dso_local global i64 0, align 8
@STRIP_ALL = common dso_local global i64 0, align 8
@keep_specific_list = common dso_local global i32 0, align 4
@extract_symbol = common dso_local global i64 0, align 8
@SEC_HAS_CONTENTS = common dso_local global i32 0, align 4
@reverse_bytes = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"cannot reverse bytes: length of section %s must be evenly divisible by %d\00", align 1
@copy_byte = common dso_local global i64 0, align 8
@interleave = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_16__*, i8*)* @copy_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_section(i32* %0, %struct.TYPE_16__* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.section_list*, align 8
  %9 = alloca %struct.TYPE_17__**, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_17__**, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  store i8* %2, i8** %6, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = bitcast i8* %27 to i32*
  store i32* %28, i32** %7, align 8
  %29 = load i64, i64* @status, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %3
  br label %372

32:                                               ; preds = %3
  %33 = load i32*, i32** %4, align 8
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %35 = call i64 @is_strip_section(i32* %33, %struct.TYPE_16__* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %372

38:                                               ; preds = %32
  %39 = load i32*, i32** %4, align 8
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %41 = call i32 @bfd_get_section_flags(i32* %39, %struct.TYPE_16__* %40)
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* @SEC_GROUP, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %372

47:                                               ; preds = %38
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %49, align 8
  store %struct.TYPE_16__* %50, %struct.TYPE_16__** %11, align 8
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %52 = call i32 @bfd_get_section_size(%struct.TYPE_16__* %51)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %47
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %57 = icmp eq %struct.TYPE_16__* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %55, %47
  br label %372

59:                                               ; preds = %55
  %60 = load i32*, i32** %4, align 8
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %62 = call i32 @bfd_get_section_name(i32* %60, %struct.TYPE_16__* %61)
  %63 = load i32, i32* @FALSE, align 4
  %64 = call %struct.section_list* @find_section_list(i32 %62, i32 %63)
  store %struct.section_list* %64, %struct.section_list** %8, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = call i64 @bfd_get_format(i32* %65)
  %67 = load i64, i64* @bfd_core, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %59
  store i64 0, i64* %13, align 8
  br label %90

70:                                               ; preds = %59
  %71 = load i32*, i32** %4, align 8
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %73 = call i64 @bfd_get_reloc_upper_bound(i32* %71, %struct.TYPE_16__* %72)
  store i64 %73, i64* %13, align 8
  %74 = load i64, i64* %13, align 8
  %75 = icmp slt i64 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %70
  %77 = load i64, i64* %13, align 8
  %78 = icmp eq i64 %77, -1
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = call i64 (...) @bfd_get_error()
  %81 = load i64, i64* @bfd_error_invalid_operation, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  store i64 0, i64* %13, align 8
  br label %88

84:                                               ; preds = %79, %76
  %85 = load i32*, i32** %4, align 8
  %86 = call i32 @bfd_get_filename(i32* %85)
  %87 = call i32 @RETURN_NONFATAL(i32 %86)
  br label %88

88:                                               ; preds = %84, %83
  br label %89

89:                                               ; preds = %88, %70
  br label %90

90:                                               ; preds = %89, %69
  %91 = load i64, i64* %13, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = load i32*, i32** %7, align 8
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %96 = call i32 @bfd_set_reloc(i32* %94, %struct.TYPE_16__* %95, %struct.TYPE_17__** null, i64 0)
  br label %176

97:                                               ; preds = %90
  %98 = load i64, i64* %13, align 8
  %99 = trunc i64 %98 to i32
  %100 = call i8* @xmalloc(i32 %99)
  %101 = bitcast i8* %100 to %struct.TYPE_17__**
  store %struct.TYPE_17__** %101, %struct.TYPE_17__*** %9, align 8
  %102 = load i32*, i32** %4, align 8
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %104 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %105 = load i32, i32* @isympp, align 4
  %106 = call i64 @bfd_canonicalize_reloc(i32* %102, %struct.TYPE_16__* %103, %struct.TYPE_17__** %104, i32 %105)
  store i64 %106, i64* %10, align 8
  %107 = load i64, i64* %10, align 8
  %108 = icmp slt i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %97
  %110 = load i32*, i32** %4, align 8
  %111 = call i32 @bfd_get_filename(i32* %110)
  %112 = call i32 @RETURN_NONFATAL(i32 %111)
  br label %113

113:                                              ; preds = %109, %97
  %114 = load i64, i64* @strip_symbols, align 8
  %115 = load i64, i64* @STRIP_ALL, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %157

117:                                              ; preds = %113
  store i64 0, i64* %16, align 8
  %118 = load i64, i64* %13, align 8
  %119 = trunc i64 %118 to i32
  %120 = call i8* @xmalloc(i32 %119)
  %121 = bitcast i8* %120 to %struct.TYPE_17__**
  store %struct.TYPE_17__** %121, %struct.TYPE_17__*** %15, align 8
  store i64 0, i64* %17, align 8
  br label %122

122:                                              ; preds = %148, %117
  %123 = load i64, i64* %17, align 8
  %124 = load i64, i64* %10, align 8
  %125 = icmp slt i64 %123, %124
  br i1 %125, label %126, label %151

126:                                              ; preds = %122
  %127 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %128 = load i64, i64* %17, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %127, i64 %128
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @bfd_asymbol_name(i32 %133)
  %135 = load i32, i32* @keep_specific_list, align 4
  %136 = call i64 @is_specified_symbol(i32 %134, i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %147

138:                                              ; preds = %126
  %139 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %140 = load i64, i64* %17, align 8
  %141 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %139, i64 %140
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %141, align 8
  %143 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %15, align 8
  %144 = load i64, i64* %16, align 8
  %145 = add nsw i64 %144, 1
  store i64 %145, i64* %16, align 8
  %146 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %143, i64 %144
  store %struct.TYPE_17__* %142, %struct.TYPE_17__** %146, align 8
  br label %147

147:                                              ; preds = %138, %126
  br label %148

148:                                              ; preds = %147
  %149 = load i64, i64* %17, align 8
  %150 = add nsw i64 %149, 1
  store i64 %150, i64* %17, align 8
  br label %122

151:                                              ; preds = %122
  %152 = load i64, i64* %16, align 8
  store i64 %152, i64* %10, align 8
  %153 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %154 = bitcast %struct.TYPE_17__** %153 to i8*
  %155 = call i32 @free(i8* %154)
  %156 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %15, align 8
  store %struct.TYPE_17__** %156, %struct.TYPE_17__*** %9, align 8
  br label %157

157:                                              ; preds = %151, %113
  %158 = load i32*, i32** %7, align 8
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %160 = load i64, i64* %10, align 8
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %157
  br label %165

163:                                              ; preds = %157
  %164 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  br label %165

165:                                              ; preds = %163, %162
  %166 = phi %struct.TYPE_17__** [ null, %162 ], [ %164, %163 ]
  %167 = load i64, i64* %10, align 8
  %168 = call i32 @bfd_set_reloc(i32* %158, %struct.TYPE_16__* %159, %struct.TYPE_17__** %166, i64 %167)
  %169 = load i64, i64* %10, align 8
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %165
  %172 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %173 = bitcast %struct.TYPE_17__** %172 to i8*
  %174 = call i32 @free(i8* %173)
  br label %175

175:                                              ; preds = %171, %165
  br label %176

176:                                              ; preds = %175, %93
  %177 = load i64, i64* @extract_symbol, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %176
  br label %372

180:                                              ; preds = %176
  %181 = load i32*, i32** %4, align 8
  %182 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %183 = call i32 @bfd_get_section_flags(i32* %181, %struct.TYPE_16__* %182)
  %184 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %337

187:                                              ; preds = %180
  %188 = load i32*, i32** %7, align 8
  %189 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %190 = call i32 @bfd_get_section_flags(i32* %188, %struct.TYPE_16__* %189)
  %191 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %337

194:                                              ; preds = %187
  %195 = load i32, i32* %12, align 4
  %196 = call i8* @xmalloc(i32 %195)
  store i8* %196, i8** %18, align 8
  %197 = load i32*, i32** %4, align 8
  %198 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %199 = load i8*, i8** %18, align 8
  %200 = load i32, i32* %12, align 4
  %201 = call i32 @bfd_get_section_contents(i32* %197, %struct.TYPE_16__* %198, i8* %199, i32 0, i32 %200)
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %207, label %203

203:                                              ; preds = %194
  %204 = load i32*, i32** %4, align 8
  %205 = call i32 @bfd_get_filename(i32* %204)
  %206 = call i32 @RETURN_NONFATAL(i32 %205)
  br label %207

207:                                              ; preds = %203, %194
  %208 = load i32, i32* @reverse_bytes, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %280

210:                                              ; preds = %207
  %211 = load i32, i32* %12, align 4
  %212 = load i32, i32* @reverse_bytes, align 4
  %213 = srem i32 %211, %212
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %272

215:                                              ; preds = %210
  store i64 0, i64* %19, align 8
  br label %216

216:                                              ; preds = %266, %215
  %217 = load i64, i64* %19, align 8
  %218 = load i32, i32* %12, align 4
  %219 = sext i32 %218 to i64
  %220 = icmp ult i64 %217, %219
  br i1 %220, label %221, label %271

221:                                              ; preds = %216
  store i64 0, i64* %20, align 8
  br label %222

222:                                              ; preds = %262, %221
  %223 = load i64, i64* %20, align 8
  %224 = load i32, i32* @reverse_bytes, align 4
  %225 = sdiv i32 %224, 2
  %226 = sext i32 %225 to i64
  %227 = icmp ult i64 %223, %226
  br i1 %227, label %228, label %265

228:                                              ; preds = %222
  %229 = load i8*, i8** %18, align 8
  %230 = bitcast i8* %229 to i32*
  store i32* %230, i32** %22, align 8
  %231 = load i32*, i32** %22, align 8
  %232 = load i64, i64* %19, align 8
  %233 = load i64, i64* %20, align 8
  %234 = add i64 %232, %233
  %235 = getelementptr inbounds i32, i32* %231, i64 %234
  %236 = load i32, i32* %235, align 4
  store i32 %236, i32* %21, align 4
  %237 = load i32*, i32** %22, align 8
  %238 = load i64, i64* %19, align 8
  %239 = load i32, i32* @reverse_bytes, align 4
  %240 = sext i32 %239 to i64
  %241 = add i64 %238, %240
  %242 = load i64, i64* %20, align 8
  %243 = add i64 %242, 1
  %244 = sub i64 %241, %243
  %245 = getelementptr inbounds i32, i32* %237, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = load i32*, i32** %22, align 8
  %248 = load i64, i64* %19, align 8
  %249 = load i64, i64* %20, align 8
  %250 = add i64 %248, %249
  %251 = getelementptr inbounds i32, i32* %247, i64 %250
  store i32 %246, i32* %251, align 4
  %252 = load i32, i32* %21, align 4
  %253 = load i32*, i32** %22, align 8
  %254 = load i64, i64* %19, align 8
  %255 = load i32, i32* @reverse_bytes, align 4
  %256 = sext i32 %255 to i64
  %257 = add i64 %254, %256
  %258 = load i64, i64* %20, align 8
  %259 = add i64 %258, 1
  %260 = sub i64 %257, %259
  %261 = getelementptr inbounds i32, i32* %253, i64 %260
  store i32 %252, i32* %261, align 4
  br label %262

262:                                              ; preds = %228
  %263 = load i64, i64* %20, align 8
  %264 = add i64 %263, 1
  store i64 %264, i64* %20, align 8
  br label %222

265:                                              ; preds = %222
  br label %266

266:                                              ; preds = %265
  %267 = load i32, i32* @reverse_bytes, align 4
  %268 = sext i32 %267 to i64
  %269 = load i64, i64* %19, align 8
  %270 = add i64 %269, %268
  store i64 %270, i64* %19, align 8
  br label %216

271:                                              ; preds = %216
  br label %279

272:                                              ; preds = %210
  %273 = call i32 @_(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0))
  %274 = load i32*, i32** %4, align 8
  %275 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %276 = call i32 @bfd_section_name(i32* %274, %struct.TYPE_16__* %275)
  %277 = load i32, i32* @reverse_bytes, align 4
  %278 = call i32 @fatal(i32 %273, i32 %276, i32 %277)
  br label %279

279:                                              ; preds = %272, %271
  br label %280

280:                                              ; preds = %279, %207
  %281 = load i64, i64* @copy_byte, align 8
  %282 = icmp sge i64 %281, 0
  br i1 %282, label %283, label %323

283:                                              ; preds = %280
  %284 = load i8*, i8** %18, align 8
  %285 = load i64, i64* @copy_byte, align 8
  %286 = getelementptr inbounds i8, i8* %284, i64 %285
  store i8* %286, i8** %23, align 8
  %287 = load i8*, i8** %18, align 8
  store i8* %287, i8** %24, align 8
  %288 = load i8*, i8** %18, align 8
  %289 = load i32, i32* %12, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i8, i8* %288, i64 %290
  store i8* %291, i8** %25, align 8
  br label %292

292:                                              ; preds = %301, %283
  %293 = load i8*, i8** %23, align 8
  %294 = load i8*, i8** %25, align 8
  %295 = icmp ult i8* %293, %294
  br i1 %295, label %296, label %306

296:                                              ; preds = %292
  %297 = load i8*, i8** %23, align 8
  %298 = load i8, i8* %297, align 1
  %299 = load i8*, i8** %24, align 8
  %300 = getelementptr inbounds i8, i8* %299, i32 1
  store i8* %300, i8** %24, align 8
  store i8 %298, i8* %299, align 1
  br label %301

301:                                              ; preds = %296
  %302 = load i32, i32* @interleave, align 4
  %303 = load i8*, i8** %23, align 8
  %304 = sext i32 %302 to i64
  %305 = getelementptr inbounds i8, i8* %303, i64 %304
  store i8* %305, i8** %23, align 8
  br label %292

306:                                              ; preds = %292
  %307 = load i32, i32* %12, align 4
  %308 = load i32, i32* @interleave, align 4
  %309 = add nsw i32 %307, %308
  %310 = sub nsw i32 %309, 1
  %311 = sext i32 %310 to i64
  %312 = load i64, i64* @copy_byte, align 8
  %313 = sub nsw i64 %311, %312
  %314 = load i32, i32* @interleave, align 4
  %315 = sext i32 %314 to i64
  %316 = sdiv i64 %313, %315
  %317 = trunc i64 %316 to i32
  store i32 %317, i32* %12, align 4
  %318 = load i32, i32* @interleave, align 4
  %319 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %320 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = sdiv i32 %321, %318
  store i32 %322, i32* %320, align 8
  br label %323

323:                                              ; preds = %306, %280
  %324 = load i32*, i32** %7, align 8
  %325 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %326 = load i8*, i8** %18, align 8
  %327 = load i32, i32* %12, align 4
  %328 = call i32 @bfd_set_section_contents(i32* %324, %struct.TYPE_16__* %325, i8* %326, i32 0, i32 %327)
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %334, label %330

330:                                              ; preds = %323
  %331 = load i32*, i32** %7, align 8
  %332 = call i32 @bfd_get_filename(i32* %331)
  %333 = call i32 @RETURN_NONFATAL(i32 %332)
  br label %334

334:                                              ; preds = %330, %323
  %335 = load i8*, i8** %18, align 8
  %336 = call i32 @free(i8* %335)
  br label %372

337:                                              ; preds = %187, %180
  %338 = load %struct.section_list*, %struct.section_list** %8, align 8
  %339 = icmp ne %struct.section_list* %338, null
  br i1 %339, label %340, label %371

340:                                              ; preds = %337
  %341 = load %struct.section_list*, %struct.section_list** %8, align 8
  %342 = getelementptr inbounds %struct.section_list, %struct.section_list* %341, i32 0, i32 1
  %343 = load i64, i64* %342, align 8
  %344 = icmp ne i64 %343, 0
  br i1 %344, label %345, label %371

345:                                              ; preds = %340
  %346 = load %struct.section_list*, %struct.section_list** %8, align 8
  %347 = getelementptr inbounds %struct.section_list, %struct.section_list* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 8
  %349 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %350 = and i32 %348, %349
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %371

352:                                              ; preds = %345
  %353 = load i32, i32* %12, align 4
  %354 = call i8* @xmalloc(i32 %353)
  store i8* %354, i8** %26, align 8
  %355 = load i8*, i8** %26, align 8
  %356 = load i32, i32* %12, align 4
  %357 = call i32 @memset(i8* %355, i32 0, i32 %356)
  %358 = load i32*, i32** %7, align 8
  %359 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %360 = load i8*, i8** %26, align 8
  %361 = load i32, i32* %12, align 4
  %362 = call i32 @bfd_set_section_contents(i32* %358, %struct.TYPE_16__* %359, i8* %360, i32 0, i32 %361)
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %368, label %364

364:                                              ; preds = %352
  %365 = load i32*, i32** %7, align 8
  %366 = call i32 @bfd_get_filename(i32* %365)
  %367 = call i32 @RETURN_NONFATAL(i32 %366)
  br label %368

368:                                              ; preds = %364, %352
  %369 = load i8*, i8** %26, align 8
  %370 = call i32 @free(i8* %369)
  br label %371

371:                                              ; preds = %368, %345, %340, %337
  br label %372

372:                                              ; preds = %31, %37, %46, %58, %179, %371, %334
  ret void
}

declare dso_local i64 @is_strip_section(i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @bfd_get_section_flags(i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @bfd_get_section_size(%struct.TYPE_16__*) #1

declare dso_local %struct.section_list* @find_section_list(i32, i32) #1

declare dso_local i32 @bfd_get_section_name(i32*, %struct.TYPE_16__*) #1

declare dso_local i64 @bfd_get_format(i32*) #1

declare dso_local i64 @bfd_get_reloc_upper_bound(i32*, %struct.TYPE_16__*) #1

declare dso_local i64 @bfd_get_error(...) #1

declare dso_local i32 @RETURN_NONFATAL(i32) #1

declare dso_local i32 @bfd_get_filename(i32*) #1

declare dso_local i32 @bfd_set_reloc(i32*, %struct.TYPE_16__*, %struct.TYPE_17__**, i64) #1

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i64 @bfd_canonicalize_reloc(i32*, %struct.TYPE_16__*, %struct.TYPE_17__**, i32) #1

declare dso_local i64 @is_specified_symbol(i32, i32) #1

declare dso_local i32 @bfd_asymbol_name(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @bfd_get_section_contents(i32*, %struct.TYPE_16__*, i8*, i32, i32) #1

declare dso_local i32 @fatal(i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @bfd_section_name(i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @bfd_set_section_contents(i32*, %struct.TYPE_16__*, i8*, i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
