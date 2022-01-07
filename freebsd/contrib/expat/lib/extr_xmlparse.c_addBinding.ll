; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/expat/lib/extr_xmlparse.c_addBinding.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/expat/lib/extr_xmlparse.c_addBinding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i8, i32, i32 (i32, i64*, i8*)*, %struct.TYPE_12__*, %struct.TYPE_15__* }
%struct.TYPE_12__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64*, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i8*, i32, %struct.TYPE_15__*, %struct.TYPE_15__*, i32*, %struct.TYPE_14__* }

@addBinding.xmlNamespace = internal constant [37 x i8] c"\8A\82\82\85\94\90\90\81\81\81\91\81\97\91\86\84\8B\90\8F\92\93\90\99\95\95\96\90\87\8E\88\8C\83\85\8E\8D\8C\00", align 16
@addBinding.xmlLen = internal constant i32 36, align 4
@addBinding.xmlnsNamespace = internal constant [30 x i8] c"\8A\82\82\85\94\90\90\81\81\81\91\81\97\91\86\84\8B\90\98\9A\9A\9A\90\80\88\89\87\83\90\00", align 16
@addBinding.xmlnsLen = internal constant i32 29, align 4
@XML_FALSE = common dso_local global i32 0, align 4
@XML_TRUE = common dso_local global i32 0, align 4
@XML_ERROR_UNDECLARING_PREFIX = common dso_local global i32 0, align 4
@XML_ERROR_RESERVED_PREFIX_XMLNS = common dso_local global i32 0, align 4
@XML_ERROR_RESERVED_PREFIX_XML = common dso_local global i32 0, align 4
@XML_ERROR_RESERVED_NAMESPACE_URI = common dso_local global i32 0, align 4
@EXPAND_SPARE = common dso_local global i32 0, align 4
@XML_ERROR_NO_MEMORY = common dso_local global i32 0, align 4
@XML_ERROR_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_14__*, i32*, i8*, %struct.TYPE_15__**)* @addBinding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addBinding(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1, i32* %2, i8* %3, %struct.TYPE_15__** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_15__**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_15__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %7, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.TYPE_15__** %4, %struct.TYPE_15__*** %11, align 8
  %18 = load i32, i32* @XML_FALSE, align 4
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* @XML_TRUE, align 4
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* @XML_TRUE, align 4
  store i32 %20, i32* %14, align 4
  %21 = load i8*, i8** %10, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = call signext i8 @XML_T(i8 signext 0)
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %5
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = icmp ne i64* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @XML_ERROR_UNDECLARING_PREFIX, align 4
  store i32 %33, i32* %6, align 4
  br label %383

34:                                               ; preds = %27, %5
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = icmp ne i64* %37, null
  br i1 %38, label %39, label %107

39:                                               ; preds = %34
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 0
  %44 = load i64, i64* %43, align 8
  %45 = call signext i8 @XML_T(i8 signext -128)
  %46 = sext i8 %45 to i64
  %47 = icmp eq i64 %44, %46
  br i1 %47, label %48, label %107

48:                                               ; preds = %39
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 1
  %53 = load i64, i64* %52, align 8
  %54 = call signext i8 @XML_T(i8 signext -120)
  %55 = sext i8 %54 to i64
  %56 = icmp eq i64 %53, %55
  br i1 %56, label %57, label %107

57:                                               ; preds = %48
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 2
  %62 = load i64, i64* %61, align 8
  %63 = call signext i8 @XML_T(i8 signext -119)
  %64 = sext i8 %63 to i64
  %65 = icmp eq i64 %62, %64
  br i1 %65, label %66, label %107

66:                                               ; preds = %57
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = load i64*, i64** %68, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 3
  %71 = load i64, i64* %70, align 8
  %72 = call signext i8 @XML_T(i8 signext -121)
  %73 = sext i8 %72 to i64
  %74 = icmp eq i64 %71, %73
  br i1 %74, label %75, label %95

75:                                               ; preds = %66
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = load i64*, i64** %77, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 4
  %80 = load i64, i64* %79, align 8
  %81 = call signext i8 @XML_T(i8 signext -125)
  %82 = sext i8 %81 to i64
  %83 = icmp eq i64 %80, %82
  br i1 %83, label %84, label %95

84:                                               ; preds = %75
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = load i64*, i64** %86, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 5
  %89 = load i64, i64* %88, align 8
  %90 = call signext i8 @XML_T(i8 signext 0)
  %91 = sext i8 %90 to i64
  %92 = icmp eq i64 %89, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %84
  %94 = load i32, i32* @XML_ERROR_RESERVED_PREFIX_XMLNS, align 4
  store i32 %94, i32* %6, align 4
  br label %383

95:                                               ; preds = %84, %75, %66
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = load i64*, i64** %97, align 8
  %99 = getelementptr inbounds i64, i64* %98, i64 3
  %100 = load i64, i64* %99, align 8
  %101 = call signext i8 @XML_T(i8 signext 0)
  %102 = sext i8 %101 to i64
  %103 = icmp eq i64 %100, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %95
  %105 = load i32, i32* @XML_TRUE, align 4
  store i32 %105, i32* %12, align 4
  br label %106

106:                                              ; preds = %104, %95
  br label %107

107:                                              ; preds = %106, %57, %48, %39, %34
  store i32 0, i32* %16, align 4
  br label %108

108:                                              ; preds = %161, %107
  %109 = load i8*, i8** %10, align 8
  %110 = load i32, i32* %16, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %109, i64 %111
  %113 = load i8, i8* %112, align 1
  %114 = icmp ne i8 %113, 0
  br i1 %114, label %115, label %164

115:                                              ; preds = %108
  %116 = load i32, i32* %13, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %136

118:                                              ; preds = %115
  %119 = load i32, i32* %16, align 4
  %120 = icmp sgt i32 %119, 36
  br i1 %120, label %134, label %121

121:                                              ; preds = %118
  %122 = load i8*, i8** %10, align 8
  %123 = load i32, i32* %16, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %122, i64 %124
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = load i32, i32* %16, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [37 x i8], [37 x i8]* @addBinding.xmlNamespace, i64 0, i64 %129
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp ne i32 %127, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %121, %118
  %135 = load i32, i32* @XML_FALSE, align 4
  store i32 %135, i32* %13, align 4
  br label %136

136:                                              ; preds = %134, %121, %115
  %137 = load i32, i32* %12, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %160, label %139

139:                                              ; preds = %136
  %140 = load i32, i32* %14, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %160

142:                                              ; preds = %139
  %143 = load i32, i32* %16, align 4
  %144 = icmp sgt i32 %143, 29
  br i1 %144, label %158, label %145

145:                                              ; preds = %142
  %146 = load i8*, i8** %10, align 8
  %147 = load i32, i32* %16, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8, i8* %146, i64 %148
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = load i32, i32* %16, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [30 x i8], [30 x i8]* @addBinding.xmlnsNamespace, i64 0, i64 %153
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i32
  %157 = icmp ne i32 %151, %156
  br i1 %157, label %158, label %160

158:                                              ; preds = %145, %142
  %159 = load i32, i32* @XML_FALSE, align 4
  store i32 %159, i32* %14, align 4
  br label %160

160:                                              ; preds = %158, %145, %139, %136
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %16, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %16, align 4
  br label %108

164:                                              ; preds = %108
  %165 = load i32, i32* %13, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %164
  %168 = load i32, i32* %16, align 4
  %169 = icmp eq i32 %168, 36
  br label %170

170:                                              ; preds = %167, %164
  %171 = phi i1 [ false, %164 ], [ %169, %167 ]
  %172 = zext i1 %171 to i32
  store i32 %172, i32* %13, align 4
  %173 = load i32, i32* %14, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %170
  %176 = load i32, i32* %16, align 4
  %177 = icmp eq i32 %176, 29
  br label %178

178:                                              ; preds = %175, %170
  %179 = phi i1 [ false, %170 ], [ %177, %175 ]
  %180 = zext i1 %179 to i32
  store i32 %180, i32* %14, align 4
  %181 = load i32, i32* %12, align 4
  %182 = load i32, i32* %13, align 4
  %183 = icmp ne i32 %181, %182
  br i1 %183, label %184, label %193

184:                                              ; preds = %178
  %185 = load i32, i32* %12, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %184
  %188 = load i32, i32* @XML_ERROR_RESERVED_PREFIX_XML, align 4
  br label %191

189:                                              ; preds = %184
  %190 = load i32, i32* @XML_ERROR_RESERVED_NAMESPACE_URI, align 4
  br label %191

191:                                              ; preds = %189, %187
  %192 = phi i32 [ %188, %187 ], [ %190, %189 ]
  store i32 %192, i32* %6, align 4
  br label %383

193:                                              ; preds = %178
  %194 = load i32, i32* %14, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %193
  %197 = load i32, i32* @XML_ERROR_RESERVED_NAMESPACE_URI, align 4
  store i32 %197, i32* %6, align 4
  br label %383

198:                                              ; preds = %193
  %199 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 0
  %201 = load i8, i8* %200, align 8
  %202 = icmp ne i8 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %198
  %204 = load i32, i32* %16, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %16, align 4
  br label %206

206:                                              ; preds = %203, %198
  %207 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %207, i32 0, i32 4
  %209 = load %struct.TYPE_15__*, %struct.TYPE_15__** %208, align 8
  %210 = icmp ne %struct.TYPE_15__* %209, null
  br i1 %210, label %211, label %252

211:                                              ; preds = %206
  %212 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i32 0, i32 4
  %214 = load %struct.TYPE_15__*, %struct.TYPE_15__** %213, align 8
  store %struct.TYPE_15__* %214, %struct.TYPE_15__** %15, align 8
  %215 = load i32, i32* %16, align 4
  %216 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %217 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = icmp sgt i32 %215, %218
  br i1 %219, label %220, label %246

220:                                              ; preds = %211
  %221 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %222 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i32 0, i32 1
  %224 = load i8*, i8** %223, align 8
  %225 = load i32, i32* %16, align 4
  %226 = load i32, i32* @EXPAND_SPARE, align 4
  %227 = add nsw i32 %225, %226
  %228 = sext i32 %227 to i64
  %229 = mul i64 1, %228
  %230 = trunc i64 %229 to i32
  %231 = call i64 @REALLOC(%struct.TYPE_13__* %221, i8* %224, i32 %230)
  %232 = inttoptr i64 %231 to i8*
  store i8* %232, i8** %17, align 8
  %233 = load i8*, i8** %17, align 8
  %234 = icmp eq i8* %233, null
  br i1 %234, label %235, label %237

235:                                              ; preds = %220
  %236 = load i32, i32* @XML_ERROR_NO_MEMORY, align 4
  store i32 %236, i32* %6, align 4
  br label %383

237:                                              ; preds = %220
  %238 = load i8*, i8** %17, align 8
  %239 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %240 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %239, i32 0, i32 1
  store i8* %238, i8** %240, align 8
  %241 = load i32, i32* %16, align 4
  %242 = load i32, i32* @EXPAND_SPARE, align 4
  %243 = add nsw i32 %241, %242
  %244 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %245 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %244, i32 0, i32 0
  store i32 %243, i32* %245, align 8
  br label %246

246:                                              ; preds = %237, %211
  %247 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %248 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %247, i32 0, i32 3
  %249 = load %struct.TYPE_15__*, %struct.TYPE_15__** %248, align 8
  %250 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %251 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %250, i32 0, i32 4
  store %struct.TYPE_15__* %249, %struct.TYPE_15__** %251, align 8
  br label %287

252:                                              ; preds = %206
  %253 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %254 = call i64 @MALLOC(%struct.TYPE_13__* %253, i32 56)
  %255 = inttoptr i64 %254 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %255, %struct.TYPE_15__** %15, align 8
  %256 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %257 = icmp ne %struct.TYPE_15__* %256, null
  br i1 %257, label %260, label %258

258:                                              ; preds = %252
  %259 = load i32, i32* @XML_ERROR_NO_MEMORY, align 4
  store i32 %259, i32* %6, align 4
  br label %383

260:                                              ; preds = %252
  %261 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %262 = load i32, i32* %16, align 4
  %263 = load i32, i32* @EXPAND_SPARE, align 4
  %264 = add nsw i32 %262, %263
  %265 = sext i32 %264 to i64
  %266 = mul i64 1, %265
  %267 = trunc i64 %266 to i32
  %268 = call i64 @MALLOC(%struct.TYPE_13__* %261, i32 %267)
  %269 = inttoptr i64 %268 to i8*
  %270 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %271 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %270, i32 0, i32 1
  store i8* %269, i8** %271, align 8
  %272 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %273 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %272, i32 0, i32 1
  %274 = load i8*, i8** %273, align 8
  %275 = icmp ne i8* %274, null
  br i1 %275, label %281, label %276

276:                                              ; preds = %260
  %277 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %278 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %279 = call i32 @FREE(%struct.TYPE_13__* %277, %struct.TYPE_15__* %278)
  %280 = load i32, i32* @XML_ERROR_NO_MEMORY, align 4
  store i32 %280, i32* %6, align 4
  br label %383

281:                                              ; preds = %260
  %282 = load i32, i32* %16, align 4
  %283 = load i32, i32* @EXPAND_SPARE, align 4
  %284 = add nsw i32 %282, %283
  %285 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %286 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %285, i32 0, i32 0
  store i32 %284, i32* %286, align 8
  br label %287

287:                                              ; preds = %281, %246
  %288 = load i32, i32* %16, align 4
  %289 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %290 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %289, i32 0, i32 2
  store i32 %288, i32* %290, align 8
  %291 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %292 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %291, i32 0, i32 1
  %293 = load i8*, i8** %292, align 8
  %294 = load i8*, i8** %10, align 8
  %295 = load i32, i32* %16, align 4
  %296 = sext i32 %295 to i64
  %297 = mul i64 %296, 1
  %298 = trunc i64 %297 to i32
  %299 = call i32 @memcpy(i8* %293, i8* %294, i32 %298)
  %300 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %301 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %300, i32 0, i32 0
  %302 = load i8, i8* %301, align 8
  %303 = icmp ne i8 %302, 0
  br i1 %303, label %304, label %315

304:                                              ; preds = %287
  %305 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %306 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %305, i32 0, i32 0
  %307 = load i8, i8* %306, align 8
  %308 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %309 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %308, i32 0, i32 1
  %310 = load i8*, i8** %309, align 8
  %311 = load i32, i32* %16, align 4
  %312 = sub nsw i32 %311, 1
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i8, i8* %310, i64 %313
  store i8 %307, i8* %314, align 1
  br label %315

315:                                              ; preds = %304, %287
  %316 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %317 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %318 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %317, i32 0, i32 6
  store %struct.TYPE_14__* %316, %struct.TYPE_14__** %318, align 8
  %319 = load i32*, i32** %9, align 8
  %320 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %321 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %320, i32 0, i32 5
  store i32* %319, i32** %321, align 8
  %322 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %323 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %322, i32 0, i32 1
  %324 = load %struct.TYPE_15__*, %struct.TYPE_15__** %323, align 8
  %325 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %326 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %325, i32 0, i32 4
  store %struct.TYPE_15__* %324, %struct.TYPE_15__** %326, align 8
  %327 = load i8*, i8** %10, align 8
  %328 = load i8, i8* %327, align 1
  %329 = sext i8 %328 to i32
  %330 = call signext i8 @XML_T(i8 signext 0)
  %331 = sext i8 %330 to i32
  %332 = icmp eq i32 %329, %331
  br i1 %332, label %333, label %343

333:                                              ; preds = %315
  %334 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %335 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %336 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %335, i32 0, i32 3
  %337 = load %struct.TYPE_12__*, %struct.TYPE_12__** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %337, i32 0, i32 0
  %339 = icmp eq %struct.TYPE_14__* %334, %338
  br i1 %339, label %340, label %343

340:                                              ; preds = %333
  %341 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %342 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %341, i32 0, i32 1
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %342, align 8
  br label %347

343:                                              ; preds = %333, %315
  %344 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %345 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %346 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %345, i32 0, i32 1
  store %struct.TYPE_15__* %344, %struct.TYPE_15__** %346, align 8
  br label %347

347:                                              ; preds = %343, %340
  %348 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %11, align 8
  %349 = load %struct.TYPE_15__*, %struct.TYPE_15__** %348, align 8
  %350 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %351 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %350, i32 0, i32 3
  store %struct.TYPE_15__* %349, %struct.TYPE_15__** %351, align 8
  %352 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %353 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %11, align 8
  store %struct.TYPE_15__* %352, %struct.TYPE_15__** %353, align 8
  %354 = load i32*, i32** %9, align 8
  %355 = icmp ne i32* %354, null
  br i1 %355, label %356, label %381

356:                                              ; preds = %347
  %357 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %358 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %357, i32 0, i32 2
  %359 = load i32 (i32, i64*, i8*)*, i32 (i32, i64*, i8*)** %358, align 8
  %360 = icmp ne i32 (i32, i64*, i8*)* %359, null
  br i1 %360, label %361, label %381

361:                                              ; preds = %356
  %362 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %363 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %362, i32 0, i32 2
  %364 = load i32 (i32, i64*, i8*)*, i32 (i32, i64*, i8*)** %363, align 8
  %365 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %366 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %365, i32 0, i32 1
  %367 = load i32, i32* %366, align 4
  %368 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %369 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %368, i32 0, i32 0
  %370 = load i64*, i64** %369, align 8
  %371 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %372 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %371, i32 0, i32 1
  %373 = load %struct.TYPE_15__*, %struct.TYPE_15__** %372, align 8
  %374 = icmp ne %struct.TYPE_15__* %373, null
  br i1 %374, label %375, label %377

375:                                              ; preds = %361
  %376 = load i8*, i8** %10, align 8
  br label %378

377:                                              ; preds = %361
  br label %378

378:                                              ; preds = %377, %375
  %379 = phi i8* [ %376, %375 ], [ null, %377 ]
  %380 = call i32 %364(i32 %367, i64* %370, i8* %379)
  br label %381

381:                                              ; preds = %378, %356, %347
  %382 = load i32, i32* @XML_ERROR_NONE, align 4
  store i32 %382, i32* %6, align 4
  br label %383

383:                                              ; preds = %381, %276, %258, %235, %196, %191, %93, %32
  %384 = load i32, i32* %6, align 4
  ret i32 %384
}

declare dso_local signext i8 @XML_T(i8 signext) #1

declare dso_local i64 @REALLOC(%struct.TYPE_13__*, i8*, i32) #1

declare dso_local i64 @MALLOC(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @FREE(%struct.TYPE_13__*, %struct.TYPE_15__*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
