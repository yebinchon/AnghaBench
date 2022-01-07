; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/mac/extr_hmac_ct.c_br_hmac_outCT.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/mac/extr_hmac_ct.c_br_hmac_outCT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32 (%struct.TYPE_17__**, i8*)*, i32 (%struct.TYPE_17__**, i8*)*, i32 (%struct.TYPE_17__**, i8*, i64)*, i32 (%struct.TYPE_17__**, i32, i32)*, i32 (%struct.TYPE_17__**)* }

@BR_HASHDESC_MD_PADDING_BE = common dso_local global i32 0, align 4
@BR_HASHDESC_MD_PADDING_128 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @br_hmac_outCT(%struct.TYPE_15__* %0, i8* %1, i64 %2, i64 %3, i64 %4, i8* %5) #0 {
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_17__*, align 8
  %14 = alloca %struct.TYPE_16__, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca [64 x i8], align 16
  %27 = alloca [64 x i8], align 16
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca [1 x i8], align 1
  %36 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i8* %5, i8** %12, align 8
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 2
  %39 = bitcast %struct.TYPE_16__* %14 to i8*
  %40 = bitcast %struct.TYPE_16__* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %39, i8* align 8 %40, i64 8, i1 false)
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %41, align 8
  store %struct.TYPE_17__* %42, %struct.TYPE_17__** %13, align 8
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @BR_HASHDESC_MD_PADDING_BE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %15, align 4
  store i32 9, i32* %16, align 4
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @BR_HASHDESC_MD_PADDING_128, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %6
  %57 = load i32, i32* %16, align 4
  %58 = add nsw i32 %57, 8
  store i32 %58, i32* %16, align 4
  br label %59

59:                                               ; preds = %56, %6
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %61 = call i32 @block_size(%struct.TYPE_17__* %60)
  store i32 %61, i32* %17, align 4
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %63 = call i64 @hash_size(%struct.TYPE_17__* %62)
  store i64 %63, i64* %28, align 8
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 1
  %66 = load i32 (%struct.TYPE_17__**, i8*)*, i32 (%struct.TYPE_17__**, i8*)** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %68 = getelementptr inbounds [64 x i8], [64 x i8]* %26, i64 0, i64 0
  %69 = call i32 %66(%struct.TYPE_17__** %67, i8* %68)
  store i32 %69, i32* %23, align 4
  %70 = load i32, i32* %23, align 4
  %71 = load i64, i64* %9, align 8
  %72 = trunc i64 %71 to i32
  %73 = add nsw i32 %70, %72
  %74 = shl i32 %73, 3
  store i32 %74, i32* %25, align 4
  %75 = load i32, i32* %23, align 4
  %76 = load i64, i64* %10, align 8
  %77 = trunc i64 %76 to i32
  %78 = add nsw i32 %75, %77
  %79 = load i32, i32* %17, align 4
  %80 = sub nsw i32 %79, 1
  %81 = xor i32 %80, -1
  %82 = and i32 %78, %81
  store i32 %82, i32* %24, align 4
  %83 = load i32, i32* %24, align 4
  %84 = load i32, i32* %23, align 4
  %85 = icmp sgt i32 %83, %84
  br i1 %85, label %86, label %108

86:                                               ; preds = %59
  %87 = load i32, i32* %24, align 4
  %88 = load i32, i32* %23, align 4
  %89 = sub nsw i32 %87, %88
  %90 = sext i32 %89 to i64
  store i64 %90, i64* %29, align 8
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 3
  %93 = load i32 (%struct.TYPE_17__**, i8*, i64)*, i32 (%struct.TYPE_17__**, i8*, i64)** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %95 = load i8*, i8** %8, align 8
  %96 = load i64, i64* %29, align 8
  %97 = call i32 %93(%struct.TYPE_17__** %94, i8* %95, i64 %96)
  %98 = load i8*, i8** %8, align 8
  %99 = load i64, i64* %29, align 8
  %100 = getelementptr inbounds i8, i8* %98, i64 %99
  store i8* %100, i8** %8, align 8
  %101 = load i64, i64* %29, align 8
  %102 = load i64, i64* %9, align 8
  %103 = sub i64 %102, %101
  store i64 %103, i64* %9, align 8
  %104 = load i64, i64* %29, align 8
  %105 = load i64, i64* %11, align 8
  %106 = sub i64 %105, %104
  store i64 %106, i64* %11, align 8
  %107 = load i32, i32* %24, align 4
  store i32 %107, i32* %23, align 4
  br label %108

