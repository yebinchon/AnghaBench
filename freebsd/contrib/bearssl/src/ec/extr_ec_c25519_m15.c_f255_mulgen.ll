; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ec/extr_ec_c25519_m15.c_f255_mulgen.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ec/extr_ec_c25519_m15.c_f255_mulgen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32)* @f255_mulgen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @f255_mulgen(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [40 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 0
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @square20(i32* %15, i32* %16)
  br label %23

18:                                               ; preds = %4
  %19 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 0
  %20 = load i32*, i32** %6, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @mul20(i32* %19, i32* %20, i32* %21)
  br label %23

23:                                               ; preds = %18, %14
  %24 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 19
  %25 = load i32, i32* %24, align 4
  %26 = ashr i32 %25, 8
  %27 = call i32 @MUL15(i32 %26, i32 19)
  store i32 %27, i32* %10, align 4
  %28 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 19
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 255
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %23
  %32 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 0
  %33 = load i32, i32* %32, align 16
  %34 = load i32, i32* %10, align 4
  %35 = add nsw i32 %33, %34
  %36 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 20
  %37 = load i32, i32* %36, align 16
  %38 = call i32 @MUL15(i32 %37, i32 608)
  %39 = add nsw i32 %35, %38
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = and i32 %40, 8191
  %42 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 0
  store i32 %41, i32* %42, align 16
  %43 = load i32, i32* %11, align 4
  %44 = ashr i32 %43, 13
  store i32 %44, i32* %10, align 4
  br label %45

45:                                               ; preds = %31
  br label %46

46:                                               ; preds = %45
  %47 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %10, align 4
  %50 = add nsw i32 %48, %49
  %51 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 21
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @MUL15(i32 %52, i32 608)
  %54 = add nsw i32 %50, %53
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = and i32 %55, 8191
  %57 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 1
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* %11, align 4
  %59 = ashr i32 %58, 13
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %46
  br label %61

61:                                               ; preds = %60
  %62 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %63, %64
  %66 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 22
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @MUL15(i32 %67, i32 608)
  %69 = add nsw i32 %65, %68
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %11, align 4
  %71 = and i32 %70, 8191
  %72 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 2
  store i32 %71, i32* %72, align 8
  %73 = load i32, i32* %11, align 4
  %74 = ashr i32 %73, 13
  store i32 %74, i32* %10, align 4
  br label %75

75:                                               ; preds = %61
  br label %76

76:                                               ; preds = %75
  %77 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 3
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %10, align 4
  %80 = add nsw i32 %78, %79
  %81 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 23
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @MUL15(i32 %82, i32 608)
  %84 = add nsw i32 %80, %83
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %11, align 4
  %86 = and i32 %85, 8191
  %87 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 3
  store i32 %86, i32* %87, align 4
  %88 = load i32, i32* %11, align 4
  %89 = ashr i32 %88, 13
  store i32 %89, i32* %10, align 4
  br label %90

90:                                               ; preds = %76
  br label %91

91:                                               ; preds = %90
  %92 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 4
  %93 = load i32, i32* %92, align 16
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %93, %94
  %96 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 24
  %97 = load i32, i32* %96, align 16
  %98 = call i32 @MUL15(i32 %97, i32 608)
  %99 = add nsw i32 %95, %98
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %11, align 4
  %101 = and i32 %100, 8191
  %102 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 4
  store i32 %101, i32* %102, align 16
  %103 = load i32, i32* %11, align 4
  %104 = ashr i32 %103, 13
  store i32 %104, i32* %10, align 4
  br label %105

105:                                              ; preds = %91
  br label %106

106:                                              ; preds = %105
  %107 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 5
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %10, align 4
  %110 = add nsw i32 %108, %109
  %111 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 25
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @MUL15(i32 %112, i32 608)
  %114 = add nsw i32 %110, %113
  store i32 %114, i32* %11, align 4
  %115 = load i32, i32* %11, align 4
  %116 = and i32 %115, 8191
  %117 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 5
  store i32 %116, i32* %117, align 4
  %118 = load i32, i32* %11, align 4
  %119 = ashr i32 %118, 13
  store i32 %119, i32* %10, align 4
  br label %120

120:                                              ; preds = %106
  br label %121

121:                                              ; preds = %120
  %122 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 6
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %10, align 4
  %125 = add nsw i32 %123, %124
  %126 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 26
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @MUL15(i32 %127, i32 608)
  %129 = add nsw i32 %125, %128
  store i32 %129, i32* %11, align 4
  %130 = load i32, i32* %11, align 4
  %131 = and i32 %130, 8191
  %132 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 6
  store i32 %131, i32* %132, align 8
  %133 = load i32, i32* %11, align 4
  %134 = ashr i32 %133, 13
  store i32 %134, i32* %10, align 4
  br label %135

135:                                              ; preds = %121
  br label %136

136:                                              ; preds = %135
  %137 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 7
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %10, align 4
  %140 = add nsw i32 %138, %139
  %141 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 27
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @MUL15(i32 %142, i32 608)
  %144 = add nsw i32 %140, %143
  store i32 %144, i32* %11, align 4
  %145 = load i32, i32* %11, align 4
  %146 = and i32 %145, 8191
  %147 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 7
  store i32 %146, i32* %147, align 4
  %148 = load i32, i32* %11, align 4
  %149 = ashr i32 %148, 13
  store i32 %149, i32* %10, align 4
  br label %150

150:                                              ; preds = %136
  br label %151

151:                                              ; preds = %150
  %152 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 8
  %153 = load i32, i32* %152, align 16
  %154 = load i32, i32* %10, align 4
  %155 = add nsw i32 %153, %154
  %156 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 28
  %157 = load i32, i32* %156, align 16
  %158 = call i32 @MUL15(i32 %157, i32 608)
  %159 = add nsw i32 %155, %158
  store i32 %159, i32* %11, align 4
  %160 = load i32, i32* %11, align 4
  %161 = and i32 %160, 8191
  %162 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 8
  store i32 %161, i32* %162, align 16
  %163 = load i32, i32* %11, align 4
  %164 = ashr i32 %163, 13
  store i32 %164, i32* %10, align 4
  br label %165

165:                                              ; preds = %151
  br label %166

166:                                              ; preds = %165
  %167 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 9
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %10, align 4
  %170 = add nsw i32 %168, %169
  %171 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 29
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @MUL15(i32 %172, i32 608)
  %174 = add nsw i32 %170, %173
  store i32 %174, i32* %11, align 4
  %175 = load i32, i32* %11, align 4
  %176 = and i32 %175, 8191
  %177 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 9
  store i32 %176, i32* %177, align 4
  %178 = load i32, i32* %11, align 4
  %179 = ashr i32 %178, 13
  store i32 %179, i32* %10, align 4
  br label %180

180:                                              ; preds = %166
  br label %181

181:                                              ; preds = %180
  %182 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 10
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* %10, align 4
  %185 = add nsw i32 %183, %184
  %186 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 30
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @MUL15(i32 %187, i32 608)
  %189 = add nsw i32 %185, %188
  store i32 %189, i32* %11, align 4
  %190 = load i32, i32* %11, align 4
  %191 = and i32 %190, 8191
  %192 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 10
  store i32 %191, i32* %192, align 8
  %193 = load i32, i32* %11, align 4
  %194 = ashr i32 %193, 13
  store i32 %194, i32* %10, align 4
  br label %195

195:                                              ; preds = %181
  br label %196

196:                                              ; preds = %195
  %197 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 11
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* %10, align 4
  %200 = add nsw i32 %198, %199
  %201 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 31
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @MUL15(i32 %202, i32 608)
  %204 = add nsw i32 %200, %203
  store i32 %204, i32* %11, align 4
  %205 = load i32, i32* %11, align 4
  %206 = and i32 %205, 8191
  %207 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 11
  store i32 %206, i32* %207, align 4
  %208 = load i32, i32* %11, align 4
  %209 = ashr i32 %208, 13
  store i32 %209, i32* %10, align 4
  br label %210

210:                                              ; preds = %196
  br label %211

211:                                              ; preds = %210
  %212 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 12
  %213 = load i32, i32* %212, align 16
  %214 = load i32, i32* %10, align 4
  %215 = add nsw i32 %213, %214
  %216 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 32
  %217 = load i32, i32* %216, align 16
  %218 = call i32 @MUL15(i32 %217, i32 608)
  %219 = add nsw i32 %215, %218
  store i32 %219, i32* %11, align 4
  %220 = load i32, i32* %11, align 4
  %221 = and i32 %220, 8191
  %222 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 12
  store i32 %221, i32* %222, align 16
  %223 = load i32, i32* %11, align 4
  %224 = ashr i32 %223, 13
  store i32 %224, i32* %10, align 4
  br label %225

225:                                              ; preds = %211
  br label %226

226:                                              ; preds = %225
  %227 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 13
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* %10, align 4
  %230 = add nsw i32 %228, %229
  %231 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 33
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @MUL15(i32 %232, i32 608)
  %234 = add nsw i32 %230, %233
  store i32 %234, i32* %11, align 4
  %235 = load i32, i32* %11, align 4
  %236 = and i32 %235, 8191
  %237 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 13
  store i32 %236, i32* %237, align 4
  %238 = load i32, i32* %11, align 4
  %239 = ashr i32 %238, 13
  store i32 %239, i32* %10, align 4
  br label %240

240:                                              ; preds = %226
  br label %241

241:                                              ; preds = %240
  %242 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 14
  %243 = load i32, i32* %242, align 8
  %244 = load i32, i32* %10, align 4
  %245 = add nsw i32 %243, %244
  %246 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 34
  %247 = load i32, i32* %246, align 8
  %248 = call i32 @MUL15(i32 %247, i32 608)
  %249 = add nsw i32 %245, %248
  store i32 %249, i32* %11, align 4
  %250 = load i32, i32* %11, align 4
  %251 = and i32 %250, 8191
  %252 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 14
  store i32 %251, i32* %252, align 8
  %253 = load i32, i32* %11, align 4
  %254 = ashr i32 %253, 13
  store i32 %254, i32* %10, align 4
  br label %255

255:                                              ; preds = %241
  br label %256

256:                                              ; preds = %255
  %257 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 15
  %258 = load i32, i32* %257, align 4
  %259 = load i32, i32* %10, align 4
  %260 = add nsw i32 %258, %259
  %261 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 35
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @MUL15(i32 %262, i32 608)
  %264 = add nsw i32 %260, %263
  store i32 %264, i32* %11, align 4
  %265 = load i32, i32* %11, align 4
  %266 = and i32 %265, 8191
  %267 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 15
  store i32 %266, i32* %267, align 4
  %268 = load i32, i32* %11, align 4
  %269 = ashr i32 %268, 13
  store i32 %269, i32* %10, align 4
  br label %270

270:                                              ; preds = %256
  br label %271

271:                                              ; preds = %270
  %272 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 16
  %273 = load i32, i32* %272, align 16
  %274 = load i32, i32* %10, align 4
  %275 = add nsw i32 %273, %274
  %276 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 36
  %277 = load i32, i32* %276, align 16
  %278 = call i32 @MUL15(i32 %277, i32 608)
  %279 = add nsw i32 %275, %278
  store i32 %279, i32* %11, align 4
  %280 = load i32, i32* %11, align 4
  %281 = and i32 %280, 8191
  %282 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 16
  store i32 %281, i32* %282, align 16
  %283 = load i32, i32* %11, align 4
  %284 = ashr i32 %283, 13
  store i32 %284, i32* %10, align 4
  br label %285

285:                                              ; preds = %271
  br label %286

286:                                              ; preds = %285
  %287 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 17
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* %10, align 4
  %290 = add nsw i32 %288, %289
  %291 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 37
  %292 = load i32, i32* %291, align 4
  %293 = call i32 @MUL15(i32 %292, i32 608)
  %294 = add nsw i32 %290, %293
  store i32 %294, i32* %11, align 4
  %295 = load i32, i32* %11, align 4
  %296 = and i32 %295, 8191
  %297 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 17
  store i32 %296, i32* %297, align 4
  %298 = load i32, i32* %11, align 4
  %299 = ashr i32 %298, 13
  store i32 %299, i32* %10, align 4
  br label %300

300:                                              ; preds = %286
  br label %301

301:                                              ; preds = %300
  %302 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 18
  %303 = load i32, i32* %302, align 8
  %304 = load i32, i32* %10, align 4
  %305 = add nsw i32 %303, %304
  %306 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 38
  %307 = load i32, i32* %306, align 8
  %308 = call i32 @MUL15(i32 %307, i32 608)
  %309 = add nsw i32 %305, %308
  store i32 %309, i32* %11, align 4
  %310 = load i32, i32* %11, align 4
  %311 = and i32 %310, 8191
  %312 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 18
  store i32 %311, i32* %312, align 8
  %313 = load i32, i32* %11, align 4
  %314 = ashr i32 %313, 13
  store i32 %314, i32* %10, align 4
  br label %315

315:                                              ; preds = %301
  br label %316

316:                                              ; preds = %315
  %317 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 19
  %318 = load i32, i32* %317, align 4
  %319 = load i32, i32* %10, align 4
  %320 = add nsw i32 %318, %319
  %321 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 39
  %322 = load i32, i32* %321, align 4
  %323 = call i32 @MUL15(i32 %322, i32 608)
  %324 = add nsw i32 %320, %323
  store i32 %324, i32* %11, align 4
  %325 = load i32, i32* %11, align 4
  %326 = and i32 %325, 8191
  %327 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 19
  store i32 %326, i32* %327, align 4
  %328 = load i32, i32* %11, align 4
  %329 = ashr i32 %328, 13
  store i32 %329, i32* %10, align 4
  br label %330

330:                                              ; preds = %316
  %331 = load i32, i32* %11, align 4
  %332 = ashr i32 %331, 8
  %333 = call i32 @MUL15(i32 %332, i32 19)
  store i32 %333, i32* %10, align 4
  %334 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 19
  %335 = load i32, i32* %334, align 4
  %336 = and i32 %335, 255
  store i32 %336, i32* %334, align 4
  br label %337

337:                                              ; preds = %330
  %338 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 0
  %339 = load i32, i32* %338, align 16
  %340 = load i32, i32* %10, align 4
  %341 = add nsw i32 %339, %340
  store i32 %341, i32* %11, align 4
  %342 = load i32, i32* %11, align 4
  %343 = and i32 %342, 8191
  %344 = load i32*, i32** %5, align 8
  %345 = getelementptr inbounds i32, i32* %344, i64 0
  store i32 %343, i32* %345, align 4
  %346 = load i32, i32* %11, align 4
  %347 = ashr i32 %346, 13
  store i32 %347, i32* %10, align 4
  br label %348

348:                                              ; preds = %337
  br label %349

349:                                              ; preds = %348
  %350 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 1
  %351 = load i32, i32* %350, align 4
  %352 = load i32, i32* %10, align 4
  %353 = add nsw i32 %351, %352
  store i32 %353, i32* %11, align 4
  %354 = load i32, i32* %11, align 4
  %355 = and i32 %354, 8191
  %356 = load i32*, i32** %5, align 8
  %357 = getelementptr inbounds i32, i32* %356, i64 1
  store i32 %355, i32* %357, align 4
  %358 = load i32, i32* %11, align 4
  %359 = ashr i32 %358, 13
  store i32 %359, i32* %10, align 4
  br label %360

360:                                              ; preds = %349
  br label %361

361:                                              ; preds = %360
  %362 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 2
  %363 = load i32, i32* %362, align 8
  %364 = load i32, i32* %10, align 4
  %365 = add nsw i32 %363, %364
  store i32 %365, i32* %11, align 4
  %366 = load i32, i32* %11, align 4
  %367 = and i32 %366, 8191
  %368 = load i32*, i32** %5, align 8
  %369 = getelementptr inbounds i32, i32* %368, i64 2
  store i32 %367, i32* %369, align 4
  %370 = load i32, i32* %11, align 4
  %371 = ashr i32 %370, 13
  store i32 %371, i32* %10, align 4
  br label %372

372:                                              ; preds = %361
  br label %373

373:                                              ; preds = %372
  %374 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 3
  %375 = load i32, i32* %374, align 4
  %376 = load i32, i32* %10, align 4
  %377 = add nsw i32 %375, %376
  store i32 %377, i32* %11, align 4
  %378 = load i32, i32* %11, align 4
  %379 = and i32 %378, 8191
  %380 = load i32*, i32** %5, align 8
  %381 = getelementptr inbounds i32, i32* %380, i64 3
  store i32 %379, i32* %381, align 4
  %382 = load i32, i32* %11, align 4
  %383 = ashr i32 %382, 13
  store i32 %383, i32* %10, align 4
  br label %384

384:                                              ; preds = %373
  br label %385

385:                                              ; preds = %384
  %386 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 4
  %387 = load i32, i32* %386, align 16
  %388 = load i32, i32* %10, align 4
  %389 = add nsw i32 %387, %388
  store i32 %389, i32* %11, align 4
  %390 = load i32, i32* %11, align 4
  %391 = and i32 %390, 8191
  %392 = load i32*, i32** %5, align 8
  %393 = getelementptr inbounds i32, i32* %392, i64 4
  store i32 %391, i32* %393, align 4
  %394 = load i32, i32* %11, align 4
  %395 = ashr i32 %394, 13
  store i32 %395, i32* %10, align 4
  br label %396

396:                                              ; preds = %385
  br label %397

397:                                              ; preds = %396
  %398 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 5
  %399 = load i32, i32* %398, align 4
  %400 = load i32, i32* %10, align 4
  %401 = add nsw i32 %399, %400
  store i32 %401, i32* %11, align 4
  %402 = load i32, i32* %11, align 4
  %403 = and i32 %402, 8191
  %404 = load i32*, i32** %5, align 8
  %405 = getelementptr inbounds i32, i32* %404, i64 5
  store i32 %403, i32* %405, align 4
  %406 = load i32, i32* %11, align 4
  %407 = ashr i32 %406, 13
  store i32 %407, i32* %10, align 4
  br label %408

408:                                              ; preds = %397
  br label %409

409:                                              ; preds = %408
  %410 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 6
  %411 = load i32, i32* %410, align 8
  %412 = load i32, i32* %10, align 4
  %413 = add nsw i32 %411, %412
  store i32 %413, i32* %11, align 4
  %414 = load i32, i32* %11, align 4
  %415 = and i32 %414, 8191
  %416 = load i32*, i32** %5, align 8
  %417 = getelementptr inbounds i32, i32* %416, i64 6
  store i32 %415, i32* %417, align 4
  %418 = load i32, i32* %11, align 4
  %419 = ashr i32 %418, 13
  store i32 %419, i32* %10, align 4
  br label %420

420:                                              ; preds = %409
  br label %421

421:                                              ; preds = %420
  %422 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 7
  %423 = load i32, i32* %422, align 4
  %424 = load i32, i32* %10, align 4
  %425 = add nsw i32 %423, %424
  store i32 %425, i32* %11, align 4
  %426 = load i32, i32* %11, align 4
  %427 = and i32 %426, 8191
  %428 = load i32*, i32** %5, align 8
  %429 = getelementptr inbounds i32, i32* %428, i64 7
  store i32 %427, i32* %429, align 4
  %430 = load i32, i32* %11, align 4
  %431 = ashr i32 %430, 13
  store i32 %431, i32* %10, align 4
  br label %432

432:                                              ; preds = %421
  br label %433

433:                                              ; preds = %432
  %434 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 8
  %435 = load i32, i32* %434, align 16
  %436 = load i32, i32* %10, align 4
  %437 = add nsw i32 %435, %436
  store i32 %437, i32* %11, align 4
  %438 = load i32, i32* %11, align 4
  %439 = and i32 %438, 8191
  %440 = load i32*, i32** %5, align 8
  %441 = getelementptr inbounds i32, i32* %440, i64 8
  store i32 %439, i32* %441, align 4
  %442 = load i32, i32* %11, align 4
  %443 = ashr i32 %442, 13
  store i32 %443, i32* %10, align 4
  br label %444

444:                                              ; preds = %433
  br label %445

445:                                              ; preds = %444
  %446 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 9
  %447 = load i32, i32* %446, align 4
  %448 = load i32, i32* %10, align 4
  %449 = add nsw i32 %447, %448
  store i32 %449, i32* %11, align 4
  %450 = load i32, i32* %11, align 4
  %451 = and i32 %450, 8191
  %452 = load i32*, i32** %5, align 8
  %453 = getelementptr inbounds i32, i32* %452, i64 9
  store i32 %451, i32* %453, align 4
  %454 = load i32, i32* %11, align 4
  %455 = ashr i32 %454, 13
  store i32 %455, i32* %10, align 4
  br label %456

456:                                              ; preds = %445
  br label %457

457:                                              ; preds = %456
  %458 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 10
  %459 = load i32, i32* %458, align 8
  %460 = load i32, i32* %10, align 4
  %461 = add nsw i32 %459, %460
  store i32 %461, i32* %11, align 4
  %462 = load i32, i32* %11, align 4
  %463 = and i32 %462, 8191
  %464 = load i32*, i32** %5, align 8
  %465 = getelementptr inbounds i32, i32* %464, i64 10
  store i32 %463, i32* %465, align 4
  %466 = load i32, i32* %11, align 4
  %467 = ashr i32 %466, 13
  store i32 %467, i32* %10, align 4
  br label %468

468:                                              ; preds = %457
  br label %469

469:                                              ; preds = %468
  %470 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 11
  %471 = load i32, i32* %470, align 4
  %472 = load i32, i32* %10, align 4
  %473 = add nsw i32 %471, %472
  store i32 %473, i32* %11, align 4
  %474 = load i32, i32* %11, align 4
  %475 = and i32 %474, 8191
  %476 = load i32*, i32** %5, align 8
  %477 = getelementptr inbounds i32, i32* %476, i64 11
  store i32 %475, i32* %477, align 4
  %478 = load i32, i32* %11, align 4
  %479 = ashr i32 %478, 13
  store i32 %479, i32* %10, align 4
  br label %480

480:                                              ; preds = %469
  br label %481

481:                                              ; preds = %480
  %482 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 12
  %483 = load i32, i32* %482, align 16
  %484 = load i32, i32* %10, align 4
  %485 = add nsw i32 %483, %484
  store i32 %485, i32* %11, align 4
  %486 = load i32, i32* %11, align 4
  %487 = and i32 %486, 8191
  %488 = load i32*, i32** %5, align 8
  %489 = getelementptr inbounds i32, i32* %488, i64 12
  store i32 %487, i32* %489, align 4
  %490 = load i32, i32* %11, align 4
  %491 = ashr i32 %490, 13
  store i32 %491, i32* %10, align 4
  br label %492

492:                                              ; preds = %481
  br label %493

493:                                              ; preds = %492
  %494 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 13
  %495 = load i32, i32* %494, align 4
  %496 = load i32, i32* %10, align 4
  %497 = add nsw i32 %495, %496
  store i32 %497, i32* %11, align 4
  %498 = load i32, i32* %11, align 4
  %499 = and i32 %498, 8191
  %500 = load i32*, i32** %5, align 8
  %501 = getelementptr inbounds i32, i32* %500, i64 13
  store i32 %499, i32* %501, align 4
  %502 = load i32, i32* %11, align 4
  %503 = ashr i32 %502, 13
  store i32 %503, i32* %10, align 4
  br label %504

504:                                              ; preds = %493
  br label %505

505:                                              ; preds = %504
  %506 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 14
  %507 = load i32, i32* %506, align 8
  %508 = load i32, i32* %10, align 4
  %509 = add nsw i32 %507, %508
  store i32 %509, i32* %11, align 4
  %510 = load i32, i32* %11, align 4
  %511 = and i32 %510, 8191
  %512 = load i32*, i32** %5, align 8
  %513 = getelementptr inbounds i32, i32* %512, i64 14
  store i32 %511, i32* %513, align 4
  %514 = load i32, i32* %11, align 4
  %515 = ashr i32 %514, 13
  store i32 %515, i32* %10, align 4
  br label %516

516:                                              ; preds = %505
  br label %517

517:                                              ; preds = %516
  %518 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 15
  %519 = load i32, i32* %518, align 4
  %520 = load i32, i32* %10, align 4
  %521 = add nsw i32 %519, %520
  store i32 %521, i32* %11, align 4
  %522 = load i32, i32* %11, align 4
  %523 = and i32 %522, 8191
  %524 = load i32*, i32** %5, align 8
  %525 = getelementptr inbounds i32, i32* %524, i64 15
  store i32 %523, i32* %525, align 4
  %526 = load i32, i32* %11, align 4
  %527 = ashr i32 %526, 13
  store i32 %527, i32* %10, align 4
  br label %528

528:                                              ; preds = %517
  br label %529

529:                                              ; preds = %528
  %530 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 16
  %531 = load i32, i32* %530, align 16
  %532 = load i32, i32* %10, align 4
  %533 = add nsw i32 %531, %532
  store i32 %533, i32* %11, align 4
  %534 = load i32, i32* %11, align 4
  %535 = and i32 %534, 8191
  %536 = load i32*, i32** %5, align 8
  %537 = getelementptr inbounds i32, i32* %536, i64 16
  store i32 %535, i32* %537, align 4
  %538 = load i32, i32* %11, align 4
  %539 = ashr i32 %538, 13
  store i32 %539, i32* %10, align 4
  br label %540

540:                                              ; preds = %529
  br label %541

541:                                              ; preds = %540
  %542 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 17
  %543 = load i32, i32* %542, align 4
  %544 = load i32, i32* %10, align 4
  %545 = add nsw i32 %543, %544
  store i32 %545, i32* %11, align 4
  %546 = load i32, i32* %11, align 4
  %547 = and i32 %546, 8191
  %548 = load i32*, i32** %5, align 8
  %549 = getelementptr inbounds i32, i32* %548, i64 17
  store i32 %547, i32* %549, align 4
  %550 = load i32, i32* %11, align 4
  %551 = ashr i32 %550, 13
  store i32 %551, i32* %10, align 4
  br label %552

552:                                              ; preds = %541
  br label %553

553:                                              ; preds = %552
  %554 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 18
  %555 = load i32, i32* %554, align 8
  %556 = load i32, i32* %10, align 4
  %557 = add nsw i32 %555, %556
  store i32 %557, i32* %11, align 4
  %558 = load i32, i32* %11, align 4
  %559 = and i32 %558, 8191
  %560 = load i32*, i32** %5, align 8
  %561 = getelementptr inbounds i32, i32* %560, i64 18
  store i32 %559, i32* %561, align 4
  %562 = load i32, i32* %11, align 4
  %563 = ashr i32 %562, 13
  store i32 %563, i32* %10, align 4
  br label %564

564:                                              ; preds = %553
  br label %565

565:                                              ; preds = %564
  %566 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 19
  %567 = load i32, i32* %566, align 4
  %568 = load i32, i32* %10, align 4
  %569 = add nsw i32 %567, %568
  store i32 %569, i32* %11, align 4
  %570 = load i32, i32* %11, align 4
  %571 = and i32 %570, 8191
  %572 = load i32*, i32** %5, align 8
  %573 = getelementptr inbounds i32, i32* %572, i64 19
  store i32 %571, i32* %573, align 4
  %574 = load i32, i32* %11, align 4
  %575 = ashr i32 %574, 13
  store i32 %575, i32* %10, align 4
  br label %576

576:                                              ; preds = %565
  ret void
}

declare dso_local i32 @square20(i32*, i32*) #1

declare dso_local i32 @mul20(i32*, i32*, i32*) #1

declare dso_local i32 @MUL15(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
