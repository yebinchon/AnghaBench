; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ecoff.c__bfd_ecoff_write_armap.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ecoff.c__bfd_ecoff_write_armap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_15__*, %struct.TYPE_15__*, i32 }
%struct.orl = type { i32, i64*, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_15__* }
%struct.ar_hdr = type { i8*, i8*, i32, i32*, i32*, i32, i8** }
%struct.stat = type { i64 }
%struct.TYPE_16__ = type { i32 }

@SARMAG = common dso_local global i32 0, align 4
@ARMAP_MARKER = common dso_local global i8* null, align 8
@ARMAP_HEADER_MARKER_INDEX = common dso_local global i64 0, align 8
@ARMAP_BIG_ENDIAN = common dso_local global i8* null, align 8
@ARMAP_LITTLE_ENDIAN = common dso_local global i8* null, align 8
@ARMAP_HEADER_ENDIAN_INDEX = common dso_local global i64 0, align 8
@ARMAP_OBJECT_MARKER_INDEX = common dso_local global i64 0, align 8
@ARMAP_OBJECT_ENDIAN_INDEX = common dso_local global i64 0, align 8
@ARMAP_END_INDEX = common dso_local global i32 0, align 4
@ARMAP_END = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%-10d\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bfd_ecoff_write_armap(%struct.TYPE_15__* %0, i32 %1, %struct.orl* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.orl*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.ar_hdr, align 8
  %20 = alloca %struct.stat, align 8
  %21 = alloca i32, align 4
  %22 = alloca [4 x i32], align 16
  %23 = alloca i32*, align 8
  %24 = alloca %struct.TYPE_15__*, align 8
  %25 = alloca %struct.TYPE_15__*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.orl* %2, %struct.orl** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  br label %30

30:                                               ; preds = %37, %5
  %31 = load i32, i32* %13, align 4
  %32 = shl i32 1, %31
  %33 = load i32, i32* %10, align 4
  %34 = mul i32 2, %33
  %35 = icmp ule i32 %32, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %13, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %13, align 4
  br label %30

40:                                               ; preds = %30
  %41 = load i32, i32* %13, align 4
  %42 = shl i32 1, %41
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = mul i32 %43, 8
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %11, align 4
  %46 = srem i32 %45, 2
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %15, align 4
  %49 = add nsw i32 %47, %48
  store i32 %49, i32* %16, align 4
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %16, align 4
  %52 = add i32 %50, %51
  %53 = add i32 %52, 8
  store i32 %53, i32* %17, align 4
  %54 = load i32, i32* @SARMAG, align 4
  %55 = sext i32 %54 to i64
  %56 = add i64 %55, 56
  %57 = load i32, i32* %17, align 4
  %58 = zext i32 %57 to i64
  %59 = add i64 %56, %58
  %60 = load i32, i32* %8, align 4
  %61 = zext i32 %60 to i64
  %62 = add i64 %59, %61
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %18, align 4
  %64 = bitcast %struct.ar_hdr* %19 to i8*
  %65 = call i32 @memset(i8* %64, i32 0, i32 56)
  %66 = getelementptr inbounds %struct.ar_hdr, %struct.ar_hdr* %19, i32 0, i32 6
  %67 = load i8**, i8*** %66, align 8
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %69 = call %struct.TYPE_16__* @ecoff_backend(%struct.TYPE_15__* %68)
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @strcpy(i8** %67, i32 %71)
  %73 = load i8*, i8** @ARMAP_MARKER, align 8
  %74 = getelementptr inbounds %struct.ar_hdr, %struct.ar_hdr* %19, i32 0, i32 6
  %75 = load i8**, i8*** %74, align 8
  %76 = load i64, i64* @ARMAP_HEADER_MARKER_INDEX, align 8
  %77 = getelementptr inbounds i8*, i8** %75, i64 %76
  store i8* %73, i8** %77, align 8
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %79 = call i64 @bfd_header_big_endian(%struct.TYPE_15__* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %40
  %82 = load i8*, i8** @ARMAP_BIG_ENDIAN, align 8
  br label %85

83:                                               ; preds = %40
  %84 = load i8*, i8** @ARMAP_LITTLE_ENDIAN, align 8
  br label %85

85:                                               ; preds = %83, %81
  %86 = phi i8* [ %82, %81 ], [ %84, %83 ]
  %87 = getelementptr inbounds %struct.ar_hdr, %struct.ar_hdr* %19, i32 0, i32 6
  %88 = load i8**, i8*** %87, align 8
  %89 = load i64, i64* @ARMAP_HEADER_ENDIAN_INDEX, align 8
  %90 = getelementptr inbounds i8*, i8** %88, i64 %89
  store i8* %86, i8** %90, align 8
  %91 = load i8*, i8** @ARMAP_MARKER, align 8
  %92 = getelementptr inbounds %struct.ar_hdr, %struct.ar_hdr* %19, i32 0, i32 6
  %93 = load i8**, i8*** %92, align 8
  %94 = load i64, i64* @ARMAP_OBJECT_MARKER_INDEX, align 8
  %95 = getelementptr inbounds i8*, i8** %93, i64 %94
  store i8* %91, i8** %95, align 8
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %97 = call i64 @bfd_big_endian(%struct.TYPE_15__* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %85
  %100 = load i8*, i8** @ARMAP_BIG_ENDIAN, align 8
  br label %103

101:                                              ; preds = %85
  %102 = load i8*, i8** @ARMAP_LITTLE_ENDIAN, align 8
  br label %103

103:                                              ; preds = %101, %99
  %104 = phi i8* [ %100, %99 ], [ %102, %101 ]
  %105 = getelementptr inbounds %struct.ar_hdr, %struct.ar_hdr* %19, i32 0, i32 6
  %106 = load i8**, i8*** %105, align 8
  %107 = load i64, i64* @ARMAP_OBJECT_ENDIAN_INDEX, align 8
  %108 = getelementptr inbounds i8*, i8** %106, i64 %107
  store i8* %104, i8** %108, align 8
  %109 = getelementptr inbounds %struct.ar_hdr, %struct.ar_hdr* %19, i32 0, i32 6
  %110 = load i8**, i8*** %109, align 8
  %111 = load i32, i32* @ARMAP_END_INDEX, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8*, i8** %110, i64 %112
  %114 = load i32, i32* @ARMAP_END, align 4
  %115 = call i32 @memcpy(i8** %113, i32 %114, i32 3)
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @stat(i32 %118, %struct.stat* %20)
  %120 = getelementptr inbounds %struct.ar_hdr, %struct.ar_hdr* %19, i32 0, i32 5
  %121 = load i32, i32* %120, align 8
  %122 = getelementptr inbounds %struct.stat, %struct.stat* %20, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = add nsw i64 %123, 60
  %125 = trunc i64 %124 to i32
  %126 = call i32 @sprintf(i32 %121, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %125)
  %127 = getelementptr inbounds %struct.ar_hdr, %struct.ar_hdr* %19, i32 0, i32 4
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 0
  store i32 48, i32* %129, align 4
  %130 = getelementptr inbounds %struct.ar_hdr, %struct.ar_hdr* %19, i32 0, i32 3
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  store i32 48, i32* %132, align 4
  %133 = getelementptr inbounds %struct.ar_hdr, %struct.ar_hdr* %19, i32 0, i32 0
  %134 = load i8*, i8** %133, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 0
  store i8 54, i8* %135, align 1
  %136 = getelementptr inbounds %struct.ar_hdr, %struct.ar_hdr* %19, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 1
  store i8 52, i8* %138, align 1
  %139 = getelementptr inbounds %struct.ar_hdr, %struct.ar_hdr* %19, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 2
  store i8 52, i8* %141, align 1
  %142 = getelementptr inbounds %struct.ar_hdr, %struct.ar_hdr* %19, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* %17, align 4
  %145 = call i32 @sprintf(i32 %143, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %144)
  %146 = getelementptr inbounds %struct.ar_hdr, %struct.ar_hdr* %19, i32 0, i32 1
  %147 = load i8*, i8** %146, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 0
  store i8 96, i8* %148, align 1
  %149 = getelementptr inbounds %struct.ar_hdr, %struct.ar_hdr* %19, i32 0, i32 1
  %150 = load i8*, i8** %149, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 1
  store i8 10, i8* %151, align 1
  store i32 0, i32* %21, align 4
  br label %152

152:                                              ; preds = %170, %103
  %153 = load i32, i32* %21, align 4
  %154 = zext i32 %153 to i64
  %155 = icmp ult i64 %154, 56
  br i1 %155, label %156, label %173

156:                                              ; preds = %152
  %157 = bitcast %struct.ar_hdr* %19 to i8*
  %158 = load i32, i32* %21, align 4
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds i8, i8* %157, i64 %159
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %156
  %165 = bitcast %struct.ar_hdr* %19 to i8*
  %166 = load i32, i32* %21, align 4
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds i8, i8* %165, i64 %167
  store i8 32, i8* %168, align 1
  br label %169

169:                                              ; preds = %164, %156
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %21, align 4
  %172 = add i32 %171, 1
  store i32 %172, i32* %21, align 4
  br label %152

173:                                              ; preds = %152
  %174 = bitcast %struct.ar_hdr* %19 to i8*
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %176 = call i32 @bfd_bwrite(i8* %174, i32 56, %struct.TYPE_15__* %175)
  %177 = sext i32 %176 to i64
  %178 = icmp ne i64 %177, 56
  br i1 %178, label %179, label %181

179:                                              ; preds = %173
  %180 = load i32, i32* @FALSE, align 4
  store i32 %180, i32* %6, align 4
  br label %402

181:                                              ; preds = %173
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %183 = load i32, i32* %12, align 4
  %184 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i64 0, i64 0
  %185 = call i32 @H_PUT_32(%struct.TYPE_15__* %182, i32 %183, i32* %184)
  %186 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i64 0, i64 0
  %187 = bitcast i32* %186 to i8*
  %188 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %189 = call i32 @bfd_bwrite(i8* %187, i32 4, %struct.TYPE_15__* %188)
  %190 = icmp ne i32 %189, 4
  br i1 %190, label %191, label %193

191:                                              ; preds = %181
  %192 = load i32, i32* @FALSE, align 4
  store i32 %192, i32* %6, align 4
  br label %402

193:                                              ; preds = %181
  %194 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %195 = load i32, i32* %14, align 4
  %196 = call i32* @bfd_zalloc(%struct.TYPE_15__* %194, i32 %195)
  store i32* %196, i32** %23, align 8
  %197 = load i32*, i32** %23, align 8
  %198 = icmp ne i32* %197, null
  br i1 %198, label %201, label %199

199:                                              ; preds = %193
  %200 = load i32, i32* @FALSE, align 4
  store i32 %200, i32* %6, align 4
  br label %402

201:                                              ; preds = %193
  %202 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %202, i32 0, i32 1
  %204 = load %struct.TYPE_15__*, %struct.TYPE_15__** %203, align 8
  store %struct.TYPE_15__* %204, %struct.TYPE_15__** %24, align 8
  %205 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  store %struct.TYPE_15__* %205, %struct.TYPE_15__** %25, align 8
  store i32 0, i32* %21, align 4
  br label %206

206:                                              ; preds = %328, %201
  %207 = load i32, i32* %21, align 4
  %208 = load i32, i32* %10, align 4
  %209 = icmp ult i32 %207, %208
  br i1 %209, label %210, label %331

210:                                              ; preds = %206
  store i32 0, i32* %27, align 4
  %211 = load %struct.orl*, %struct.orl** %9, align 8
  %212 = load i32, i32* %21, align 4
  %213 = zext i32 %212 to i64
  %214 = getelementptr inbounds %struct.orl, %struct.orl* %211, i64 %213
  %215 = getelementptr inbounds %struct.orl, %struct.orl* %214, i32 0, i32 2
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %215, i32 0, i32 0
  %217 = load %struct.TYPE_15__*, %struct.TYPE_15__** %216, align 8
  %218 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  %219 = icmp ne %struct.TYPE_15__* %217, %218
  br i1 %219, label %220, label %247

220:                                              ; preds = %210
  br label %221

221:                                              ; preds = %236, %220
  %222 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %223 = call i64 @arelt_size(%struct.TYPE_15__* %222)
  %224 = add i64 %223, 56
  %225 = load i32, i32* %18, align 4
  %226 = sext i32 %225 to i64
  %227 = add i64 %226, %224
  %228 = trunc i64 %227 to i32
  store i32 %228, i32* %18, align 4
  %229 = load i32, i32* %18, align 4
  %230 = srem i32 %229, 2
  %231 = load i32, i32* %18, align 4
  %232 = add nsw i32 %231, %230
  store i32 %232, i32* %18, align 4
  %233 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %234 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %233, i32 0, i32 0
  %235 = load %struct.TYPE_15__*, %struct.TYPE_15__** %234, align 8
  store %struct.TYPE_15__* %235, %struct.TYPE_15__** %24, align 8
  br label %236

236:                                              ; preds = %221
  %237 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %238 = load %struct.orl*, %struct.orl** %9, align 8
  %239 = load i32, i32* %21, align 4
  %240 = zext i32 %239 to i64
  %241 = getelementptr inbounds %struct.orl, %struct.orl* %238, i64 %240
  %242 = getelementptr inbounds %struct.orl, %struct.orl* %241, i32 0, i32 2
  %243 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %242, i32 0, i32 0
  %244 = load %struct.TYPE_15__*, %struct.TYPE_15__** %243, align 8
  %245 = icmp ne %struct.TYPE_15__* %237, %244
  br i1 %245, label %221, label %246

246:                                              ; preds = %236
  br label %247

247:                                              ; preds = %246, %210
  %248 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  store %struct.TYPE_15__* %248, %struct.TYPE_15__** %25, align 8
  %249 = load %struct.orl*, %struct.orl** %9, align 8
  %250 = load i32, i32* %21, align 4
  %251 = zext i32 %250 to i64
  %252 = getelementptr inbounds %struct.orl, %struct.orl* %249, i64 %251
  %253 = getelementptr inbounds %struct.orl, %struct.orl* %252, i32 0, i32 1
  %254 = load i64*, i64** %253, align 8
  %255 = load i64, i64* %254, align 8
  %256 = load i32, i32* %12, align 4
  %257 = load i32, i32* %13, align 4
  %258 = call i32 @ecoff_armap_hash(i64 %255, i32* %27, i32 %256, i32 %257)
  store i32 %258, i32* %26, align 4
  %259 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %260 = load i32*, i32** %23, align 8
  %261 = load i32, i32* %26, align 4
  %262 = mul i32 %261, 8
  %263 = zext i32 %262 to i64
  %264 = getelementptr inbounds i32, i32* %260, i64 %263
  %265 = getelementptr inbounds i32, i32* %264, i64 4
  %266 = call i64 @H_GET_32(%struct.TYPE_15__* %259, i32* %265)
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %305

268:                                              ; preds = %247
  %269 = load i32, i32* %26, align 4
  %270 = load i32, i32* %27, align 4
  %271 = add i32 %269, %270
  %272 = load i32, i32* %12, align 4
  %273 = sub i32 %272, 1
  %274 = and i32 %271, %273
  store i32 %274, i32* %28, align 4
  br label %275

275:                                              ; preds = %291, %268
  %276 = load i32, i32* %28, align 4
  %277 = load i32, i32* %26, align 4
  %278 = icmp ne i32 %276, %277
  br i1 %278, label %279, label %298

279:                                              ; preds = %275
  %280 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %281 = load i32*, i32** %23, align 8
  %282 = load i32, i32* %28, align 4
  %283 = mul i32 %282, 8
  %284 = zext i32 %283 to i64
  %285 = getelementptr inbounds i32, i32* %281, i64 %284
  %286 = getelementptr inbounds i32, i32* %285, i64 4
  %287 = call i64 @H_GET_32(%struct.TYPE_15__* %280, i32* %286)
  %288 = icmp eq i64 %287, 0
  br i1 %288, label %289, label %290

289:                                              ; preds = %279
  br label %298

290:                                              ; preds = %279
  br label %291

291:                                              ; preds = %290
  %292 = load i32, i32* %28, align 4
  %293 = load i32, i32* %27, align 4
  %294 = add i32 %292, %293
  %295 = load i32, i32* %12, align 4
  %296 = sub i32 %295, 1
  %297 = and i32 %294, %296
  store i32 %297, i32* %28, align 4
  br label %275

298:                                              ; preds = %289, %275
  %299 = load i32, i32* %28, align 4
  %300 = load i32, i32* %26, align 4
  %301 = icmp ne i32 %299, %300
  %302 = zext i1 %301 to i32
  %303 = call i32 @BFD_ASSERT(i32 %302)
  %304 = load i32, i32* %28, align 4
  store i32 %304, i32* %26, align 4
  br label %305

305:                                              ; preds = %298, %247
  %306 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %307 = load %struct.orl*, %struct.orl** %9, align 8
  %308 = load i32, i32* %21, align 4
  %309 = zext i32 %308 to i64
  %310 = getelementptr inbounds %struct.orl, %struct.orl* %307, i64 %309
  %311 = getelementptr inbounds %struct.orl, %struct.orl* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = load i32*, i32** %23, align 8
  %314 = load i32, i32* %26, align 4
  %315 = mul i32 %314, 8
  %316 = zext i32 %315 to i64
  %317 = getelementptr inbounds i32, i32* %313, i64 %316
  %318 = call i32 @H_PUT_32(%struct.TYPE_15__* %306, i32 %312, i32* %317)
  %319 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %320 = load i32, i32* %18, align 4
  %321 = load i32*, i32** %23, align 8
  %322 = load i32, i32* %26, align 4
  %323 = mul i32 %322, 8
  %324 = zext i32 %323 to i64
  %325 = getelementptr inbounds i32, i32* %321, i64 %324
  %326 = getelementptr inbounds i32, i32* %325, i64 4
  %327 = call i32 @H_PUT_32(%struct.TYPE_15__* %319, i32 %320, i32* %326)
  br label %328

328:                                              ; preds = %305
  %329 = load i32, i32* %21, align 4
  %330 = add i32 %329, 1
  store i32 %330, i32* %21, align 4
  br label %206

331:                                              ; preds = %206
  %332 = load i32*, i32** %23, align 8
  %333 = bitcast i32* %332 to i8*
  %334 = load i32, i32* %14, align 4
  %335 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %336 = call i32 @bfd_bwrite(i8* %333, i32 %334, %struct.TYPE_15__* %335)
  %337 = load i32, i32* %14, align 4
  %338 = icmp ne i32 %336, %337
  br i1 %338, label %339, label %341

339:                                              ; preds = %331
  %340 = load i32, i32* @FALSE, align 4
  store i32 %340, i32* %6, align 4
  br label %402

341:                                              ; preds = %331
  %342 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %343 = load i32*, i32** %23, align 8
  %344 = call i32 @bfd_release(%struct.TYPE_15__* %342, i32* %343)
  %345 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %346 = load i32, i32* %16, align 4
  %347 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i64 0, i64 0
  %348 = call i32 @H_PUT_32(%struct.TYPE_15__* %345, i32 %346, i32* %347)
  %349 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i64 0, i64 0
  %350 = bitcast i32* %349 to i8*
  %351 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %352 = call i32 @bfd_bwrite(i8* %350, i32 4, %struct.TYPE_15__* %351)
  %353 = icmp ne i32 %352, 4
  br i1 %353, label %354, label %356

354:                                              ; preds = %341
  %355 = load i32, i32* @FALSE, align 4
  store i32 %355, i32* %6, align 4
  br label %402

356:                                              ; preds = %341
  store i32 0, i32* %21, align 4
  br label %357

357:                                              ; preds = %387, %356
  %358 = load i32, i32* %21, align 4
  %359 = load i32, i32* %10, align 4
  %360 = icmp ult i32 %358, %359
  br i1 %360, label %361, label %390

361:                                              ; preds = %357
  %362 = load %struct.orl*, %struct.orl** %9, align 8
  %363 = load i32, i32* %21, align 4
  %364 = zext i32 %363 to i64
  %365 = getelementptr inbounds %struct.orl, %struct.orl* %362, i64 %364
  %366 = getelementptr inbounds %struct.orl, %struct.orl* %365, i32 0, i32 1
  %367 = load i64*, i64** %366, align 8
  %368 = load i64, i64* %367, align 8
  %369 = call i32 @strlen(i64 %368)
  %370 = add i32 %369, 1
  store i32 %370, i32* %29, align 4
  %371 = load %struct.orl*, %struct.orl** %9, align 8
  %372 = load i32, i32* %21, align 4
  %373 = zext i32 %372 to i64
  %374 = getelementptr inbounds %struct.orl, %struct.orl* %371, i64 %373
  %375 = getelementptr inbounds %struct.orl, %struct.orl* %374, i32 0, i32 1
  %376 = load i64*, i64** %375, align 8
  %377 = load i64, i64* %376, align 8
  %378 = inttoptr i64 %377 to i8*
  %379 = load i32, i32* %29, align 4
  %380 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %381 = call i32 @bfd_bwrite(i8* %378, i32 %379, %struct.TYPE_15__* %380)
  %382 = load i32, i32* %29, align 4
  %383 = icmp ne i32 %381, %382
  br i1 %383, label %384, label %386

384:                                              ; preds = %361
  %385 = load i32, i32* @FALSE, align 4
  store i32 %385, i32* %6, align 4
  br label %402

386:                                              ; preds = %361
  br label %387

387:                                              ; preds = %386
  %388 = load i32, i32* %21, align 4
  %389 = add i32 %388, 1
  store i32 %389, i32* %21, align 4
  br label %357

390:                                              ; preds = %357
  %391 = load i32, i32* %15, align 4
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %400

393:                                              ; preds = %390
  %394 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %395 = call i32 @bfd_bwrite(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 1, %struct.TYPE_15__* %394)
  %396 = icmp ne i32 %395, 1
  br i1 %396, label %397, label %399

397:                                              ; preds = %393
  %398 = load i32, i32* @FALSE, align 4
  store i32 %398, i32* %6, align 4
  br label %402

399:                                              ; preds = %393
  br label %400

400:                                              ; preds = %399, %390
  %401 = load i32, i32* @TRUE, align 4
  store i32 %401, i32* %6, align 4
  br label %402

402:                                              ; preds = %400, %397, %384, %354, %339, %199, %191, %179
  %403 = load i32, i32* %6, align 4
  ret i32 %403
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @strcpy(i8**, i32) #1

declare dso_local %struct.TYPE_16__* @ecoff_backend(%struct.TYPE_15__*) #1

declare dso_local i64 @bfd_header_big_endian(%struct.TYPE_15__*) #1

declare dso_local i64 @bfd_big_endian(%struct.TYPE_15__*) #1

declare dso_local i32 @memcpy(i8**, i32, i32) #1

declare dso_local i32 @stat(i32, %struct.stat*) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local i32 @bfd_bwrite(i8*, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @H_PUT_32(%struct.TYPE_15__*, i32, i32*) #1

declare dso_local i32* @bfd_zalloc(%struct.TYPE_15__*, i32) #1

declare dso_local i64 @arelt_size(%struct.TYPE_15__*) #1

declare dso_local i32 @ecoff_armap_hash(i64, i32*, i32, i32) #1

declare dso_local i64 @H_GET_32(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local i32 @bfd_release(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @strlen(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
