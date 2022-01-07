; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_aes_ct64_ctrcbc.c_br_aes_ct64_ctrcbc_encrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_aes_ct64_ctrcbc.c_br_aes_ct64_ctrcbc_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_aes_ct64_ctrcbc_encrypt(%struct.TYPE_3__* %0, i8* %1, i8* %2, i8* %3, i64 %4) #0 {
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
  %22 = alloca [8 x i32], align 16
  %23 = alloca i32, align 4
  %24 = alloca [8 x i32], align 16
  %25 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %26 = getelementptr inbounds [120 x i32], [120 x i32]* %21, i64 0, i64 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @br_aes_ct64_skey_expand(i32* %26, i32 %29, i32 %32)
  %34 = load i8*, i8** %7, align 8
  store i8* %34, i8** %12, align 8
  %35 = load i8*, i8** %12, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = call i32 @br_dec32be(i8* %36)
  store i32 %37, i32* %13, align 4
  %38 = load i8*, i8** %12, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 4
  %40 = call i32 @br_dec32be(i8* %39)
  store i32 %40, i32* %14, align 4
  %41 = load i8*, i8** %12, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 8
  %43 = call i32 @br_dec32be(i8* %42)
  store i32 %43, i32* %15, align 4
  %44 = load i8*, i8** %12, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 12
  %46 = call i32 @br_dec32be(i8* %45)
  store i32 %46, i32* %16, align 4
  %47 = load i8*, i8** %8, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  %49 = call i32 @br_dec32le(i8* %48)
  store i32 %49, i32* %17, align 4
  %50 = load i8*, i8** %8, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 4
  %52 = call i32 @br_dec32le(i8* %51)
  store i32 %52, i32* %18, align 4
  %53 = load i8*, i8** %8, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 8
  %55 = call i32 @br_dec32le(i8* %54)
  store i32 %55, i32* %19, align 4
  %56 = load i8*, i8** %8, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 12
  %58 = call i32 @br_dec32le(i8* %57)
  store i32 %58, i32* %20, align 4
  %59 = load i8*, i8** %9, align 8
  store i8* %59, i8** %11, align 8
  store i32 1, i32* %23, align 4
  %60 = getelementptr inbounds [8 x i32], [8 x i32]* %22, i64 0, i64 0
  %61 = call i32 @memset(i32* %60, i32 0, i32 32)
  br label %62

62:                                               ; preds = %281, %5
  %63 = load i64, i64* %10, align 8
  %64 = icmp ugt i64 %63, 0
  br i1 %64, label %65, label %282

