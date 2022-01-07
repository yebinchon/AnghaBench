; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_compare_ics.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_compare_ics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64, i64, i64, %struct.TYPE_12__, %struct.TYPE_11__*, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_13__* }
%struct.TYPE_11__ = type { i64 }

@NULL_TREE = common dso_local global i64 0, align 8
@cr_bad = common dso_local global i64 0, align 8
@ck_user = common dso_local global i64 0, align 8
@ck_ambig = common dso_local global i64 0, align 8
@ck_identity = common dso_local global i64 0, align 8
@VOID_TYPE = common dso_local global i64 0, align 8
@ck_qual = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_13__*)* @compare_ics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_ics(%struct.TYPE_13__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_13__*, align 8
  %19 = alloca %struct.TYPE_13__*, align 8
  %20 = alloca %struct.TYPE_13__*, align 8
  %21 = alloca %struct.TYPE_13__*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  %24 = load i64, i64* @NULL_TREE, align 8
  store i64 %24, i64* %10, align 8
  %25 = load i64, i64* @NULL_TREE, align 8
  store i64 %25, i64* %11, align 8
  %26 = load i64, i64* @NULL_TREE, align 8
  store i64 %26, i64* %12, align 8
  %27 = load i64, i64* @NULL_TREE, align 8
  store i64 %27, i64* %13, align 8
  %28 = call i32 @maybe_handle_implicit_object(%struct.TYPE_13__** %4)
  %29 = call i32 @maybe_handle_implicit_object(%struct.TYPE_13__** %5)
  %30 = call i64 @maybe_handle_ref_bind(%struct.TYPE_13__** %4)
  store i64 %30, i64* %16, align 8
  %31 = call i64 @maybe_handle_ref_bind(%struct.TYPE_13__** %5)
  store i64 %31, i64* %17, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %33 = call i64 @CONVERSION_RANK(%struct.TYPE_13__* %32)
  store i64 %33, i64* %14, align 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %35 = call i64 @CONVERSION_RANK(%struct.TYPE_13__* %34)
  store i64 %35, i64* %15, align 8
  %36 = load i64, i64* %14, align 8
  %37 = load i64, i64* %15, align 8
  %38 = icmp sgt i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %542

40:                                               ; preds = %2
  %41 = load i64, i64* %14, align 8
  %42 = load i64, i64* %15, align 8
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 1, i32* %3, align 4
  br label %542

45:                                               ; preds = %40
  br label %46

46:                                               ; preds = %45
  %47 = load i64, i64* %14, align 8
  %48 = load i64, i64* @cr_bad, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %86

50:                                               ; preds = %46
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp sgt i64 %53, %56
  br i1 %57, label %66, label %58

58:                                               ; preds = %50
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp sgt i64 %61, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %58, %50
  store i32 -1, i32* %3, align 4
  br label %542

67:                                               ; preds = %58
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp slt i64 %70, %73
  br i1 %74, label %83, label %75

75:                                               ; preds = %67
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp slt i64 %78, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %75, %67
  store i32 1, i32* %3, align 4
  br label %542

84:                                               ; preds = %75
  br label %85

85:                                               ; preds = %84
  br label %86

86:                                               ; preds = %85, %46
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 6
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  store i32 0, i32* %3, align 4
  br label %542

92:                                               ; preds = %86
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %159

97:                                               ; preds = %92
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_13__* %98, %struct.TYPE_13__** %18, align 8
  br label %99

99:                                               ; preds = %113, %97
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @ck_user, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %118

105:                                              ; preds = %99
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @ck_ambig, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %105
  store i32 0, i32* %3, align 4
  br label %542

112:                                              ; preds = %105
  br label %113

113:                                              ; preds = %112
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 4
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %116, align 8
  store %struct.TYPE_13__* %117, %struct.TYPE_13__** %18, align 8
  br label %99

118:                                              ; preds = %99
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_13__* %119, %struct.TYPE_13__** %19, align 8
  br label %120

120:                                              ; preds = %134, %118
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @ck_user, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %139

126:                                              ; preds = %120
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @ck_ambig, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %126
  store i32 0, i32* %3, align 4
  br label %542

133:                                              ; preds = %126
  br label %134

134:                                              ; preds = %133
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 4
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %137, align 8
  store %struct.TYPE_13__* %138, %struct.TYPE_13__** %19, align 8
  br label %120

139:                                              ; preds = %120
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 5
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 5
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %144, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %139
  store i32 0, i32* %3, align 4
  br label %542

152:                                              ; preds = %139
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 3
  %155 = load i64, i64* %154, align 8
  store i64 %155, i64* %6, align 8
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 3
  %158 = load i64, i64* %157, align 8
  store i64 %158, i64* %7, align 8
  br label %192

159:                                              ; preds = %92
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_13__* %160, %struct.TYPE_13__** %20, align 8
  br label %161

161:                                              ; preds = %167, %159
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @ck_identity, align 8
  %166 = icmp ne i64 %164, %165
  br i1 %166, label %167, label %172

167:                                              ; preds = %161
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 4
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 0
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %170, align 8
  store %struct.TYPE_13__* %171, %struct.TYPE_13__** %20, align 8
  br label %161

172:                                              ; preds = %161
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 3
  %175 = load i64, i64* %174, align 8
  store i64 %175, i64* %6, align 8
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_13__* %176, %struct.TYPE_13__** %21, align 8
  br label %177

177:                                              ; preds = %183, %172
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 2
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @ck_identity, align 8
  %182 = icmp ne i64 %180, %181
  br i1 %182, label %183, label %188

183:                                              ; preds = %177
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 4
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %186, align 8
  store %struct.TYPE_13__* %187, %struct.TYPE_13__** %21, align 8
  br label %177

188:                                              ; preds = %177
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 3
  %191 = load i64, i64* %190, align 8
  store i64 %191, i64* %7, align 8
  br label %192

192:                                              ; preds = %188, %152
  %193 = load i64, i64* %6, align 8
  %194 = load i64, i64* %7, align 8
  %195 = call i64 @same_type_p(i64 %193, i64 %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %210

197:                                              ; preds = %192
  %198 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %199 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %200 = call i64 @is_subseq(%struct.TYPE_13__* %198, %struct.TYPE_13__* %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %197
  store i32 1, i32* %3, align 4
  br label %542

203:                                              ; preds = %197
  %204 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %205 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %206 = call i64 @is_subseq(%struct.TYPE_13__* %204, %struct.TYPE_13__* %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %203
  store i32 -1, i32* %3, align 4
  br label %542

209:                                              ; preds = %203
  br label %210

210:                                              ; preds = %209, %192
  %211 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = icmp slt i64 %213, %216
  br i1 %217, label %218, label %219

218:                                              ; preds = %210
  store i32 1, i32* %3, align 4
  br label %542

219:                                              ; preds = %210
  %220 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %223, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = icmp slt i64 %222, %225
  br i1 %226, label %227, label %228

227:                                              ; preds = %219
  store i32 -1, i32* %3, align 4
  br label %542

228:                                              ; preds = %219
  br label %229

229:                                              ; preds = %228
  %230 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %231 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %230, i32 0, i32 3
  %232 = load i64, i64* %231, align 8
  store i64 %232, i64* %8, align 8
  %233 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %233, i32 0, i32 3
  %235 = load i64, i64* %234, align 8
  store i64 %235, i64* %9, align 8
  %236 = load i64, i64* %6, align 8
  %237 = call i64 @TYPE_PTR_P(i64 %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %260

239:                                              ; preds = %229
  %240 = load i64, i64* %7, align 8
  %241 = call i64 @TYPE_PTR_P(i64 %240)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %260

243:                                              ; preds = %239
  %244 = load i64, i64* %8, align 8
  %245 = call i64 @TYPE_PTR_P(i64 %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %260

247:                                              ; preds = %243
  %248 = load i64, i64* %9, align 8
  %249 = call i64 @TYPE_PTR_P(i64 %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %260

251:                                              ; preds = %247
  %252 = load i64, i64* %6, align 8
  %253 = call i64 @TREE_TYPE(i64 %252)
  store i64 %253, i64* %10, align 8
  %254 = load i64, i64* %7, align 8
  %255 = call i64 @TREE_TYPE(i64 %254)
  store i64 %255, i64* %11, align 8
  %256 = load i64, i64* %8, align 8
  %257 = call i64 @TREE_TYPE(i64 %256)
  store i64 %257, i64* %12, align 8
  %258 = load i64, i64* %9, align 8
  %259 = call i64 @TREE_TYPE(i64 %258)
  store i64 %259, i64* %13, align 8
  br label %302

260:                                              ; preds = %247, %243, %239, %229
  %261 = load i64, i64* %6, align 8
  %262 = call i64 @TYPE_PTRMEM_P(i64 %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %276

264:                                              ; preds = %260
  %265 = load i64, i64* %7, align 8
  %266 = call i64 @TYPE_PTRMEM_P(i64 %265)
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %276

268:                                              ; preds = %264
  %269 = load i64, i64* %8, align 8
  %270 = call i64 @TYPE_PTRMEM_P(i64 %269)
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %276

272:                                              ; preds = %268
  %273 = load i64, i64* %9, align 8
  %274 = call i64 @TYPE_PTRMEM_P(i64 %273)
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %292, label %276

276:                                              ; preds = %272, %268, %264, %260
  %277 = load i64, i64* %6, align 8
  %278 = call i64 @TYPE_PTRMEMFUNC_P(i64 %277)
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %301

280:                                              ; preds = %276
  %281 = load i64, i64* %7, align 8
  %282 = call i64 @TYPE_PTRMEMFUNC_P(i64 %281)
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %301

284:                                              ; preds = %280
  %285 = load i64, i64* %8, align 8
  %286 = call i64 @TYPE_PTRMEMFUNC_P(i64 %285)
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %301

288:                                              ; preds = %284
  %289 = load i64, i64* %9, align 8
  %290 = call i64 @TYPE_PTRMEMFUNC_P(i64 %289)
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %301

292:                                              ; preds = %288, %272
  %293 = load i64, i64* %6, align 8
  %294 = call i64 @TYPE_PTRMEM_CLASS_TYPE(i64 %293)
  store i64 %294, i64* %12, align 8
  %295 = load i64, i64* %7, align 8
  %296 = call i64 @TYPE_PTRMEM_CLASS_TYPE(i64 %295)
  store i64 %296, i64* %13, align 8
  %297 = load i64, i64* %8, align 8
  %298 = call i64 @TYPE_PTRMEM_CLASS_TYPE(i64 %297)
  store i64 %298, i64* %10, align 8
  %299 = load i64, i64* %9, align 8
  %300 = call i64 @TYPE_PTRMEM_CLASS_TYPE(i64 %299)
  store i64 %300, i64* %11, align 8
  br label %301

301:                                              ; preds = %292, %288, %284, %280, %276
  br label %302

302:                                              ; preds = %301, %251
  %303 = load i64, i64* %10, align 8
  %304 = load i64, i64* @NULL_TREE, align 8
  %305 = icmp ne i64 %303, %304
  br i1 %305, label %306, label %429

306:                                              ; preds = %302
  %307 = load i64, i64* %10, align 8
  %308 = call i64 @TREE_CODE(i64 %307)
  %309 = call i64 @IS_AGGR_TYPE_CODE(i64 %308)
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %429

311:                                              ; preds = %306
  %312 = load i64, i64* %11, align 8
  %313 = call i64 @TREE_CODE(i64 %312)
  %314 = call i64 @IS_AGGR_TYPE_CODE(i64 %313)
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %429

316:                                              ; preds = %311
  %317 = load i64, i64* %12, align 8
  %318 = call i64 @TREE_CODE(i64 %317)
  %319 = load i64, i64* @VOID_TYPE, align 8
  %320 = icmp eq i64 %318, %319
  br i1 %320, label %321, label %340

321:                                              ; preds = %316
  %322 = load i64, i64* %13, align 8
  %323 = call i64 @TREE_CODE(i64 %322)
  %324 = load i64, i64* @VOID_TYPE, align 8
  %325 = icmp eq i64 %323, %324
  br i1 %325, label %326, label %340

326:                                              ; preds = %321
  %327 = load i64, i64* %10, align 8
  %328 = load i64, i64* %11, align 8
  %329 = call i64 @is_properly_derived_from(i64 %327, i64 %328)
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %332

331:                                              ; preds = %326
  store i32 -1, i32* %3, align 4
  br label %542

332:                                              ; preds = %326
  %333 = load i64, i64* %11, align 8
  %334 = load i64, i64* %10, align 8
  %335 = call i64 @is_properly_derived_from(i64 %333, i64 %334)
  %336 = icmp ne i64 %335, 0
  br i1 %336, label %337, label %338

337:                                              ; preds = %332
  store i32 1, i32* %3, align 4
  br label %542

338:                                              ; preds = %332
  br label %339

339:                                              ; preds = %338
  br label %428

340:                                              ; preds = %321, %316
  %341 = load i64, i64* %12, align 8
  %342 = call i64 @TREE_CODE(i64 %341)
  %343 = load i64, i64* @VOID_TYPE, align 8
  %344 = icmp eq i64 %342, %343
  br i1 %344, label %350, label %345

345:                                              ; preds = %340
  %346 = load i64, i64* %13, align 8
  %347 = call i64 @TREE_CODE(i64 %346)
  %348 = load i64, i64* @VOID_TYPE, align 8
  %349 = icmp eq i64 %347, %348
  br i1 %349, label %350, label %376

350:                                              ; preds = %345, %340
  %351 = load i64, i64* %10, align 8
  %352 = load i64, i64* %11, align 8
  %353 = call i64 @same_type_p(i64 %351, i64 %352)
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %355, label %375

355:                                              ; preds = %350
  %356 = load i64, i64* %13, align 8
  %357 = call i64 @TREE_CODE(i64 %356)
  %358 = load i64, i64* @VOID_TYPE, align 8
  %359 = icmp eq i64 %357, %358
  br i1 %359, label %360, label %367

360:                                              ; preds = %355
  %361 = load i64, i64* %10, align 8
  %362 = load i64, i64* %12, align 8
  %363 = call i64 @is_properly_derived_from(i64 %361, i64 %362)
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %365, label %366

365:                                              ; preds = %360
  store i32 1, i32* %3, align 4
  br label %542

366:                                              ; preds = %360
  br label %374

367:                                              ; preds = %355
  %368 = load i64, i64* %10, align 8
  %369 = load i64, i64* %13, align 8
  %370 = call i64 @is_properly_derived_from(i64 %368, i64 %369)
  %371 = icmp ne i64 %370, 0
  br i1 %371, label %372, label %373

372:                                              ; preds = %367
  store i32 -1, i32* %3, align 4
  br label %542

373:                                              ; preds = %367
  br label %374

374:                                              ; preds = %373, %366
  br label %375

375:                                              ; preds = %374, %350
  br label %427

376:                                              ; preds = %345
  %377 = load i64, i64* %12, align 8
  %378 = call i64 @TREE_CODE(i64 %377)
  %379 = call i64 @IS_AGGR_TYPE_CODE(i64 %378)
  %380 = icmp ne i64 %379, 0
  br i1 %380, label %381, label %426

381:                                              ; preds = %376
  %382 = load i64, i64* %13, align 8
  %383 = call i64 @TREE_CODE(i64 %382)
  %384 = call i64 @IS_AGGR_TYPE_CODE(i64 %383)
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %386, label %426

386:                                              ; preds = %381
  %387 = load i64, i64* %10, align 8
  %388 = load i64, i64* %11, align 8
  %389 = call i64 @same_type_p(i64 %387, i64 %388)
  %390 = icmp ne i64 %389, 0
  br i1 %390, label %391, label %405

391:                                              ; preds = %386
  %392 = load i64, i64* %12, align 8
  %393 = load i64, i64* %13, align 8
  %394 = call i64 @is_properly_derived_from(i64 %392, i64 %393)
  %395 = icmp ne i64 %394, 0
  br i1 %395, label %396, label %397

396:                                              ; preds = %391
  store i32 1, i32* %3, align 4
  br label %542

397:                                              ; preds = %391
  %398 = load i64, i64* %13, align 8
  %399 = load i64, i64* %12, align 8
  %400 = call i64 @is_properly_derived_from(i64 %398, i64 %399)
  %401 = icmp ne i64 %400, 0
  br i1 %401, label %402, label %403

402:                                              ; preds = %397
  store i32 -1, i32* %3, align 4
  br label %542

403:                                              ; preds = %397
  br label %404

404:                                              ; preds = %403
  br label %425

405:                                              ; preds = %386
  %406 = load i64, i64* %12, align 8
  %407 = load i64, i64* %13, align 8
  %408 = call i64 @same_type_p(i64 %406, i64 %407)
  %409 = icmp ne i64 %408, 0
  br i1 %409, label %410, label %424

410:                                              ; preds = %405
  %411 = load i64, i64* %11, align 8
  %412 = load i64, i64* %10, align 8
  %413 = call i64 @is_properly_derived_from(i64 %411, i64 %412)
  %414 = icmp ne i64 %413, 0
  br i1 %414, label %415, label %416

415:                                              ; preds = %410
  store i32 1, i32* %3, align 4
  br label %542

416:                                              ; preds = %410
  %417 = load i64, i64* %10, align 8
  %418 = load i64, i64* %11, align 8
  %419 = call i64 @is_properly_derived_from(i64 %417, i64 %418)
  %420 = icmp ne i64 %419, 0
  br i1 %420, label %421, label %422

421:                                              ; preds = %416
  store i32 -1, i32* %3, align 4
  br label %542

422:                                              ; preds = %416
  br label %423

423:                                              ; preds = %422
  br label %424

424:                                              ; preds = %423, %405
  br label %425

425:                                              ; preds = %424, %404
  br label %426

426:                                              ; preds = %425, %381, %376
  br label %427

427:                                              ; preds = %426, %375
  br label %428

428:                                              ; preds = %427, %339
  br label %505

429:                                              ; preds = %311, %306, %302
  %430 = load i64, i64* %6, align 8
  %431 = call i64 @non_reference(i64 %430)
  %432 = call i64 @CLASS_TYPE_P(i64 %431)
  %433 = icmp ne i64 %432, 0
  br i1 %433, label %434, label %466

434:                                              ; preds = %429
  %435 = load i64, i64* %6, align 8
  %436 = load i64, i64* %7, align 8
  %437 = call i64 @same_type_p(i64 %435, i64 %436)
  %438 = icmp ne i64 %437, 0
  br i1 %438, label %439, label %466

439:                                              ; preds = %434
  %440 = load i64, i64* %6, align 8
  %441 = call i64 @non_reference(i64 %440)
  store i64 %441, i64* %22, align 8
  %442 = load i64, i64* %22, align 8
  %443 = load i64, i64* %8, align 8
  %444 = call i64 @is_properly_derived_from(i64 %442, i64 %443)
  %445 = icmp ne i64 %444, 0
  br i1 %445, label %446, label %465

446:                                              ; preds = %439
  %447 = load i64, i64* %22, align 8
  %448 = load i64, i64* %9, align 8
  %449 = call i64 @is_properly_derived_from(i64 %447, i64 %448)
  %450 = icmp ne i64 %449, 0
  br i1 %450, label %451, label %465

451:                                              ; preds = %446
  %452 = load i64, i64* %8, align 8
  %453 = load i64, i64* %9, align 8
  %454 = call i64 @is_properly_derived_from(i64 %452, i64 %453)
  %455 = icmp ne i64 %454, 0
  br i1 %455, label %456, label %457

456:                                              ; preds = %451
  store i32 1, i32* %3, align 4
  br label %542

457:                                              ; preds = %451
  %458 = load i64, i64* %9, align 8
  %459 = load i64, i64* %8, align 8
  %460 = call i64 @is_properly_derived_from(i64 %458, i64 %459)
  %461 = icmp ne i64 %460, 0
  br i1 %461, label %462, label %463

462:                                              ; preds = %457
  store i32 -1, i32* %3, align 4
  br label %542

463:                                              ; preds = %457
  br label %464

464:                                              ; preds = %463
  br label %465

465:                                              ; preds = %464, %446, %439
  br label %504

466:                                              ; preds = %434, %429
  %467 = load i64, i64* %8, align 8
  %468 = call i64 @non_reference(i64 %467)
  %469 = call i64 @CLASS_TYPE_P(i64 %468)
  %470 = icmp ne i64 %469, 0
  br i1 %470, label %471, label %503

471:                                              ; preds = %466
  %472 = load i64, i64* %8, align 8
  %473 = load i64, i64* %9, align 8
  %474 = call i64 @same_type_p(i64 %472, i64 %473)
  %475 = icmp ne i64 %474, 0
  br i1 %475, label %476, label %503

476:                                              ; preds = %471
  %477 = load i64, i64* %8, align 8
  %478 = call i64 @non_reference(i64 %477)
  store i64 %478, i64* %23, align 8
  %479 = load i64, i64* %6, align 8
  %480 = load i64, i64* %23, align 8
  %481 = call i64 @is_properly_derived_from(i64 %479, i64 %480)
  %482 = icmp ne i64 %481, 0
  br i1 %482, label %483, label %502

483:                                              ; preds = %476
  %484 = load i64, i64* %7, align 8
  %485 = load i64, i64* %23, align 8
  %486 = call i64 @is_properly_derived_from(i64 %484, i64 %485)
  %487 = icmp ne i64 %486, 0
  br i1 %487, label %488, label %502

488:                                              ; preds = %483
  %489 = load i64, i64* %7, align 8
  %490 = load i64, i64* %6, align 8
  %491 = call i64 @is_properly_derived_from(i64 %489, i64 %490)
  %492 = icmp ne i64 %491, 0
  br i1 %492, label %493, label %494

493:                                              ; preds = %488
  store i32 1, i32* %3, align 4
  br label %542

494:                                              ; preds = %488
  %495 = load i64, i64* %6, align 8
  %496 = load i64, i64* %7, align 8
  %497 = call i64 @is_properly_derived_from(i64 %495, i64 %496)
  %498 = icmp ne i64 %497, 0
  br i1 %498, label %499, label %500

499:                                              ; preds = %494
  store i32 -1, i32* %3, align 4
  br label %542

500:                                              ; preds = %494
  br label %501

501:                                              ; preds = %500
  br label %502

502:                                              ; preds = %501, %483, %476
  br label %503

503:                                              ; preds = %502, %471, %466
  br label %504

504:                                              ; preds = %503, %465
  br label %505

505:                                              ; preds = %504, %428
  %506 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %507 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %506, i32 0, i32 2
  %508 = load i64, i64* %507, align 8
  %509 = load i64, i64* @ck_qual, align 8
  %510 = icmp eq i64 %508, %509
  br i1 %510, label %511, label %526

511:                                              ; preds = %505
  %512 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %513 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %512, i32 0, i32 2
  %514 = load i64, i64* %513, align 8
  %515 = load i64, i64* @ck_qual, align 8
  %516 = icmp eq i64 %514, %515
  br i1 %516, label %517, label %526

517:                                              ; preds = %511
  %518 = load i64, i64* %6, align 8
  %519 = load i64, i64* %7, align 8
  %520 = call i64 @same_type_p(i64 %518, i64 %519)
  %521 = icmp ne i64 %520, 0
  br i1 %521, label %522, label %526

522:                                              ; preds = %517
  %523 = load i64, i64* %8, align 8
  %524 = load i64, i64* %9, align 8
  %525 = call i32 @comp_cv_qual_signature(i64 %523, i64 %524)
  store i32 %525, i32* %3, align 4
  br label %542

526:                                              ; preds = %517, %511, %505
  %527 = load i64, i64* %16, align 8
  %528 = icmp ne i64 %527, 0
  br i1 %528, label %529, label %541

529:                                              ; preds = %526
  %530 = load i64, i64* %17, align 8
  %531 = icmp ne i64 %530, 0
  br i1 %531, label %532, label %541

532:                                              ; preds = %529
  %533 = load i64, i64* %8, align 8
  %534 = load i64, i64* %9, align 8
  %535 = call i64 @same_type_ignoring_top_level_qualifiers_p(i64 %533, i64 %534)
  %536 = icmp ne i64 %535, 0
  br i1 %536, label %537, label %541

537:                                              ; preds = %532
  %538 = load i64, i64* %17, align 8
  %539 = load i64, i64* %16, align 8
  %540 = call i32 @comp_cv_qualification(i64 %538, i64 %539)
  store i32 %540, i32* %3, align 4
  br label %542

541:                                              ; preds = %532, %529, %526
  store i32 0, i32* %3, align 4
  br label %542

542:                                              ; preds = %541, %537, %522, %499, %493, %462, %456, %421, %415, %402, %396, %372, %365, %337, %331, %227, %218, %208, %202, %151, %132, %111, %91, %83, %66, %44, %39
  %543 = load i32, i32* %3, align 4
  ret i32 %543
}

declare dso_local i32 @maybe_handle_implicit_object(%struct.TYPE_13__**) #1

declare dso_local i64 @maybe_handle_ref_bind(%struct.TYPE_13__**) #1

declare dso_local i64 @CONVERSION_RANK(%struct.TYPE_13__*) #1

declare dso_local i64 @same_type_p(i64, i64) #1

declare dso_local i64 @is_subseq(%struct.TYPE_13__*, %struct.TYPE_13__*) #1

declare dso_local i64 @TYPE_PTR_P(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @TYPE_PTRMEM_P(i64) #1

declare dso_local i64 @TYPE_PTRMEMFUNC_P(i64) #1

declare dso_local i64 @TYPE_PTRMEM_CLASS_TYPE(i64) #1

declare dso_local i64 @IS_AGGR_TYPE_CODE(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @is_properly_derived_from(i64, i64) #1

declare dso_local i64 @CLASS_TYPE_P(i64) #1

declare dso_local i64 @non_reference(i64) #1

declare dso_local i32 @comp_cv_qual_signature(i64, i64) #1

declare dso_local i64 @same_type_ignoring_top_level_qualifiers_p(i64, i64) #1

declare dso_local i32 @comp_cv_qualification(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
