; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_chacha20_ct.c_br_chacha20_ct_run.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_chacha20_ct.c_br_chacha20_ct_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@br_chacha20_ct_run.CW = internal constant [4 x i32] [i32 1634760805, i32 857760878, i32 2036477234, i32 1797285236], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @br_chacha20_ct_run(i8* %0, i8* %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [8 x i32], align 16
  %13 = alloca [3 x i32], align 4
  %14 = alloca i64, align 8
  %15 = alloca [16 x i32], align 16
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca [64 x i8], align 16
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %19 = load i8*, i8** %9, align 8
  store i8* %19, i8** %11, align 8
  store i64 0, i64* %14, align 8
  br label %20

20:                                               ; preds = %31, %5
  %21 = load i64, i64* %14, align 8
  %22 = icmp ult i64 %21, 8
  br i1 %22, label %23, label %34

23:                                               ; preds = %20
  %24 = load i8*, i8** %6, align 8
  %25 = load i64, i64* %14, align 8
  %26 = shl i64 %25, 2
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = call i32 @br_dec32le(i8* %27)
  %29 = load i64, i64* %14, align 8
  %30 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 %29
  store i32 %28, i32* %30, align 4
  br label %31

31:                                               ; preds = %23
  %32 = load i64, i64* %14, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %14, align 8
  br label %20

34:                                               ; preds = %20
  store i64 0, i64* %14, align 8
  br label %35

35:                                               ; preds = %46, %34
  %36 = load i64, i64* %14, align 8
  %37 = icmp ult i64 %36, 3
  br i1 %37, label %38, label %49

38:                                               ; preds = %35
  %39 = load i8*, i8** %7, align 8
  %40 = load i64, i64* %14, align 8
  %41 = shl i64 %40, 2
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = call i32 @br_dec32le(i8* %42)
  %44 = load i64, i64* %14, align 8
  %45 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 %44
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %38
  %47 = load i64, i64* %14, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %14, align 8
  br label %35

49:                                               ; preds = %35
  br label %50

50:                                               ; preds = %755, %49
  %51 = load i64, i64* %10, align 8
  %52 = icmp ugt i64 %51, 0
  br i1 %52, label %53, label %764

53:                                               ; preds = %50
  %54 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 0
  %55 = call i32 @memcpy(i32* %54, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @br_chacha20_ct_run.CW, i64 0, i64 0), i32 16)
  %56 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 4
  %57 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 0
  %58 = call i32 @memcpy(i32* %56, i32* %57, i32 32)
  %59 = load i32, i32* %8, align 4
  %60 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 12
  store i32 %59, i32* %60, align 16
  %61 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 13
  %62 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %63 = call i32 @memcpy(i32* %61, i32* %62, i32 12)
  store i32 0, i32* %16, align 4
  br label %64

64:                                               ; preds = %660, %53
  %65 = load i32, i32* %16, align 4
  %66 = icmp slt i32 %65, 10
  br i1 %66, label %67, label %663

67:                                               ; preds = %64
  br label %68