65:                                               ; preds = %62
  %66 = load i32, i32* %13, align 4
  %67 = call i32 @br_swap32(i32 %66)
  %68 = getelementptr inbounds [8 x i32], [8 x i32]* %24, i64 0, i64 0
  store i32 %67, i32* %68, align 16
  %69 = load i32, i32* %14, align 4
  %70 = call i32 @br_swap32(i32 %69)
  %71 = getelementptr inbounds [8 x i32], [8 x i32]* %24, i64 0, i64 1
  store i32 %70, i32* %71, align 4
  %72 = load i32, i32* %15, align 4
  %73 = call i32 @br_swap32(i32 %72)
  %74 = getelementptr inbounds [8 x i32], [8 x i32]* %24, i64 0, i64 2
  store i32 %73, i32* %74, align 8
  %75 = load i32, i32* %16, align 4
  %76 = call i32 @br_swap32(i32 %75)
  %77 = getelementptr inbounds [8 x i32], [8 x i32]* %24, i64 0, i64 3
  store i32 %76, i32* %77, align 4
  %78 = load i32, i32* %16, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %16, align 4
  %80 = load i32, i32* %16, align 4
  %81 = load i32, i32* %16, align 4
  %82 = sub nsw i32 0, %81
  %83 = or i32 %80, %82
  %84 = xor i32 %83, -1
  %85 = ashr i32 %84, 31
  store i32 %85, i32* %25, align 4
  %86 = load i32, i32* %25, align 4
  %87 = load i32, i32* %15, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* %15, align 4
  %89 = load i32, i32* %15, align 4
  %90 = load i32, i32* %15, align 4
  %91 = sub nsw i32 0, %90
  %92 = or i32 %89, %91
  %93 = xor i32 %92, -1
  %94 = ashr i32 %93, 31
  %95 = sub nsw i32 0, %94
  %96 = load i32, i32* %25, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %25, align 4
  %98 = load i32, i32* %25, align 4
  %99 = load i32, i32* %14, align 4
  %100 = add nsw i32 %99, %98
  store i32 %100, i32* %14, align 4
  %101 = load i32, i32* %14, align 4
  %102 = load i32, i32* %14, align 4
  %103 = sub nsw i32 0, %102
  %104 = or i32 %101, %103
  %105 = xor i32 %104, -1
  %106 = ashr i32 %105, 31
  %107 = sub nsw i32 0, %106
  %108 = load i32, i32* %25, align 4
  %109 = and i32 %108, %107
  store i32 %109, i32* %25, align 4
  %110 = load i32, i32* %25, align 4
  %111 = load i32, i32* %13, align 4
  %112 = add nsw i32 %111, %110
  store i32 %112, i32* %13, align 4
  %113 = load i32, i32* %17, align 4
  %114 = getelementptr inbounds [8 x i32], [8 x i32]* %24, i64 0, i64 4
  store i32 %113, i32* %114, align 16
  %115 = load i32, i32* %18, align 4
  %116 = getelementptr inbounds [8 x i32], [8 x i32]* %24, i64 0, i64 5
  store i32 %115, i32* %116, align 4
  %117 = load i32, i32* %19, align 4
  %118 = getelementptr inbounds [8 x i32], [8 x i32]* %24, i64 0, i64 6
  store i32 %117, i32* %118, align 8
  %119 = load i32, i32* %20, align 4
  %120 = getelementptr inbounds [8 x i32], [8 x i32]* %24, i64 0, i64 7
  store i32 %119, i32* %120, align 4
  %121 = getelementptr inbounds [8 x i32], [8 x i32]* %22, i64 0, i64 0
  %122 = getelementptr inbounds [8 x i32], [8 x i32]* %22, i64 0, i64 4
  %123 = getelementptr inbounds [8 x i32], [8 x i32]* %24, i64 0, i64 0
  %124 = call i32 @br_aes_ct64_interleave_in(i32* %121, i32* %122, i32* %123)
  %125 = getelementptr inbounds [8 x i32], [8 x i32]* %22, i64 0, i64 1
  %126 = getelementptr inbounds [8 x i32], [8 x i32]* %22, i64 0, i64 5
  %127 = getelementptr inbounds [8 x i32], [8 x i32]* %24, i64 0, i64 0
  %128 = getelementptr inbounds i32, i32* %127, i64 4
  %129 = call i32 @br_aes_ct64_interleave_in(i32* %125, i32* %126, i32* %128)
  %130 = getelementptr inbounds [8 x i32], [8 x i32]* %22, i64 0, i64 0
  %131 = call i32 @br_aes_ct64_ortho(i32* %130)
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = getelementptr inbounds [120 x i32], [120 x i32]* %21, i64 0, i64 0
  %136 = getelementptr inbounds [8 x i32], [8 x i32]* %22, i64 0, i64 0
  %137 = call i32 @br_aes_ct64_bitslice_encrypt(i32 %134, i32* %135, i32* %136)
  %138 = getelementptr inbounds [8 x i32], [8 x i32]* %22, i64 0, i64 0
  %139 = call i32 @br_aes_ct64_ortho(i32* %138)
  %140 = getelementptr inbounds [8 x i32], [8 x i32]* %24, i64 0, i64 0
  %141 = getelementptr inbounds [8 x i32], [8 x i32]* %22, i64 0, i64 0
  %142 = load i32, i32* %141, align 16
  %143 = getelementptr inbounds [8 x i32], [8 x i32]* %22, i64 0, i64 4
  %144 = load i32, i32* %143, align 16
  %145 = call i32 @br_aes_ct64_interleave_out(i32* %140, i32 %142, i32 %144)
  %146 = getelementptr inbounds [8 x i32], [8 x i32]* %24, i64 0, i64 0
  %147 = getelementptr inbounds i32, i32* %146, i64 4
  %148 = getelementptr inbounds [8 x i32], [8 x i32]* %22, i64 0, i64 1
  %149 = load i32, i32* %148, align 4
  %150 = getelementptr inbounds [8 x i32], [8 x i32]* %22, i64 0, i64 5
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @br_aes_ct64_interleave_out(i32* %147, i32 %149, i32 %151)
  %153 = load i8*, i8** %11, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 0
  %155 = call i32 @br_dec32le(i8* %154)
  %156 = getelementptr inbounds [8 x i32], [8 x i32]* %24, i64 0, i64 0
  %157 = load i32, i32* %156, align 16
  %158 = xor i32 %157, %155
  store i32 %158, i32* %156, align 16
  %159 = load i8*, i8** %11, align 8
  %160 = getelementptr inbounds i8, i8* %159, i64 4
  %161 = call i32 @br_dec32le(i8* %160)
  %162 = getelementptr inbounds [8 x i32], [8 x i32]* %24, i64 0, i64 1
  %163 = load i32, i32* %162, align 4
  %164 = xor i32 %163, %161
  store i32 %164, i32* %162, align 4
  %165 = load i8*, i8** %11, align 8
  %166 = getelementptr inbounds i8, i8* %165, i64 8
  %167 = call i32 @br_dec32le(i8* %166)
  %168 = getelementptr inbounds [8 x i32], [8 x i32]* %24, i64 0, i64 2
  %169 = load i32, i32* %168, align 8
  %170 = xor i32 %169, %167
  store i32 %170, i32* %168, align 8
  %171 = load i8*, i8** %11, align 8
  %172 = getelementptr inbounds i8, i8* %171, i64 12
  %173 = call i32 @br_dec32le(i8* %172)
  %174 = getelementptr inbounds [8 x i32], [8 x i32]* %24, i64 0, i64 3
  %175 = load i32, i32* %174, align 4
  %176 = xor i32 %175, %173
  store i32 %176, i32* %174, align 4
  %177 = load i8*, i8** %11, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 0
  %179 = getelementptr inbounds [8 x i32], [8 x i32]* %24, i64 0, i64 0
  %180 = load i32, i32* %179, align 16
  %181 = call i32 @br_enc32le(i8* %178, i32 %180)
  %182 = load i8*, i8** %11, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 4
  %184 = getelementptr inbounds [8 x i32], [8 x i32]* %24, i64 0, i64 1
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @br_enc32le(i8* %183, i32 %185)
  %187 = load i8*, i8** %11, align 8
  %188 = getelementptr inbounds i8, i8* %187, i64 8
  %189 = getelementptr inbounds [8 x i32], [8 x i32]* %24, i64 0, i64 2
  %190 = load i32, i32* %189, align 8
  %191 = call i32 @br_enc32le(i8* %188, i32 %190)
  %192 = load i8*, i8** %11, align 8
  %193 = getelementptr inbounds i8, i8* %192, i64 12
  %194 = getelementptr inbounds [8 x i32], [8 x i32]* %24, i64 0, i64 3
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @br_enc32le(i8* %193, i32 %195)
  %197 = load i8*, i8** %11, align 8
  %198 = getelementptr inbounds i8, i8* %197, i64 16
  store i8* %198, i8** %11, align 8
  %199 = load i64, i64* %10, align 8
  %200 = sub i64 %199, 16
  store i64 %200, i64* %10, align 8
  %201 = load i32, i32* %23, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %220

