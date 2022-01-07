; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/expat/lib/extr_xmltok.c_XmlInitUnknownEncoding.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/expat/lib/extr_xmltok.c_XmlInitUnknownEncoding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.unknown_encoding = type { i32*, i32**, %struct.TYPE_5__, i64, i8* }
%struct.TYPE_5__ = type { i8*, %struct.TYPE_6__, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@latin1_encoding = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@BT_OTHER = common dso_local global i8 0, align 1
@BT_NONXML = common dso_local global i8 0, align 1
@BT_MALFORM = common dso_local global i8 0, align 1
@BT_LEAD2 = common dso_local global i32 0, align 4
@nmstrtPages = common dso_local global i32 0, align 4
@BT_NMSTRT = common dso_local global i8 0, align 1
@namePages = common dso_local global i32 0, align 4
@BT_NAME = common dso_local global i8 0, align 1
@unknown_isName = common dso_local global i8* null, align 8
@unknown_isNmstrt = common dso_local global i8* null, align 8
@unknown_isInvalid = common dso_local global i8* null, align 8
@unknown_toUtf8 = common dso_local global i32 0, align 4
@unknown_toUtf16 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @XmlInitUnknownEncoding(i8* %0, i32* %1, i64 %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.unknown_encoding*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.unknown_encoding*
  store %struct.unknown_encoding* %14, %struct.unknown_encoding** %11, align 8
  store i32 0, i32* %10, align 4
  br label %15

15:                                               ; preds = %27, %4
  %16 = load i32, i32* %10, align 4
  %17 = icmp slt i32 %16, 4
  br i1 %17, label %18, label %30

18:                                               ; preds = %15
  %19 = load i32, i32* %10, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* bitcast (%struct.TYPE_7__* @latin1_encoding to i8*), i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = load i8*, i8** %6, align 8
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  store i8 %22, i8* %26, align 1
  br label %27

27:                                               ; preds = %18
  %28 = load i32, i32* %10, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %10, align 4
  br label %15

30:                                               ; preds = %15
  store i32 0, i32* %10, align 4
  br label %31

31:                                               ; preds = %64, %30
  %32 = load i32, i32* %10, align 4
  %33 = icmp slt i32 %32, 128
  br i1 %33, label %34, label %67

34:                                               ; preds = %31
  %35 = load i8*, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @latin1_encoding, i32 0, i32 0), align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = load i8, i8* @BT_OTHER, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp ne i32 %40, %42
  br i1 %43, label %44, label %63

44:                                               ; preds = %34
  %45 = load i8*, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @latin1_encoding, i32 0, i32 0), align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = load i8, i8* @BT_NONXML, align 1
  %52 = zext i8 %51 to i32
  %53 = icmp ne i32 %50, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %44
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %5, align 8
  br label %404

63:                                               ; preds = %54, %44, %34
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %10, align 4
  br label %31

67:                                               ; preds = %31
  store i32 0, i32* %10, align 4
  br label %68

68:                                               ; preds = %341, %67
  %69 = load i32, i32* %10, align 4
  %70 = icmp slt i32 %69, 256
  br i1 %70, label %71, label %344

71:                                               ; preds = %68
  %72 = load i32*, i32** %7, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = icmp eq i32 %77, -1
  br i1 %78, label %79, label %110

79:                                               ; preds = %71
  %80 = load i8, i8* @BT_MALFORM, align 1
  %81 = load %struct.unknown_encoding*, %struct.unknown_encoding** %11, align 8
  %82 = getelementptr inbounds %struct.unknown_encoding, %struct.unknown_encoding* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  store i8 %80, i8* %87, align 1
  %88 = load %struct.unknown_encoding*, %struct.unknown_encoding** %11, align 8
  %89 = getelementptr inbounds %struct.unknown_encoding, %struct.unknown_encoding* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  store i32 65535, i32* %93, align 4
  %94 = load %struct.unknown_encoding*, %struct.unknown_encoding** %11, align 8
  %95 = getelementptr inbounds %struct.unknown_encoding, %struct.unknown_encoding* %94, i32 0, i32 1
  %96 = load i32**, i32*** %95, align 8
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32*, i32** %96, i64 %98
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  store i32 1, i32* %101, align 4
  %102 = load %struct.unknown_encoding*, %struct.unknown_encoding** %11, align 8
  %103 = getelementptr inbounds %struct.unknown_encoding, %struct.unknown_encoding* %102, i32 0, i32 1
  %104 = load i32**, i32*** %103, align 8
  %105 = load i32, i32* %10, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32*, i32** %104, i64 %106
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  store i32 0, i32* %109, align 4
  br label %340