108:                                              ; preds = %86, %59
  %109 = load i32, i32* %23, align 4
  %110 = load i32, i32* %17, align 4
  %111 = sub nsw i32 %110, 1
  %112 = and i32 %109, %111
  store i32 %112, i32* %18, align 4
  %113 = load i32, i32* %18, align 4
  %114 = load i64, i64* %9, align 8
  %115 = trunc i64 %114 to i32
  %116 = add nsw i32 %113, %115
  %117 = load i32, i32* %16, align 4
  %118 = add nsw i32 %116, %117
  %119 = load i32, i32* %17, align 4
  %120 = add nsw i32 %118, %119
  %121 = sub nsw i32 %120, 1
  %122 = load i32, i32* %17, align 4
  %123 = sub nsw i32 %122, 1
  %124 = xor i32 %123, -1
  %125 = and i32 %121, %124
  %126 = sub nsw i32 %125, 1
  %127 = load i32, i32* %18, align 4
  %128 = sub nsw i32 %126, %127
  store i32 %128, i32* %21, align 4
  %129 = load i32, i32* %21, align 4
  %130 = sub nsw i32 %129, 7
  store i32 %130, i32* %20, align 4
  %131 = load i32, i32* %18, align 4
  %132 = load i64, i64* %11, align 8
  %133 = trunc i64 %132 to i32
  %134 = add nsw i32 %131, %133
  %135 = load i32, i32* %16, align 4
  %136 = add nsw i32 %134, %135
  %137 = load i32, i32* %17, align 4
  %138 = add nsw i32 %136, %137
  %139 = sub nsw i32 %138, 1
  %140 = load i32, i32* %17, align 4
  %141 = sub nsw i32 %140, 1
  %142 = xor i32 %141, -1
  %143 = and i32 %139, %142
  %144 = load i32, i32* %18, align 4
  %145 = sub nsw i32 %143, %144
  store i32 %145, i32* %19, align 4
  %146 = getelementptr inbounds [64 x i8], [64 x i8]* %27, i64 0, i64 0
  %147 = call i32 @memset(i8* %146, i32 0, i32 64)
  store i32 0, i32* %22, align 4
  br label %148

148:                                              ; preds = %246, %108
  %149 = load i32, i32* %22, align 4
  %150 = load i32, i32* %19, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %249

152:                                              ; preds = %148
  %153 = load i32, i32* %22, align 4
  %154 = sext i32 %153 to i64
  %155 = load i64, i64* %11, align 8
  %156 = icmp ult i64 %154, %155
  br i1 %156, label %157, label %164

157:                                              ; preds = %152
  %158 = load i8*, i8** %8, align 8
  %159 = load i32, i32* %22, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8, i8* %158, i64 %160
  %162 = load i8, i8* %161, align 1
  %163 = zext i8 %162 to i32
  br label %165

164:                                              ; preds = %152
  br label %165

165:                                              ; preds = %164, %157
  %166 = phi i32 [ %163, %157 ], [ 0, %164 ]
  store i32 %166, i32* %31, align 4
  %167 = load i32, i32* %18, align 4
  %168 = load i32, i32* %22, align 4
  %169 = add nsw i32 %167, %168
  %170 = load i32, i32* %17, align 4
  %171 = sub nsw i32 %170, 1
  %172 = and i32 %169, %171
  store i32 %172, i32* %30, align 4
  %173 = load i32, i32* %30, align 4
  %174 = load i32, i32* %17, align 4
  %175 = sub nsw i32 %174, 8
  %176 = icmp sge i32 %173, %175
  br i1 %176, label %177, label %197

177:                                              ; preds = %165
  %178 = load i32, i32* %30, align 4
  %179 = load i32, i32* %17, align 4
  %180 = sub nsw i32 %179, 8
  %181 = sub nsw i32 %178, %180
  %182 = shl i32 %181, 3
  store i32 %182, i32* %36, align 4
  %183 = load i32, i32* %15, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %190

185:                                              ; preds = %177
  %186 = load i32, i32* %25, align 4
  %187 = load i32, i32* %36, align 4
  %188 = sub i32 56, %187
  %189 = ashr i32 %186, %188
  store i32 %189, i32* %32, align 4
  br label %194

190:                                              ; preds = %177
  %191 = load i32, i32* %25, align 4
  %192 = load i32, i32* %36, align 4
  %193 = ashr i32 %191, %192
  store i32 %193, i32* %32, align 4
  br label %194

194:                                              ; preds = %190, %185
  %195 = load i32, i32* %32, align 4
  %196 = and i32 %195, 255
  store i32 %196, i32* %32, align 4
  br label %198

197:                                              ; preds = %165
  store i32 0, i32* %32, align 4
  br label %198

