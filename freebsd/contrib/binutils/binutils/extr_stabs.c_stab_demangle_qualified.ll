; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_stabs.c_stab_demangle_qualified.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_stabs.c_stab_demangle_qualified.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stab_demangle_info = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@DEBUG_TYPE_NULL = common dso_local global i64 0, align 8
@DEBUG_KIND_CLASS = common dso_local global i32 0, align 4
@DEBUG_FIELD_NULL = common dso_local global i64 0, align 8
@DEBUG_KIND_ILLEGAL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stab_demangle_info*, i8**, i64*)* @stab_demangle_qualified to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stab_demangle_qualified(%struct.stab_demangle_info* %0, i8** %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.stab_demangle_info*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store %struct.stab_demangle_info* %0, %struct.stab_demangle_info** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64* %2, i64** %7, align 8
  %19 = load i8**, i8*** %6, align 8
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %8, align 8
  %21 = load i8**, i8*** %6, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  switch i32 %25, label %89 [
    i32 95, label %26
    i32 49, label %67
    i32 50, label %67
    i32 51, label %67
    i32 52, label %67
    i32 53, label %67
    i32 54, label %67
    i32 55, label %67
    i32 56, label %67
    i32 57, label %67
    i32 48, label %88
  ]

26:                                               ; preds = %3
  %27 = load i8**, i8*** %6, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 2
  store i8* %29, i8** %9, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = load i8, i8* %30, align 1
  %32 = call i32 @ISDIGIT(i8 signext %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %26
  %35 = load i8*, i8** %9, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 48
  br i1 %38, label %39, label %43

39:                                               ; preds = %34, %26
  %40 = load i8*, i8** %8, align 8
  %41 = call i32 @stab_bad_demangle(i8* %40)
  %42 = load i32, i32* @FALSE, align 4
  store i32 %42, i32* %4, align 4
  br label %290

43:                                               ; preds = %34
  %44 = load i8*, i8** %9, align 8
  %45 = call i32 @atoi(i8* %44)
  store i32 %45, i32* %10, align 4
  br label %46

46:                                               ; preds = %51, %43
  %47 = load i8*, i8** %9, align 8
  %48 = load i8, i8* %47, align 1
  %49 = call i32 @ISDIGIT(i8 signext %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i8*, i8** %9, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %9, align 8
  br label %46

54:                                               ; preds = %46
  %55 = load i8*, i8** %9, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 95
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load i8*, i8** %8, align 8
  %61 = call i32 @stab_bad_demangle(i8* %60)
  %62 = load i32, i32* @FALSE, align 4
  store i32 %62, i32* %4, align 4
  br label %290

63:                                               ; preds = %54
  %64 = load i8*, i8** %9, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  %66 = load i8**, i8*** %6, align 8
  store i8* %65, i8** %66, align 8
  br label %93

67:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3
  %68 = load i8**, i8*** %6, align 8
  %69 = load i8*, i8** %68, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = sub nsw i32 %72, 48
  store i32 %73, i32* %10, align 4
  %74 = load i8**, i8*** %6, align 8
  %75 = load i8*, i8** %74, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 2
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 95
  br i1 %79, label %80, label %84

80:                                               ; preds = %67
  %81 = load i8**, i8*** %6, align 8
  %82 = load i8*, i8** %81, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %81, align 8
  br label %84

84:                                               ; preds = %80, %67
  %85 = load i8**, i8*** %6, align 8
  %86 = load i8*, i8** %85, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 2
  store i8* %87, i8** %85, align 8
  br label %93

88:                                               ; preds = %3
  br label %89

89:                                               ; preds = %3, %88
  %90 = load i8*, i8** %8, align 8
  %91 = call i32 @stab_bad_demangle(i8* %90)
  %92 = load i32, i32* @FALSE, align 4
  store i32 %92, i32* %4, align 4
  br label %290

93:                                               ; preds = %84, %63
  %94 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  store i64 %94, i64* %11, align 8
  br label %95

95:                                               ; preds = %281, %93
  %96 = load i32, i32* %10, align 4
  %97 = add i32 %96, -1
  store i32 %97, i32* %10, align 4
  %98 = icmp ugt i32 %96, 0
  br i1 %98, label %99, label %282

99:                                               ; preds = %95
  %100 = load i8**, i8*** %6, align 8
  %101 = load i8*, i8** %100, align 8
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 95
  br i1 %104, label %105, label %109

105:                                              ; preds = %99
  %106 = load i8**, i8*** %6, align 8
  %107 = load i8*, i8** %106, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %108, i8** %106, align 8
  br label %109

109:                                              ; preds = %105, %99
  %110 = load i8**, i8*** %6, align 8
  %111 = load i8*, i8** %110, align 8
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 116
  br i1 %114, label %115, label %152

115:                                              ; preds = %109
  %116 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %5, align 8
  %117 = load i8**, i8*** %6, align 8
  %118 = load i64*, i64** %7, align 8
  %119 = icmp ne i64* %118, null
  br i1 %119, label %120, label %121

120:                                              ; preds = %115
  br label %122

121:                                              ; preds = %115
  br label %122

122:                                              ; preds = %121, %120
  %123 = phi i8** [ %12, %120 ], [ null, %121 ]
  %124 = call i32 @stab_demangle_template(%struct.stab_demangle_info* %116, i8** %117, i8** %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %128, label %126

126:                                              ; preds = %122
  %127 = load i32, i32* @FALSE, align 4
  store i32 %127, i32* %4, align 4
  br label %290

128:                                              ; preds = %122
  %129 = load i64*, i64** %7, align 8
  %130 = icmp ne i64* %129, null
  br i1 %130, label %131, label %151

131:                                              ; preds = %128
  %132 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %5, align 8
  %133 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %5, align 8
  %136 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i8*, i8** %12, align 8
  %139 = load i8*, i8** %12, align 8
  %140 = call i32 @strlen(i8* %139)
  %141 = load i32, i32* @DEBUG_KIND_CLASS, align 4
  %142 = call i64 @stab_find_tagged_type(i32 %134, i32 %137, i8* %138, i32 %140, i32 %141)
  store i64 %142, i64* %11, align 8
  %143 = load i8*, i8** %12, align 8
  %144 = call i32 @free(i8* %143)
  %145 = load i64, i64* %11, align 8
  %146 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %131
  %149 = load i32, i32* @FALSE, align 4
  store i32 %149, i32* %4, align 4
  br label %290

150:                                              ; preds = %131
  br label %151

151:                                              ; preds = %150, %128
  br label %281

152:                                              ; preds = %109
  %153 = load i8**, i8*** %6, align 8
  %154 = call i32 @stab_demangle_count(i8** %153)
  store i32 %154, i32* %13, align 4
  %155 = load i8**, i8*** %6, align 8
  %156 = load i8*, i8** %155, align 8
  %157 = call i32 @strlen(i8* %156)
  %158 = load i32, i32* %13, align 4
  %159 = icmp ult i32 %157, %158
  br i1 %159, label %160, label %164

160:                                              ; preds = %152
  %161 = load i8*, i8** %8, align 8
  %162 = call i32 @stab_bad_demangle(i8* %161)
  %163 = load i32, i32* @FALSE, align 4
  store i32 %163, i32* %4, align 4
  br label %290

164:                                              ; preds = %152
  %165 = load i64*, i64** %7, align 8
  %166 = icmp ne i64* %165, null
  br i1 %166, label %167, label %275

167:                                              ; preds = %164
  store i64* null, i64** %14, align 8
  %168 = load i64, i64* %11, align 8
  %169 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  %170 = icmp ne i64 %168, %169
  br i1 %170, label %171, label %177

171:                                              ; preds = %167
  %172 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %5, align 8
  %173 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load i64, i64* %11, align 8
  %176 = call i64* @debug_get_fields(i32 %174, i64 %175)
  store i64* %176, i64** %14, align 8
  br label %177

177:                                              ; preds = %171, %167
  %178 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  store i64 %178, i64* %11, align 8
  %179 = load i64*, i64** %14, align 8
  %180 = icmp ne i64* %179, null
  br i1 %180, label %181, label %225

181:                                              ; preds = %177
  %182 = load i8**, i8*** %6, align 8
  %183 = load i8*, i8** %182, align 8
  %184 = load i32, i32* %13, align 4
  %185 = call i8* @savestring(i8* %183, i32 %184)
  store i8* %185, i8** %15, align 8
  br label %186

186:                                              ; preds = %219, %181
  %187 = load i64*, i64** %14, align 8
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @DEBUG_FIELD_NULL, align 8
  %190 = icmp ne i64 %188, %189
  br i1 %190, label %191, label %222

191:                                              ; preds = %186
  %192 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %5, align 8
  %193 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = load i64*, i64** %14, align 8
  %196 = load i64, i64* %195, align 8
  %197 = call i64 @debug_get_field_type(i32 %194, i64 %196)
  store i64 %197, i64* %16, align 8
  %198 = load i64, i64* %16, align 8
  %199 = inttoptr i64 %198 to i8*
  %200 = icmp eq i8* %199, null
  br i1 %200, label %201, label %203

201:                                              ; preds = %191
  %202 = load i32, i32* @FALSE, align 4
  store i32 %202, i32* %4, align 4
  br label %290

203:                                              ; preds = %191
  %204 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %5, align 8
  %205 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = load i64, i64* %16, align 8
  %208 = call i8* @debug_get_type_name(i32 %206, i64 %207)
  store i8* %208, i8** %17, align 8
  %209 = load i8*, i8** %17, align 8
  %210 = icmp ne i8* %209, null
  br i1 %210, label %211, label %218

211:                                              ; preds = %203
  %212 = load i8*, i8** %17, align 8
  %213 = load i8*, i8** %15, align 8
  %214 = call i64 @strcmp(i8* %212, i8* %213)
  %215 = icmp eq i64 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %211
  %217 = load i64, i64* %16, align 8
  store i64 %217, i64* %11, align 8
  br label %222

218:                                              ; preds = %211, %203
  br label %219

219:                                              ; preds = %218
  %220 = load i64*, i64** %14, align 8
  %221 = getelementptr inbounds i64, i64* %220, i32 1
  store i64* %221, i64** %14, align 8
  br label %186

222:                                              ; preds = %216, %186
  %223 = load i8*, i8** %15, align 8
  %224 = call i32 @free(i8* %223)
  br label %225

225:                                              ; preds = %222, %177
  %226 = load i64, i64* %11, align 8
  %227 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  %228 = icmp eq i64 %226, %227
  br i1 %228, label %229, label %274

229:                                              ; preds = %225
  %230 = load i32, i32* %10, align 4
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %244

232:                                              ; preds = %229
  %233 = load i8**, i8*** %6, align 8
  %234 = load i8*, i8** %233, align 8
  %235 = load i32, i32* %13, align 4
  %236 = call i8* @savestring(i8* %234, i32 %235)
  store i8* %236, i8** %18, align 8
  %237 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %5, align 8
  %238 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = load i8*, i8** %18, align 8
  %241 = call i64 @debug_find_named_type(i32 %239, i8* %240)
  store i64 %241, i64* %11, align 8
  %242 = load i8*, i8** %18, align 8
  %243 = call i32 @free(i8* %242)
  br label %244

244:                                              ; preds = %232, %229
  %245 = load i64, i64* %11, align 8
  %246 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  %247 = icmp eq i64 %245, %246
  br i1 %247, label %248, label %273

248:                                              ; preds = %244
  %249 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %5, align 8
  %250 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %5, align 8
  %253 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = load i8**, i8*** %6, align 8
  %256 = load i8*, i8** %255, align 8
  %257 = load i32, i32* %13, align 4
  %258 = load i32, i32* %10, align 4
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %262

260:                                              ; preds = %248
  %261 = load i32, i32* @DEBUG_KIND_ILLEGAL, align 4
  br label %264

262:                                              ; preds = %248
  %263 = load i32, i32* @DEBUG_KIND_CLASS, align 4
  br label %264

264:                                              ; preds = %262, %260
  %265 = phi i32 [ %261, %260 ], [ %263, %262 ]
  %266 = call i64 @stab_find_tagged_type(i32 %251, i32 %254, i8* %256, i32 %257, i32 %265)
  store i64 %266, i64* %11, align 8
  %267 = load i64, i64* %11, align 8
  %268 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  %269 = icmp eq i64 %267, %268
  br i1 %269, label %270, label %272

270:                                              ; preds = %264
  %271 = load i32, i32* @FALSE, align 4
  store i32 %271, i32* %4, align 4
  br label %290

272:                                              ; preds = %264
  br label %273

273:                                              ; preds = %272, %244
  br label %274

274:                                              ; preds = %273, %225
  br label %275

275:                                              ; preds = %274, %164
  %276 = load i32, i32* %13, align 4
  %277 = load i8**, i8*** %6, align 8
  %278 = load i8*, i8** %277, align 8
  %279 = zext i32 %276 to i64
  %280 = getelementptr inbounds i8, i8* %278, i64 %279
  store i8* %280, i8** %277, align 8
  br label %281

281:                                              ; preds = %275, %151
  br label %95

282:                                              ; preds = %95
  %283 = load i64*, i64** %7, align 8
  %284 = icmp ne i64* %283, null
  br i1 %284, label %285, label %288

285:                                              ; preds = %282
  %286 = load i64, i64* %11, align 8
  %287 = load i64*, i64** %7, align 8
  store i64 %286, i64* %287, align 8
  br label %288

288:                                              ; preds = %285, %282
  %289 = load i32, i32* @TRUE, align 4
  store i32 %289, i32* %4, align 4
  br label %290

290:                                              ; preds = %288, %270, %201, %160, %148, %126, %89, %59, %39
  %291 = load i32, i32* %4, align 4
  ret i32 %291
}

declare dso_local i32 @ISDIGIT(i8 signext) #1

declare dso_local i32 @stab_bad_demangle(i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @stab_demangle_template(%struct.stab_demangle_info*, i8**, i8**) #1

declare dso_local i64 @stab_find_tagged_type(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @stab_demangle_count(i8**) #1

declare dso_local i64* @debug_get_fields(i32, i64) #1

declare dso_local i8* @savestring(i8*, i32) #1

declare dso_local i64 @debug_get_field_type(i32, i64) #1

declare dso_local i8* @debug_get_type_name(i32, i64) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @debug_find_named_type(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