110:                                              ; preds = %71
  %111 = load i32, i32* %12, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %148

113:                                              ; preds = %110
  %114 = load i32, i32* %12, align 4
  %115 = icmp slt i32 %114, -4
  br i1 %115, label %116, label %117

116:                                              ; preds = %113
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %5, align 8
  br label %404

117:                                              ; preds = %113
  %118 = load i64, i64* %8, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %117
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %5, align 8
  br label %404

121:                                              ; preds = %117
  %122 = load i32, i32* @BT_LEAD2, align 4
  %123 = load i32, i32* %12, align 4
  %124 = add nsw i32 %123, 2
  %125 = sub nsw i32 %122, %124
  %126 = trunc i32 %125 to i8
  %127 = load %struct.unknown_encoding*, %struct.unknown_encoding** %11, align 8
  %128 = getelementptr inbounds %struct.unknown_encoding, %struct.unknown_encoding* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = load i32, i32* %10, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %130, i64 %132
  store i8 %126, i8* %133, align 1
  %134 = load %struct.unknown_encoding*, %struct.unknown_encoding** %11, align 8
  %135 = getelementptr inbounds %struct.unknown_encoding, %struct.unknown_encoding* %134, i32 0, i32 1
  %136 = load i32**, i32*** %135, align 8
  %137 = load i32, i32* %10, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32*, i32** %136, i64 %138
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 0
  store i32 0, i32* %141, align 4
  %142 = load %struct.unknown_encoding*, %struct.unknown_encoding** %11, align 8
  %143 = getelementptr inbounds %struct.unknown_encoding, %struct.unknown_encoding* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %10, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  store i32 0, i32* %147, align 4
  br label %339

148:                                              ; preds = %110
  %149 = load i32, i32* %12, align 4
  %150 = icmp slt i32 %149, 128
  br i1 %150, label %151, label %223

151:                                              ; preds = %148
  %152 = load i8*, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @latin1_encoding, i32 0, i32 0), align 8
  %153 = load i32, i32* %12, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8, i8* %152, i64 %154
  %156 = load i8, i8* %155, align 1
  %157 = zext i8 %156 to i32
  %158 = load i8, i8* @BT_OTHER, align 1
  %159 = zext i8 %158 to i32
  %160 = icmp ne i32 %157, %159
  br i1 %160, label %161, label %176

161:                                              ; preds = %151
  %162 = load i8*, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @latin1_encoding, i32 0, i32 0), align 8
  %163 = load i32, i32* %12, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8, i8* %162, i64 %164
  %166 = load i8, i8* %165, align 1
  %167 = zext i8 %166 to i32
  %168 = load i8, i8* @BT_NONXML, align 1
  %169 = zext i8 %168 to i32
  %170 = icmp ne i32 %167, %169
  br i1 %170, label %171, label %176

171:                                              ; preds = %161
  %172 = load i32, i32* %12, align 4
  %173 = load i32, i32* %10, align 4
  %174 = icmp ne i32 %172, %173
  br i1 %174, label %175, label %176

175:                                              ; preds = %171
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %5, align 8
  br label %404

176:                                              ; preds = %171, %161, %151
  %177 = load i8*, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @latin1_encoding, i32 0, i32 0), align 8
  %178 = load i32, i32* %12, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8, i8* %177, i64 %179
  %181 = load i8, i8* %180, align 1
  %182 = load %struct.unknown_encoding*, %struct.unknown_encoding** %11, align 8
  %183 = getelementptr inbounds %struct.unknown_encoding, %struct.unknown_encoding* %182, i32 0, i32 2
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 0
  %185 = load i8*, i8** %184, align 8
  %186 = load i32, i32* %10, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i8, i8* %185, i64 %187
  store i8 %181, i8* %188, align 1
  %189 = load %struct.unknown_encoding*, %struct.unknown_encoding** %11, align 8
  %190 = getelementptr inbounds %struct.unknown_encoding, %struct.unknown_encoding* %189, i32 0, i32 1
  %191 = load i32**, i32*** %190, align 8
  %192 = load i32, i32* %10, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32*, i32** %191, i64 %193
  %195 = load i32*, i32** %194, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 0
  store i32 1, i32* %196, align 4
  %197 = load i32, i32* %12, align 4
  %198 = trunc i32 %197 to i8
  %199 = sext i8 %198 to i32
  %200 = load %struct.unknown_encoding*, %struct.unknown_encoding** %11, align 8
  %201 = getelementptr inbounds %struct.unknown_encoding, %struct.unknown_encoding* %200, i32 0, i32 1
  %202 = load i32**, i32*** %201, align 8
  %203 = load i32, i32* %10, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32*, i32** %202, i64 %204
  %206 = load i32*, i32** %205, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 1
  store i32 %199, i32* %207, align 4
  %208 = load i32, i32* %12, align 4
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %176
  br label %213

