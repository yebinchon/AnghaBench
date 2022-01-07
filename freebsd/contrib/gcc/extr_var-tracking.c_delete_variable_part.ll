; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_var-tracking.c_delete_variable_part.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_var-tracking.c_delete_variable_part.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_14__*, i64 }
%struct.TYPE_14__ = type { i64, %struct.TYPE_14__* }

@NO_INSERT = common dso_local global i32 0, align 4
@loc_chain_pool = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, i64, i32, i32)* @delete_variable_part to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delete_variable_part(%struct.TYPE_15__* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca %struct.TYPE_14__**, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @VARIABLE_HASH_VAL(i32 %20)
  %22 = load i32, i32* @NO_INSERT, align 4
  %23 = call i8** @htab_find_slot_with_hash(i32 %18, i32 %19, i32 %21, i32 %22)
  store i8** %23, i8*** %9, align 8
  %24 = load i8**, i8*** %9, align 8
  %25 = icmp ne i8** %24, null
  br i1 %25, label %26, label %271

26:                                               ; preds = %4
  %27 = load i8**, i8*** %9, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = bitcast i8* %28 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %29, %struct.TYPE_13__** %10, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @find_variable_location_part(%struct.TYPE_13__* %30, i32 %31, i32* null)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp sge i32 %33, 0
  br i1 %34, label %35, label %270

35:                                               ; preds = %26
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp sgt i32 %38, 1
  br i1 %39, label %40, label %87

40:                                               ; preds = %35
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %42, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %47, align 8
  store %struct.TYPE_14__* %48, %struct.TYPE_14__** %12, align 8
  br label %49

49:                                               ; preds = %82, %40
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %51 = icmp ne %struct.TYPE_14__* %50, null
  br i1 %51, label %52, label %86

52:                                               ; preds = %49
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i64 @REG_P(i64 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %52
  %59 = load i64, i64* %6, align 8
  %60 = call i64 @REG_P(i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %58
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i64 @REGNO(i64 %65)
  %67 = load i64, i64* %6, align 8
  %68 = call i64 @REGNO(i64 %67)
  %69 = icmp eq i64 %66, %68
  br i1 %69, label %77, label %70

70:                                               ; preds = %62, %58, %52
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %6, align 8
  %75 = call i64 @rtx_equal_p(i64 %73, i64 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %70, %62
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %80 = call %struct.TYPE_13__* @unshare_variable(%struct.TYPE_15__* %78, %struct.TYPE_13__* %79)
  store %struct.TYPE_13__* %80, %struct.TYPE_13__** %10, align 8
  br label %86

81:                                               ; preds = %70
  br label %82

82:                                               ; preds = %81
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %84, align 8
  store %struct.TYPE_14__* %85, %struct.TYPE_14__** %12, align 8
  br label %49

86:                                               ; preds = %77, %49
  br label %87

87:                                               ; preds = %86, %35
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %89, align 8
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  store %struct.TYPE_14__** %94, %struct.TYPE_14__*** %14, align 8
  %95 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %14, align 8
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %95, align 8
  store %struct.TYPE_14__* %96, %struct.TYPE_14__** %12, align 8
  br label %97

97:                                               ; preds = %138, %87
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %99 = icmp ne %struct.TYPE_14__* %98, null
  br i1 %99, label %100, label %140

100:                                              ; preds = %97
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %102, align 8
  store %struct.TYPE_14__* %103, %struct.TYPE_14__** %13, align 8
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = call i64 @REG_P(i64 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %121

109:                                              ; preds = %100
  %110 = load i64, i64* %6, align 8
  %111 = call i64 @REG_P(i64 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %109
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = call i64 @REGNO(i64 %116)
  %118 = load i64, i64* %6, align 8
  %119 = call i64 @REGNO(i64 %118)
  %120 = icmp eq i64 %117, %119
  br i1 %120, label %128, label %121

121:                                              ; preds = %113, %109, %100
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* %6, align 8
  %126 = call i64 @rtx_equal_p(i64 %124, i64 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %121, %113
  %129 = load i32, i32* @loc_chain_pool, align 4
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %131 = call i32 @pool_free(i32 %129, %struct.TYPE_14__* %130)
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %133 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %14, align 8
  store %struct.TYPE_14__* %132, %struct.TYPE_14__** %133, align 8
  br label %140

134:                                              ; preds = %121
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 1
  store %struct.TYPE_14__** %136, %struct.TYPE_14__*** %14, align 8
  br label %137

137:                                              ; preds = %134
  br label %138

138:                                              ; preds = %137
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  store %struct.TYPE_14__* %139, %struct.TYPE_14__** %12, align 8
  br label %97

140:                                              ; preds = %128, %97
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 2
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %142, align 8
  %144 = load i32, i32* %11, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %219

150:                                              ; preds = %140
  %151 = load i64, i64* %6, align 8
  %152 = call i64 @REG_P(i64 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %178

154:                                              ; preds = %150
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 2
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %156, align 8
  %158 = load i32, i32* %11, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = call i64 @REG_P(i64 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %178

165:                                              ; preds = %154
  %166 = load i64, i64* %6, align 8
  %167 = call i64 @REGNO(i64 %166)
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 2
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %169, align 8
  %171 = load i32, i32* %11, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = call i64 @REGNO(i64 %175)
  %177 = icmp eq i64 %167, %176
  br i1 %177, label %190, label %178

178:                                              ; preds = %165, %154, %150
  %179 = load i64, i64* %6, align 8
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 2
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %181, align 8
  %183 = load i32, i32* %11, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = call i64 @rtx_equal_p(i64 %179, i64 %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %219

190:                                              ; preds = %178, %165
  store i32 1, i32* %15, align 4
  %191 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %191, i32 0, i32 2
  %193 = load %struct.TYPE_12__*, %struct.TYPE_12__** %192, align 8
  %194 = load i32, i32* %11, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 0
  %198 = load %struct.TYPE_14__*, %struct.TYPE_14__** %197, align 8
  %199 = icmp ne %struct.TYPE_14__* %198, null
  br i1 %199, label %200, label %218

200:                                              ; preds = %190
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 2
  %203 = load %struct.TYPE_12__*, %struct.TYPE_12__** %202, align 8
  %204 = load i32, i32* %11, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 0
  %208 = load %struct.TYPE_14__*, %struct.TYPE_14__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i32 0, i32 2
  %213 = load %struct.TYPE_12__*, %struct.TYPE_12__** %212, align 8
  %214 = load i32, i32* %11, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 1
  store i64 %210, i64* %217, align 8
  br label %218

218:                                              ; preds = %200, %190
  br label %220

219:                                              ; preds = %178, %140
  store i32 0, i32* %15, align 4
  br label %220

220:                                              ; preds = %219, %218
  %221 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %222 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %221, i32 0, i32 2
  %223 = load %struct.TYPE_12__*, %struct.TYPE_12__** %222, align 8
  %224 = load i32, i32* %11, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %223, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %226, i32 0, i32 0
  %228 = load %struct.TYPE_14__*, %struct.TYPE_14__** %227, align 8
  %229 = icmp eq %struct.TYPE_14__* %228, null
  br i1 %229, label %230, label %260

230:                                              ; preds = %220
  %231 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %232 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = add nsw i32 %233, -1
  store i32 %234, i32* %232, align 4
  br label %235

235:                                              ; preds = %241, %230
  %236 = load i32, i32* %11, align 4
  %237 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = icmp slt i32 %236, %239
  br i1 %240, label %241, label %259

241:                                              ; preds = %235
  %242 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %243 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %242, i32 0, i32 2
  %244 = load %struct.TYPE_12__*, %struct.TYPE_12__** %243, align 8
  %245 = load i32, i32* %11, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %244, i64 %246
  %248 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %249 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %248, i32 0, i32 2
  %250 = load %struct.TYPE_12__*, %struct.TYPE_12__** %249, align 8
  %251 = load i32, i32* %11, align 4
  %252 = add nsw i32 %251, 1
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %250, i64 %253
  %255 = bitcast %struct.TYPE_12__* %247 to i8*
  %256 = bitcast %struct.TYPE_12__* %254 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %255, i8* align 8 %256, i64 16, i1 false)
  %257 = load i32, i32* %11, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %11, align 4
  br label %235

259:                                              ; preds = %235
  br label %260

260:                                              ; preds = %259, %220
  %261 = load i32, i32* %15, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %269

263:                                              ; preds = %260
  %264 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %265 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %266 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = call i32 @variable_was_changed(%struct.TYPE_13__* %264, i32 %267)
  br label %269

269:                                              ; preds = %263, %260
  br label %270

270:                                              ; preds = %269, %26
  br label %271

271:                                              ; preds = %270, %4
  ret void
}

declare dso_local i8** @htab_find_slot_with_hash(i32, i32, i32, i32) #1

declare dso_local i32 @VARIABLE_HASH_VAL(i32) #1

declare dso_local i32 @find_variable_location_part(%struct.TYPE_13__*, i32, i32*) #1

declare dso_local i64 @REG_P(i64) #1

declare dso_local i64 @REGNO(i64) #1

declare dso_local i64 @rtx_equal_p(i64, i64) #1

declare dso_local %struct.TYPE_13__* @unshare_variable(%struct.TYPE_15__*, %struct.TYPE_13__*) #1

declare dso_local i32 @pool_free(i32, %struct.TYPE_14__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @variable_was_changed(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