203:                                              ; preds = %65
  store i32 0, i32* %23, align 4
  %204 = getelementptr inbounds [8 x i32], [8 x i32]* %24, i64 0, i64 0
  %205 = load i32, i32* %204, align 16
  %206 = load i32, i32* %17, align 4
  %207 = xor i32 %206, %205
  store i32 %207, i32* %17, align 4
  %208 = getelementptr inbounds [8 x i32], [8 x i32]* %24, i64 0, i64 1
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* %18, align 4
  %211 = xor i32 %210, %209
  store i32 %211, i32* %18, align 4
  %212 = getelementptr inbounds [8 x i32], [8 x i32]* %24, i64 0, i64 2
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* %19, align 4
  %215 = xor i32 %214, %213
  store i32 %215, i32* %19, align 4
  %216 = getelementptr inbounds [8 x i32], [8 x i32]* %24, i64 0, i64 3
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* %20, align 4
  %219 = xor i32 %218, %217
  store i32 %219, i32* %20, align 4
  br label %241

220:                                              ; preds = %65
  %221 = getelementptr inbounds [8 x i32], [8 x i32]* %24, i64 0, i64 0
  %222 = load i32, i32* %221, align 16
  %223 = getelementptr inbounds [8 x i32], [8 x i32]* %24, i64 0, i64 4
  %224 = load i32, i32* %223, align 16
  %225 = xor i32 %222, %224
  store i32 %225, i32* %17, align 4
  %226 = getelementptr inbounds [8 x i32], [8 x i32]* %24, i64 0, i64 1
  %227 = load i32, i32* %226, align 4
  %228 = getelementptr inbounds [8 x i32], [8 x i32]* %24, i64 0, i64 5
  %229 = load i32, i32* %228, align 4
  %230 = xor i32 %227, %229
  store i32 %230, i32* %18, align 4
  %231 = getelementptr inbounds [8 x i32], [8 x i32]* %24, i64 0, i64 2
  %232 = load i32, i32* %231, align 8
  %233 = getelementptr inbounds [8 x i32], [8 x i32]* %24, i64 0, i64 6
  %234 = load i32, i32* %233, align 8
  %235 = xor i32 %232, %234
  store i32 %235, i32* %19, align 4
  %236 = getelementptr inbounds [8 x i32], [8 x i32]* %24, i64 0, i64 3
  %237 = load i32, i32* %236, align 4
  %238 = getelementptr inbounds [8 x i32], [8 x i32]* %24, i64 0, i64 7
  %239 = load i32, i32* %238, align 4
  %240 = xor i32 %237, %239
  store i32 %240, i32* %20, align 4
  br label %241