211:                                              ; preds = %176
  %212 = load i32, i32* %12, align 4
  br label %213

213:                                              ; preds = %211, %210
  %214 = phi i32 [ 65535, %210 ], [ %212, %211 ]
  %215 = trunc i32 %214 to i16
  %216 = zext i16 %215 to i32
  %217 = load %struct.unknown_encoding*, %struct.unknown_encoding** %11, align 8
  %218 = getelementptr inbounds %struct.unknown_encoding, %struct.unknown_encoding* %217, i32 0, i32 0
  %219 = load i32*, i32** %218, align 8
  %220 = load i32, i32* %10, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %219, i64 %221
  store i32 %216, i32* %222, align 4
  br label %338

223:                                              ; preds = %148
  %224 = load i32, i32* %12, align 4
  %225 = call i64 @checkCharRefNumber(i32 %224)
  %226 = icmp slt i64 %225, 0
  br i1 %226, label %227, label %258

227:                                              ; preds = %223
  %228 = load i8, i8* @BT_NONXML, align 1
  %229 = load %struct.unknown_encoding*, %struct.unknown_encoding** %11, align 8
  %230 = getelementptr inbounds %struct.unknown_encoding, %struct.unknown_encoding* %229, i32 0, i32 2
  %231 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %230, i32 0, i32 0
  %232 = load i8*, i8** %231, align 8
  %233 = load i32, i32* %10, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i8, i8* %232, i64 %234
  store i8 %228, i8* %235, align 1
  %236 = load %struct.unknown_encoding*, %struct.unknown_encoding** %11, align 8
  %237 = getelementptr inbounds %struct.unknown_encoding, %struct.unknown_encoding* %236, i32 0, i32 0
  %238 = load i32*, i32** %237, align 8
  %239 = load i32, i32* %10, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %238, i64 %240
  store i32 65535, i32* %241, align 4
  %242 = load %struct.unknown_encoding*, %struct.unknown_encoding** %11, align 8
  %243 = getelementptr inbounds %struct.unknown_encoding, %struct.unknown_encoding* %242, i32 0, i32 1
  %244 = load i32**, i32*** %243, align 8
  %245 = load i32, i32* %10, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32*, i32** %244, i64 %246
  %248 = load i32*, i32** %247, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 0
  store i32 1, i32* %249, align 4
  %250 = load %struct.unknown_encoding*, %struct.unknown_encoding** %11, align 8
  %251 = getelementptr inbounds %struct.unknown_encoding, %struct.unknown_encoding* %250, i32 0, i32 1
  %252 = load i32**, i32*** %251, align 8
  %253 = load i32, i32* %10, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32*, i32** %252, i64 %254
  %256 = load i32*, i32** %255, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 1
  store i32 0, i32* %257, align 4
  br label %337

258:                                              ; preds = %223
  %259 = load i32, i32* %12, align 4
  %260 = icmp sgt i32 %259, 65535
  br i1 %260, label %261, label %262

261:                                              ; preds = %258
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %5, align 8
  br label %404

262:                                              ; preds = %258
  %263 = load i32, i32* @nmstrtPages, align 4
  %264 = load i32, i32* %12, align 4
  %265 = ashr i32 %264, 8
  %266 = load i32, i32* %12, align 4
  %267 = and i32 %266, 255
  %268 = call i64 @UCS2_GET_NAMING(i32 %263, i32 %265, i32 %267)
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %279

270:                                              ; preds = %262
  %271 = load i8, i8* @BT_NMSTRT, align 1
  %272 = load %struct.unknown_encoding*, %struct.unknown_encoding** %11, align 8
  %273 = getelementptr inbounds %struct.unknown_encoding, %struct.unknown_encoding* %272, i32 0, i32 2
  %274 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %273, i32 0, i32 0
  %275 = load i8*, i8** %274, align 8
  %276 = load i32, i32* %10, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i8, i8* %275, i64 %277
  store i8 %271, i8* %278, align 1
  br label %306

279:                                              ; preds = %262
  %280 = load i32, i32* @namePages, align 4
  %281 = load i32, i32* %12, align 4
  %282 = ashr i32 %281, 8
  %283 = load i32, i32* %12, align 4
  %284 = and i32 %283, 255
  %285 = call i64 @UCS2_GET_NAMING(i32 %280, i32 %282, i32 %284)
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %296

