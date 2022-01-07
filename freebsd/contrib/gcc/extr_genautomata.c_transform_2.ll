; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_transform_2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_transform_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__** }
%struct.TYPE_12__ = type { i32, %struct.TYPE_13__** }
%struct.TYPE_15__ = type { i32, %struct.TYPE_13__** }

@rm_sequence = common dso_local global i64 0, align 8
@regexp_transformed_p = common dso_local global i32 0, align 4
@rm_allof = common dso_local global i64 0, align 8
@rm_oneof = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_13__* (%struct.TYPE_13__*)* @transform_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_13__* @transform_2(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @rm_sequence, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %214

23:                                               ; preds = %1
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %55, %23
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %27 = call %struct.TYPE_14__* @REGEXP_SEQUENCE(%struct.TYPE_13__* %26)
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %25, %29
  br i1 %30, label %31, label %58

31:                                               ; preds = %24
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %33 = call %struct.TYPE_14__* @REGEXP_SEQUENCE(%struct.TYPE_13__* %32)
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %35, i64 %37
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @rm_sequence, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %31
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %5, align 4
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %47 = call %struct.TYPE_14__* @REGEXP_SEQUENCE(%struct.TYPE_13__* %46)
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %49, i64 %51
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %52, align 8
  store %struct.TYPE_13__* %53, %struct.TYPE_13__** %3, align 8
  br label %58

54:                                               ; preds = %31
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %24

58:                                               ; preds = %44, %24
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %61 = call %struct.TYPE_14__* @REGEXP_SEQUENCE(%struct.TYPE_13__* %60)
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %59, %63
  br i1 %64, label %65, label %213

65:                                               ; preds = %58
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %67 = call %struct.TYPE_14__* @REGEXP_SEQUENCE(%struct.TYPE_13__* %66)
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp sgt i32 %69, 1
  br i1 %70, label %71, label %77

71:                                               ; preds = %65
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %73 = call %struct.TYPE_14__* @REGEXP_SEQUENCE(%struct.TYPE_13__* %72)
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp sgt i32 %75, 1
  br label %77

77:                                               ; preds = %71, %65
  %78 = phi i1 [ false, %65 ], [ %76, %71 ]
  %79 = zext i1 %78 to i32
  %80 = call i32 @gcc_assert(i32 %79)
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %82 = call %struct.TYPE_14__* @REGEXP_SEQUENCE(%struct.TYPE_13__* %81)
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %86 = call %struct.TYPE_14__* @REGEXP_SEQUENCE(%struct.TYPE_13__* %85)
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %84, %88
  %90 = sub nsw i32 %89, 2
  %91 = sext i32 %90 to i64
  %92 = mul i64 8, %91
  %93 = add i64 4, %92
  %94 = trunc i64 %93 to i32
  %95 = call %struct.TYPE_13__* @create_node(i32 %94)
  store %struct.TYPE_13__* %95, %struct.TYPE_13__** %4, align 8
  %96 = load i64, i64* @rm_sequence, align 8
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  store i64 %96, i64* %98, align 8
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 8
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %105 = call %struct.TYPE_14__* @REGEXP_SEQUENCE(%struct.TYPE_13__* %104)
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %109 = call %struct.TYPE_14__* @REGEXP_SEQUENCE(%struct.TYPE_13__* %108)
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = add nsw i32 %107, %111
  %113 = sub nsw i32 %112, 1
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %115 = call %struct.TYPE_14__* @REGEXP_SEQUENCE(%struct.TYPE_13__* %114)
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 0
  store i32 %113, i32* %116, align 8
  store i32 0, i32* %6, align 4
  br label %117

117:                                              ; preds = %208, %77
  %118 = load i32, i32* %6, align 4
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %120 = call %struct.TYPE_14__* @REGEXP_SEQUENCE(%struct.TYPE_13__* %119)
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp slt i32 %118, %122
  br i1 %123, label %124, label %211

124:                                              ; preds = %117
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* %5, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %146

128:                                              ; preds = %124
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %130 = call %struct.TYPE_14__* @REGEXP_SEQUENCE(%struct.TYPE_13__* %129)
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %131, align 8
  %133 = load i32, i32* %6, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %132, i64 %134
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %135, align 8
  %137 = call i8* @copy_insn_regexp(%struct.TYPE_13__* %136)
  %138 = bitcast i8* %137 to %struct.TYPE_13__*
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %140 = call %struct.TYPE_14__* @REGEXP_SEQUENCE(%struct.TYPE_13__* %139)
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %141, align 8
  %143 = load i32, i32* %6, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %142, i64 %144
  store %struct.TYPE_13__* %138, %struct.TYPE_13__** %145, align 8
  br label %207

146:                                              ; preds = %124
  %147 = load i32, i32* %6, align 4
  %148 = load i32, i32* %5, align 4
  %149 = icmp sgt i32 %147, %148
  br i1 %149, label %150, label %174

150:                                              ; preds = %146
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %152 = call %struct.TYPE_14__* @REGEXP_SEQUENCE(%struct.TYPE_13__* %151)
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 1
  %154 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %153, align 8
  %155 = load i32, i32* %6, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %154, i64 %156
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %157, align 8
  %159 = call i8* @copy_insn_regexp(%struct.TYPE_13__* %158)
  %160 = bitcast i8* %159 to %struct.TYPE_13__*
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %162 = call %struct.TYPE_14__* @REGEXP_SEQUENCE(%struct.TYPE_13__* %161)
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %163, align 8
  %165 = load i32, i32* %6, align 4
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %167 = call %struct.TYPE_14__* @REGEXP_SEQUENCE(%struct.TYPE_13__* %166)
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = add nsw i32 %165, %169
  %171 = sub nsw i32 %170, 1
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %164, i64 %172
  store %struct.TYPE_13__* %160, %struct.TYPE_13__** %173, align 8
  br label %206

174:                                              ; preds = %146
  store i32 0, i32* %7, align 4
  br label %175

175:                                              ; preds = %202, %174
  %176 = load i32, i32* %7, align 4
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %178 = call %struct.TYPE_14__* @REGEXP_SEQUENCE(%struct.TYPE_13__* %177)
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = icmp slt i32 %176, %180
  br i1 %181, label %182, label %205

182:                                              ; preds = %175
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %184 = call %struct.TYPE_14__* @REGEXP_SEQUENCE(%struct.TYPE_13__* %183)
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 1
  %186 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %185, align 8
  %187 = load i32, i32* %7, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %186, i64 %188
  %190 = load %struct.TYPE_13__*, %struct.TYPE_13__** %189, align 8
  %191 = call i8* @copy_insn_regexp(%struct.TYPE_13__* %190)
  %192 = bitcast i8* %191 to %struct.TYPE_13__*
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %194 = call %struct.TYPE_14__* @REGEXP_SEQUENCE(%struct.TYPE_13__* %193)
  %195 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %194, i32 0, i32 1
  %196 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %195, align 8
  %197 = load i32, i32* %6, align 4
  %198 = load i32, i32* %7, align 4
  %199 = add nsw i32 %197, %198
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %196, i64 %200
  store %struct.TYPE_13__* %192, %struct.TYPE_13__** %201, align 8
  br label %202

202:                                              ; preds = %182
  %203 = load i32, i32* %7, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %7, align 4
  br label %175

205:                                              ; preds = %175
  br label %206

206:                                              ; preds = %205, %150
  br label %207

207:                                              ; preds = %206, %128
  br label %208

208:                                              ; preds = %207
  %209 = load i32, i32* %6, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %6, align 4
  br label %117

211:                                              ; preds = %117
  store i32 1, i32* @regexp_transformed_p, align 4
  %212 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_13__* %212, %struct.TYPE_13__** %2, align 8
  br label %213

213:                                              ; preds = %211, %58
  br label %610

214:                                              ; preds = %1
  %215 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %216 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* @rm_allof, align 8
  %219 = icmp eq i64 %217, %218
  br i1 %219, label %220, label %411

220:                                              ; preds = %214
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %221

221:                                              ; preds = %252, %220
  %222 = load i32, i32* %11, align 4
  %223 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %224 = call %struct.TYPE_12__* @REGEXP_ALLOF(%struct.TYPE_13__* %223)
  %225 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = icmp slt i32 %222, %226
  br i1 %227, label %228, label %255

228:                                              ; preds = %221
  %229 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %230 = call %struct.TYPE_12__* @REGEXP_ALLOF(%struct.TYPE_13__* %229)
  %231 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %230, i32 0, i32 1
  %232 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %231, align 8
  %233 = load i32, i32* %11, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %232, i64 %234
  %236 = load %struct.TYPE_13__*, %struct.TYPE_13__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = load i64, i64* @rm_allof, align 8
  %240 = icmp eq i64 %238, %239
  br i1 %240, label %241, label %251

241:                                              ; preds = %228
  %242 = load i32, i32* %11, align 4
  store i32 %242, i32* %10, align 4
  %243 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %244 = call %struct.TYPE_12__* @REGEXP_ALLOF(%struct.TYPE_13__* %243)
  %245 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %244, i32 0, i32 1
  %246 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %245, align 8
  %247 = load i32, i32* %11, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %246, i64 %248
  %250 = load %struct.TYPE_13__*, %struct.TYPE_13__** %249, align 8
  store %struct.TYPE_13__* %250, %struct.TYPE_13__** %8, align 8
  br label %255

251:                                              ; preds = %228
  br label %252

252:                                              ; preds = %251
  %253 = load i32, i32* %11, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %11, align 4
  br label %221

255:                                              ; preds = %241, %221
  %256 = load i32, i32* %11, align 4
  %257 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %258 = call %struct.TYPE_12__* @REGEXP_ALLOF(%struct.TYPE_13__* %257)
  %259 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = icmp slt i32 %256, %260
  br i1 %261, label %262, label %410

262:                                              ; preds = %255
  %263 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %264 = call %struct.TYPE_12__* @REGEXP_ALLOF(%struct.TYPE_13__* %263)
  %265 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = icmp sgt i32 %266, 1
  br i1 %267, label %268, label %274

268:                                              ; preds = %262
  %269 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %270 = call %struct.TYPE_12__* @REGEXP_ALLOF(%struct.TYPE_13__* %269)
  %271 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = icmp sgt i32 %272, 1
  br label %274

274:                                              ; preds = %268, %262
  %275 = phi i1 [ false, %262 ], [ %273, %268 ]
  %276 = zext i1 %275 to i32
  %277 = call i32 @gcc_assert(i32 %276)
  %278 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %279 = call %struct.TYPE_12__* @REGEXP_ALLOF(%struct.TYPE_13__* %278)
  %280 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %283 = call %struct.TYPE_12__* @REGEXP_ALLOF(%struct.TYPE_13__* %282)
  %284 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = add nsw i32 %281, %285
  %287 = sub nsw i32 %286, 2
  %288 = sext i32 %287 to i64
  %289 = mul i64 8, %288
  %290 = add i64 4, %289
  %291 = trunc i64 %290 to i32
  %292 = call %struct.TYPE_13__* @create_node(i32 %291)
  store %struct.TYPE_13__* %292, %struct.TYPE_13__** %9, align 8
  %293 = load i64, i64* @rm_allof, align 8
  %294 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %295 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %294, i32 0, i32 0
  store i64 %293, i64* %295, align 8
  %296 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %297 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 8
  %299 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %300 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %299, i32 0, i32 1
  store i32 %298, i32* %300, align 8
  %301 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %302 = call %struct.TYPE_12__* @REGEXP_ALLOF(%struct.TYPE_13__* %301)
  %303 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %306 = call %struct.TYPE_12__* @REGEXP_ALLOF(%struct.TYPE_13__* %305)
  %307 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = add nsw i32 %304, %308
  %310 = sub nsw i32 %309, 1
  %311 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %312 = call %struct.TYPE_12__* @REGEXP_ALLOF(%struct.TYPE_13__* %311)
  %313 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %312, i32 0, i32 0
  store i32 %310, i32* %313, align 8
  store i32 0, i32* %11, align 4
  br label %314

314:                                              ; preds = %405, %274
  %315 = load i32, i32* %11, align 4
  %316 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %317 = call %struct.TYPE_12__* @REGEXP_ALLOF(%struct.TYPE_13__* %316)
  %318 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = icmp slt i32 %315, %319
  br i1 %320, label %321, label %408

321:                                              ; preds = %314
  %322 = load i32, i32* %11, align 4
  %323 = load i32, i32* %10, align 4
  %324 = icmp slt i32 %322, %323
  br i1 %324, label %325, label %343

325:                                              ; preds = %321
  %326 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %327 = call %struct.TYPE_12__* @REGEXP_ALLOF(%struct.TYPE_13__* %326)
  %328 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %327, i32 0, i32 1
  %329 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %328, align 8
  %330 = load i32, i32* %11, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %329, i64 %331
  %333 = load %struct.TYPE_13__*, %struct.TYPE_13__** %332, align 8
  %334 = call i8* @copy_insn_regexp(%struct.TYPE_13__* %333)
  %335 = bitcast i8* %334 to %struct.TYPE_13__*
  %336 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %337 = call %struct.TYPE_12__* @REGEXP_ALLOF(%struct.TYPE_13__* %336)
  %338 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %337, i32 0, i32 1
  %339 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %338, align 8
  %340 = load i32, i32* %11, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %339, i64 %341
  store %struct.TYPE_13__* %335, %struct.TYPE_13__** %342, align 8
  br label %404

343:                                              ; preds = %321
  %344 = load i32, i32* %11, align 4
  %345 = load i32, i32* %10, align 4
  %346 = icmp sgt i32 %344, %345
  br i1 %346, label %347, label %371

347:                                              ; preds = %343
  %348 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %349 = call %struct.TYPE_12__* @REGEXP_ALLOF(%struct.TYPE_13__* %348)
  %350 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %349, i32 0, i32 1
  %351 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %350, align 8
  %352 = load i32, i32* %11, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %351, i64 %353
  %355 = load %struct.TYPE_13__*, %struct.TYPE_13__** %354, align 8
  %356 = call i8* @copy_insn_regexp(%struct.TYPE_13__* %355)
  %357 = bitcast i8* %356 to %struct.TYPE_13__*
  %358 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %359 = call %struct.TYPE_12__* @REGEXP_ALLOF(%struct.TYPE_13__* %358)
  %360 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %359, i32 0, i32 1
  %361 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %360, align 8
  %362 = load i32, i32* %11, align 4
  %363 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %364 = call %struct.TYPE_12__* @REGEXP_ALLOF(%struct.TYPE_13__* %363)
  %365 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 8
  %367 = add nsw i32 %362, %366
  %368 = sub nsw i32 %367, 1
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %361, i64 %369
  store %struct.TYPE_13__* %357, %struct.TYPE_13__** %370, align 8
  br label %403

371:                                              ; preds = %343
  store i32 0, i32* %12, align 4
  br label %372

372:                                              ; preds = %399, %371
  %373 = load i32, i32* %12, align 4
  %374 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %375 = call %struct.TYPE_12__* @REGEXP_ALLOF(%struct.TYPE_13__* %374)
  %376 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %375, i32 0, i32 0
  %377 = load i32, i32* %376, align 8
  %378 = icmp slt i32 %373, %377
  br i1 %378, label %379, label %402

379:                                              ; preds = %372
  %380 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %381 = call %struct.TYPE_12__* @REGEXP_ALLOF(%struct.TYPE_13__* %380)
  %382 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %381, i32 0, i32 1
  %383 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %382, align 8
  %384 = load i32, i32* %12, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %383, i64 %385
  %387 = load %struct.TYPE_13__*, %struct.TYPE_13__** %386, align 8
  %388 = call i8* @copy_insn_regexp(%struct.TYPE_13__* %387)
  %389 = bitcast i8* %388 to %struct.TYPE_13__*
  %390 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %391 = call %struct.TYPE_12__* @REGEXP_ALLOF(%struct.TYPE_13__* %390)
  %392 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %391, i32 0, i32 1
  %393 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %392, align 8
  %394 = load i32, i32* %11, align 4
  %395 = load i32, i32* %12, align 4
  %396 = add nsw i32 %394, %395
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %393, i64 %397
  store %struct.TYPE_13__* %389, %struct.TYPE_13__** %398, align 8
  br label %399

399:                                              ; preds = %379
  %400 = load i32, i32* %12, align 4
  %401 = add nsw i32 %400, 1
  store i32 %401, i32* %12, align 4
  br label %372

402:                                              ; preds = %372
  br label %403

403:                                              ; preds = %402, %347
  br label %404

404:                                              ; preds = %403, %325
  br label %405

405:                                              ; preds = %404
  %406 = load i32, i32* %11, align 4
  %407 = add nsw i32 %406, 1
  store i32 %407, i32* %11, align 4
  br label %314

408:                                              ; preds = %314
  store i32 1, i32* @regexp_transformed_p, align 4
  %409 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  store %struct.TYPE_13__* %409, %struct.TYPE_13__** %2, align 8
  br label %410

410:                                              ; preds = %408, %255
  br label %609

411:                                              ; preds = %214
  %412 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %413 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %412, i32 0, i32 0
  %414 = load i64, i64* %413, align 8
  %415 = load i64, i64* @rm_oneof, align 8
  %416 = icmp eq i64 %414, %415
  br i1 %416, label %417, label %608

417:                                              ; preds = %411
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %13, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %418

418:                                              ; preds = %449, %417
  %419 = load i32, i32* %16, align 4
  %420 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %421 = call %struct.TYPE_15__* @REGEXP_ONEOF(%struct.TYPE_13__* %420)
  %422 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %421, i32 0, i32 0
  %423 = load i32, i32* %422, align 8
  %424 = icmp slt i32 %419, %423
  br i1 %424, label %425, label %452

425:                                              ; preds = %418
  %426 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %427 = call %struct.TYPE_15__* @REGEXP_ONEOF(%struct.TYPE_13__* %426)
  %428 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %427, i32 0, i32 1
  %429 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %428, align 8
  %430 = load i32, i32* %16, align 4
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %429, i64 %431
  %433 = load %struct.TYPE_13__*, %struct.TYPE_13__** %432, align 8
  %434 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %433, i32 0, i32 0
  %435 = load i64, i64* %434, align 8
  %436 = load i64, i64* @rm_oneof, align 8
  %437 = icmp eq i64 %435, %436
  br i1 %437, label %438, label %448

438:                                              ; preds = %425
  %439 = load i32, i32* %16, align 4
  store i32 %439, i32* %15, align 4
  %440 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %441 = call %struct.TYPE_15__* @REGEXP_ONEOF(%struct.TYPE_13__* %440)
  %442 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %441, i32 0, i32 1
  %443 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %442, align 8
  %444 = load i32, i32* %16, align 4
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %443, i64 %445
  %447 = load %struct.TYPE_13__*, %struct.TYPE_13__** %446, align 8
  store %struct.TYPE_13__* %447, %struct.TYPE_13__** %13, align 8
  br label %452

448:                                              ; preds = %425
  br label %449

449:                                              ; preds = %448
  %450 = load i32, i32* %16, align 4
  %451 = add nsw i32 %450, 1
  store i32 %451, i32* %16, align 4
  br label %418

452:                                              ; preds = %438, %418
  %453 = load i32, i32* %16, align 4
  %454 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %455 = call %struct.TYPE_15__* @REGEXP_ONEOF(%struct.TYPE_13__* %454)
  %456 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %455, i32 0, i32 0
  %457 = load i32, i32* %456, align 8
  %458 = icmp slt i32 %453, %457
  br i1 %458, label %459, label %607

459:                                              ; preds = %452
  %460 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %461 = call %struct.TYPE_15__* @REGEXP_ONEOF(%struct.TYPE_13__* %460)
  %462 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %461, i32 0, i32 0
  %463 = load i32, i32* %462, align 8
  %464 = icmp sgt i32 %463, 1
  br i1 %464, label %465, label %471

465:                                              ; preds = %459
  %466 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %467 = call %struct.TYPE_15__* @REGEXP_ONEOF(%struct.TYPE_13__* %466)
  %468 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %467, i32 0, i32 0
  %469 = load i32, i32* %468, align 8
  %470 = icmp sgt i32 %469, 1
  br label %471

471:                                              ; preds = %465, %459
  %472 = phi i1 [ false, %459 ], [ %470, %465 ]
  %473 = zext i1 %472 to i32
  %474 = call i32 @gcc_assert(i32 %473)
  %475 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %476 = call %struct.TYPE_15__* @REGEXP_ONEOF(%struct.TYPE_13__* %475)
  %477 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %476, i32 0, i32 0
  %478 = load i32, i32* %477, align 8
  %479 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %480 = call %struct.TYPE_15__* @REGEXP_ONEOF(%struct.TYPE_13__* %479)
  %481 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %480, i32 0, i32 0
  %482 = load i32, i32* %481, align 8
  %483 = add nsw i32 %478, %482
  %484 = sub nsw i32 %483, 2
  %485 = sext i32 %484 to i64
  %486 = mul i64 8, %485
  %487 = add i64 4, %486
  %488 = trunc i64 %487 to i32
  %489 = call %struct.TYPE_13__* @create_node(i32 %488)
  store %struct.TYPE_13__* %489, %struct.TYPE_13__** %14, align 8
  %490 = load i64, i64* @rm_oneof, align 8
  %491 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %492 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %491, i32 0, i32 0
  store i64 %490, i64* %492, align 8
  %493 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %494 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %493, i32 0, i32 1
  %495 = load i32, i32* %494, align 8
  %496 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %497 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %496, i32 0, i32 1
  store i32 %495, i32* %497, align 8
  %498 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %499 = call %struct.TYPE_15__* @REGEXP_ONEOF(%struct.TYPE_13__* %498)
  %500 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %499, i32 0, i32 0
  %501 = load i32, i32* %500, align 8
  %502 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %503 = call %struct.TYPE_15__* @REGEXP_ONEOF(%struct.TYPE_13__* %502)
  %504 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %503, i32 0, i32 0
  %505 = load i32, i32* %504, align 8
  %506 = add nsw i32 %501, %505
  %507 = sub nsw i32 %506, 1
  %508 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %509 = call %struct.TYPE_15__* @REGEXP_ONEOF(%struct.TYPE_13__* %508)
  %510 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %509, i32 0, i32 0
  store i32 %507, i32* %510, align 8
  store i32 0, i32* %16, align 4
  br label %511

511:                                              ; preds = %602, %471
  %512 = load i32, i32* %16, align 4
  %513 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %514 = call %struct.TYPE_15__* @REGEXP_ONEOF(%struct.TYPE_13__* %513)
  %515 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %514, i32 0, i32 0
  %516 = load i32, i32* %515, align 8
  %517 = icmp slt i32 %512, %516
  br i1 %517, label %518, label %605

518:                                              ; preds = %511
  %519 = load i32, i32* %16, align 4
  %520 = load i32, i32* %15, align 4
  %521 = icmp slt i32 %519, %520
  br i1 %521, label %522, label %540

522:                                              ; preds = %518
  %523 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %524 = call %struct.TYPE_15__* @REGEXP_ONEOF(%struct.TYPE_13__* %523)
  %525 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %524, i32 0, i32 1
  %526 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %525, align 8
  %527 = load i32, i32* %16, align 4
  %528 = sext i32 %527 to i64
  %529 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %526, i64 %528
  %530 = load %struct.TYPE_13__*, %struct.TYPE_13__** %529, align 8
  %531 = call i8* @copy_insn_regexp(%struct.TYPE_13__* %530)
  %532 = bitcast i8* %531 to %struct.TYPE_13__*
  %533 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %534 = call %struct.TYPE_15__* @REGEXP_ONEOF(%struct.TYPE_13__* %533)
  %535 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %534, i32 0, i32 1
  %536 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %535, align 8
  %537 = load i32, i32* %16, align 4
  %538 = sext i32 %537 to i64
  %539 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %536, i64 %538
  store %struct.TYPE_13__* %532, %struct.TYPE_13__** %539, align 8
  br label %601

540:                                              ; preds = %518
  %541 = load i32, i32* %16, align 4
  %542 = load i32, i32* %15, align 4
  %543 = icmp sgt i32 %541, %542
  br i1 %543, label %544, label %568

544:                                              ; preds = %540
  %545 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %546 = call %struct.TYPE_15__* @REGEXP_ONEOF(%struct.TYPE_13__* %545)
  %547 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %546, i32 0, i32 1
  %548 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %547, align 8
  %549 = load i32, i32* %16, align 4
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %548, i64 %550
  %552 = load %struct.TYPE_13__*, %struct.TYPE_13__** %551, align 8
  %553 = call i8* @copy_insn_regexp(%struct.TYPE_13__* %552)
  %554 = bitcast i8* %553 to %struct.TYPE_13__*
  %555 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %556 = call %struct.TYPE_15__* @REGEXP_ONEOF(%struct.TYPE_13__* %555)
  %557 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %556, i32 0, i32 1
  %558 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %557, align 8
  %559 = load i32, i32* %16, align 4
  %560 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %561 = call %struct.TYPE_15__* @REGEXP_ONEOF(%struct.TYPE_13__* %560)
  %562 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %561, i32 0, i32 0
  %563 = load i32, i32* %562, align 8
  %564 = add nsw i32 %559, %563
  %565 = sub nsw i32 %564, 1
  %566 = sext i32 %565 to i64
  %567 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %558, i64 %566
  store %struct.TYPE_13__* %554, %struct.TYPE_13__** %567, align 8
  br label %600

568:                                              ; preds = %540
  store i32 0, i32* %17, align 4
  br label %569

569:                                              ; preds = %596, %568
  %570 = load i32, i32* %17, align 4
  %571 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %572 = call %struct.TYPE_15__* @REGEXP_ONEOF(%struct.TYPE_13__* %571)
  %573 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %572, i32 0, i32 0
  %574 = load i32, i32* %573, align 8
  %575 = icmp slt i32 %570, %574
  br i1 %575, label %576, label %599

576:                                              ; preds = %569
  %577 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %578 = call %struct.TYPE_15__* @REGEXP_ONEOF(%struct.TYPE_13__* %577)
  %579 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %578, i32 0, i32 1
  %580 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %579, align 8
  %581 = load i32, i32* %17, align 4
  %582 = sext i32 %581 to i64
  %583 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %580, i64 %582
  %584 = load %struct.TYPE_13__*, %struct.TYPE_13__** %583, align 8
  %585 = call i8* @copy_insn_regexp(%struct.TYPE_13__* %584)
  %586 = bitcast i8* %585 to %struct.TYPE_13__*
  %587 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %588 = call %struct.TYPE_15__* @REGEXP_ONEOF(%struct.TYPE_13__* %587)
  %589 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %588, i32 0, i32 1
  %590 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %589, align 8
  %591 = load i32, i32* %16, align 4
  %592 = load i32, i32* %17, align 4
  %593 = add nsw i32 %591, %592
  %594 = sext i32 %593 to i64
  %595 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %590, i64 %594
  store %struct.TYPE_13__* %586, %struct.TYPE_13__** %595, align 8
  br label %596

596:                                              ; preds = %576
  %597 = load i32, i32* %17, align 4
  %598 = add nsw i32 %597, 1
  store i32 %598, i32* %17, align 4
  br label %569

599:                                              ; preds = %569
  br label %600

600:                                              ; preds = %599, %544
  br label %601

601:                                              ; preds = %600, %522
  br label %602

602:                                              ; preds = %601
  %603 = load i32, i32* %16, align 4
  %604 = add nsw i32 %603, 1
  store i32 %604, i32* %16, align 4
  br label %511

605:                                              ; preds = %511
  store i32 1, i32* @regexp_transformed_p, align 4
  %606 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  store %struct.TYPE_13__* %606, %struct.TYPE_13__** %2, align 8
  br label %607

607:                                              ; preds = %605, %452
  br label %608

608:                                              ; preds = %607, %411
  br label %609

609:                                              ; preds = %608, %410
  br label %610

610:                                              ; preds = %609, %213
  %611 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  ret %struct.TYPE_13__* %611
}

declare dso_local %struct.TYPE_14__* @REGEXP_SEQUENCE(%struct.TYPE_13__*) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local %struct.TYPE_13__* @create_node(i32) #1

declare dso_local i8* @copy_insn_regexp(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_12__* @REGEXP_ALLOF(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_15__* @REGEXP_ONEOF(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
