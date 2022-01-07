; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ssl/extr_ssl_rec_cbc.c_cbc_decrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ssl/extr_ssl_rec_cbc.c_cbc_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i64, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 (%struct.TYPE_7__**, i32, i8*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_6__*, i32, i32, i8*, i64*)* @cbc_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @cbc_decrypt(%struct.TYPE_6__* %0, i32 %1, i32 %2, i8* %3, i64* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca [64 x i8], align 16
  %25 = alloca [64 x i8], align 16
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i64* %4, i64** %11, align 8
  %29 = load i8*, i8** %10, align 8
  store i8* %29, i8** %12, align 8
  %30 = load i64*, i64** %11, align 8
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %15, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 5
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %16, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 5
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i32 (%struct.TYPE_7__**, i32, i8*, i32)*, i32 (%struct.TYPE_7__**, i32, i8*, i32)** %43, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 5
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = load i32, i32* %15, align 4
  %53 = call i32 %44(%struct.TYPE_7__** %47, i32 %50, i8* %51, i32 %52)
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %5
  %59 = load i32, i32* %16, align 4
  %60 = load i8*, i8** %12, align 8
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  store i8* %62, i8** %12, align 8
  %63 = load i32, i32* %16, align 4
  %64 = load i32, i32* %15, align 4
  %65 = sub nsw i32 %64, %63
  store i32 %65, i32* %15, align 4
  br label %66

66:                                               ; preds = %58, %5
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, 256
  %71 = load i32, i32* %15, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = load i32, i32* %15, align 4
  %75 = sub nsw i32 %74, 256
  br label %80

76:                                               ; preds = %66
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  br label %80

80:                                               ; preds = %76, %73
  %81 = phi i32 [ %75, %73 ], [ %79, %76 ]
  store i32 %81, i32* %17, align 4
  %82 = load i32, i32* %15, align 4
  %83 = sub nsw i32 %82, 1
  store i32 %83, i32* %18, align 4
  %84 = load i8*, i8** %12, align 8
  %85 = load i32, i32* %18, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  store i32 %89, i32* %20, align 4
  %90 = load i32, i32* %20, align 4
  %91 = load i32, i32* %18, align 4
  %92 = load i32, i32* %17, align 4
  %93 = sub nsw i32 %91, %92
  %94 = call i32 @LE(i32 %90, i32 %93)
  store i32 %94, i32* %19, align 4
  %95 = load i32, i32* %19, align 4
  %96 = load i32, i32* %18, align 4
  %97 = load i32, i32* %20, align 4
  %98 = sub nsw i32 %96, %97
  %99 = load i32, i32* %17, align 4
  %100 = call zeroext i8 @MUX(i32 %95, i32 %98, i32 %99)
  %101 = zext i8 %100 to i32
  store i32 %101, i32* %15, align 4
  %102 = load i32, i32* %17, align 4
  store i32 %102, i32* %13, align 4
  br label %103

103:                                              ; preds = %122, %80
  %104 = load i32, i32* %13, align 4
  %105 = load i32, i32* %18, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %125

107:                                              ; preds = %103
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* %15, align 4
  %110 = call i32 @LT(i32 %108, i32 %109)
  %111 = load i8*, i8** %12, align 8
  %112 = load i32, i32* %13, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %111, i64 %113
  %115 = load i8, i8* %114, align 1
  %116 = zext i8 %115 to i32
  %117 = load i32, i32* %20, align 4
  %118 = call i32 @EQ(i32 %116, i32 %117)
  %119 = or i32 %110, %118
  %120 = load i32, i32* %19, align 4
  %121 = and i32 %120, %119
  store i32 %121, i32* %19, align 4
  br label %122

122:                                              ; preds = %107
  %123 = load i32, i32* %13, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %13, align 4
  br label %103

125:                                              ; preds = %103
  %126 = load i32, i32* %15, align 4
  store i32 %126, i32* %22, align 4
  %127 = load i32, i32* %22, align 4
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = sub nsw i32 %127, %130
  store i32 %131, i32* %23, align 4
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* %17, align 4
  %136 = sub nsw i32 %135, %134
  store i32 %136, i32* %17, align 4
  store i32 0, i32* %21, align 4
  %137 = getelementptr inbounds [64 x i8], [64 x i8]* %24, i64 0, i64 0
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @memset(i8* %137, i32 0, i32 %140)
  store i32 0, i32* %14, align 4
  %142 = load i32, i32* %17, align 4
  store i32 %142, i32* %13, align 4
  br label %143

143:                                              ; preds = %185, %125
  %144 = load i32, i32* %13, align 4
  %145 = load i32, i32* %18, align 4
  %146 = icmp slt i32 %144, %145
  br i1 %146, label %147, label %188

147:                                              ; preds = %143
  %148 = load i32, i32* %13, align 4
  %149 = load i32, i32* %23, align 4
  %150 = call i32 @GE(i32 %148, i32 %149)
  %151 = load i32, i32* %13, align 4
  %152 = load i32, i32* %22, align 4
  %153 = call i32 @LT(i32 %151, i32 %152)
  %154 = and i32 %150, %153
  %155 = load i8*, i8** %12, align 8
  %156 = load i32, i32* %13, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8, i8* %155, i64 %157
  %159 = load i8, i8* %158, align 1
  %160 = zext i8 %159 to i32
  %161 = call zeroext i8 @MUX(i32 %154, i32 %160, i32 0)
  %162 = zext i8 %161 to i32
  %163 = load i32, i32* %14, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [64 x i8], [64 x i8]* %24, i64 0, i64 %164
  %166 = load i8, i8* %165, align 1
  %167 = zext i8 %166 to i32
  %168 = or i32 %167, %162
  %169 = trunc i32 %168 to i8
  store i8 %169, i8* %165, align 1
  %170 = load i32, i32* %13, align 4
  %171 = load i32, i32* %23, align 4
  %172 = call i32 @EQ(i32 %170, i32 %171)
  %173 = load i32, i32* %14, align 4
  %174 = load i32, i32* %21, align 4
  %175 = call zeroext i8 @MUX(i32 %172, i32 %173, i32 %174)
  %176 = zext i8 %175 to i32
  store i32 %176, i32* %21, align 4
  %177 = load i32, i32* %14, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %14, align 4
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = icmp eq i32 %178, %181
  br i1 %182, label %183, label %184

183:                                              ; preds = %147
  store i32 0, i32* %14, align 4
  br label %184

184:                                              ; preds = %183, %147
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %13, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %13, align 4
  br label %143

188:                                              ; preds = %143
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* %18, align 4
  %193 = sub nsw i32 %192, %191
  store i32 %193, i32* %18, align 4
  store i32 5, i32* %26, align 4
  br label %194

194:                                              ; preds = %213, %188
  %195 = load i32, i32* %26, align 4
  %196 = icmp sge i32 %195, 0
  br i1 %196, label %197, label %216

197:                                              ; preds = %194
  %198 = load i32, i32* %26, align 4
  %199 = shl i32 1, %198
  store i32 %199, i32* %28, align 4
  %200 = load i32, i32* %21, align 4
  %201 = load i32, i32* %26, align 4
  %202 = ashr i32 %200, %201
  %203 = getelementptr inbounds [64 x i8], [64 x i8]* %24, i64 0, i64 0
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* %28, align 4
  %208 = call i32 @cond_rotate(i32 %202, i8* %203, i32 %206, i32 %207)
  %209 = load i32, i32* %28, align 4
  %210 = xor i32 %209, -1
  %211 = load i32, i32* %21, align 4
  %212 = and i32 %211, %210
  store i32 %212, i32* %21, align 4
  br label %213

213:                                              ; preds = %197
  %214 = load i32, i32* %26, align 4
  %215 = add nsw i32 %214, -1
  store i32 %215, i32* %26, align 4
  br label %194

216:                                              ; preds = %194
  %217 = getelementptr inbounds [64 x i8], [64 x i8]* %25, i64 0, i64 0
  %218 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 8
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %219, align 8
  %222 = call i32 @br_enc64be(i8* %217, i32 %220)
  %223 = load i32, i32* %8, align 4
  %224 = trunc i32 %223 to i8
  %225 = getelementptr inbounds [64 x i8], [64 x i8]* %25, i64 0, i64 8
  store i8 %224, i8* %225, align 8
  %226 = getelementptr inbounds [64 x i8], [64 x i8]* %25, i64 0, i64 0
  %227 = getelementptr inbounds i8, i8* %226, i64 9
  %228 = load i32, i32* %9, align 4
  %229 = call i32 @br_enc16be(i8* %227, i32 %228)
  %230 = getelementptr inbounds [64 x i8], [64 x i8]* %25, i64 0, i64 0
  %231 = getelementptr inbounds i8, i8* %230, i64 11
  %232 = load i32, i32* %23, align 4
  %233 = call i32 @br_enc16be(i8* %231, i32 %232)
  %234 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 1
  %236 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = call i32 @br_hmac_init(i32* %27, i32* %235, i32 %238)
  %240 = getelementptr inbounds [64 x i8], [64 x i8]* %25, i64 0, i64 0
  %241 = call i32 @br_hmac_update(i32* %27, i8* %240, i32 13)
  %242 = load i8*, i8** %12, align 8
  %243 = load i32, i32* %23, align 4
  %244 = load i32, i32* %17, align 4
  %245 = load i32, i32* %18, align 4
  %246 = getelementptr inbounds [64 x i8], [64 x i8]* %25, i64 0, i64 0
  %247 = call i32 @br_hmac_outCT(i32* %27, i8* %242, i32 %243, i32 %244, i32 %245, i8* %246)
  store i32 0, i32* %13, align 4
  br label %248

248:                                              ; preds = %270, %216
  %249 = load i32, i32* %13, align 4
  %250 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = icmp slt i32 %249, %252
  br i1 %253, label %254, label %273

254:                                              ; preds = %248
  %255 = load i32, i32* %13, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds [64 x i8], [64 x i8]* %24, i64 0, i64 %256
  %258 = load i8, i8* %257, align 1
  %259 = zext i8 %258 to i32
  %260 = load i32, i32* %13, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds [64 x i8], [64 x i8]* %25, i64 0, i64 %261
  %263 = load i8, i8* %262, align 1
  %264 = zext i8 %263 to i32
  %265 = xor i32 %259, %264
  %266 = trunc i32 %265 to i8
  %267 = call i32 @EQ0(i8 zeroext %266)
  %268 = load i32, i32* %19, align 4
  %269 = and i32 %268, %267
  store i32 %269, i32* %19, align 4
  br label %270

270:                                              ; preds = %254
  %271 = load i32, i32* %13, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %13, align 4
  br label %248

273:                                              ; preds = %248
  %274 = load i32, i32* %23, align 4
  %275 = call i32 @LE(i32 %274, i32 16384)
  %276 = load i32, i32* %19, align 4
  %277 = and i32 %276, %275
  store i32 %277, i32* %19, align 4
  %278 = load i32, i32* %19, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %281, label %280

280:                                              ; preds = %273
  store i8* null, i8** %6, align 8
  br label %286

281:                                              ; preds = %273
  %282 = load i32, i32* %23, align 4
  %283 = sext i32 %282 to i64
  %284 = load i64*, i64** %11, align 8
  store i64 %283, i64* %284, align 8
  %285 = load i8*, i8** %12, align 8
  store i8* %285, i8** %6, align 8
  br label %286

286:                                              ; preds = %281, %280
  %287 = load i8*, i8** %6, align 8
  ret i8* %287
}

declare dso_local i32 @LE(i32, i32) #1

declare dso_local zeroext i8 @MUX(i32, i32, i32) #1

declare dso_local i32 @LT(i32, i32) #1

declare dso_local i32 @EQ(i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @GE(i32, i32) #1

declare dso_local i32 @cond_rotate(i32, i8*, i32, i32) #1

declare dso_local i32 @br_enc64be(i8*, i32) #1

declare dso_local i32 @br_enc16be(i8*, i32) #1

declare dso_local i32 @br_hmac_init(i32*, i32*, i32) #1

declare dso_local i32 @br_hmac_update(i32*, i8*, i32) #1

declare dso_local i32 @br_hmac_outCT(i32*, i8*, i32, i32, i32, i8*) #1

declare dso_local i32 @EQ0(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