287:                                              ; preds = %279
  %288 = load i8, i8* @BT_NAME, align 1
  %289 = load %struct.unknown_encoding*, %struct.unknown_encoding** %11, align 8
  %290 = getelementptr inbounds %struct.unknown_encoding, %struct.unknown_encoding* %289, i32 0, i32 2
  %291 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %290, i32 0, i32 0
  %292 = load i8*, i8** %291, align 8
  %293 = load i32, i32* %10, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i8, i8* %292, i64 %294
  store i8 %288, i8* %295, align 1
  br label %305

296:                                              ; preds = %279
  %297 = load i8, i8* @BT_OTHER, align 1
  %298 = load %struct.unknown_encoding*, %struct.unknown_encoding** %11, align 8
  %299 = getelementptr inbounds %struct.unknown_encoding, %struct.unknown_encoding* %298, i32 0, i32 2
  %300 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %299, i32 0, i32 0
  %301 = load i8*, i8** %300, align 8
  %302 = load i32, i32* %10, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i8, i8* %301, i64 %303
  store i8 %297, i8* %304, align 1
  br label %305

305:                                              ; preds = %296, %287
  br label %306

306:                                              ; preds = %305, %270
  %307 = load i32, i32* %12, align 4
  %308 = load %struct.unknown_encoding*, %struct.unknown_encoding** %11, align 8
  %309 = getelementptr inbounds %struct.unknown_encoding, %struct.unknown_encoding* %308, i32 0, i32 1
  %310 = load i32**, i32*** %309, align 8
  %311 = load i32, i32* %10, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i32*, i32** %310, i64 %312
  %314 = load i32*, i32** %313, align 8
  %315 = getelementptr inbounds i32, i32* %314, i64 1
  %316 = bitcast i32* %315 to i8*
  %317 = call i64 @XmlUtf8Encode(i32 %307, i8* %316)
  %318 = trunc i64 %317 to i8
  %319 = sext i8 %318 to i32
  %320 = load %struct.unknown_encoding*, %struct.unknown_encoding** %11, align 8
  %321 = getelementptr inbounds %struct.unknown_encoding, %struct.unknown_encoding* %320, i32 0, i32 1
  %322 = load i32**, i32*** %321, align 8
  %323 = load i32, i32* %10, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i32*, i32** %322, i64 %324
  %326 = load i32*, i32** %325, align 8
  %327 = getelementptr inbounds i32, i32* %326, i64 0
  store i32 %319, i32* %327, align 4
  %328 = load i32, i32* %12, align 4
  %329 = trunc i32 %328 to i16
  %330 = zext i16 %329 to i32
  %331 = load %struct.unknown_encoding*, %struct.unknown_encoding** %11, align 8
  %332 = getelementptr inbounds %struct.unknown_encoding, %struct.unknown_encoding* %331, i32 0, i32 0
  %333 = load i32*, i32** %332, align 8
  %334 = load i32, i32* %10, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i32, i32* %333, i64 %335
  store i32 %330, i32* %336, align 4
  br label %337

337:                                              ; preds = %306, %227
  br label %338

338:                                              ; preds = %337, %213
  br label %339

339:                                              ; preds = %338, %121
  br label %340

340:                                              ; preds = %339, %79
  br label %341

341:                                              ; preds = %340
  %342 = load i32, i32* %10, align 4
  %343 = add nsw i32 %342, 1
  store i32 %343, i32* %10, align 4
  br label %68

344:                                              ; preds = %68
  %345 = load i8*, i8** %9, align 8
  %346 = load %struct.unknown_encoding*, %struct.unknown_encoding** %11, align 8
  %347 = getelementptr inbounds %struct.unknown_encoding, %struct.unknown_encoding* %346, i32 0, i32 4
  store i8* %345, i8** %347, align 8
  %348 = load i64, i64* %8, align 8
  %349 = load %struct.unknown_encoding*, %struct.unknown_encoding** %11, align 8
  %350 = getelementptr inbounds %struct.unknown_encoding, %struct.unknown_encoding* %349, i32 0, i32 3
  store i64 %348, i64* %350, align 8
  %351 = load i64, i64* %8, align 8
  %352 = icmp ne i64 %351, 0
  br i1 %352, label %353, label %390