68:                                               ; preds = %67
  %69 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 4
  %70 = load i32, i32* %69, align 16
  %71 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 0
  %72 = load i32, i32* %71, align 16
  %73 = add nsw i32 %72, %70
  store i32 %73, i32* %71, align 16
  %74 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 0
  %75 = load i32, i32* %74, align 16
  %76 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 12
  %77 = load i32, i32* %76, align 16
  %78 = xor i32 %77, %75
  store i32 %78, i32* %76, align 16
  %79 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 12
  %80 = load i32, i32* %79, align 16
  %81 = shl i32 %80, 16
  %82 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 12
  %83 = load i32, i32* %82, align 16
  %84 = ashr i32 %83, 16
  %85 = or i32 %81, %84
  %86 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 12
  store i32 %85, i32* %86, align 16
  %87 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 12
  %88 = load i32, i32* %87, align 16
  %89 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 8
  %90 = load i32, i32* %89, align 16
  %91 = add nsw i32 %90, %88
  store i32 %91, i32* %89, align 16
  %92 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 8
  %93 = load i32, i32* %92, align 16
  %94 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 4
  %95 = load i32, i32* %94, align 16
  %96 = xor i32 %95, %93
  store i32 %96, i32* %94, align 16
  %97 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 4
  %98 = load i32, i32* %97, align 16
  %99 = shl i32 %98, 12
  %100 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 4
  %101 = load i32, i32* %100, align 16
  %102 = ashr i32 %101, 20
  %103 = or i32 %99, %102
  %104 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 4
  store i32 %103, i32* %104, align 16
  %105 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 4
  %106 = load i32, i32* %105, align 16
  %107 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 0
  %108 = load i32, i32* %107, align 16
  %109 = add nsw i32 %108, %106
  store i32 %109, i32* %107, align 16
  %110 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 0
  %111 = load i32, i32* %110, align 16
  %112 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 12
  %113 = load i32, i32* %112, align 16
  %114 = xor i32 %113, %111
  store i32 %114, i32* %112, align 16
  %115 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 12
  %116 = load i32, i32* %115, align 16
  %117 = shl i32 %116, 8
  %118 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 12
  %119 = load i32, i32* %118, align 16
  %120 = ashr i32 %119, 24
  %121 = or i32 %117, %120
  %122 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 12
  store i32 %121, i32* %122, align 16
  %123 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 12
  %124 = load i32, i32* %123, align 16
  %125 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 8
  %126 = load i32, i32* %125, align 16
  %127 = add nsw i32 %126, %124
  store i32 %127, i32* %125, align 16
  %128 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 8
  %129 = load i32, i32* %128, align 16
  %130 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 4
  %131 = load i32, i32* %130, align 16
  %132 = xor i32 %131, %129
  store i32 %132, i32* %130, align 16
  %133 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 4
  %134 = load i32, i32* %133, align 16
  %135 = shl i32 %134, 7
  %136 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 4
  %137 = load i32, i32* %136, align 16
  %138 = ashr i32 %137, 25
  %139 = or i32 %135, %138
  %140 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 4
  store i32 %139, i32* %140, align 16
  br label %141

141:                                              ; preds = %68
  br label %142

142:                                              ; preds = %141
  %143 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 5
  %144 = load i32, i32* %143, align 4
  %145 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 1
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %146, %144
  store i32 %147, i32* %145, align 4
  %148 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 1
  %149 = load i32, i32* %148, align 4
  %150 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 13
  %151 = load i32, i32* %150, align 4
  %152 = xor i32 %151, %149
  store i32 %152, i32* %150, align 4
  %153 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 13
  %154 = load i32, i32* %153, align 4
  %155 = shl i32 %154, 16
  %156 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 13
  %157 = load i32, i32* %156, align 4
  %158 = ashr i32 %157, 16
  %159 = or i32 %155, %158
  %160 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 13
  store i32 %159, i32* %160, align 4
  %161 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 13
  %162 = load i32, i32* %161, align 4
  %163 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 9
  %164 = load i32, i32* %163, align 4
  %165 = add nsw i32 %164, %162
  store i32 %165, i32* %163, align 4
  %166 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 9
  %167 = load i32, i32* %166, align 4
  %168 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 5
  %169 = load i32, i32* %168, align 4
  %170 = xor i32 %169, %167
  store i32 %170, i32* %168, align 4
  %171 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 5
  %172 = load i32, i32* %171, align 4
  %173 = shl i32 %172, 12
  %174 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 5
  %175 = load i32, i32* %174, align 4
  %176 = ashr i32 %175, 20
  %177 = or i32 %173, %176
  %178 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 5
  store i32 %177, i32* %178, align 4
  %179 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 5
  %180 = load i32, i32* %179, align 4
  %181 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 1
  %182 = load i32, i32* %181, align 4
  %183 = add nsw i32 %182, %180
  store i32 %183, i32* %181, align 4
  %184 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 1
  %185 = load i32, i32* %184, align 4
  %186 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 13
  %187 = load i32, i32* %186, align 4
  %188 = xor i32 %187, %185
  store i32 %188, i32* %186, align 4
  %189 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 13
  %190 = load i32, i32* %189, align 4
  %191 = shl i32 %190, 8
  %192 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 13
  %193 = load i32, i32* %192, align 4
  %194 = ashr i32 %193, 24
  %195 = or i32 %191, %194
  %196 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 13
  store i32 %195, i32* %196, align 4
  %197 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 13
  %198 = load i32, i32* %197, align 4
  %199 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 9
  %200 = load i32, i32* %199, align 4
  %201 = add nsw i32 %200, %198
  store i32 %201, i32* %199, align 4
  %202 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 9
  %203 = load i32, i32* %202, align 4
  %204 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 5
  %205 = load i32, i32* %204, align 4
  %206 = xor i32 %205, %203
  store i32 %206, i32* %204, align 4
  %207 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 5
  %208 = load i32, i32* %207, align 4
  %209 = shl i32 %208, 7
  %210 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 5
  %211 = load i32, i32* %210, align 4
  %212 = ashr i32 %211, 25
  %213 = or i32 %209, %212
  %214 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 5
  store i32 %213, i32* %214, align 4
  br label %215