241:                                              ; preds = %220, %203
  %242 = load i64, i64* %10, align 8
  %243 = icmp eq i64 %242, 0
  br i1 %243, label %244, label %281

244:                                              ; preds = %241
  %245 = load i32, i32* %17, align 4
  %246 = getelementptr inbounds [8 x i32], [8 x i32]* %24, i64 0, i64 0
  store i32 %245, i32* %246, align 16
  %247 = load i32, i32* %18, align 4
  %248 = getelementptr inbounds [8 x i32], [8 x i32]* %24, i64 0, i64 1
  store i32 %247, i32* %248, align 4
  %249 = load i32, i32* %19, align 4
  %250 = getelementptr inbounds [8 x i32], [8 x i32]* %24, i64 0, i64 2
  store i32 %249, i32* %250, align 8
  %251 = load i32, i32* %20, align 4
  %252 = getelementptr inbounds [8 x i32], [8 x i32]* %24, i64 0, i64 3
  store i32 %251, i32* %252, align 4
  %253 = getelementptr inbounds [8 x i32], [8 x i32]* %22, i64 0, i64 0
  %254 = getelementptr inbounds [8 x i32], [8 x i32]* %22, i64 0, i64 4
  %255 = getelementptr inbounds [8 x i32], [8 x i32]* %24, i64 0, i64 0
  %256 = call i32 @br_aes_ct64_interleave_in(i32* %253, i32* %254, i32* %255)
  %257 = getelementptr inbounds [8 x i32], [8 x i32]* %22, i64 0, i64 0
  %258 = call i32 @br_aes_ct64_ortho(i32* %257)
  %259 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %260 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = getelementptr inbounds [120 x i32], [120 x i32]* %21, i64 0, i64 0
  %263 = getelementptr inbounds [8 x i32], [8 x i32]* %22, i64 0, i64 0
  %264 = call i32 @br_aes_ct64_bitslice_encrypt(i32 %261, i32* %262, i32* %263)
  %265 = getelementptr inbounds [8 x i32], [8 x i32]* %22, i64 0, i64 0
  %266 = call i32 @br_aes_ct64_ortho(i32* %265)
  %267 = getelementptr inbounds [8 x i32], [8 x i32]* %24, i64 0, i64 0
  %268 = getelementptr inbounds [8 x i32], [8 x i32]* %22, i64 0, i64 0
  %269 = load i32, i32* %268, align 16
  %270 = getelementptr inbounds [8 x i32], [8 x i32]* %22, i64 0, i64 4
  %271 = load i32, i32* %270, align 16
  %272 = call i32 @br_aes_ct64_interleave_out(i32* %267, i32 %269, i32 %271)
  %273 = getelementptr inbounds [8 x i32], [8 x i32]* %24, i64 0, i64 0
  %274 = load i32, i32* %273, align 16
  store i32 %274, i32* %17, align 4
  %275 = getelementptr inbounds [8 x i32], [8 x i32]* %24, i64 0, i64 1
  %276 = load i32, i32* %275, align 4
  store i32 %276, i32* %18, align 4
  %277 = getelementptr inbounds [8 x i32], [8 x i32]* %24, i64 0, i64 2
  %278 = load i32, i32* %277, align 8
  store i32 %278, i32* %19, align 4
  %279 = getelementptr inbounds [8 x i32], [8 x i32]* %24, i64 0, i64 3
  %280 = load i32, i32* %279, align 4
  store i32 %280, i32* %20, align 4
  br label %282