198:                                              ; preds = %197, %194
  %199 = load i32, i32* %22, align 4
  %200 = load i64, i64* %9, align 8
  %201 = trunc i64 %200 to i32
  %202 = call i32 @EQ(i32 %199, i32 %201)
  %203 = load i32, i32* %31, align 4
  %204 = call i8* @MUX(i32 %202, i32 128, i32 %203)
  %205 = ptrtoint i8* %204 to i32
  store i32 %205, i32* %33, align 4
  %206 = load i32, i32* %22, align 4
  %207 = load i32, i32* %20, align 4
  %208 = call i32 @LT(i32 %206, i32 %207)
  %209 = load i32, i32* %32, align 4
  %210 = call i8* @MUX(i32 %208, i32 0, i32 %209)
  %211 = ptrtoint i8* %210 to i32
  store i32 %211, i32* %34, align 4
  %212 = load i32, i32* %22, align 4
  %213 = load i64, i64* %9, align 8
  %214 = trunc i64 %213 to i32
  %215 = call i32 @LE(i32 %212, i32 %214)
  %216 = load i32, i32* %33, align 4
  %217 = load i32, i32* %34, align 4
  %218 = call i8* @MUX(i32 %215, i32 %216, i32 %217)
  %219 = ptrtoint i8* %218 to i8
  %220 = getelementptr inbounds [1 x i8], [1 x i8]* %35, i64 0, i64 0
  store i8 %219, i8* %220, align 1
  %221 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %222 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %221, i32 0, i32 3
  %223 = load i32 (%struct.TYPE_17__**, i8*, i64)*, i32 (%struct.TYPE_17__**, i8*, i64)** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %225 = getelementptr inbounds [1 x i8], [1 x i8]* %35, i64 0, i64 0
  %226 = call i32 %223(%struct.TYPE_17__** %224, i8* %225, i64 1)
  %227 = load i32, i32* %30, align 4
  %228 = load i32, i32* %17, align 4
  %229 = sub nsw i32 %228, 1
  %230 = icmp eq i32 %227, %229
  br i1 %230, label %231, label %245

231:                                              ; preds = %198
  %232 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %233 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %232, i32 0, i32 1
  %234 = load i32 (%struct.TYPE_17__**, i8*)*, i32 (%struct.TYPE_17__**, i8*)** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %236 = getelementptr inbounds [64 x i8], [64 x i8]* %26, i64 0, i64 0
  %237 = call i32 %234(%struct.TYPE_17__** %235, i8* %236)
  %238 = load i32, i32* %22, align 4
  %239 = load i32, i32* %21, align 4
  %240 = call i32 @EQ(i32 %238, i32 %239)
  %241 = getelementptr inbounds [64 x i8], [64 x i8]* %27, i64 0, i64 0
  %242 = getelementptr inbounds [64 x i8], [64 x i8]* %26, i64 0, i64 0
  %243 = load i64, i64* %28, align 8
  %244 = call i32 @CCOPY(i32 %240, i8* %241, i8* %242, i64 %243)
  br label %245

245:                                              ; preds = %231, %198
  br label %246

246:                                              ; preds = %245
  %247 = load i32, i32* %22, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %22, align 4
  br label %148

249:                                              ; preds = %148
  %250 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %251 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %250, i32 0, i32 5
  %252 = load i32 (%struct.TYPE_17__**)*, i32 (%struct.TYPE_17__**)** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %254 = call i32 %252(%struct.TYPE_17__** %253)
  %255 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %256 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %255, i32 0, i32 4
  %257 = load i32 (%struct.TYPE_17__**, i32, i32)*, i32 (%struct.TYPE_17__**, i32, i32)** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %259 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %260 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 8
  %262 = load i32, i32* %17, align 4
  %263 = call i32 %257(%struct.TYPE_17__** %258, i32 %261, i32 %262)
  %264 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %265 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %264, i32 0, i32 3
  %266 = load i32 (%struct.TYPE_17__**, i8*, i64)*, i32 (%struct.TYPE_17__**, i8*, i64)** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %268 = getelementptr inbounds [64 x i8], [64 x i8]* %27, i64 0, i64 0
  %269 = load i64, i64* %28, align 8
  %270 = call i32 %266(%struct.TYPE_17__** %267, i8* %268, i64 %269)
  %271 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %272 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %271, i32 0, i32 2
  %273 = load i32 (%struct.TYPE_17__**, i8*)*, i32 (%struct.TYPE_17__**, i8*)** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %275 = getelementptr inbounds [64 x i8], [64 x i8]* %27, i64 0, i64 0
  %276 = call i32 %273(%struct.TYPE_17__** %274, i8* %275)
  %277 = load i8*, i8** %12, align 8
  %278 = getelementptr inbounds [64 x i8], [64 x i8]* %27, i64 0, i64 0
  %279 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %280 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %279, i32 0, i32 0
  %281 = load i64, i64* %280, align 8
  %282 = call i32 @memcpy(i8* %277, i8* %278, i64 %281)
  %283 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %284 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %283, i32 0, i32 0
  %285 = load i64, i64* %284, align 8
  ret i64 %285
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @block_size(%struct.TYPE_17__*) #2

declare dso_local i64 @hash_size(%struct.TYPE_17__*) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i8* @MUX(i32, i32, i32) #2

declare dso_local i32 @EQ(i32, i32) #2

declare dso_local i32 @LT(i32, i32) #2

declare dso_local i32 @LE(i32, i32) #2

declare dso_local i32 @CCOPY(i32, i8*, i8*, i64) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