215:                                              ; preds = %142
  br label %216

216:                                              ; preds = %215
  %217 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 6
  %218 = load i32, i32* %217, align 8
  %219 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 2
  %220 = load i32, i32* %219, align 8
  %221 = add nsw i32 %220, %218
  store i32 %221, i32* %219, align 8
  %222 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 2
  %223 = load i32, i32* %222, align 8
  %224 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 14
  %225 = load i32, i32* %224, align 8
  %226 = xor i32 %225, %223
  store i32 %226, i32* %224, align 8
  %227 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 14
  %228 = load i32, i32* %227, align 8
  %229 = shl i32 %228, 16
  %230 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 14
  %231 = load i32, i32* %230, align 8
  %232 = ashr i32 %231, 16
  %233 = or i32 %229, %232
  %234 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 14
  store i32 %233, i32* %234, align 8
  %235 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 14
  %236 = load i32, i32* %235, align 8
  %237 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 10
  %238 = load i32, i32* %237, align 8
  %239 = add nsw i32 %238, %236
  store i32 %239, i32* %237, align 8
  %240 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 10
  %241 = load i32, i32* %240, align 8
  %242 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 6
  %243 = load i32, i32* %242, align 8
  %244 = xor i32 %243, %241
  store i32 %244, i32* %242, align 8
  %245 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 6
  %246 = load i32, i32* %245, align 8
  %247 = shl i32 %246, 12
  %248 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 6
  %249 = load i32, i32* %248, align 8
  %250 = ashr i32 %249, 20
  %251 = or i32 %247, %250
  %252 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 6
  store i32 %251, i32* %252, align 8
  %253 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 6
  %254 = load i32, i32* %253, align 8
  %255 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 2
  %256 = load i32, i32* %255, align 8
  %257 = add nsw i32 %256, %254
  store i32 %257, i32* %255, align 8
  %258 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 2
  %259 = load i32, i32* %258, align 8
  %260 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 14
  %261 = load i32, i32* %260, align 8
  %262 = xor i32 %261, %259
  store i32 %262, i32* %260, align 8
  %263 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 14
  %264 = load i32, i32* %263, align 8
  %265 = shl i32 %264, 8
  %266 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 14
  %267 = load i32, i32* %266, align 8
  %268 = ashr i32 %267, 24
  %269 = or i32 %265, %268
  %270 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 14
  store i32 %269, i32* %270, align 8
  %271 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 14
  %272 = load i32, i32* %271, align 8
  %273 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 10
  %274 = load i32, i32* %273, align 8
  %275 = add nsw i32 %274, %272
  store i32 %275, i32* %273, align 8
  %276 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 10
  %277 = load i32, i32* %276, align 8
  %278 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 6
  %279 = load i32, i32* %278, align 8
  %280 = xor i32 %279, %277
  store i32 %280, i32* %278, align 8
  %281 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 6
  %282 = load i32, i32* %281, align 8
  %283 = shl i32 %282, 7
  %284 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 6
  %285 = load i32, i32* %284, align 8
  %286 = ashr i32 %285, 25
  %287 = or i32 %283, %286
  %288 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 6
  store i32 %287, i32* %288, align 8
  br label %289

289:                                              ; preds = %216
  br label %290