281:                                              ; preds = %241
  br label %62

282:                                              ; preds = %244, %62
  %283 = load i8*, i8** %12, align 8
  %284 = getelementptr inbounds i8, i8* %283, i64 0
  %285 = load i32, i32* %13, align 4
  %286 = call i32 @br_enc32be(i8* %284, i32 %285)
  %287 = load i8*, i8** %12, align 8
  %288 = getelementptr inbounds i8, i8* %287, i64 4
  %289 = load i32, i32* %14, align 4
  %290 = call i32 @br_enc32be(i8* %288, i32 %289)
  %291 = load i8*, i8** %12, align 8
  %292 = getelementptr inbounds i8, i8* %291, i64 8
  %293 = load i32, i32* %15, align 4
  %294 = call i32 @br_enc32be(i8* %292, i32 %293)
  %295 = load i8*, i8** %12, align 8
  %296 = getelementptr inbounds i8, i8* %295, i64 12
  %297 = load i32, i32* %16, align 4
  %298 = call i32 @br_enc32be(i8* %296, i32 %297)
  %299 = load i8*, i8** %8, align 8
  %300 = getelementptr inbounds i8, i8* %299, i64 0
  %301 = load i32, i32* %17, align 4
  %302 = call i32 @br_enc32le(i8* %300, i32 %301)
  %303 = load i8*, i8** %8, align 8
  %304 = getelementptr inbounds i8, i8* %303, i64 4
  %305 = load i32, i32* %18, align 4
  %306 = call i32 @br_enc32le(i8* %304, i32 %305)
  %307 = load i8*, i8** %8, align 8
  %308 = getelementptr inbounds i8, i8* %307, i64 8
  %309 = load i32, i32* %19, align 4
  %310 = call i32 @br_enc32le(i8* %308, i32 %309)
  %311 = load i8*, i8** %8, align 8
  %312 = getelementptr inbounds i8, i8* %311, i64 12
  %313 = load i32, i32* %20, align 4
  %314 = call i32 @br_enc32le(i8* %312, i32 %313)
  ret void
}

declare dso_local i32 @br_aes_ct64_skey_expand(i32*, i32, i32) #1

declare dso_local i32 @br_dec32be(i8*) #1

declare dso_local i32 @br_dec32le(i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @br_swap32(i32) #1

declare dso_local i32 @br_aes_ct64_interleave_in(i32*, i32*, i32*) #1

declare dso_local i32 @br_aes_ct64_ortho(i32*) #1

declare dso_local i32 @br_aes_ct64_bitslice_encrypt(i32, i32*, i32*) #1

declare dso_local i32 @br_aes_ct64_interleave_out(i32*, i32, i32) #1

declare dso_local i32 @br_enc32le(i8*, i32) #1

declare dso_local i32 @br_enc32be(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