353:                                              ; preds = %344
  %354 = load i8*, i8** @unknown_isName, align 8
  %355 = load %struct.unknown_encoding*, %struct.unknown_encoding** %11, align 8
  %356 = getelementptr inbounds %struct.unknown_encoding, %struct.unknown_encoding* %355, i32 0, i32 2
  %357 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %356, i32 0, i32 10
  store i8* %354, i8** %357, align 8
  %358 = load i8*, i8** @unknown_isName, align 8
  %359 = load %struct.unknown_encoding*, %struct.unknown_encoding** %11, align 8
  %360 = getelementptr inbounds %struct.unknown_encoding, %struct.unknown_encoding* %359, i32 0, i32 2
  %361 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %360, i32 0, i32 9
  store i8* %358, i8** %361, align 8
  %362 = load i8*, i8** @unknown_isName, align 8
  %363 = load %struct.unknown_encoding*, %struct.unknown_encoding** %11, align 8
  %364 = getelementptr inbounds %struct.unknown_encoding, %struct.unknown_encoding* %363, i32 0, i32 2
  %365 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %364, i32 0, i32 8
  store i8* %362, i8** %365, align 8
  %366 = load i8*, i8** @unknown_isNmstrt, align 8
  %367 = load %struct.unknown_encoding*, %struct.unknown_encoding** %11, align 8
  %368 = getelementptr inbounds %struct.unknown_encoding, %struct.unknown_encoding* %367, i32 0, i32 2
  %369 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %368, i32 0, i32 7
  store i8* %366, i8** %369, align 8
  %370 = load i8*, i8** @unknown_isNmstrt, align 8
  %371 = load %struct.unknown_encoding*, %struct.unknown_encoding** %11, align 8
  %372 = getelementptr inbounds %struct.unknown_encoding, %struct.unknown_encoding* %371, i32 0, i32 2
  %373 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %372, i32 0, i32 6
  store i8* %370, i8** %373, align 8
  %374 = load i8*, i8** @unknown_isNmstrt, align 8
  %375 = load %struct.unknown_encoding*, %struct.unknown_encoding** %11, align 8
  %376 = getelementptr inbounds %struct.unknown_encoding, %struct.unknown_encoding* %375, i32 0, i32 2
  %377 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %376, i32 0, i32 5
  store i8* %374, i8** %377, align 8
  %378 = load i8*, i8** @unknown_isInvalid, align 8
  %379 = load %struct.unknown_encoding*, %struct.unknown_encoding** %11, align 8
  %380 = getelementptr inbounds %struct.unknown_encoding, %struct.unknown_encoding* %379, i32 0, i32 2
  %381 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %380, i32 0, i32 4
  store i8* %378, i8** %381, align 8
  %382 = load i8*, i8** @unknown_isInvalid, align 8
  %383 = load %struct.unknown_encoding*, %struct.unknown_encoding** %11, align 8
  %384 = getelementptr inbounds %struct.unknown_encoding, %struct.unknown_encoding* %383, i32 0, i32 2
  %385 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %384, i32 0, i32 3
  store i8* %382, i8** %385, align 8
  %386 = load i8*, i8** @unknown_isInvalid, align 8
  %387 = load %struct.unknown_encoding*, %struct.unknown_encoding** %11, align 8
  %388 = getelementptr inbounds %struct.unknown_encoding, %struct.unknown_encoding* %387, i32 0, i32 2
  %389 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %388, i32 0, i32 2
  store i8* %386, i8** %389, align 8
  br label %390

390:                                              ; preds = %353, %344
  %391 = load i32, i32* @unknown_toUtf8, align 4
  %392 = load %struct.unknown_encoding*, %struct.unknown_encoding** %11, align 8
  %393 = getelementptr inbounds %struct.unknown_encoding, %struct.unknown_encoding* %392, i32 0, i32 2
  %394 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %393, i32 0, i32 1
  %395 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %394, i32 0, i32 1
  store i32 %391, i32* %395, align 4
  %396 = load i32, i32* @unknown_toUtf16, align 4
  %397 = load %struct.unknown_encoding*, %struct.unknown_encoding** %11, align 8
  %398 = getelementptr inbounds %struct.unknown_encoding, %struct.unknown_encoding* %397, i32 0, i32 2
  %399 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %398, i32 0, i32 1
  %400 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %399, i32 0, i32 0
  store i32 %396, i32* %400, align 8
  %401 = load %struct.unknown_encoding*, %struct.unknown_encoding** %11, align 8
  %402 = getelementptr inbounds %struct.unknown_encoding, %struct.unknown_encoding* %401, i32 0, i32 2
  %403 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %402, i32 0, i32 1
  store %struct.TYPE_6__* %403, %struct.TYPE_6__** %5, align 8
  br label %404

404:                                              ; preds = %390, %261, %175, %120, %116, %62
  %405 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  ret %struct.TYPE_6__* %405
}

declare dso_local i64 @checkCharRefNumber(i32) #1

declare dso_local i64 @UCS2_GET_NAMING(i32, i32, i32) #1

declare dso_local i64 @XmlUtf8Encode(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