290:                                              ; preds = %289
  %291 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 7
  %292 = load i32, i32* %291, align 4
  %293 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 3
  %294 = load i32, i32* %293, align 4
  %295 = add nsw i32 %294, %292
  store i32 %295, i32* %293, align 4
  %296 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 3
  %297 = load i32, i32* %296, align 4
  %298 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 15
  %299 = load i32, i32* %298, align 4
  %300 = xor i32 %299, %297
  store i32 %300, i32* %298, align 4
  %301 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 15
  %302 = load i32, i32* %301, align 4
  %303 = shl i32 %302, 16
  %304 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 15
  %305 = load i32, i32* %304, align 4
  %306 = ashr i32 %305, 16
  %307 = or i32 %303, %306
  %308 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 15
  store i32 %307, i32* %308, align 4
  %309 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 15
  %310 = load i32, i32* %309, align 4
  %311 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 11
  %312 = load i32, i32* %311, align 4
  %313 = add nsw i32 %312, %310
  store i32 %313, i32* %311, align 4
  %314 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 11
  %315 = load i32, i32* %314, align 4
  %316 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 7
  %317 = load i32, i32* %316, align 4
  %318 = xor i32 %317, %315
  store i32 %318, i32* %316, align 4
  %319 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 7
  %320 = load i32, i32* %319, align 4
  %321 = shl i32 %320, 12
  %322 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 7
  %323 = load i32, i32* %322, align 4
  %324 = ashr i32 %323, 20
  %325 = or i32 %321, %324
  %326 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 7
  store i32 %325, i32* %326, align 4
  %327 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 7
  %328 = load i32, i32* %327, align 4
  %329 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 3
  %330 = load i32, i32* %329, align 4
  %331 = add nsw i32 %330, %328
  store i32 %331, i32* %329, align 4
  %332 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 3
  %333 = load i32, i32* %332, align 4
  %334 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 15
  %335 = load i32, i32* %334, align 4
  %336 = xor i32 %335, %333
  store i32 %336, i32* %334, align 4
  %337 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 15
  %338 = load i32, i32* %337, align 4
  %339 = shl i32 %338, 8
  %340 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 15
  %341 = load i32, i32* %340, align 4
  %342 = ashr i32 %341, 24
  %343 = or i32 %339, %342
  %344 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 15
  store i32 %343, i32* %344, align 4
  %345 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 15
  %346 = load i32, i32* %345, align 4
  %347 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 11
  %348 = load i32, i32* %347, align 4
  %349 = add nsw i32 %348, %346
  store i32 %349, i32* %347, align 4
  %350 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 11
  %351 = load i32, i32* %350, align 4
  %352 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 7
  %353 = load i32, i32* %352, align 4
  %354 = xor i32 %353, %351
  store i32 %354, i32* %352, align 4
  %355 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 7
  %356 = load i32, i32* %355, align 4
  %357 = shl i32 %356, 7
  %358 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 7
  %359 = load i32, i32* %358, align 4
  %360 = ashr i32 %359, 25
  %361 = or i32 %357, %360
  %362 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 7
  store i32 %361, i32* %362, align 4
  br label %363

363:                                              ; preds = %290
  br label %364

364:                                              ; preds = %363
  %365 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 5
  %366 = load i32, i32* %365, align 4
  %367 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 0
  %368 = load i32, i32* %367, align 16
  %369 = add nsw i32 %368, %366
  store i32 %369, i32* %367, align 16
  %370 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 0
  %371 = load i32, i32* %370, align 16
  %372 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 15
  %373 = load i32, i32* %372, align 4
  %374 = xor i32 %373, %371
  store i32 %374, i32* %372, align 4
  %375 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 15
  %376 = load i32, i32* %375, align 4
  %377 = shl i32 %376, 16
  %378 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 15
  %379 = load i32, i32* %378, align 4
  %380 = ashr i32 %379, 16
  %381 = or i32 %377, %380
  %382 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 15
  store i32 %381, i32* %382, align 4
  %383 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 15
  %384 = load i32, i32* %383, align 4
  %385 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 10
  %386 = load i32, i32* %385, align 8
  %387 = add nsw i32 %386, %384
  store i32 %387, i32* %385, align 8
  %388 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 10
  %389 = load i32, i32* %388, align 8
  %390 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 5
  %391 = load i32, i32* %390, align 4
  %392 = xor i32 %391, %389
  store i32 %392, i32* %390, align 4
  %393 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 5
  %394 = load i32, i32* %393, align 4
  %395 = shl i32 %394, 12
  %396 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 5
  %397 = load i32, i32* %396, align 4
  %398 = ashr i32 %397, 20
  %399 = or i32 %395, %398
  %400 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 5
  store i32 %399, i32* %400, align 4
  %401 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 5
  %402 = load i32, i32* %401, align 4
  %403 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 0
  %404 = load i32, i32* %403, align 16
  %405 = add nsw i32 %404, %402
  store i32 %405, i32* %403, align 16
  %406 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 0
  %407 = load i32, i32* %406, align 16
  %408 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 15
  %409 = load i32, i32* %408, align 4
  %410 = xor i32 %409, %407
  store i32 %410, i32* %408, align 4
  %411 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 15
  %412 = load i32, i32* %411, align 4
  %413 = shl i32 %412, 8
  %414 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 15
  %415 = load i32, i32* %414, align 4
  %416 = ashr i32 %415, 24
  %417 = or i32 %413, %416
  %418 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 15
  store i32 %417, i32* %418, align 4
  %419 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 15
  %420 = load i32, i32* %419, align 4
  %421 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 10
  %422 = load i32, i32* %421, align 8
  %423 = add nsw i32 %422, %420
  store i32 %423, i32* %421, align 8
  %424 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 10
  %425 = load i32, i32* %424, align 8
  %426 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 5
  %427 = load i32, i32* %426, align 4
  %428 = xor i32 %427, %425
  store i32 %428, i32* %426, align 4
  %429 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 5
  %430 = load i32, i32* %429, align 4
  %431 = shl i32 %430, 7
  %432 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 5
  %433 = load i32, i32* %432, align 4
  %434 = ashr i32 %433, 25
  %435 = or i32 %431, %434
  %436 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 5
  store i32 %435, i32* %436, align 4
  br label %437

