; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_aes_ct_ctrcbc.c_br_aes_ct_ctrcbc_encrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_aes_ct_ctrcbc.c_br_aes_ct_ctrcbc_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_aes_ct_ctrcbc_encrypt(%struct.TYPE_3__* %0, i8* %1, i8* %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca [120 x i32], align 16
  %22 = alloca i32, align 4
  %23 = alloca [8 x i32], align 16
  %24 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %25 = getelementptr inbounds [120 x i32], [120 x i32]* %21, i64 0, i64 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @br_aes_ct_skey_expand(i32* %25, i32 %28, i32 %31)
  %33 = load i8*, i8** %7, align 8
  store i8* %33, i8** %12, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = call i32 @br_dec32be(i8* %35)
  store i32 %36, i32* %13, align 4
  %37 = load i8*, i8** %12, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 4
  %39 = call i32 @br_dec32be(i8* %38)
  store i32 %39, i32* %14, align 4
  %40 = load i8*, i8** %12, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 8
  %42 = call i32 @br_dec32be(i8* %41)
  store i32 %42, i32* %15, align 4
  %43 = load i8*, i8** %12, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 12
  %45 = call i32 @br_dec32be(i8* %44)
  store i32 %45, i32* %16, align 4
  %46 = load i8*, i8** %8, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  %48 = call i32 @br_dec32le(i8* %47)
  store i32 %48, i32* %17, align 4
  %49 = load i8*, i8** %8, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 4
  %51 = call i32 @br_dec32le(i8* %50)
  store i32 %51, i32* %18, align 4
  %52 = load i8*, i8** %8, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 8
  %54 = call i32 @br_dec32le(i8* %53)
  store i32 %54, i32* %19, align 4
  %55 = load i8*, i8** %8, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 12
  %57 = call i32 @br_dec32le(i8* %56)
  store i32 %57, i32* %20, align 4
  %58 = load i8*, i8** %9, align 8
  store i8* %58, i8** %11, align 8
  store i32 1, i32* %22, align 4
  br label %59

59:                                               ; preds = %246, %5
  %60 = load i64, i64* %10, align 8
  %61 = icmp ugt i64 %60, 0
  br i1 %61, label %62, label %247

62:                                               ; preds = %59
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @br_swap32(i32 %63)
  %65 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 0
  store i32 %64, i32* %65, align 16
  %66 = load i32, i32* %14, align 4
  %67 = call i32 @br_swap32(i32 %66)
  %68 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 2
  store i32 %67, i32* %68, align 8
  %69 = load i32, i32* %15, align 4
  %70 = call i32 @br_swap32(i32 %69)
  %71 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 4
  store i32 %70, i32* %71, align 16
  %72 = load i32, i32* %16, align 4
  %73 = call i32 @br_swap32(i32 %72)
  %74 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 6
  store i32 %73, i32* %74, align 8
  %75 = load i32, i32* %16, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %16, align 4
  %77 = load i32, i32* %16, align 4
  %78 = load i32, i32* %16, align 4
  %79 = sub nsw i32 0, %78
  %80 = or i32 %77, %79
  %81 = xor i32 %80, -1
  %82 = ashr i32 %81, 31
  store i32 %82, i32* %24, align 4
  %83 = load i32, i32* %24, align 4
  %84 = load i32, i32* %15, align 4
  %85 = add nsw i32 %84, %83
  store i32 %85, i32* %15, align 4
  %86 = load i32, i32* %15, align 4
  %87 = load i32, i32* %15, align 4
  %88 = sub nsw i32 0, %87
  %89 = or i32 %86, %88
  %90 = xor i32 %89, -1
  %91 = ashr i32 %90, 31
  %92 = sub nsw i32 0, %91
  %93 = load i32, i32* %24, align 4
  %94 = and i32 %93, %92
  store i32 %94, i32* %24, align 4
  %95 = load i32, i32* %24, align 4
  %96 = load i32, i32* %14, align 4
  %97 = add nsw i32 %96, %95
  store i32 %97, i32* %14, align 4
  %98 = load i32, i32* %14, align 4
  %99 = load i32, i32* %14, align 4
  %100 = sub nsw i32 0, %99
  %101 = or i32 %98, %100
  %102 = xor i32 %101, -1
  %103 = ashr i32 %102, 31
  %104 = sub nsw i32 0, %103
  %105 = load i32, i32* %24, align 4
  %106 = and i32 %105, %104
  store i32 %106, i32* %24, align 4
  %107 = load i32, i32* %24, align 4
  %108 = load i32, i32* %13, align 4
  %109 = add nsw i32 %108, %107
  store i32 %109, i32* %13, align 4
  %110 = load i32, i32* %17, align 4
  %111 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 1
  store i32 %110, i32* %111, align 4
  %112 = load i32, i32* %18, align 4
  %113 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 3
  store i32 %112, i32* %113, align 4
  %114 = load i32, i32* %19, align 4
  %115 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 5
  store i32 %114, i32* %115, align 4
  %116 = load i32, i32* %20, align 4
  %117 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 7
  store i32 %116, i32* %117, align 4
  %118 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 0
  %119 = call i32 @br_aes_ct_ortho(i32* %118)
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = getelementptr inbounds [120 x i32], [120 x i32]* %21, i64 0, i64 0
  %124 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 0
  %125 = call i32 @br_aes_ct_bitslice_encrypt(i32 %122, i32* %123, i32* %124)
  %126 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 0
  %127 = call i32 @br_aes_ct_ortho(i32* %126)
  %128 = load i8*, i8** %11, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 0
  %130 = call i32 @br_dec32le(i8* %129)
  %131 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 0
  %132 = load i32, i32* %131, align 16
  %133 = xor i32 %132, %130
  store i32 %133, i32* %131, align 16
  %134 = load i8*, i8** %11, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 4
  %136 = call i32 @br_dec32le(i8* %135)
  %137 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 2
  %138 = load i32, i32* %137, align 8
  %139 = xor i32 %138, %136
  store i32 %139, i32* %137, align 8
  %140 = load i8*, i8** %11, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 8
  %142 = call i32 @br_dec32le(i8* %141)
  %143 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 4
  %144 = load i32, i32* %143, align 16
  %145 = xor i32 %144, %142
  store i32 %145, i32* %143, align 16
  %146 = load i8*, i8** %11, align 8
  %147 = getelementptr inbounds i8, i8* %146, i64 12
  %148 = call i32 @br_dec32le(i8* %147)
  %149 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 6
  %150 = load i32, i32* %149, align 8
  %151 = xor i32 %150, %148
  store i32 %151, i32* %149, align 8
  %152 = load i8*, i8** %11, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 0
  %154 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 0
  %155 = load i32, i32* %154, align 16
  %156 = call i32 @br_enc32le(i8* %153, i32 %155)
  %157 = load i8*, i8** %11, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 4
  %159 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 2
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @br_enc32le(i8* %158, i32 %160)
  %162 = load i8*, i8** %11, align 8
  %163 = getelementptr inbounds i8, i8* %162, i64 8
  %164 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 4
  %165 = load i32, i32* %164, align 16
  %166 = call i32 @br_enc32le(i8* %163, i32 %165)
  %167 = load i8*, i8** %11, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 12
  %169 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 6
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @br_enc32le(i8* %168, i32 %170)
  %172 = load i8*, i8** %11, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 16
  store i8* %173, i8** %11, align 8
  %174 = load i64, i64* %10, align 8
  %175 = sub i64 %174, 16
  store i64 %175, i64* %10, align 8
  %176 = load i32, i32* %22, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %195

178:                                              ; preds = %62
  store i32 0, i32* %22, align 4
  %179 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 0
  %180 = load i32, i32* %179, align 16
  %181 = load i32, i32* %17, align 4
  %182 = xor i32 %181, %180
  store i32 %182, i32* %17, align 4
  %183 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 2
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* %18, align 4
  %186 = xor i32 %185, %184
  store i32 %186, i32* %18, align 4
  %187 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 4
  %188 = load i32, i32* %187, align 16
  %189 = load i32, i32* %19, align 4
  %190 = xor i32 %189, %188
  store i32 %190, i32* %19, align 4
  %191 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 6
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* %20, align 4
  %194 = xor i32 %193, %192
  store i32 %194, i32* %20, align 4
  br label %216

195:                                              ; preds = %62
  %196 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 0
  %197 = load i32, i32* %196, align 16
  %198 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 1
  %199 = load i32, i32* %198, align 4
  %200 = xor i32 %197, %199
  store i32 %200, i32* %17, align 4
  %201 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 2
  %202 = load i32, i32* %201, align 8
  %203 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 3
  %204 = load i32, i32* %203, align 4
  %205 = xor i32 %202, %204
  store i32 %205, i32* %18, align 4
  %206 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 4
  %207 = load i32, i32* %206, align 16
  %208 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 5
  %209 = load i32, i32* %208, align 4
  %210 = xor i32 %207, %209
  store i32 %210, i32* %19, align 4
  %211 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 6
  %212 = load i32, i32* %211, align 8
  %213 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 7
  %214 = load i32, i32* %213, align 4
  %215 = xor i32 %212, %214
  store i32 %215, i32* %20, align 4
  br label %216

216:                                              ; preds = %195, %178
  %217 = load i64, i64* %10, align 8
  %218 = icmp eq i64 %217, 0
  br i1 %218, label %219, label %246

219:                                              ; preds = %216
  %220 = load i32, i32* %17, align 4
  %221 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 0
  store i32 %220, i32* %221, align 16
  %222 = load i32, i32* %18, align 4
  %223 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 2
  store i32 %222, i32* %223, align 8
  %224 = load i32, i32* %19, align 4
  %225 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 4
  store i32 %224, i32* %225, align 16
  %226 = load i32, i32* %20, align 4
  %227 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 6
  store i32 %226, i32* %227, align 8
  %228 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 0
  %229 = call i32 @br_aes_ct_ortho(i32* %228)
  %230 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = getelementptr inbounds [120 x i32], [120 x i32]* %21, i64 0, i64 0
  %234 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 0
  %235 = call i32 @br_aes_ct_bitslice_encrypt(i32 %232, i32* %233, i32* %234)
  %236 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 0
  %237 = call i32 @br_aes_ct_ortho(i32* %236)
  %238 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 0
  %239 = load i32, i32* %238, align 16
  store i32 %239, i32* %17, align 4
  %240 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 2
  %241 = load i32, i32* %240, align 8
  store i32 %241, i32* %18, align 4
  %242 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 4
  %243 = load i32, i32* %242, align 16
  store i32 %243, i32* %19, align 4
  %244 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 6
  %245 = load i32, i32* %244, align 8
  store i32 %245, i32* %20, align 4
  br label %247

246:                                              ; preds = %216
  br label %59

247:                                              ; preds = %219, %59
  %248 = load i8*, i8** %12, align 8
  %249 = getelementptr inbounds i8, i8* %248, i64 0
  %250 = load i32, i32* %13, align 4
  %251 = call i32 @br_enc32be(i8* %249, i32 %250)
  %252 = load i8*, i8** %12, align 8
  %253 = getelementptr inbounds i8, i8* %252, i64 4
  %254 = load i32, i32* %14, align 4
  %255 = call i32 @br_enc32be(i8* %253, i32 %254)
  %256 = load i8*, i8** %12, align 8
  %257 = getelementptr inbounds i8, i8* %256, i64 8
  %258 = load i32, i32* %15, align 4
  %259 = call i32 @br_enc32be(i8* %257, i32 %258)
  %260 = load i8*, i8** %12, align 8
  %261 = getelementptr inbounds i8, i8* %260, i64 12
  %262 = load i32, i32* %16, align 4
  %263 = call i32 @br_enc32be(i8* %261, i32 %262)
  %264 = load i8*, i8** %8, align 8
  %265 = getelementptr inbounds i8, i8* %264, i64 0
  %266 = load i32, i32* %17, align 4
  %267 = call i32 @br_enc32le(i8* %265, i32 %266)
  %268 = load i8*, i8** %8, align 8
  %269 = getelementptr inbounds i8, i8* %268, i64 4
  %270 = load i32, i32* %18, align 4
  %271 = call i32 @br_enc32le(i8* %269, i32 %270)
  %272 = load i8*, i8** %8, align 8
  %273 = getelementptr inbounds i8, i8* %272, i64 8
  %274 = load i32, i32* %19, align 4
  %275 = call i32 @br_enc32le(i8* %273, i32 %274)
  %276 = load i8*, i8** %8, align 8
  %277 = getelementptr inbounds i8, i8* %276, i64 12
  %278 = load i32, i32* %20, align 4
  %279 = call i32 @br_enc32le(i8* %277, i32 %278)
  ret void
}

declare dso_local i32 @br_aes_ct_skey_expand(i32*, i32, i32) #1

declare dso_local i32 @br_dec32be(i8*) #1

declare dso_local i32 @br_dec32le(i8*) #1

declare dso_local i32 @br_swap32(i32) #1

declare dso_local i32 @br_aes_ct_ortho(i32*) #1

declare dso_local i32 @br_aes_ct_bitslice_encrypt(i32, i32*, i32*) #1

declare dso_local i32 @br_enc32le(i8*, i32) #1

declare dso_local i32 @br_enc32be(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
