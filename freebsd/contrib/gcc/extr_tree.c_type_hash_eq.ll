; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree.c_type_hash_eq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree.c_type_hash_eq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type_hash = type { i64, i32 }

@TREE_LIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @type_hash_eq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @type_hash_eq(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.type_hash*, align 8
  %7 = alloca %struct.type_hash*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.type_hash*
  store %struct.type_hash* %9, %struct.type_hash** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.type_hash*
  store %struct.type_hash* %11, %struct.type_hash** %7, align 8
  %12 = load %struct.type_hash*, %struct.type_hash** %6, align 8
  %13 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.type_hash*, %struct.type_hash** %7, align 8
  %16 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %14, %17
  br i1 %18, label %70, label %19

19:                                               ; preds = %2
  %20 = load %struct.type_hash*, %struct.type_hash** %6, align 8
  %21 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @TREE_CODE(i32 %22)
  %24 = load %struct.type_hash*, %struct.type_hash** %7, align 8
  %25 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @TREE_CODE(i32 %26)
  %28 = icmp ne i32 %23, %27
  br i1 %28, label %70, label %29

29:                                               ; preds = %19
  %30 = load %struct.type_hash*, %struct.type_hash** %6, align 8
  %31 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @TREE_TYPE(i32 %32)
  %34 = load %struct.type_hash*, %struct.type_hash** %7, align 8
  %35 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @TREE_TYPE(i32 %36)
  %38 = icmp ne i64 %33, %37
  br i1 %38, label %70, label %39

39:                                               ; preds = %29
  %40 = load %struct.type_hash*, %struct.type_hash** %6, align 8
  %41 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @TYPE_ATTRIBUTES(i32 %42)
  %44 = load %struct.type_hash*, %struct.type_hash** %7, align 8
  %45 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @TYPE_ATTRIBUTES(i32 %46)
  %48 = call i32 @attribute_list_equal(i32 %43, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %70

50:                                               ; preds = %39
  %51 = load %struct.type_hash*, %struct.type_hash** %6, align 8
  %52 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @TYPE_ALIGN(i32 %53)
  %55 = load %struct.type_hash*, %struct.type_hash** %7, align 8
  %56 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @TYPE_ALIGN(i32 %57)
  %59 = icmp ne i64 %54, %58
  br i1 %59, label %70, label %60

60:                                               ; preds = %50
  %61 = load %struct.type_hash*, %struct.type_hash** %6, align 8
  %62 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @TYPE_MODE(i32 %63)
  %65 = load %struct.type_hash*, %struct.type_hash** %7, align 8
  %66 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @TYPE_MODE(i32 %67)
  %69 = icmp ne i64 %64, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %60, %50, %39, %29, %19, %2
  store i32 0, i32* %3, align 4
  br label %383

71:                                               ; preds = %60
  %72 = load %struct.type_hash*, %struct.type_hash** %6, align 8
  %73 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @TREE_CODE(i32 %74)
  switch i32 %75, label %382 [
    i32 128, label %76
    i32 141, label %76
    i32 135, label %76
    i32 131, label %76
    i32 129, label %77
    i32 140, label %88
    i32 138, label %139
    i32 133, label %139
    i32 142, label %139
    i32 136, label %186
    i32 137, label %197
    i32 143, label %263
    i32 132, label %274
    i32 130, label %274
    i32 134, label %274
    i32 139, label %328
  ]

76:                                               ; preds = %71, %71, %71, %71
  store i32 1, i32* %3, align 4
  br label %383

77:                                               ; preds = %71
  %78 = load %struct.type_hash*, %struct.type_hash** %6, align 8
  %79 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @TYPE_VECTOR_SUBPARTS(i32 %80)
  %82 = load %struct.type_hash*, %struct.type_hash** %7, align 8
  %83 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @TYPE_VECTOR_SUBPARTS(i32 %84)
  %86 = icmp eq i32 %81, %85
  %87 = zext i1 %86 to i32
  store i32 %87, i32* %3, align 4
  br label %383

88:                                               ; preds = %71
  %89 = load %struct.type_hash*, %struct.type_hash** %6, align 8
  %90 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @TYPE_VALUES(i32 %91)
  %93 = load %struct.type_hash*, %struct.type_hash** %7, align 8
  %94 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @TYPE_VALUES(i32 %95)
  %97 = icmp ne i32 %92, %96
  br i1 %97, label %98, label %138

98:                                               ; preds = %88
  %99 = load %struct.type_hash*, %struct.type_hash** %6, align 8
  %100 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @TYPE_VALUES(i32 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %137

104:                                              ; preds = %98
  %105 = load %struct.type_hash*, %struct.type_hash** %6, align 8
  %106 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @TYPE_VALUES(i32 %107)
  %109 = call i32 @TREE_CODE(i32 %108)
  %110 = load i32, i32* @TREE_LIST, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %137

112:                                              ; preds = %104
  %113 = load %struct.type_hash*, %struct.type_hash** %7, align 8
  %114 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @TYPE_VALUES(i32 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %137

118:                                              ; preds = %112
  %119 = load %struct.type_hash*, %struct.type_hash** %7, align 8
  %120 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @TYPE_VALUES(i32 %121)
  %123 = call i32 @TREE_CODE(i32 %122)
  %124 = load i32, i32* @TREE_LIST, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %137

126:                                              ; preds = %118
  %127 = load %struct.type_hash*, %struct.type_hash** %6, align 8
  %128 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @TYPE_VALUES(i32 %129)
  %131 = load %struct.type_hash*, %struct.type_hash** %7, align 8
  %132 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @TYPE_VALUES(i32 %133)
  %135 = call i32 @type_list_equal(i32 %130, i32 %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %126, %118, %112, %104, %98
  store i32 0, i32* %3, align 4
  br label %383

138:                                              ; preds = %126, %88
  br label %139

139:                                              ; preds = %71, %71, %71, %138
  %140 = load %struct.type_hash*, %struct.type_hash** %6, align 8
  %141 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @TYPE_MAX_VALUE(i32 %142)
  %144 = load %struct.type_hash*, %struct.type_hash** %7, align 8
  %145 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @TYPE_MAX_VALUE(i32 %146)
  %148 = icmp eq i32 %143, %147
  br i1 %148, label %160, label %149

149:                                              ; preds = %139
  %150 = load %struct.type_hash*, %struct.type_hash** %6, align 8
  %151 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @TYPE_MAX_VALUE(i32 %152)
  %154 = load %struct.type_hash*, %struct.type_hash** %7, align 8
  %155 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @TYPE_MAX_VALUE(i32 %156)
  %158 = call i32 @tree_int_cst_equal(i32 %153, i32 %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %183

160:                                              ; preds = %149, %139
  %161 = load %struct.type_hash*, %struct.type_hash** %6, align 8
  %162 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @TYPE_MIN_VALUE(i32 %163)
  %165 = load %struct.type_hash*, %struct.type_hash** %7, align 8
  %166 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @TYPE_MIN_VALUE(i32 %167)
  %169 = icmp eq i32 %164, %168
  br i1 %169, label %181, label %170

170:                                              ; preds = %160
  %171 = load %struct.type_hash*, %struct.type_hash** %6, align 8
  %172 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @TYPE_MIN_VALUE(i32 %173)
  %175 = load %struct.type_hash*, %struct.type_hash** %7, align 8
  %176 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @TYPE_MIN_VALUE(i32 %177)
  %179 = call i32 @tree_int_cst_equal(i32 %174, i32 %178)
  %180 = icmp ne i32 %179, 0
  br label %181

181:                                              ; preds = %170, %160
  %182 = phi i1 [ true, %160 ], [ %180, %170 ]
  br label %183

183:                                              ; preds = %181, %149
  %184 = phi i1 [ false, %149 ], [ %182, %181 ]
  %185 = zext i1 %184 to i32
  store i32 %185, i32* %3, align 4
  br label %383

186:                                              ; preds = %71
  %187 = load %struct.type_hash*, %struct.type_hash** %6, align 8
  %188 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @TYPE_OFFSET_BASETYPE(i32 %189)
  %191 = load %struct.type_hash*, %struct.type_hash** %7, align 8
  %192 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @TYPE_OFFSET_BASETYPE(i32 %193)
  %195 = icmp eq i32 %190, %194
  %196 = zext i1 %195 to i32
  store i32 %196, i32* %3, align 4
  br label %383

197:                                              ; preds = %71
  %198 = load %struct.type_hash*, %struct.type_hash** %6, align 8
  %199 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @TYPE_METHOD_BASETYPE(i32 %200)
  %202 = load %struct.type_hash*, %struct.type_hash** %7, align 8
  %203 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @TYPE_METHOD_BASETYPE(i32 %204)
  %206 = icmp eq i32 %201, %205
  br i1 %206, label %207, label %260

207:                                              ; preds = %197
  %208 = load %struct.type_hash*, %struct.type_hash** %6, align 8
  %209 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 8
  %211 = call i32 @TYPE_ARG_TYPES(i32 %210)
  %212 = load %struct.type_hash*, %struct.type_hash** %7, align 8
  %213 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 8
  %215 = call i32 @TYPE_ARG_TYPES(i32 %214)
  %216 = icmp eq i32 %211, %215
  br i1 %216, label %258, label %217

217:                                              ; preds = %207
  %218 = load %struct.type_hash*, %struct.type_hash** %6, align 8
  %219 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 8
  %221 = call i32 @TYPE_ARG_TYPES(i32 %220)
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %256

223:                                              ; preds = %217
  %224 = load %struct.type_hash*, %struct.type_hash** %6, align 8
  %225 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 8
  %227 = call i32 @TYPE_ARG_TYPES(i32 %226)
  %228 = call i32 @TREE_CODE(i32 %227)
  %229 = load i32, i32* @TREE_LIST, align 4
  %230 = icmp eq i32 %228, %229
  br i1 %230, label %231, label %256

231:                                              ; preds = %223
  %232 = load %struct.type_hash*, %struct.type_hash** %7, align 8
  %233 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 8
  %235 = call i32 @TYPE_ARG_TYPES(i32 %234)
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %256

237:                                              ; preds = %231
  %238 = load %struct.type_hash*, %struct.type_hash** %7, align 8
  %239 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 8
  %241 = call i32 @TYPE_ARG_TYPES(i32 %240)
  %242 = call i32 @TREE_CODE(i32 %241)
  %243 = load i32, i32* @TREE_LIST, align 4
  %244 = icmp eq i32 %242, %243
  br i1 %244, label %245, label %256

245:                                              ; preds = %237
  %246 = load %struct.type_hash*, %struct.type_hash** %6, align 8
  %247 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 8
  %249 = call i32 @TYPE_ARG_TYPES(i32 %248)
  %250 = load %struct.type_hash*, %struct.type_hash** %7, align 8
  %251 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 8
  %253 = call i32 @TYPE_ARG_TYPES(i32 %252)
  %254 = call i32 @type_list_equal(i32 %249, i32 %253)
  %255 = icmp ne i32 %254, 0
  br label %256

256:                                              ; preds = %245, %237, %231, %223, %217
  %257 = phi i1 [ false, %237 ], [ false, %231 ], [ false, %223 ], [ false, %217 ], [ %255, %245 ]
  br label %258

258:                                              ; preds = %256, %207
  %259 = phi i1 [ true, %207 ], [ %257, %256 ]
  br label %260

260:                                              ; preds = %258, %197
  %261 = phi i1 [ false, %197 ], [ %259, %258 ]
  %262 = zext i1 %261 to i32
  store i32 %262, i32* %3, align 4
  br label %383

263:                                              ; preds = %71
  %264 = load %struct.type_hash*, %struct.type_hash** %6, align 8
  %265 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 8
  %267 = call i32 @TYPE_DOMAIN(i32 %266)
  %268 = load %struct.type_hash*, %struct.type_hash** %7, align 8
  %269 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 8
  %271 = call i32 @TYPE_DOMAIN(i32 %270)
  %272 = icmp eq i32 %267, %271
  %273 = zext i1 %272 to i32
  store i32 %273, i32* %3, align 4
  br label %383

274:                                              ; preds = %71, %71, %71
  %275 = load %struct.type_hash*, %struct.type_hash** %6, align 8
  %276 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 8
  %278 = call i32 @TYPE_FIELDS(i32 %277)
  %279 = load %struct.type_hash*, %struct.type_hash** %7, align 8
  %280 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 8
  %282 = call i32 @TYPE_FIELDS(i32 %281)
  %283 = icmp eq i32 %278, %282
  br i1 %283, label %325, label %284

284:                                              ; preds = %274
  %285 = load %struct.type_hash*, %struct.type_hash** %6, align 8
  %286 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 8
  %288 = call i32 @TYPE_FIELDS(i32 %287)
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %323

290:                                              ; preds = %284
  %291 = load %struct.type_hash*, %struct.type_hash** %6, align 8
  %292 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 8
  %294 = call i32 @TYPE_FIELDS(i32 %293)
  %295 = call i32 @TREE_CODE(i32 %294)
  %296 = load i32, i32* @TREE_LIST, align 4
  %297 = icmp eq i32 %295, %296
  br i1 %297, label %298, label %323

298:                                              ; preds = %290
  %299 = load %struct.type_hash*, %struct.type_hash** %7, align 8
  %300 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 8
  %302 = call i32 @TYPE_FIELDS(i32 %301)
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %323

304:                                              ; preds = %298
  %305 = load %struct.type_hash*, %struct.type_hash** %7, align 8
  %306 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 8
  %308 = call i32 @TYPE_FIELDS(i32 %307)
  %309 = call i32 @TREE_CODE(i32 %308)
  %310 = load i32, i32* @TREE_LIST, align 4
  %311 = icmp eq i32 %309, %310
  br i1 %311, label %312, label %323

312:                                              ; preds = %304
  %313 = load %struct.type_hash*, %struct.type_hash** %6, align 8
  %314 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 8
  %316 = call i32 @TYPE_FIELDS(i32 %315)
  %317 = load %struct.type_hash*, %struct.type_hash** %7, align 8
  %318 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 8
  %320 = call i32 @TYPE_FIELDS(i32 %319)
  %321 = call i32 @type_list_equal(i32 %316, i32 %320)
  %322 = icmp ne i32 %321, 0
  br label %323

323:                                              ; preds = %312, %304, %298, %290, %284
  %324 = phi i1 [ false, %304 ], [ false, %298 ], [ false, %290 ], [ false, %284 ], [ %322, %312 ]
  br label %325

325:                                              ; preds = %323, %274
  %326 = phi i1 [ true, %274 ], [ %324, %323 ]
  %327 = zext i1 %326 to i32
  store i32 %327, i32* %3, align 4
  br label %383

328:                                              ; preds = %71
  %329 = load %struct.type_hash*, %struct.type_hash** %6, align 8
  %330 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %329, i32 0, i32 1
  %331 = load i32, i32* %330, align 8
  %332 = call i32 @TYPE_ARG_TYPES(i32 %331)
  %333 = load %struct.type_hash*, %struct.type_hash** %7, align 8
  %334 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 8
  %336 = call i32 @TYPE_ARG_TYPES(i32 %335)
  %337 = icmp eq i32 %332, %336
  br i1 %337, label %379, label %338

338:                                              ; preds = %328
  %339 = load %struct.type_hash*, %struct.type_hash** %6, align 8
  %340 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %339, i32 0, i32 1
  %341 = load i32, i32* %340, align 8
  %342 = call i32 @TYPE_ARG_TYPES(i32 %341)
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %377

344:                                              ; preds = %338
  %345 = load %struct.type_hash*, %struct.type_hash** %6, align 8
  %346 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %345, i32 0, i32 1
  %347 = load i32, i32* %346, align 8
  %348 = call i32 @TYPE_ARG_TYPES(i32 %347)
  %349 = call i32 @TREE_CODE(i32 %348)
  %350 = load i32, i32* @TREE_LIST, align 4
  %351 = icmp eq i32 %349, %350
  br i1 %351, label %352, label %377

352:                                              ; preds = %344
  %353 = load %struct.type_hash*, %struct.type_hash** %7, align 8
  %354 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %353, i32 0, i32 1
  %355 = load i32, i32* %354, align 8
  %356 = call i32 @TYPE_ARG_TYPES(i32 %355)
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %377

358:                                              ; preds = %352
  %359 = load %struct.type_hash*, %struct.type_hash** %7, align 8
  %360 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %359, i32 0, i32 1
  %361 = load i32, i32* %360, align 8
  %362 = call i32 @TYPE_ARG_TYPES(i32 %361)
  %363 = call i32 @TREE_CODE(i32 %362)
  %364 = load i32, i32* @TREE_LIST, align 4
  %365 = icmp eq i32 %363, %364
  br i1 %365, label %366, label %377

366:                                              ; preds = %358
  %367 = load %struct.type_hash*, %struct.type_hash** %6, align 8
  %368 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %367, i32 0, i32 1
  %369 = load i32, i32* %368, align 8
  %370 = call i32 @TYPE_ARG_TYPES(i32 %369)
  %371 = load %struct.type_hash*, %struct.type_hash** %7, align 8
  %372 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %371, i32 0, i32 1
  %373 = load i32, i32* %372, align 8
  %374 = call i32 @TYPE_ARG_TYPES(i32 %373)
  %375 = call i32 @type_list_equal(i32 %370, i32 %374)
  %376 = icmp ne i32 %375, 0
  br label %377

377:                                              ; preds = %366, %358, %352, %344, %338
  %378 = phi i1 [ false, %358 ], [ false, %352 ], [ false, %344 ], [ false, %338 ], [ %376, %366 ]
  br label %379

379:                                              ; preds = %377, %328
  %380 = phi i1 [ true, %328 ], [ %378, %377 ]
  %381 = zext i1 %380 to i32
  store i32 %381, i32* %3, align 4
  br label %383

382:                                              ; preds = %71
  store i32 0, i32* %3, align 4
  br label %383

383:                                              ; preds = %382, %379, %325, %263, %260, %186, %183, %137, %77, %76, %70
  %384 = load i32, i32* %3, align 4
  ret i32 %384
}

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i64 @TREE_TYPE(i32) #1

declare dso_local i32 @attribute_list_equal(i32, i32) #1

declare dso_local i32 @TYPE_ATTRIBUTES(i32) #1

declare dso_local i64 @TYPE_ALIGN(i32) #1

declare dso_local i64 @TYPE_MODE(i32) #1

declare dso_local i32 @TYPE_VECTOR_SUBPARTS(i32) #1

declare dso_local i32 @TYPE_VALUES(i32) #1

declare dso_local i32 @type_list_equal(i32, i32) #1

declare dso_local i32 @TYPE_MAX_VALUE(i32) #1

declare dso_local i32 @tree_int_cst_equal(i32, i32) #1

declare dso_local i32 @TYPE_MIN_VALUE(i32) #1

declare dso_local i32 @TYPE_OFFSET_BASETYPE(i32) #1

declare dso_local i32 @TYPE_METHOD_BASETYPE(i32) #1

declare dso_local i32 @TYPE_ARG_TYPES(i32) #1

declare dso_local i32 @TYPE_DOMAIN(i32) #1

declare dso_local i32 @TYPE_FIELDS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