437:                                              ; preds = %364
  br label %438

438:                                              ; preds = %437
  %439 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 6
  %440 = load i32, i32* %439, align 8
  %441 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 1
  %442 = load i32, i32* %441, align 4
  %443 = add nsw i32 %442, %440
  store i32 %443, i32* %441, align 4
  %444 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 1
  %445 = load i32, i32* %444, align 4
  %446 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 12
  %447 = load i32, i32* %446, align 16
  %448 = xor i32 %447, %445
  store i32 %448, i32* %446, align 16
  %449 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 12
  %450 = load i32, i32* %449, align 16
  %451 = shl i32 %450, 16
  %452 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 12
  %453 = load i32, i32* %452, align 16
  %454 = ashr i32 %453, 16
  %455 = or i32 %451, %454
  %456 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 12
  store i32 %455, i32* %456, align 16
  %457 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 12
  %458 = load i32, i32* %457, align 16
  %459 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 11
  %460 = load i32, i32* %459, align 4
  %461 = add nsw i32 %460, %458
  store i32 %461, i32* %459, align 4
  %462 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 11
  %463 = load i32, i32* %462, align 4
  %464 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 6
  %465 = load i32, i32* %464, align 8
  %466 = xor i32 %465, %463
  store i32 %466, i32* %464, align 8
  %467 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 6
  %468 = load i32, i32* %467, align 8
  %469 = shl i32 %468, 12
  %470 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 6
  %471 = load i32, i32* %470, align 8
  %472 = ashr i32 %471, 20
  %473 = or i32 %469, %472
  %474 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 6
  store i32 %473, i32* %474, align 8
  %475 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 6
  %476 = load i32, i32* %475, align 8
  %477 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 1
  %478 = load i32, i32* %477, align 4
  %479 = add nsw i32 %478, %476
  store i32 %479, i32* %477, align 4
  %480 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 1
  %481 = load i32, i32* %480, align 4
  %482 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 12
  %483 = load i32, i32* %482, align 16
  %484 = xor i32 %483, %481
  store i32 %484, i32* %482, align 16
  %485 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 12
  %486 = load i32, i32* %485, align 16
  %487 = shl i32 %486, 8
  %488 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 12
  %489 = load i32, i32* %488, align 16
  %490 = ashr i32 %489, 24
  %491 = or i32 %487, %490
  %492 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 12
  store i32 %491, i32* %492, align 16
  %493 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 12
  %494 = load i32, i32* %493, align 16
  %495 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 11
  %496 = load i32, i32* %495, align 4
  %497 = add nsw i32 %496, %494
  store i32 %497, i32* %495, align 4
  %498 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 11
  %499 = load i32, i32* %498, align 4
  %500 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 6
  %501 = load i32, i32* %500, align 8
  %502 = xor i32 %501, %499
  store i32 %502, i32* %500, align 8
  %503 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 6
  %504 = load i32, i32* %503, align 8
  %505 = shl i32 %504, 7
  %506 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 6
  %507 = load i32, i32* %506, align 8
  %508 = ashr i32 %507, 25
  %509 = or i32 %505, %508
  %510 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 6
  store i32 %509, i32* %510, align 8
  br label %511

