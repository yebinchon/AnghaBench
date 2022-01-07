; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_ctkip.c_zfTkipPhase1KeyMix.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_ctkip.c_zfTkipPhase1KeyMix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zsTkipSeed = type { i32, i32*, i32*, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfTkipPhase1KeyMix(i32 %0, %struct.zsTkipSeed* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.zsTkipSeed*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.zsTkipSeed* %1, %struct.zsTkipSeed** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = ashr i32 %10, 16
  %12 = and i32 %11, 65535
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = and i32 %13, 65535
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %17 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 %15, i32* %19, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %22 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  store i32 %20, i32* %24, align 4
  %25 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %26 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %31 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 %34, 8
  %36 = add nsw i32 %29, %35
  %37 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %38 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 2
  store i32 %36, i32* %40, align 4
  %41 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %42 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %47 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 3
  %50 = load i32, i32* %49, align 4
  %51 = shl i32 %50, 8
  %52 = add nsw i32 %45, %51
  %53 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %54 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 3
  store i32 %52, i32* %56, align 4
  %57 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %58 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 4
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %63 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 5
  %66 = load i32, i32* %65, align 4
  %67 = shl i32 %66, 8
  %68 = add nsw i32 %61, %67
  %69 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %70 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 4
  store i32 %68, i32* %72, align 4
  store i32 0, i32* %8, align 4
  br label %73

73:                                               ; preds = %265, %2
  %74 = load i32, i32* %8, align 4
  %75 = icmp slt i32 %74, 8
  br i1 %75, label %76, label %268

76:                                               ; preds = %73
  %77 = load i32, i32* %8, align 4
  %78 = and i32 %77, 1
  %79 = mul nsw i32 2, %78
  store i32 %79, i32* %9, align 4
  %80 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %81 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %86 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 4
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %91 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %90, i32 0, i32 4
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 1, %93
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %92, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %99 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %98, i32 0, i32 4
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @ZM_BYTE_TO_WORD(i32 %97, i32 %104)
  %106 = xor i32 %89, %105
  %107 = call i32 @zfTkipSbox(i32 %106)
  %108 = add nsw i32 %84, %107
  %109 = and i32 %108, 65535
  %110 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %111 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 0
  store i32 %109, i32* %113, align 4
  %114 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %115 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %120 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %125 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %124, i32 0, i32 4
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %9, align 4
  %128 = add nsw i32 5, %127
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %126, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %133 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %132, i32 0, i32 4
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %9, align 4
  %136 = add nsw i32 4, %135
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %134, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @ZM_BYTE_TO_WORD(i32 %131, i32 %139)
  %141 = xor i32 %123, %140
  %142 = call i32 @zfTkipSbox(i32 %141)
  %143 = add nsw i32 %118, %142
  %144 = and i32 %143, 65535
  %145 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %146 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 1
  store i32 %144, i32* %148, align 4
  %149 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %150 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %149, i32 0, i32 1
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 2
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %155 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %154, i32 0, i32 1
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 1
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %160 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %159, i32 0, i32 4
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %9, align 4
  %163 = add nsw i32 9, %162
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %161, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %168 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %167, i32 0, i32 4
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %9, align 4
  %171 = add nsw i32 8, %170
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %169, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @ZM_BYTE_TO_WORD(i32 %166, i32 %174)
  %176 = xor i32 %158, %175
  %177 = call i32 @zfTkipSbox(i32 %176)
  %178 = add nsw i32 %153, %177
  %179 = and i32 %178, 65535
  %180 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %181 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %180, i32 0, i32 1
  %182 = load i32*, i32** %181, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 2
  store i32 %179, i32* %183, align 4
  %184 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %185 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %184, i32 0, i32 1
  %186 = load i32*, i32** %185, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 3
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %190 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %189, i32 0, i32 1
  %191 = load i32*, i32** %190, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 2
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %195 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %194, i32 0, i32 4
  %196 = load i32*, i32** %195, align 8
  %197 = load i32, i32* %9, align 4
  %198 = add nsw i32 13, %197
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %196, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %203 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %202, i32 0, i32 4
  %204 = load i32*, i32** %203, align 8
  %205 = load i32, i32* %9, align 4
  %206 = add nsw i32 12, %205
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %204, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @ZM_BYTE_TO_WORD(i32 %201, i32 %209)
  %211 = xor i32 %193, %210
  %212 = call i32 @zfTkipSbox(i32 %211)
  %213 = add nsw i32 %188, %212
  %214 = and i32 %213, 65535
  %215 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %216 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %215, i32 0, i32 1
  %217 = load i32*, i32** %216, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 3
  store i32 %214, i32* %218, align 4
  %219 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %220 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %219, i32 0, i32 1
  %221 = load i32*, i32** %220, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 4
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %225 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %224, i32 0, i32 1
  %226 = load i32*, i32** %225, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 3
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %230 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %229, i32 0, i32 4
  %231 = load i32*, i32** %230, align 8
  %232 = load i32, i32* %9, align 4
  %233 = add nsw i32 1, %232
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %231, i64 %234
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %238 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %237, i32 0, i32 4
  %239 = load i32*, i32** %238, align 8
  %240 = load i32, i32* %9, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %239, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @ZM_BYTE_TO_WORD(i32 %236, i32 %243)
  %245 = xor i32 %228, %244
  %246 = call i32 @zfTkipSbox(i32 %245)
  %247 = add nsw i32 %223, %246
  %248 = and i32 %247, 65535
  %249 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %250 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %249, i32 0, i32 1
  %251 = load i32*, i32** %250, align 8
  %252 = getelementptr inbounds i32, i32* %251, i64 4
  store i32 %248, i32* %252, align 4
  %253 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %254 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %253, i32 0, i32 1
  %255 = load i32*, i32** %254, align 8
  %256 = getelementptr inbounds i32, i32* %255, i64 4
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* %8, align 4
  %259 = add nsw i32 %257, %258
  %260 = and i32 %259, 65535
  %261 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %262 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %261, i32 0, i32 1
  %263 = load i32*, i32** %262, align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 4
  store i32 %260, i32* %264, align 4
  br label %265

265:                                              ; preds = %76
  %266 = load i32, i32* %8, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %8, align 4
  br label %73

268:                                              ; preds = %73
  %269 = load i32, i32* %4, align 4
  %270 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %271 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = add nsw i32 %272, 1
  %274 = icmp eq i32 %269, %273
  br i1 %274, label %275, label %279

275:                                              ; preds = %268
  %276 = load i32, i32* %4, align 4
  %277 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %5, align 8
  %278 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %277, i32 0, i32 3
  store i32 %276, i32* %278, align 8
  store i32 1, i32* %3, align 4
  br label %280

279:                                              ; preds = %268
  store i32 0, i32* %3, align 4
  br label %280

280:                                              ; preds = %279, %275
  %281 = load i32, i32* %3, align 4
  ret i32 %281
}

declare dso_local i32 @zfTkipSbox(i32) #1

declare dso_local i32 @ZM_BYTE_TO_WORD(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
