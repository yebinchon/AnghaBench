; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ec/extr_ec_c25519_i15.c_api_mul.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ec/extr_ec_c25519_i15.c_api_mul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@C255_P = common dso_local global i32* null, align 8
@C255_R2 = common dso_local global i8* null, align 8
@P0I = common dso_local global i32 0, align 4
@C255_A24 = common dso_local global i8* null, align 8
@ILEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8*, i64, i32)* @api_mul to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @api_mul(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca [18 x i8], align 16
  %13 = alloca [18 x i8], align 16
  %14 = alloca [18 x i8], align 16
  %15 = alloca [18 x i8], align 16
  %16 = alloca [18 x i8], align 16
  %17 = alloca [19 x i8], align 16
  %18 = alloca [18 x i8], align 16
  %19 = alloca [19 x i8], align 16
  %20 = alloca [18 x i8], align 16
  %21 = alloca [18 x i8], align 16
  %22 = alloca [18 x i8], align 16
  %23 = alloca [18 x i8], align 16
  %24 = alloca [18 x i8], align 16
  %25 = alloca [18 x i8], align 16
  %26 = alloca [32 x i8], align 16
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load i64, i64* %8, align 8
  %33 = icmp ne i64 %32, 32
  br i1 %33, label %37, label %34

34:                                               ; preds = %5
  %35 = load i64, i64* %10, align 8
  %36 = icmp ugt i64 %35, 32
  br i1 %36, label %37, label %38

37:                                               ; preds = %34, %5
  store i32 0, i32* %6, align 4
  br label %311

38:                                               ; preds = %34
  %39 = load i8*, i8** %7, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 31
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = and i32 %42, 127
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %40, align 1
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 @byteswap(i8* %45)
  %47 = getelementptr inbounds [19 x i8], [19 x i8]* %19, i64 0, i64 0
  %48 = call i32 @br_i15_zero(i8* %47, i32 273)
  %49 = getelementptr inbounds [19 x i8], [19 x i8]* %19, i64 0, i64 18
  store i8 1, i8* %49, align 2
  %50 = getelementptr inbounds [19 x i8], [19 x i8]* %17, i64 0, i64 0
  %51 = load i8*, i8** %7, align 8
  %52 = getelementptr inbounds [19 x i8], [19 x i8]* %19, i64 0, i64 0
  %53 = call i32 @br_i15_decode_mod(i8* %50, i8* %51, i32 32, i8* %52)
  %54 = getelementptr inbounds [19 x i8], [19 x i8]* %17, i64 0, i64 0
  store i8 16, i8* %54, align 16
  %55 = getelementptr inbounds [19 x i8], [19 x i8]* %17, i64 0, i64 0
  %56 = load i32*, i32** @C255_P, align 8
  %57 = getelementptr inbounds [19 x i8], [19 x i8]* %17, i64 0, i64 0
  %58 = load i32*, i32** @C255_P, align 8
  %59 = call i32 @br_i15_sub(i8* %57, i32* %58, i32 0)
  %60 = call i32 @NOT(i32 %59)
  %61 = call i32 @br_i15_sub(i8* %55, i32* %56, i32 %60)
  %62 = getelementptr inbounds [18 x i8], [18 x i8]* %12, i64 0, i64 0
  %63 = getelementptr inbounds [19 x i8], [19 x i8]* %17, i64 0, i64 0
  %64 = load i8*, i8** @C255_R2, align 8
  %65 = load i32*, i32** @C255_P, align 8
  %66 = load i32, i32* @P0I, align 4
  %67 = call i32 @br_i15_montymul(i8* %62, i8* %63, i8* %64, i32* %65, i32 %66)
  %68 = getelementptr inbounds [18 x i8], [18 x i8]* %14, i64 0, i64 0
  %69 = getelementptr inbounds [18 x i8], [18 x i8]* %12, i64 0, i64 0
  %70 = call i32 @memcpy(i8* %68, i8* %69, i64 18)
  %71 = getelementptr inbounds [18 x i8], [18 x i8]* %15, i64 0, i64 0
  %72 = load i32*, i32** @C255_P, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @br_i15_zero(i8* %71, i32 %74)
  %76 = getelementptr inbounds [18 x i8], [18 x i8]* %13, i64 0, i64 0
  %77 = getelementptr inbounds [18 x i8], [18 x i8]* %15, i64 0, i64 0
  %78 = call i32 @memcpy(i8* %76, i8* %77, i64 18)
  %79 = getelementptr inbounds [18 x i8], [18 x i8]* %13, i64 0, i64 1
  store i8 19, i8* %79, align 1
  %80 = getelementptr inbounds [18 x i8], [18 x i8]* %16, i64 0, i64 0
  %81 = getelementptr inbounds [18 x i8], [18 x i8]* %13, i64 0, i64 0
  %82 = call i32 @memcpy(i8* %80, i8* %81, i64 18)
  %83 = getelementptr inbounds [32 x i8], [32 x i8]* %26, i64 0, i64 0
  %84 = load i64, i64* %10, align 8
  %85 = sub i64 32, %84
  %86 = trunc i64 %85 to i32
  %87 = call i32 @memset(i8* %83, i32 0, i32 %86)
  %88 = getelementptr inbounds [32 x i8], [32 x i8]* %26, i64 0, i64 0
  %89 = getelementptr inbounds i8, i8* %88, i64 32
  %90 = load i64, i64* %10, align 8
  %91 = sub i64 0, %90
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = load i8*, i8** %9, align 8
  %94 = load i64, i64* %10, align 8
  %95 = call i32 @memcpy(i8* %92, i8* %93, i64 %94)
  %96 = getelementptr inbounds [32 x i8], [32 x i8]* %26, i64 0, i64 31
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  %99 = and i32 %98, 248
  %100 = trunc i32 %99 to i8
  store i8 %100, i8* %96, align 1
  %101 = getelementptr inbounds [32 x i8], [32 x i8]* %26, i64 0, i64 0
  %102 = load i8, i8* %101, align 16
  %103 = zext i8 %102 to i32
  %104 = and i32 %103, 127
  %105 = trunc i32 %104 to i8
  store i8 %105, i8* %101, align 16
  %106 = getelementptr inbounds [32 x i8], [32 x i8]* %26, i64 0, i64 0
  %107 = load i8, i8* %106, align 16
  %108 = zext i8 %107 to i32
  %109 = or i32 %108, 64
  %110 = trunc i32 %109 to i8
  store i8 %110, i8* %106, align 16
  store i32 0, i32* %27, align 4
  store i32 254, i32* %28, align 4
  br label %111

111:                                              ; preds = %210, %38
  %112 = load i32, i32* %28, align 4
  %113 = icmp sge i32 %112, 0
  br i1 %113, label %114, label %213

114:                                              ; preds = %111
  %115 = load i32, i32* %28, align 4
  %116 = ashr i32 %115, 3
  %117 = sub nsw i32 31, %116
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [32 x i8], [32 x i8]* %26, i64 0, i64 %118
  %120 = load i8, i8* %119, align 1
  %121 = zext i8 %120 to i32
  %122 = load i32, i32* %28, align 4
  %123 = and i32 %122, 7
  %124 = ashr i32 %121, %123
  %125 = and i32 %124, 1
  store i32 %125, i32* %29, align 4
  %126 = load i32, i32* %29, align 4
  %127 = load i32, i32* %27, align 4
  %128 = xor i32 %127, %126
  store i32 %128, i32* %27, align 4
  %129 = getelementptr inbounds [18 x i8], [18 x i8]* %13, i64 0, i64 0
  %130 = getelementptr inbounds [18 x i8], [18 x i8]* %14, i64 0, i64 0
  %131 = load i32, i32* %27, align 4
  %132 = call i32 @cswap(i8* %129, i8* %130, i32 %131)
  %133 = getelementptr inbounds [18 x i8], [18 x i8]* %15, i64 0, i64 0
  %134 = getelementptr inbounds [18 x i8], [18 x i8]* %16, i64 0, i64 0
  %135 = load i32, i32* %27, align 4
  %136 = call i32 @cswap(i8* %133, i8* %134, i32 %135)
  %137 = load i32, i32* %29, align 4
  store i32 %137, i32* %27, align 4
  %138 = getelementptr inbounds [19 x i8], [19 x i8]* %17, i64 0, i64 0
  %139 = getelementptr inbounds [18 x i8], [18 x i8]* %13, i64 0, i64 0
  %140 = getelementptr inbounds [18 x i8], [18 x i8]* %15, i64 0, i64 0
  %141 = call i32 @c255_add(i8* %138, i8* %139, i8* %140)
  %142 = getelementptr inbounds [18 x i8], [18 x i8]* %18, i64 0, i64 0
  %143 = getelementptr inbounds [19 x i8], [19 x i8]* %17, i64 0, i64 0
  %144 = getelementptr inbounds [19 x i8], [19 x i8]* %17, i64 0, i64 0
  %145 = call i32 @c255_mul(i8* %142, i8* %143, i8* %144)
  %146 = getelementptr inbounds [19 x i8], [19 x i8]* %19, i64 0, i64 0
  %147 = getelementptr inbounds [18 x i8], [18 x i8]* %13, i64 0, i64 0
  %148 = getelementptr inbounds [18 x i8], [18 x i8]* %15, i64 0, i64 0
  %149 = call i32 @c255_sub(i8* %146, i8* %147, i8* %148)
  %150 = getelementptr inbounds [18 x i8], [18 x i8]* %20, i64 0, i64 0
  %151 = getelementptr inbounds [19 x i8], [19 x i8]* %19, i64 0, i64 0
  %152 = getelementptr inbounds [19 x i8], [19 x i8]* %19, i64 0, i64 0
  %153 = call i32 @c255_mul(i8* %150, i8* %151, i8* %152)
  %154 = getelementptr inbounds [18 x i8], [18 x i8]* %23, i64 0, i64 0
  %155 = getelementptr inbounds [18 x i8], [18 x i8]* %18, i64 0, i64 0
  %156 = getelementptr inbounds [18 x i8], [18 x i8]* %20, i64 0, i64 0
  %157 = call i32 @c255_sub(i8* %154, i8* %155, i8* %156)
  %158 = getelementptr inbounds [18 x i8], [18 x i8]* %21, i64 0, i64 0
  %159 = getelementptr inbounds [18 x i8], [18 x i8]* %14, i64 0, i64 0
  %160 = getelementptr inbounds [18 x i8], [18 x i8]* %16, i64 0, i64 0
  %161 = call i32 @c255_add(i8* %158, i8* %159, i8* %160)
  %162 = getelementptr inbounds [18 x i8], [18 x i8]* %22, i64 0, i64 0
  %163 = getelementptr inbounds [18 x i8], [18 x i8]* %14, i64 0, i64 0
  %164 = getelementptr inbounds [18 x i8], [18 x i8]* %16, i64 0, i64 0
  %165 = call i32 @c255_sub(i8* %162, i8* %163, i8* %164)
  %166 = getelementptr inbounds [18 x i8], [18 x i8]* %24, i64 0, i64 0
  %167 = getelementptr inbounds [18 x i8], [18 x i8]* %22, i64 0, i64 0
  %168 = getelementptr inbounds [19 x i8], [19 x i8]* %17, i64 0, i64 0
  %169 = call i32 @c255_mul(i8* %166, i8* %167, i8* %168)
  %170 = getelementptr inbounds [18 x i8], [18 x i8]* %25, i64 0, i64 0
  %171 = getelementptr inbounds [18 x i8], [18 x i8]* %21, i64 0, i64 0
  %172 = getelementptr inbounds [19 x i8], [19 x i8]* %19, i64 0, i64 0
  %173 = call i32 @c255_mul(i8* %170, i8* %171, i8* %172)
  %174 = getelementptr inbounds [18 x i8], [18 x i8]* %14, i64 0, i64 0
  %175 = getelementptr inbounds [18 x i8], [18 x i8]* %24, i64 0, i64 0
  %176 = getelementptr inbounds [18 x i8], [18 x i8]* %25, i64 0, i64 0
  %177 = call i32 @c255_add(i8* %174, i8* %175, i8* %176)
  %178 = getelementptr inbounds [18 x i8], [18 x i8]* %14, i64 0, i64 0
  %179 = getelementptr inbounds [18 x i8], [18 x i8]* %14, i64 0, i64 0
  %180 = getelementptr inbounds [18 x i8], [18 x i8]* %14, i64 0, i64 0
  %181 = call i32 @c255_mul(i8* %178, i8* %179, i8* %180)
  %182 = getelementptr inbounds [18 x i8], [18 x i8]* %16, i64 0, i64 0
  %183 = getelementptr inbounds [18 x i8], [18 x i8]* %24, i64 0, i64 0
  %184 = getelementptr inbounds [18 x i8], [18 x i8]* %25, i64 0, i64 0
  %185 = call i32 @c255_sub(i8* %182, i8* %183, i8* %184)
  %186 = getelementptr inbounds [18 x i8], [18 x i8]* %16, i64 0, i64 0
  %187 = getelementptr inbounds [18 x i8], [18 x i8]* %16, i64 0, i64 0
  %188 = getelementptr inbounds [18 x i8], [18 x i8]* %16, i64 0, i64 0
  %189 = call i32 @c255_mul(i8* %186, i8* %187, i8* %188)
  %190 = getelementptr inbounds [18 x i8], [18 x i8]* %16, i64 0, i64 0
  %191 = getelementptr inbounds [18 x i8], [18 x i8]* %16, i64 0, i64 0
  %192 = getelementptr inbounds [18 x i8], [18 x i8]* %12, i64 0, i64 0
  %193 = call i32 @c255_mul(i8* %190, i8* %191, i8* %192)
  %194 = getelementptr inbounds [18 x i8], [18 x i8]* %13, i64 0, i64 0
  %195 = getelementptr inbounds [18 x i8], [18 x i8]* %18, i64 0, i64 0
  %196 = getelementptr inbounds [18 x i8], [18 x i8]* %20, i64 0, i64 0
  %197 = call i32 @c255_mul(i8* %194, i8* %195, i8* %196)
  %198 = getelementptr inbounds [18 x i8], [18 x i8]* %15, i64 0, i64 0
  %199 = load i8*, i8** @C255_A24, align 8
  %200 = getelementptr inbounds [18 x i8], [18 x i8]* %23, i64 0, i64 0
  %201 = call i32 @c255_mul(i8* %198, i8* %199, i8* %200)
  %202 = getelementptr inbounds [18 x i8], [18 x i8]* %15, i64 0, i64 0
  %203 = getelementptr inbounds [18 x i8], [18 x i8]* %15, i64 0, i64 0
  %204 = getelementptr inbounds [18 x i8], [18 x i8]* %18, i64 0, i64 0
  %205 = call i32 @c255_add(i8* %202, i8* %203, i8* %204)
  %206 = getelementptr inbounds [18 x i8], [18 x i8]* %15, i64 0, i64 0
  %207 = getelementptr inbounds [18 x i8], [18 x i8]* %23, i64 0, i64 0
  %208 = getelementptr inbounds [18 x i8], [18 x i8]* %15, i64 0, i64 0
  %209 = call i32 @c255_mul(i8* %206, i8* %207, i8* %208)
  br label %210

210:                                              ; preds = %114
  %211 = load i32, i32* %28, align 4
  %212 = add nsw i32 %211, -1
  store i32 %212, i32* %28, align 4
  br label %111

213:                                              ; preds = %111
  %214 = getelementptr inbounds [18 x i8], [18 x i8]* %13, i64 0, i64 0
  %215 = getelementptr inbounds [18 x i8], [18 x i8]* %14, i64 0, i64 0
  %216 = load i32, i32* %27, align 4
  %217 = call i32 @cswap(i8* %214, i8* %215, i32 %216)
  %218 = getelementptr inbounds [18 x i8], [18 x i8]* %15, i64 0, i64 0
  %219 = getelementptr inbounds [18 x i8], [18 x i8]* %16, i64 0, i64 0
  %220 = load i32, i32* %27, align 4
  %221 = call i32 @cswap(i8* %218, i8* %219, i32 %220)
  %222 = getelementptr inbounds [19 x i8], [19 x i8]* %17, i64 0, i64 0
  %223 = getelementptr inbounds [18 x i8], [18 x i8]* %15, i64 0, i64 0
  %224 = call i32 @memcpy(i8* %222, i8* %223, i64 18)
  store i32 0, i32* %28, align 4
  br label %225

225:                                              ; preds = %237, %213
  %226 = load i32, i32* %28, align 4
  %227 = icmp slt i32 %226, 15
  br i1 %227, label %228, label %240

228:                                              ; preds = %225
  %229 = getelementptr inbounds [19 x i8], [19 x i8]* %17, i64 0, i64 0
  %230 = getelementptr inbounds [19 x i8], [19 x i8]* %17, i64 0, i64 0
  %231 = getelementptr inbounds [19 x i8], [19 x i8]* %17, i64 0, i64 0
  %232 = call i32 @c255_mul(i8* %229, i8* %230, i8* %231)
  %233 = getelementptr inbounds [19 x i8], [19 x i8]* %17, i64 0, i64 0
  %234 = getelementptr inbounds [19 x i8], [19 x i8]* %17, i64 0, i64 0
  %235 = getelementptr inbounds [18 x i8], [18 x i8]* %15, i64 0, i64 0
  %236 = call i32 @c255_mul(i8* %233, i8* %234, i8* %235)
  br label %237

237:                                              ; preds = %228
  %238 = load i32, i32* %28, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %28, align 4
  br label %225

240:                                              ; preds = %225
  %241 = getelementptr inbounds [19 x i8], [19 x i8]* %19, i64 0, i64 0
  %242 = getelementptr inbounds [19 x i8], [19 x i8]* %17, i64 0, i64 0
  %243 = call i32 @memcpy(i8* %241, i8* %242, i64 18)
  store i32 0, i32* %28, align 4
  br label %244

244:                                              ; preds = %264, %240
  %245 = load i32, i32* %28, align 4
  %246 = icmp slt i32 %245, 14
  br i1 %246, label %247, label %267

247:                                              ; preds = %244
  store i32 0, i32* %30, align 4
  br label %248

248:                                              ; preds = %256, %247
  %249 = load i32, i32* %30, align 4
  %250 = icmp slt i32 %249, 16
  br i1 %250, label %251, label %259

251:                                              ; preds = %248
  %252 = getelementptr inbounds [19 x i8], [19 x i8]* %19, i64 0, i64 0
  %253 = getelementptr inbounds [19 x i8], [19 x i8]* %19, i64 0, i64 0
  %254 = getelementptr inbounds [19 x i8], [19 x i8]* %19, i64 0, i64 0
  %255 = call i32 @c255_mul(i8* %252, i8* %253, i8* %254)
  br label %256

256:                                              ; preds = %251
  %257 = load i32, i32* %30, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %30, align 4
  br label %248

259:                                              ; preds = %248
  %260 = getelementptr inbounds [19 x i8], [19 x i8]* %19, i64 0, i64 0
  %261 = getelementptr inbounds [19 x i8], [19 x i8]* %19, i64 0, i64 0
  %262 = getelementptr inbounds [19 x i8], [19 x i8]* %17, i64 0, i64 0
  %263 = call i32 @c255_mul(i8* %260, i8* %261, i8* %262)
  br label %264

264:                                              ; preds = %259
  %265 = load i32, i32* %28, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %28, align 4
  br label %244

267:                                              ; preds = %244
  store i32 14, i32* %28, align 4
  br label %268

268:                                              ; preds = %286, %267
  %269 = load i32, i32* %28, align 4
  %270 = icmp sge i32 %269, 0
  br i1 %270, label %271, label %289

271:                                              ; preds = %268
  %272 = getelementptr inbounds [19 x i8], [19 x i8]* %19, i64 0, i64 0
  %273 = getelementptr inbounds [19 x i8], [19 x i8]* %19, i64 0, i64 0
  %274 = getelementptr inbounds [19 x i8], [19 x i8]* %19, i64 0, i64 0
  %275 = call i32 @c255_mul(i8* %272, i8* %273, i8* %274)
  %276 = load i32, i32* %28, align 4
  %277 = ashr i32 65515, %276
  %278 = and i32 %277, 1
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %285

280:                                              ; preds = %271
  %281 = getelementptr inbounds [19 x i8], [19 x i8]* %19, i64 0, i64 0
  %282 = getelementptr inbounds [18 x i8], [18 x i8]* %15, i64 0, i64 0
  %283 = getelementptr inbounds [19 x i8], [19 x i8]* %19, i64 0, i64 0
  %284 = call i32 @c255_mul(i8* %281, i8* %282, i8* %283)
  br label %285

285:                                              ; preds = %280, %271
  br label %286

286:                                              ; preds = %285
  %287 = load i32, i32* %28, align 4
  %288 = add nsw i32 %287, -1
  store i32 %288, i32* %28, align 4
  br label %268

289:                                              ; preds = %268
  %290 = getelementptr inbounds [19 x i8], [19 x i8]* %19, i64 0, i64 0
  %291 = getelementptr inbounds [18 x i8], [18 x i8]* %13, i64 0, i64 0
  %292 = getelementptr inbounds [19 x i8], [19 x i8]* %19, i64 0, i64 0
  %293 = call i32 @c255_mul(i8* %290, i8* %291, i8* %292)
  %294 = getelementptr inbounds [19 x i8], [19 x i8]* %17, i64 0, i64 0
  %295 = load i32*, i32** @C255_P, align 8
  %296 = getelementptr inbounds i32, i32* %295, i64 0
  %297 = load i32, i32* %296, align 4
  %298 = call i32 @br_i15_zero(i8* %294, i32 %297)
  %299 = getelementptr inbounds [19 x i8], [19 x i8]* %17, i64 0, i64 1
  store i8 1, i8* %299, align 1
  %300 = getelementptr inbounds [18 x i8], [18 x i8]* %13, i64 0, i64 0
  %301 = getelementptr inbounds [19 x i8], [19 x i8]* %17, i64 0, i64 0
  %302 = getelementptr inbounds [19 x i8], [19 x i8]* %19, i64 0, i64 0
  %303 = load i32*, i32** @C255_P, align 8
  %304 = load i32, i32* @P0I, align 4
  %305 = call i32 @br_i15_montymul(i8* %300, i8* %301, i8* %302, i32* %303, i32 %304)
  %306 = load i8*, i8** %7, align 8
  %307 = getelementptr inbounds [18 x i8], [18 x i8]* %13, i64 0, i64 0
  %308 = call i32 @br_i15_encode(i8* %306, i32 32, i8* %307)
  %309 = load i8*, i8** %7, align 8
  %310 = call i32 @byteswap(i8* %309)
  store i32 1, i32* %6, align 4
  br label %311

311:                                              ; preds = %289, %37
  %312 = load i32, i32* %6, align 4
  ret i32 %312
}

declare dso_local i32 @byteswap(i8*) #1

declare dso_local i32 @br_i15_zero(i8*, i32) #1

declare dso_local i32 @br_i15_decode_mod(i8*, i8*, i32, i8*) #1

declare dso_local i32 @br_i15_sub(i8*, i32*, i32) #1

declare dso_local i32 @NOT(i32) #1

declare dso_local i32 @br_i15_montymul(i8*, i8*, i8*, i32*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @cswap(i8*, i8*, i32) #1

declare dso_local i32 @c255_add(i8*, i8*, i8*) #1

declare dso_local i32 @c255_mul(i8*, i8*, i8*) #1

declare dso_local i32 @c255_sub(i8*, i8*, i8*) #1

declare dso_local i32 @br_i15_encode(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