511:                                              ; preds = %438
  br label %512

512:                                              ; preds = %511
  %513 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 7
  %514 = load i32, i32* %513, align 4
  %515 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 2
  %516 = load i32, i32* %515, align 8
  %517 = add nsw i32 %516, %514
  store i32 %517, i32* %515, align 8
  %518 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 2
  %519 = load i32, i32* %518, align 8
  %520 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 13
  %521 = load i32, i32* %520, align 4
  %522 = xor i32 %521, %519
  store i32 %522, i32* %520, align 4
  %523 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 13
  %524 = load i32, i32* %523, align 4
  %525 = shl i32 %524, 16
  %526 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 13
  %527 = load i32, i32* %526, align 4
  %528 = ashr i32 %527, 16
  %529 = or i32 %525, %528
  %530 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 13
  store i32 %529, i32* %530, align 4
  %531 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 13
  %532 = load i32, i32* %531, align 4
  %533 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 8
  %534 = load i32, i32* %533, align 16
  %535 = add nsw i32 %534, %532
  store i32 %535, i32* %533, align 16
  %536 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 8
  %537 = load i32, i32* %536, align 16
  %538 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 7
  %539 = load i32, i32* %538, align 4
  %540 = xor i32 %539, %537
  store i32 %540, i32* %538, align 4
  %541 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 7
  %542 = load i32, i32* %541, align 4
  %543 = shl i32 %542, 12
  %544 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 7
  %545 = load i32, i32* %544, align 4
  %546 = ashr i32 %545, 20
  %547 = or i32 %543, %546
  %548 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 7
  store i32 %547, i32* %548, align 4
  %549 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 7
  %550 = load i32, i32* %549, align 4
  %551 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 2
  %552 = load i32, i32* %551, align 8
  %553 = add nsw i32 %552, %550
  store i32 %553, i32* %551, align 8
  %554 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 2
  %555 = load i32, i32* %554, align 8
  %556 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 13
  %557 = load i32, i32* %556, align 4
  %558 = xor i32 %557, %555
  store i32 %558, i32* %556, align 4
  %559 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 13
  %560 = load i32, i32* %559, align 4
  %561 = shl i32 %560, 8
  %562 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 13
  %563 = load i32, i32* %562, align 4
  %564 = ashr i32 %563, 24
  %565 = or i32 %561, %564
  %566 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 13
  store i32 %565, i32* %566, align 4
  %567 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 13
  %568 = load i32, i32* %567, align 4
  %569 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 8
  %570 = load i32, i32* %569, align 16
  %571 = add nsw i32 %570, %568
  store i32 %571, i32* %569, align 16
  %572 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 8
  %573 = load i32, i32* %572, align 16
  %574 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 7
  %575 = load i32, i32* %574, align 4
  %576 = xor i32 %575, %573
  store i32 %576, i32* %574, align 4
  %577 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 7
  %578 = load i32, i32* %577, align 4
  %579 = shl i32 %578, 7
  %580 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 7
  %581 = load i32, i32* %580, align 4
  %582 = ashr i32 %581, 25
  %583 = or i32 %579, %582
  %584 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 7
  store i32 %583, i32* %584, align 4
  br label %585

585:                                              ; preds = %512
  br label %586

