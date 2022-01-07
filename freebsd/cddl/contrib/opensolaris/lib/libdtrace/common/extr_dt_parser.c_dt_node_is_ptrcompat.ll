; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_parser.c_dt_node_is_ptrcompat.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_parser.c_dt_node_is_ptrcompat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, i64, i32, i32* }
%struct.TYPE_9__ = type { i32 }

@CTF_ERR = common dso_local global i32 0, align 4
@DT_NF_COOKED = common dso_local global i32 0, align 4
@DT_NODE_INT = common dso_local global i64 0, align 8
@DT_NF_USERLAND = common dso_local global i32 0, align 4
@CTF_K_POINTER = common dso_local global i64 0, align 8
@CTF_K_ARRAY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dt_node_is_ptrcompat(%struct.TYPE_8__* %0, %struct.TYPE_8__* %1, i32** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_9__, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i32* %3, i32** %9, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 4
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %10, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 4
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %11, align 8
  %31 = load i32, i32* @CTF_ERR, align 4
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* @CTF_ERR, align 4
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* @CTF_ERR, align 4
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* @CTF_ERR, align 4
  store i32 %34, i32* %15, align 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @DT_NF_COOKED, align 4
  %39 = and i32 %37, %38
  %40 = call i32 @assert(i32 %39)
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @DT_NF_COOKED, align 4
  %45 = and i32 %43, %44
  %46 = call i32 @assert(i32 %45)
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %48 = call i64 @dt_node_is_dynamic(%struct.TYPE_8__* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %4
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %52 = call i64 @dt_node_is_dynamic(%struct.TYPE_8__* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50, %4
  store i32 0, i32* %5, align 4
  br label %294

55:                                               ; preds = %50
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %57 = call i32 @dt_node_is_integer(%struct.TYPE_8__* %56)
  store i32 %57, i32* %18, align 4
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %59 = call i32 @dt_node_is_integer(%struct.TYPE_8__* %58)
  store i32 %59, i32* %19, align 4
  %60 = load i32, i32* %18, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %55
  %63 = load i32, i32* %19, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i32 0, i32* %5, align 4
  br label %294

66:                                               ; preds = %62, %55
  %67 = load i32, i32* %18, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %66
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @DT_NODE_INT, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %80, label %75

75:                                               ; preds = %69
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %75, %69
  store i32 0, i32* %5, align 4
  br label %294

81:                                               ; preds = %75, %66
  %82 = load i32, i32* %19, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %96

84:                                               ; preds = %81
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @DT_NODE_INT, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %95, label %90

90:                                               ; preds = %84
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %90, %84
  store i32 0, i32* %5, align 4
  br label %294

96:                                               ; preds = %90, %81
  %97 = load i32, i32* %18, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %116

99:                                               ; preds = %96
  %100 = load i32, i32* %19, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %116

102:                                              ; preds = %99
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @DT_NF_USERLAND, align 4
  %107 = and i32 %105, %106
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @DT_NF_USERLAND, align 4
  %112 = and i32 %110, %111
  %113 = xor i32 %107, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %102
  store i32 0, i32* %5, align 4
  br label %294

116:                                              ; preds = %102, %99, %96
  %117 = load i32, i32* %18, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %153, label %119

119:                                              ; preds = %116
  %120 = load i32*, i32** %10, align 8
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @ctf_type_resolve(i32* %120, i32 %123)
  store i32 %124, i32* %12, align 4
  %125 = load i32*, i32** %10, align 8
  %126 = load i32, i32* %12, align 4
  %127 = call i64 @ctf_type_kind(i32* %125, i32 %126)
  store i64 %127, i64* %21, align 8
  %128 = load i64, i64* %21, align 8
  %129 = load i64, i64* @CTF_K_POINTER, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %137

131:                                              ; preds = %119
  %132 = load i32*, i32** %10, align 8
  %133 = load i32*, i32** %10, align 8
  %134 = load i32, i32* %12, align 4
  %135 = call i32 @ctf_type_reference(i32* %133, i32 %134)
  %136 = call i32 @ctf_type_resolve(i32* %132, i32 %135)
  store i32 %136, i32* %14, align 4
  br label %152

137:                                              ; preds = %119
  %138 = load i64, i64* %21, align 8
  %139 = load i64, i64* @CTF_K_ARRAY, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %151

141:                                              ; preds = %137
  %142 = load i32*, i32** %10, align 8
  %143 = load i32, i32* %12, align 4
  %144 = call i64 @ctf_array_info(i32* %142, i32 %143, %struct.TYPE_9__* %24)
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %141
  %147 = load i32*, i32** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @ctf_type_resolve(i32* %147, i32 %149)
  store i32 %150, i32* %14, align 4
  br label %151

151:                                              ; preds = %146, %141, %137
  br label %152

152:                                              ; preds = %151, %131
  br label %153

153:                                              ; preds = %152, %116
  %154 = load i32, i32* %19, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %190, label %156

156:                                              ; preds = %153
  %157 = load i32*, i32** %11, align 8
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @ctf_type_resolve(i32* %157, i32 %160)
  store i32 %161, i32* %13, align 4
  %162 = load i32*, i32** %11, align 8
  %163 = load i32, i32* %13, align 4
  %164 = call i64 @ctf_type_kind(i32* %162, i32 %163)
  store i64 %164, i64* %22, align 8
  %165 = load i64, i64* %22, align 8
  %166 = load i64, i64* @CTF_K_POINTER, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %174

168:                                              ; preds = %156
  %169 = load i32*, i32** %11, align 8
  %170 = load i32*, i32** %11, align 8
  %171 = load i32, i32* %13, align 4
  %172 = call i32 @ctf_type_reference(i32* %170, i32 %171)
  %173 = call i32 @ctf_type_resolve(i32* %169, i32 %172)
  store i32 %173, i32* %15, align 4
  br label %189

174:                                              ; preds = %156
  %175 = load i64, i64* %22, align 8
  %176 = load i64, i64* @CTF_K_ARRAY, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %188

178:                                              ; preds = %174
  %179 = load i32*, i32** %11, align 8
  %180 = load i32, i32* %13, align 4
  %181 = call i64 @ctf_array_info(i32* %179, i32 %180, %struct.TYPE_9__* %24)
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %183, label %188

183:                                              ; preds = %178
  %184 = load i32*, i32** %11, align 8
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @ctf_type_resolve(i32* %184, i32 %186)
  store i32 %187, i32* %15, align 4
  br label %188

188:                                              ; preds = %183, %178, %174
  br label %189

189:                                              ; preds = %188, %168
  br label %190

190:                                              ; preds = %189, %153
  %191 = load i32, i32* %18, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %198

193:                                              ; preds = %190
  %194 = load i32, i32* %13, align 4
  store i32 %194, i32* %12, align 4
  %195 = load i64, i64* %22, align 8
  store i64 %195, i64* %21, align 8
  %196 = load i32, i32* %15, align 4
  store i32 %196, i32* %14, align 4
  %197 = load i32*, i32** %11, align 8
  store i32* %197, i32** %10, align 8
  br label %207

198:                                              ; preds = %190
  %199 = load i32, i32* %19, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %198
  %202 = load i32, i32* %12, align 4
  store i32 %202, i32* %13, align 4
  %203 = load i64, i64* %21, align 8
  store i64 %203, i64* %22, align 8
  %204 = load i32, i32* %14, align 4
  store i32 %204, i32* %15, align 4
  %205 = load i32*, i32** %10, align 8
  store i32* %205, i32** %11, align 8
  br label %206

206:                                              ; preds = %201, %198
  br label %207

207:                                              ; preds = %206, %193
  %208 = load i32*, i32** %10, align 8
  %209 = load i32, i32* %14, align 4
  %210 = call i64 @ctf_type_encoding(i32* %208, i32 %209, i32* %23)
  %211 = icmp eq i64 %210, 0
  br i1 %211, label %212, label %216

212:                                              ; preds = %207
  %213 = load i32, i32* %23, align 4
  %214 = call i64 @IS_VOID(i32 %213)
  %215 = icmp ne i64 %214, 0
  br label %216

216:                                              ; preds = %212, %207
  %217 = phi i1 [ false, %207 ], [ %215, %212 ]
  %218 = zext i1 %217 to i32
  store i32 %218, i32* %16, align 4
  %219 = load i32*, i32** %11, align 8
  %220 = load i32, i32* %15, align 4
  %221 = call i64 @ctf_type_encoding(i32* %219, i32 %220, i32* %23)
  %222 = icmp eq i64 %221, 0
  br i1 %222, label %223, label %227

223:                                              ; preds = %216
  %224 = load i32, i32* %23, align 4
  %225 = call i64 @IS_VOID(i32 %224)
  %226 = icmp ne i64 %225, 0
  br label %227

227:                                              ; preds = %223, %216
  %228 = phi i1 [ false, %216 ], [ %226, %223 ]
  %229 = zext i1 %228 to i32
  store i32 %229, i32* %17, align 4
  %230 = load i64, i64* %21, align 8
  %231 = load i64, i64* @CTF_K_POINTER, align 8
  %232 = icmp eq i64 %230, %231
  br i1 %232, label %237, label %233

233:                                              ; preds = %227
  %234 = load i64, i64* %21, align 8
  %235 = load i64, i64* @CTF_K_ARRAY, align 8
  %236 = icmp eq i64 %234, %235
  br i1 %236, label %237, label %260

237:                                              ; preds = %233, %227
  %238 = load i64, i64* %22, align 8
  %239 = load i64, i64* @CTF_K_POINTER, align 8
  %240 = icmp eq i64 %238, %239
  br i1 %240, label %245, label %241

241:                                              ; preds = %237
  %242 = load i64, i64* %22, align 8
  %243 = load i64, i64* @CTF_K_ARRAY, align 8
  %244 = icmp eq i64 %242, %243
  br i1 %244, label %245, label %260

245:                                              ; preds = %241, %237
  %246 = load i32, i32* %16, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %258, label %248

248:                                              ; preds = %245
  %249 = load i32, i32* %17, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %258, label %251

251:                                              ; preds = %248
  %252 = load i32*, i32** %10, align 8
  %253 = load i32, i32* %14, align 4
  %254 = load i32*, i32** %11, align 8
  %255 = load i32, i32* %15, align 4
  %256 = call i64 @ctf_type_compat(i32* %252, i32 %253, i32* %254, i32 %255)
  %257 = icmp ne i64 %256, 0
  br label %258

258:                                              ; preds = %251, %248, %245
  %259 = phi i1 [ true, %248 ], [ true, %245 ], [ %257, %251 ]
  br label %260

260:                                              ; preds = %258, %241, %233
  %261 = phi i1 [ false, %241 ], [ false, %233 ], [ %259, %258 ]
  %262 = zext i1 %261 to i32
  store i32 %262, i32* %20, align 4
  %263 = load i32, i32* %20, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %292

265:                                              ; preds = %260
  %266 = load i32**, i32*** %8, align 8
  %267 = icmp ne i32** %266, null
  br i1 %267, label %268, label %278

268:                                              ; preds = %265
  %269 = load i32, i32* %17, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %273

271:                                              ; preds = %268
  %272 = load i32*, i32** %10, align 8
  br label %275

273:                                              ; preds = %268
  %274 = load i32*, i32** %11, align 8
  br label %275

275:                                              ; preds = %273, %271
  %276 = phi i32* [ %272, %271 ], [ %274, %273 ]
  %277 = load i32**, i32*** %8, align 8
  store i32* %276, i32** %277, align 8
  br label %278

278:                                              ; preds = %275, %265
  %279 = load i32*, i32** %9, align 8
  %280 = icmp ne i32* %279, null
  br i1 %280, label %281, label %291

281:                                              ; preds = %278
  %282 = load i32, i32* %17, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %286

284:                                              ; preds = %281
  %285 = load i32, i32* %12, align 4
  br label %288

286:                                              ; preds = %281
  %287 = load i32, i32* %13, align 4
  br label %288

288:                                              ; preds = %286, %284
  %289 = phi i32 [ %285, %284 ], [ %287, %286 ]
  %290 = load i32*, i32** %9, align 8
  store i32 %289, i32* %290, align 4
  br label %291

291:                                              ; preds = %288, %278
  br label %292

292:                                              ; preds = %291, %260
  %293 = load i32, i32* %20, align 4
  store i32 %293, i32* %5, align 4
  br label %294

294:                                              ; preds = %292, %115, %95, %80, %65, %54
  %295 = load i32, i32* %5, align 4
  ret i32 %295
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @dt_node_is_dynamic(%struct.TYPE_8__*) #1

declare dso_local i32 @dt_node_is_integer(%struct.TYPE_8__*) #1

declare dso_local i32 @ctf_type_resolve(i32*, i32) #1

declare dso_local i64 @ctf_type_kind(i32*, i32) #1

declare dso_local i32 @ctf_type_reference(i32*, i32) #1

declare dso_local i64 @ctf_array_info(i32*, i32, %struct.TYPE_9__*) #1

declare dso_local i64 @ctf_type_encoding(i32*, i32, i32*) #1

declare dso_local i64 @IS_VOID(i32) #1

declare dso_local i64 @ctf_type_compat(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
