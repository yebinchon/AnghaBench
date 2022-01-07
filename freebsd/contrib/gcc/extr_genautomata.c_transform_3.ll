; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_transform_3.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_transform_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__** }
%struct.TYPE_15__ = type { i32, %struct.TYPE_13__** }
%struct.TYPE_12__ = type { i32, %struct.TYPE_13__** }

@rm_oneof = common dso_local global i64 0, align 8
@regexp_transformed_p = common dso_local global i32 0, align 4
@rm_allof = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_13__* (%struct.TYPE_13__*)* @transform_3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_13__* @transform_3(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca %struct.TYPE_13__*, align 8
  %16 = alloca %struct.TYPE_13__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 129
  br i1 %22, label %23, label %206

23:                                               ; preds = %1
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %56, %23
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %27 = call %struct.TYPE_14__* @REGEXP_SEQUENCE(%struct.TYPE_13__* %26)
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %25, %29
  br i1 %30, label %31, label %59

31:                                               ; preds = %24
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %33 = call %struct.TYPE_14__* @REGEXP_SEQUENCE(%struct.TYPE_13__* %32)
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %35, i64 %37
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* @rm_oneof, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %31
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %4, align 4
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %48 = call %struct.TYPE_14__* @REGEXP_SEQUENCE(%struct.TYPE_13__* %47)
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %50, i64 %52
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %53, align 8
  store %struct.TYPE_13__* %54, %struct.TYPE_13__** %3, align 8
  br label %59

55:                                               ; preds = %31
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %24

59:                                               ; preds = %45, %24
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %62 = call %struct.TYPE_14__* @REGEXP_SEQUENCE(%struct.TYPE_13__* %61)
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %60, %64
  br i1 %65, label %66, label %205

66:                                               ; preds = %59
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %68 = call %struct.TYPE_15__* @REGEXP_ONEOF(%struct.TYPE_13__* %67)
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp sgt i32 %70, 1
  br i1 %71, label %72, label %78

72:                                               ; preds = %66
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %74 = call %struct.TYPE_14__* @REGEXP_SEQUENCE(%struct.TYPE_13__* %73)
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp sgt i32 %76, 1
  br label %78

78:                                               ; preds = %72, %66
  %79 = phi i1 [ false, %66 ], [ %77, %72 ]
  %80 = zext i1 %79 to i32
  %81 = call i32 @gcc_assert(i32 %80)
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %83 = call %struct.TYPE_15__* @REGEXP_ONEOF(%struct.TYPE_13__* %82)
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sub nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = mul i64 8, %87
  %89 = add i64 4, %88
  %90 = trunc i64 %89 to i32
  %91 = call %struct.TYPE_13__* @create_node(i32 %90)
  store %struct.TYPE_13__* %91, %struct.TYPE_13__** %5, align 8
  %92 = load i64, i64* @rm_oneof, align 8
  %93 = trunc i64 %92 to i32
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 4
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %102 = call %struct.TYPE_15__* @REGEXP_ONEOF(%struct.TYPE_13__* %101)
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %106 = call %struct.TYPE_15__* @REGEXP_ONEOF(%struct.TYPE_13__* %105)
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 0
  store i32 %104, i32* %107, align 8
  store i32 0, i32* %7, align 4
  br label %108

108:                                              ; preds = %200, %78
  %109 = load i32, i32* %7, align 4
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %111 = call %struct.TYPE_15__* @REGEXP_ONEOF(%struct.TYPE_13__* %110)
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp slt i32 %109, %113
  br i1 %114, label %115, label %203

115:                                              ; preds = %108
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %117 = call %struct.TYPE_14__* @REGEXP_SEQUENCE(%struct.TYPE_13__* %116)
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = sub nsw i32 %119, 1
  %121 = sext i32 %120 to i64
  %122 = mul i64 8, %121
  %123 = add i64 4, %122
  %124 = trunc i64 %123 to i32
  %125 = call %struct.TYPE_13__* @create_node(i32 %124)
  store %struct.TYPE_13__* %125, %struct.TYPE_13__** %6, align 8
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 0
  store i32 129, i32* %127, align 4
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 1
  store i32 %130, i32* %132, align 4
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %134 = call %struct.TYPE_14__* @REGEXP_SEQUENCE(%struct.TYPE_13__* %133)
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %138 = call %struct.TYPE_14__* @REGEXP_SEQUENCE(%struct.TYPE_13__* %137)
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 0
  store i32 %136, i32* %139, align 8
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %142 = call %struct.TYPE_15__* @REGEXP_ONEOF(%struct.TYPE_13__* %141)
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %143, align 8
  %145 = load i32, i32* %7, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %144, i64 %146
  store %struct.TYPE_13__* %140, %struct.TYPE_13__** %147, align 8
  store i32 0, i32* %8, align 4
  br label %148

148:                                              ; preds = %196, %115
  %149 = load i32, i32* %8, align 4
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %151 = call %struct.TYPE_14__* @REGEXP_SEQUENCE(%struct.TYPE_13__* %150)
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = icmp slt i32 %149, %153
  br i1 %154, label %155, label %199

155:                                              ; preds = %148
  %156 = load i32, i32* %8, align 4
  %157 = load i32, i32* %4, align 4
  %158 = icmp ne i32 %156, %157
  br i1 %158, label %159, label %177

159:                                              ; preds = %155
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %161 = call %struct.TYPE_14__* @REGEXP_SEQUENCE(%struct.TYPE_13__* %160)
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 1
  %163 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %162, align 8
  %164 = load i32, i32* %8, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %163, i64 %165
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %166, align 8
  %168 = call i8* @copy_insn_regexp(%struct.TYPE_13__* %167)
  %169 = bitcast i8* %168 to %struct.TYPE_13__*
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %171 = call %struct.TYPE_14__* @REGEXP_SEQUENCE(%struct.TYPE_13__* %170)
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 1
  %173 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %172, align 8
  %174 = load i32, i32* %8, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %173, i64 %175
  store %struct.TYPE_13__* %169, %struct.TYPE_13__** %176, align 8
  br label %195

177:                                              ; preds = %155
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %179 = call %struct.TYPE_15__* @REGEXP_ONEOF(%struct.TYPE_13__* %178)
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 1
  %181 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %180, align 8
  %182 = load i32, i32* %7, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %181, i64 %183
  %185 = load %struct.TYPE_13__*, %struct.TYPE_13__** %184, align 8
  %186 = call i8* @copy_insn_regexp(%struct.TYPE_13__* %185)
  %187 = bitcast i8* %186 to %struct.TYPE_13__*
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %189 = call %struct.TYPE_14__* @REGEXP_SEQUENCE(%struct.TYPE_13__* %188)
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 1
  %191 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %190, align 8
  %192 = load i32, i32* %8, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %191, i64 %193
  store %struct.TYPE_13__* %187, %struct.TYPE_13__** %194, align 8
  br label %195

195:                                              ; preds = %177, %159
  br label %196

196:                                              ; preds = %195
  %197 = load i32, i32* %8, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %8, align 4
  br label %148

199:                                              ; preds = %148
  br label %200

200:                                              ; preds = %199
  %201 = load i32, i32* %7, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %7, align 4
  br label %108

203:                                              ; preds = %108
  store i32 1, i32* @regexp_transformed_p, align 4
  %204 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_13__* %204, %struct.TYPE_13__** %2, align 8
  br label %205

205:                                              ; preds = %203, %59
  br label %722

206:                                              ; preds = %1
  %207 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = sext i32 %209 to i64
  %211 = load i64, i64* @rm_allof, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %213, label %721

213:                                              ; preds = %206
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %9, align 8
  store i32 0, i32* %11, align 4
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %15, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %16, align 8
  store i32 0, i32* %17, align 4
  br label %214

214:                                              ; preds = %246, %213
  %215 = load i32, i32* %17, align 4
  %216 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %217 = call %struct.TYPE_12__* @REGEXP_ALLOF(%struct.TYPE_13__* %216)
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = icmp slt i32 %215, %219
  br i1 %220, label %221, label %249

221:                                              ; preds = %214
  %222 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %223 = call %struct.TYPE_12__* @REGEXP_ALLOF(%struct.TYPE_13__* %222)
  %224 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %223, i32 0, i32 1
  %225 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %224, align 8
  %226 = load i32, i32* %17, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %225, i64 %227
  %229 = load %struct.TYPE_13__*, %struct.TYPE_13__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = sext i32 %231 to i64
  %233 = load i64, i64* @rm_oneof, align 8
  %234 = icmp eq i64 %232, %233
  br i1 %234, label %235, label %245

235:                                              ; preds = %221
  %236 = load i32, i32* %17, align 4
  store i32 %236, i32* %11, align 4
  %237 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %238 = call %struct.TYPE_12__* @REGEXP_ALLOF(%struct.TYPE_13__* %237)
  %239 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %238, i32 0, i32 1
  %240 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %239, align 8
  %241 = load i32, i32* %17, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %240, i64 %242
  %244 = load %struct.TYPE_13__*, %struct.TYPE_13__** %243, align 8
  store %struct.TYPE_13__* %244, %struct.TYPE_13__** %9, align 8
  br label %249

245:                                              ; preds = %221
  br label %246

246:                                              ; preds = %245
  %247 = load i32, i32* %17, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %17, align 4
  br label %214

249:                                              ; preds = %235, %214
  %250 = load i32, i32* %17, align 4
  %251 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %252 = call %struct.TYPE_12__* @REGEXP_ALLOF(%struct.TYPE_13__* %251)
  %253 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = icmp slt i32 %250, %254
  br i1 %255, label %256, label %397

256:                                              ; preds = %249
  %257 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %258 = call %struct.TYPE_15__* @REGEXP_ONEOF(%struct.TYPE_13__* %257)
  %259 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = icmp sgt i32 %260, 1
  br i1 %261, label %262, label %268

262:                                              ; preds = %256
  %263 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %264 = call %struct.TYPE_12__* @REGEXP_ALLOF(%struct.TYPE_13__* %263)
  %265 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = icmp sgt i32 %266, 1
  br label %268

268:                                              ; preds = %262, %256
  %269 = phi i1 [ false, %256 ], [ %267, %262 ]
  %270 = zext i1 %269 to i32
  %271 = call i32 @gcc_assert(i32 %270)
  %272 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %273 = call %struct.TYPE_15__* @REGEXP_ONEOF(%struct.TYPE_13__* %272)
  %274 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = sub nsw i32 %275, 1
  %277 = sext i32 %276 to i64
  %278 = mul i64 8, %277
  %279 = add i64 4, %278
  %280 = trunc i64 %279 to i32
  %281 = call %struct.TYPE_13__* @create_node(i32 %280)
  store %struct.TYPE_13__* %281, %struct.TYPE_13__** %14, align 8
  %282 = load i64, i64* @rm_oneof, align 8
  %283 = trunc i64 %282 to i32
  %284 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %285 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %284, i32 0, i32 0
  store i32 %283, i32* %285, align 4
  %286 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %287 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %290 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %289, i32 0, i32 1
  store i32 %288, i32* %290, align 4
  %291 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %292 = call %struct.TYPE_15__* @REGEXP_ONEOF(%struct.TYPE_13__* %291)
  %293 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %296 = call %struct.TYPE_15__* @REGEXP_ONEOF(%struct.TYPE_13__* %295)
  %297 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %296, i32 0, i32 0
  store i32 %294, i32* %297, align 8
  store i32 0, i32* %17, align 4
  br label %298

298:                                              ; preds = %392, %268
  %299 = load i32, i32* %17, align 4
  %300 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %301 = call %struct.TYPE_15__* @REGEXP_ONEOF(%struct.TYPE_13__* %300)
  %302 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = icmp slt i32 %299, %303
  br i1 %304, label %305, label %395

305:                                              ; preds = %298
  %306 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %307 = call %struct.TYPE_12__* @REGEXP_ALLOF(%struct.TYPE_13__* %306)
  %308 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  %310 = sub nsw i32 %309, 1
  %311 = sext i32 %310 to i64
  %312 = mul i64 8, %311
  %313 = add i64 4, %312
  %314 = trunc i64 %313 to i32
  %315 = call %struct.TYPE_13__* @create_node(i32 %314)
  store %struct.TYPE_13__* %315, %struct.TYPE_13__** %15, align 8
  %316 = load i64, i64* @rm_allof, align 8
  %317 = trunc i64 %316 to i32
  %318 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %319 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %318, i32 0, i32 0
  store i32 %317, i32* %319, align 4
  %320 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %321 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %320, i32 0, i32 1
  %322 = load i32, i32* %321, align 4
  %323 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %324 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %323, i32 0, i32 1
  store i32 %322, i32* %324, align 4
  %325 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %326 = call %struct.TYPE_12__* @REGEXP_ALLOF(%struct.TYPE_13__* %325)
  %327 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 8
  %329 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %330 = call %struct.TYPE_12__* @REGEXP_ALLOF(%struct.TYPE_13__* %329)
  %331 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %330, i32 0, i32 0
  store i32 %328, i32* %331, align 8
  %332 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %333 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %334 = call %struct.TYPE_15__* @REGEXP_ONEOF(%struct.TYPE_13__* %333)
  %335 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %334, i32 0, i32 1
  %336 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %335, align 8
  %337 = load i32, i32* %17, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %336, i64 %338
  store %struct.TYPE_13__* %332, %struct.TYPE_13__** %339, align 8
  store i32 0, i32* %18, align 4
  br label %340

340:                                              ; preds = %388, %305
  %341 = load i32, i32* %18, align 4
  %342 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %343 = call %struct.TYPE_12__* @REGEXP_ALLOF(%struct.TYPE_13__* %342)
  %344 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 8
  %346 = icmp slt i32 %341, %345
  br i1 %346, label %347, label %391

347:                                              ; preds = %340
  %348 = load i32, i32* %18, align 4
  %349 = load i32, i32* %11, align 4
  %350 = icmp ne i32 %348, %349
  br i1 %350, label %351, label %369

351:                                              ; preds = %347
  %352 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %353 = call %struct.TYPE_12__* @REGEXP_ALLOF(%struct.TYPE_13__* %352)
  %354 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %353, i32 0, i32 1
  %355 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %354, align 8
  %356 = load i32, i32* %18, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %355, i64 %357
  %359 = load %struct.TYPE_13__*, %struct.TYPE_13__** %358, align 8
  %360 = call i8* @copy_insn_regexp(%struct.TYPE_13__* %359)
  %361 = bitcast i8* %360 to %struct.TYPE_13__*
  %362 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %363 = call %struct.TYPE_12__* @REGEXP_ALLOF(%struct.TYPE_13__* %362)
  %364 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %363, i32 0, i32 1
  %365 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %364, align 8
  %366 = load i32, i32* %18, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %365, i64 %367
  store %struct.TYPE_13__* %361, %struct.TYPE_13__** %368, align 8
  br label %387

369:                                              ; preds = %347
  %370 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %371 = call %struct.TYPE_15__* @REGEXP_ONEOF(%struct.TYPE_13__* %370)
  %372 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %371, i32 0, i32 1
  %373 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %372, align 8
  %374 = load i32, i32* %17, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %373, i64 %375
  %377 = load %struct.TYPE_13__*, %struct.TYPE_13__** %376, align 8
  %378 = call i8* @copy_insn_regexp(%struct.TYPE_13__* %377)
  %379 = bitcast i8* %378 to %struct.TYPE_13__*
  %380 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %381 = call %struct.TYPE_12__* @REGEXP_ALLOF(%struct.TYPE_13__* %380)
  %382 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %381, i32 0, i32 1
  %383 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %382, align 8
  %384 = load i32, i32* %18, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %383, i64 %385
  store %struct.TYPE_13__* %379, %struct.TYPE_13__** %386, align 8
  br label %387

387:                                              ; preds = %369, %351
  br label %388

388:                                              ; preds = %387
  %389 = load i32, i32* %18, align 4
  %390 = add nsw i32 %389, 1
  store i32 %390, i32* %18, align 4
  br label %340

391:                                              ; preds = %340
  br label %392

392:                                              ; preds = %391
  %393 = load i32, i32* %17, align 4
  %394 = add nsw i32 %393, 1
  store i32 %394, i32* %17, align 4
  br label %298

395:                                              ; preds = %298
  store i32 1, i32* @regexp_transformed_p, align 4
  %396 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  store %struct.TYPE_13__* %396, %struct.TYPE_13__** %2, align 8
  br label %397

397:                                              ; preds = %395, %249
  store i32 0, i32* %12, align 4
  %398 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %399 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %398, i32 0, i32 0
  %400 = load i32, i32* %399, align 4
  %401 = sext i32 %400 to i64
  %402 = load i64, i64* @rm_allof, align 8
  %403 = icmp eq i64 %401, %402
  br i1 %403, label %404, label %451

404:                                              ; preds = %397
  store i32 0, i32* %17, align 4
  br label %405

405:                                              ; preds = %447, %404
  %406 = load i32, i32* %17, align 4
  %407 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %408 = call %struct.TYPE_12__* @REGEXP_ALLOF(%struct.TYPE_13__* %407)
  %409 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %408, i32 0, i32 0
  %410 = load i32, i32* %409, align 8
  %411 = icmp slt i32 %406, %410
  br i1 %411, label %412, label %450

412:                                              ; preds = %405
  %413 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %414 = call %struct.TYPE_12__* @REGEXP_ALLOF(%struct.TYPE_13__* %413)
  %415 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %414, i32 0, i32 1
  %416 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %415, align 8
  %417 = load i32, i32* %17, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %416, i64 %418
  %420 = load %struct.TYPE_13__*, %struct.TYPE_13__** %419, align 8
  %421 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %420, i32 0, i32 0
  %422 = load i32, i32* %421, align 4
  switch i32 %422, label %445 [
    i32 129, label %423
    i32 128, label %444
    i32 130, label %444
  ]

423:                                              ; preds = %412
  %424 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %425 = call %struct.TYPE_12__* @REGEXP_ALLOF(%struct.TYPE_13__* %424)
  %426 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %425, i32 0, i32 1
  %427 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %426, align 8
  %428 = load i32, i32* %17, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %427, i64 %429
  %431 = load %struct.TYPE_13__*, %struct.TYPE_13__** %430, align 8
  store %struct.TYPE_13__* %431, %struct.TYPE_13__** %10, align 8
  %432 = load i32, i32* %12, align 4
  %433 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %434 = call %struct.TYPE_14__* @REGEXP_SEQUENCE(%struct.TYPE_13__* %433)
  %435 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %434, i32 0, i32 0
  %436 = load i32, i32* %435, align 8
  %437 = icmp slt i32 %432, %436
  br i1 %437, label %438, label %443

438:                                              ; preds = %423
  %439 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %440 = call %struct.TYPE_14__* @REGEXP_SEQUENCE(%struct.TYPE_13__* %439)
  %441 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %440, i32 0, i32 0
  %442 = load i32, i32* %441, align 8
  store i32 %442, i32* %12, align 4
  br label %443

443:                                              ; preds = %438, %423
  br label %446

444:                                              ; preds = %412, %412
  br label %446

445:                                              ; preds = %412
  store i32 0, i32* %12, align 4
  br label %452

446:                                              ; preds = %444, %443
  br label %447

447:                                              ; preds = %446
  %448 = load i32, i32* %17, align 4
  %449 = add nsw i32 %448, 1
  store i32 %449, i32* %17, align 4
  br label %405

450:                                              ; preds = %405
  br label %451

451:                                              ; preds = %450, %397
  br label %452

452:                                              ; preds = %451, %445
  %453 = load i32, i32* %12, align 4
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %455, label %720

455:                                              ; preds = %452
  %456 = load i32, i32* %12, align 4
  %457 = icmp ne i32 %456, 1
  br i1 %457, label %458, label %464

458:                                              ; preds = %455
  %459 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %460 = call %struct.TYPE_12__* @REGEXP_ALLOF(%struct.TYPE_13__* %459)
  %461 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %460, i32 0, i32 0
  %462 = load i32, i32* %461, align 8
  %463 = icmp sgt i32 %462, 1
  br label %464

464:                                              ; preds = %458, %455
  %465 = phi i1 [ false, %455 ], [ %463, %458 ]
  %466 = zext i1 %465 to i32
  %467 = call i32 @gcc_assert(i32 %466)
  %468 = load i32, i32* %12, align 4
  %469 = sub nsw i32 %468, 1
  %470 = sext i32 %469 to i64
  %471 = mul i64 8, %470
  %472 = add i64 4, %471
  %473 = trunc i64 %472 to i32
  %474 = call %struct.TYPE_13__* @create_node(i32 %473)
  store %struct.TYPE_13__* %474, %struct.TYPE_13__** %14, align 8
  %475 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %476 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %475, i32 0, i32 0
  store i32 129, i32* %476, align 4
  %477 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %478 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %477, i32 0, i32 1
  %479 = load i32, i32* %478, align 4
  %480 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %481 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %480, i32 0, i32 1
  store i32 %479, i32* %481, align 4
  %482 = load i32, i32* %12, align 4
  %483 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %484 = call %struct.TYPE_14__* @REGEXP_SEQUENCE(%struct.TYPE_13__* %483)
  %485 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %484, i32 0, i32 0
  store i32 %482, i32* %485, align 8
  store i32 0, i32* %17, align 4
  br label %486

486:                                              ; preds = %715, %464
  %487 = load i32, i32* %17, align 4
  %488 = load i32, i32* %12, align 4
  %489 = icmp slt i32 %487, %488
  br i1 %489, label %490, label %718

490:                                              ; preds = %486
  store i32 0, i32* %13, align 4
  store i32 0, i32* %18, align 4
  br label %491

491:                                              ; preds = %559, %490
  %492 = load i32, i32* %18, align 4
  %493 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %494 = call %struct.TYPE_12__* @REGEXP_ALLOF(%struct.TYPE_13__* %493)
  %495 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %494, i32 0, i32 0
  %496 = load i32, i32* %495, align 8
  %497 = icmp slt i32 %492, %496
  br i1 %497, label %498, label %562

498:                                              ; preds = %491
  %499 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %500 = call %struct.TYPE_12__* @REGEXP_ALLOF(%struct.TYPE_13__* %499)
  %501 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %500, i32 0, i32 1
  %502 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %501, align 8
  %503 = load i32, i32* %18, align 4
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %502, i64 %504
  %506 = load %struct.TYPE_13__*, %struct.TYPE_13__** %505, align 8
  %507 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %506, i32 0, i32 0
  %508 = load i32, i32* %507, align 4
  switch i32 %508, label %557 [
    i32 129, label %509
    i32 128, label %542
    i32 130, label %542
  ]

509:                                              ; preds = %498
  %510 = load i32, i32* %17, align 4
  %511 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %512 = call %struct.TYPE_12__* @REGEXP_ALLOF(%struct.TYPE_13__* %511)
  %513 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %512, i32 0, i32 1
  %514 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %513, align 8
  %515 = load i32, i32* %18, align 4
  %516 = sext i32 %515 to i64
  %517 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %514, i64 %516
  %518 = load %struct.TYPE_13__*, %struct.TYPE_13__** %517, align 8
  %519 = call %struct.TYPE_14__* @REGEXP_SEQUENCE(%struct.TYPE_13__* %518)
  %520 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %519, i32 0, i32 0
  %521 = load i32, i32* %520, align 8
  %522 = icmp slt i32 %510, %521
  br i1 %522, label %523, label %541

523:                                              ; preds = %509
  %524 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %525 = call %struct.TYPE_12__* @REGEXP_ALLOF(%struct.TYPE_13__* %524)
  %526 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %525, i32 0, i32 1
  %527 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %526, align 8
  %528 = load i32, i32* %18, align 4
  %529 = sext i32 %528 to i64
  %530 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %527, i64 %529
  %531 = load %struct.TYPE_13__*, %struct.TYPE_13__** %530, align 8
  %532 = call %struct.TYPE_14__* @REGEXP_SEQUENCE(%struct.TYPE_13__* %531)
  %533 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %532, i32 0, i32 1
  %534 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %533, align 8
  %535 = load i32, i32* %17, align 4
  %536 = sext i32 %535 to i64
  %537 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %534, i64 %536
  %538 = load %struct.TYPE_13__*, %struct.TYPE_13__** %537, align 8
  store %struct.TYPE_13__* %538, %struct.TYPE_13__** %16, align 8
  %539 = load i32, i32* %13, align 4
  %540 = add nsw i32 %539, 1
  store i32 %540, i32* %13, align 4
  br label %541

541:                                              ; preds = %523, %509
  br label %558

542:                                              ; preds = %498, %498
  %543 = load i32, i32* %17, align 4
  %544 = icmp eq i32 %543, 0
  br i1 %544, label %545, label %556

545:                                              ; preds = %542
  %546 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %547 = call %struct.TYPE_12__* @REGEXP_ALLOF(%struct.TYPE_13__* %546)
  %548 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %547, i32 0, i32 1
  %549 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %548, align 8
  %550 = load i32, i32* %18, align 4
  %551 = sext i32 %550 to i64
  %552 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %549, i64 %551
  %553 = load %struct.TYPE_13__*, %struct.TYPE_13__** %552, align 8
  store %struct.TYPE_13__* %553, %struct.TYPE_13__** %16, align 8
  %554 = load i32, i32* %13, align 4
  %555 = add nsw i32 %554, 1
  store i32 %555, i32* %13, align 4
  br label %556

556:                                              ; preds = %545, %542
  br label %558

557:                                              ; preds = %498
  br label %558

558:                                              ; preds = %557, %556, %541
  br label %559

559:                                              ; preds = %558
  %560 = load i32, i32* %18, align 4
  %561 = add nsw i32 %560, 1
  store i32 %561, i32* %18, align 4
  br label %491

562:                                              ; preds = %491
  %563 = load i32, i32* %13, align 4
  %564 = icmp eq i32 %563, 1
  br i1 %564, label %565, label %574

565:                                              ; preds = %562
  %566 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %567 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %568 = call %struct.TYPE_14__* @REGEXP_SEQUENCE(%struct.TYPE_13__* %567)
  %569 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %568, i32 0, i32 1
  %570 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %569, align 8
  %571 = load i32, i32* %17, align 4
  %572 = sext i32 %571 to i64
  %573 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %570, i64 %572
  store %struct.TYPE_13__* %566, %struct.TYPE_13__** %573, align 8
  br label %714

574:                                              ; preds = %562
  %575 = load i32, i32* %13, align 4
  %576 = sub nsw i32 %575, 1
  %577 = sext i32 %576 to i64
  %578 = mul i64 8, %577
  %579 = add i64 4, %578
  %580 = trunc i64 %579 to i32
  %581 = call %struct.TYPE_13__* @create_node(i32 %580)
  store %struct.TYPE_13__* %581, %struct.TYPE_13__** %15, align 8
  %582 = load i64, i64* @rm_allof, align 8
  %583 = trunc i64 %582 to i32
  %584 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %585 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %584, i32 0, i32 0
  store i32 %583, i32* %585, align 4
  %586 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %587 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %586, i32 0, i32 1
  %588 = load i32, i32* %587, align 4
  %589 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %590 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %589, i32 0, i32 1
  store i32 %588, i32* %590, align 4
  %591 = load i32, i32* %13, align 4
  %592 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %593 = call %struct.TYPE_12__* @REGEXP_ALLOF(%struct.TYPE_13__* %592)
  %594 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %593, i32 0, i32 0
  store i32 %591, i32* %594, align 8
  %595 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %596 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %597 = call %struct.TYPE_14__* @REGEXP_SEQUENCE(%struct.TYPE_13__* %596)
  %598 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %597, i32 0, i32 1
  %599 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %598, align 8
  %600 = load i32, i32* %17, align 4
  %601 = sext i32 %600 to i64
  %602 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %599, i64 %601
  store %struct.TYPE_13__* %595, %struct.TYPE_13__** %602, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %18, align 4
  br label %603

603:                                              ; preds = %710, %574
  %604 = load i32, i32* %18, align 4
  %605 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %606 = call %struct.TYPE_12__* @REGEXP_ALLOF(%struct.TYPE_13__* %605)
  %607 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %606, i32 0, i32 0
  %608 = load i32, i32* %607, align 8
  %609 = icmp slt i32 %604, %608
  br i1 %609, label %610, label %713

610:                                              ; preds = %603
  %611 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %612 = call %struct.TYPE_12__* @REGEXP_ALLOF(%struct.TYPE_13__* %611)
  %613 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %612, i32 0, i32 1
  %614 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %613, align 8
  %615 = load i32, i32* %18, align 4
  %616 = sext i32 %615 to i64
  %617 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %614, i64 %616
  %618 = load %struct.TYPE_13__*, %struct.TYPE_13__** %617, align 8
  %619 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %618, i32 0, i32 0
  %620 = load i32, i32* %619, align 4
  %621 = icmp eq i32 %620, 129
  br i1 %621, label %622, label %662

622:                                              ; preds = %610
  %623 = load i32, i32* %17, align 4
  %624 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %625 = call %struct.TYPE_12__* @REGEXP_ALLOF(%struct.TYPE_13__* %624)
  %626 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %625, i32 0, i32 1
  %627 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %626, align 8
  %628 = load i32, i32* %18, align 4
  %629 = sext i32 %628 to i64
  %630 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %627, i64 %629
  %631 = load %struct.TYPE_13__*, %struct.TYPE_13__** %630, align 8
  %632 = call %struct.TYPE_14__* @REGEXP_SEQUENCE(%struct.TYPE_13__* %631)
  %633 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %632, i32 0, i32 0
  %634 = load i32, i32* %633, align 8
  %635 = icmp slt i32 %623, %634
  br i1 %635, label %636, label %662

636:                                              ; preds = %622
  %637 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %638 = call %struct.TYPE_12__* @REGEXP_ALLOF(%struct.TYPE_13__* %637)
  %639 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %638, i32 0, i32 1
  %640 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %639, align 8
  %641 = load i32, i32* %18, align 4
  %642 = sext i32 %641 to i64
  %643 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %640, i64 %642
  %644 = load %struct.TYPE_13__*, %struct.TYPE_13__** %643, align 8
  %645 = call %struct.TYPE_14__* @REGEXP_SEQUENCE(%struct.TYPE_13__* %644)
  %646 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %645, i32 0, i32 1
  %647 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %646, align 8
  %648 = load i32, i32* %17, align 4
  %649 = sext i32 %648 to i64
  %650 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %647, i64 %649
  %651 = load %struct.TYPE_13__*, %struct.TYPE_13__** %650, align 8
  store %struct.TYPE_13__* %651, %struct.TYPE_13__** %16, align 8
  %652 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %653 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %654 = call %struct.TYPE_12__* @REGEXP_ALLOF(%struct.TYPE_13__* %653)
  %655 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %654, i32 0, i32 1
  %656 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %655, align 8
  %657 = load i32, i32* %13, align 4
  %658 = sext i32 %657 to i64
  %659 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %656, i64 %658
  store %struct.TYPE_13__* %652, %struct.TYPE_13__** %659, align 8
  %660 = load i32, i32* %13, align 4
  %661 = add nsw i32 %660, 1
  store i32 %661, i32* %13, align 4
  br label %709

662:                                              ; preds = %622, %610
  %663 = load i32, i32* %17, align 4
  %664 = icmp eq i32 %663, 0
  br i1 %664, label %665, label %708

665:                                              ; preds = %662
  %666 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %667 = call %struct.TYPE_12__* @REGEXP_ALLOF(%struct.TYPE_13__* %666)
  %668 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %667, i32 0, i32 1
  %669 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %668, align 8
  %670 = load i32, i32* %18, align 4
  %671 = sext i32 %670 to i64
  %672 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %669, i64 %671
  %673 = load %struct.TYPE_13__*, %struct.TYPE_13__** %672, align 8
  %674 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %673, i32 0, i32 0
  %675 = load i32, i32* %674, align 4
  %676 = icmp eq i32 %675, 128
  br i1 %676, label %689, label %677

677:                                              ; preds = %665
  %678 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %679 = call %struct.TYPE_12__* @REGEXP_ALLOF(%struct.TYPE_13__* %678)
  %680 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %679, i32 0, i32 1
  %681 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %680, align 8
  %682 = load i32, i32* %18, align 4
  %683 = sext i32 %682 to i64
  %684 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %681, i64 %683
  %685 = load %struct.TYPE_13__*, %struct.TYPE_13__** %684, align 8
  %686 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %685, i32 0, i32 0
  %687 = load i32, i32* %686, align 4
  %688 = icmp eq i32 %687, 130
  br i1 %688, label %689, label %708

689:                                              ; preds = %677, %665
  %690 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %691 = call %struct.TYPE_12__* @REGEXP_ALLOF(%struct.TYPE_13__* %690)
  %692 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %691, i32 0, i32 1
  %693 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %692, align 8
  %694 = load i32, i32* %18, align 4
  %695 = sext i32 %694 to i64
  %696 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %693, i64 %695
  %697 = load %struct.TYPE_13__*, %struct.TYPE_13__** %696, align 8
  store %struct.TYPE_13__* %697, %struct.TYPE_13__** %16, align 8
  %698 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %699 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %700 = call %struct.TYPE_12__* @REGEXP_ALLOF(%struct.TYPE_13__* %699)
  %701 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %700, i32 0, i32 1
  %702 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %701, align 8
  %703 = load i32, i32* %13, align 4
  %704 = sext i32 %703 to i64
  %705 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %702, i64 %704
  store %struct.TYPE_13__* %698, %struct.TYPE_13__** %705, align 8
  %706 = load i32, i32* %13, align 4
  %707 = add nsw i32 %706, 1
  store i32 %707, i32* %13, align 4
  br label %708

708:                                              ; preds = %689, %677, %662
  br label %709

709:                                              ; preds = %708, %636
  br label %710

710:                                              ; preds = %709
  %711 = load i32, i32* %18, align 4
  %712 = add nsw i32 %711, 1
  store i32 %712, i32* %18, align 4
  br label %603

713:                                              ; preds = %603
  br label %714

714:                                              ; preds = %713, %565
  br label %715

715:                                              ; preds = %714
  %716 = load i32, i32* %17, align 4
  %717 = add nsw i32 %716, 1
  store i32 %717, i32* %17, align 4
  br label %486

718:                                              ; preds = %486
  store i32 1, i32* @regexp_transformed_p, align 4
  %719 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  store %struct.TYPE_13__* %719, %struct.TYPE_13__** %2, align 8
  br label %720

720:                                              ; preds = %718, %452
  br label %721

721:                                              ; preds = %720, %206
  br label %722

722:                                              ; preds = %721, %205
  %723 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  ret %struct.TYPE_13__* %723
}

declare dso_local %struct.TYPE_14__* @REGEXP_SEQUENCE(%struct.TYPE_13__*) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local %struct.TYPE_15__* @REGEXP_ONEOF(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_13__* @create_node(i32) #1

declare dso_local i8* @copy_insn_regexp(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_12__* @REGEXP_ALLOF(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