586:                                              ; preds = %585
  %587 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 4
  %588 = load i32, i32* %587, align 16
  %589 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 3
  %590 = load i32, i32* %589, align 4
  %591 = add nsw i32 %590, %588
  store i32 %591, i32* %589, align 4
  %592 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 3
  %593 = load i32, i32* %592, align 4
  %594 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 14
  %595 = load i32, i32* %594, align 8
  %596 = xor i32 %595, %593
  store i32 %596, i32* %594, align 8
  %597 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 14
  %598 = load i32, i32* %597, align 8
  %599 = shl i32 %598, 16
  %600 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 14
  %601 = load i32, i32* %600, align 8
  %602 = ashr i32 %601, 16
  %603 = or i32 %599, %602
  %604 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 14
  store i32 %603, i32* %604, align 8
  %605 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 14
  %606 = load i32, i32* %605, align 8
  %607 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 9
  %608 = load i32, i32* %607, align 4
  %609 = add nsw i32 %608, %606
  store i32 %609, i32* %607, align 4
  %610 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 9
  %611 = load i32, i32* %610, align 4
  %612 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 4
  %613 = load i32, i32* %612, align 16
  %614 = xor i32 %613, %611
  store i32 %614, i32* %612, align 16
  %615 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 4
  %616 = load i32, i32* %615, align 16
  %617 = shl i32 %616, 12
  %618 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 4
  %619 = load i32, i32* %618, align 16
  %620 = ashr i32 %619, 20
  %621 = or i32 %617, %620
  %622 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 4
  store i32 %621, i32* %622, align 16
  %623 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 4
  %624 = load i32, i32* %623, align 16
  %625 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 3
  %626 = load i32, i32* %625, align 4
  %627 = add nsw i32 %626, %624
  store i32 %627, i32* %625, align 4
  %628 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 3
  %629 = load i32, i32* %628, align 4
  %630 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 14
  %631 = load i32, i32* %630, align 8
  %632 = xor i32 %631, %629
  store i32 %632, i32* %630, align 8
  %633 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 14
  %634 = load i32, i32* %633, align 8
  %635 = shl i32 %634, 8
  %636 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 14
  %637 = load i32, i32* %636, align 8
  %638 = ashr i32 %637, 24
  %639 = or i32 %635, %638
  %640 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 14
  store i32 %639, i32* %640, align 8
  %641 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 14
  %642 = load i32, i32* %641, align 8
  %643 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 9
  %644 = load i32, i32* %643, align 4
  %645 = add nsw i32 %644, %642
  store i32 %645, i32* %643, align 4
  %646 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 9
  %647 = load i32, i32* %646, align 4
  %648 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 4
  %649 = load i32, i32* %648, align 16
  %650 = xor i32 %649, %647
  store i32 %650, i32* %648, align 16
  %651 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 4
  %652 = load i32, i32* %651, align 16
  %653 = shl i32 %652, 7
  %654 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 4
  %655 = load i32, i32* %654, align 16
  %656 = ashr i32 %655, 25
  %657 = or i32 %653, %656
  %658 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 4
  store i32 %657, i32* %658, align 16
  br label %659

659:                                              ; preds = %586
  br label %660

660:                                              ; preds = %659
  %661 = load i32, i32* %16, align 4
  %662 = add nsw i32 %661, 1
  store i32 %662, i32* %16, align 4
  br label %64

663:                                              ; preds = %64
  store i64 0, i64* %14, align 8
  br label %664

664:                                              ; preds = %679, %663
  %665 = load i64, i64* %14, align 8
  %666 = icmp ult i64 %665, 4
  br i1 %666, label %667, label %682

667:                                              ; preds = %664
  %668 = load i64, i64* %14, align 8
  %669 = shl i64 %668, 2
  %670 = getelementptr inbounds [64 x i8], [64 x i8]* %18, i64 0, i64 %669
  %671 = load i64, i64* %14, align 8
  %672 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 %671
  %673 = load i32, i32* %672, align 4
  %674 = load i64, i64* %14, align 8
  %675 = getelementptr inbounds [4 x i32], [4 x i32]* @br_chacha20_ct_run.CW, i64 0, i64 %674
  %676 = load i32, i32* %675, align 4
  %677 = add nsw i32 %673, %676
  %678 = call i32 @br_enc32le(i8* %670, i32 %677)
  br label %679

679:                                              ; preds = %667
  %680 = load i64, i64* %14, align 8
  %681 = add i64 %680, 1
  store i64 %681, i64* %14, align 8
  br label %664

682:                                              ; preds = %664
  store i64 4, i64* %14, align 8
  br label %683

683:                                              ; preds = %699, %682
  %684 = load i64, i64* %14, align 8
  %685 = icmp ult i64 %684, 12
  br i1 %685, label %686, label %702

686:                                              ; preds = %683
  %687 = load i64, i64* %14, align 8
  %688 = shl i64 %687, 2
  %689 = getelementptr inbounds [64 x i8], [64 x i8]* %18, i64 0, i64 %688
  %690 = load i64, i64* %14, align 8
  %691 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 %690
  %692 = load i32, i32* %691, align 4
  %693 = load i64, i64* %14, align 8
  %694 = sub i64 %693, 4
  %695 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 %694
  %696 = load i32, i32* %695, align 4
  %697 = add nsw i32 %692, %696
  %698 = call i32 @br_enc32le(i8* %689, i32 %697)
  br label %699

699:                                              ; preds = %686
  %700 = load i64, i64* %14, align 8
  %701 = add i64 %700, 1
  store i64 %701, i64* %14, align 8
  br label %683

702:                                              ; preds = %683
  %703 = getelementptr inbounds [64 x i8], [64 x i8]* %18, i64 0, i64 48
  %704 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 12
  %705 = load i32, i32* %704, align 16
  %706 = load i32, i32* %8, align 4
  %707 = add nsw i32 %705, %706
  %708 = call i32 @br_enc32le(i8* %703, i32 %707)
  store i64 13, i64* %14, align 8
  br label %709

709:                                              ; preds = %725, %702
  %710 = load i64, i64* %14, align 8
  %711 = icmp ult i64 %710, 16
  br i1 %711, label %712, label %728

712:                                              ; preds = %709
  %713 = load i64, i64* %14, align 8
  %714 = shl i64 %713, 2
  %715 = getelementptr inbounds [64 x i8], [64 x i8]* %18, i64 0, i64 %714
  %716 = load i64, i64* %14, align 8
  %717 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 %716
  %718 = load i32, i32* %717, align 4
  %719 = load i64, i64* %14, align 8
  %720 = sub i64 %719, 13
  %721 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 %720
  %722 = load i32, i32* %721, align 4
  %723 = add nsw i32 %718, %722
  %724 = call i32 @br_enc32le(i8* %715, i32 %723)
  br label %725

725:                                              ; preds = %712
  %726 = load i64, i64* %14, align 8
  %727 = add i64 %726, 1
  store i64 %727, i64* %14, align 8
  br label %709

728:                                              ; preds = %709
  %729 = load i64, i64* %10, align 8
  %730 = icmp ult i64 %729, 64
  br i1 %730, label %731, label %733

731:                                              ; preds = %728
  %732 = load i64, i64* %10, align 8
  br label %734

733:                                              ; preds = %728
  br label %734

734:                                              ; preds = %733, %731
  %735 = phi i64 [ %732, %731 ], [ 64, %733 ]
  store i64 %735, i64* %17, align 8
  store i64 0, i64* %14, align 8
  br label %736

736:                                              ; preds = %752, %734
  %737 = load i64, i64* %14, align 8
  %738 = load i64, i64* %17, align 8
  %739 = icmp ult i64 %737, %738
  br i1 %739, label %740, label %755

740:                                              ; preds = %736
  %741 = load i64, i64* %14, align 8
  %742 = getelementptr inbounds [64 x i8], [64 x i8]* %18, i64 0, i64 %741
  %743 = load i8, i8* %742, align 1
  %744 = zext i8 %743 to i32
  %745 = load i8*, i8** %11, align 8
  %746 = load i64, i64* %14, align 8
  %747 = getelementptr inbounds i8, i8* %745, i64 %746
  %748 = load i8, i8* %747, align 1
  %749 = zext i8 %748 to i32
  %750 = xor i32 %749, %744
  %751 = trunc i32 %750 to i8
  store i8 %751, i8* %747, align 1
  br label %752

752:                                              ; preds = %740
  %753 = load i64, i64* %14, align 8
  %754 = add i64 %753, 1
  store i64 %754, i64* %14, align 8
  br label %736

755:                                              ; preds = %736
  %756 = load i64, i64* %17, align 8
  %757 = load i8*, i8** %11, align 8
  %758 = getelementptr inbounds i8, i8* %757, i64 %756
  store i8* %758, i8** %11, align 8
  %759 = load i64, i64* %17, align 8
  %760 = load i64, i64* %10, align 8
  %761 = sub i64 %760, %759
  store i64 %761, i64* %10, align 8
  %762 = load i32, i32* %8, align 4
  %763 = add nsw i32 %762, 1
  store i32 %763, i32* %8, align 4
  br label %50

764:                                              ; preds = %50
  %765 = load i32, i32* %8, align 4
  ret i32 %765
}

declare dso_local i32 @br_dec32le(i8*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @br_enc32le(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
