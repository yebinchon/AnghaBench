; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_simplify-rtx.c_simplify_plus_minus.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_simplify-rtx.c_simplify_plus_minus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.simplify_plus_minus_op_data = type { i64, i32 }

@NULL_RTX = common dso_local global i64 0, align 8
@constm1_rtx = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i64, i64)* @simplify_plus_minus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @simplify_plus_minus(i32 %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca [8 x %struct.simplify_plus_minus_op_data], align 16
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca %struct.simplify_plus_minus_op_data, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 2, i32* %13, align 4
  store i32 2, i32* %14, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %35 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %10, i64 0, i64 0
  %36 = call i32 @memset(%struct.simplify_plus_minus_op_data* %35, i32 0, i32 128)
  %37 = load i64, i64* %8, align 8
  %38 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %10, i64 0, i64 0
  %39 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 16
  %40 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %10, i64 0, i64 0
  %41 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %40, i32 0, i32 1
  store i32 0, i32* %41, align 8
  %42 = load i64, i64* %9, align 8
  %43 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %10, i64 0, i64 1
  %44 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 16
  %45 = load i32, i32* %6, align 4
  %46 = icmp eq i32 %45, 131
  %47 = zext i1 %46 to i32
  %48 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %10, i64 0, i64 1
  %49 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  br label %50

50:                                               ; preds = %215, %4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %18, align 4
  br label %51

51:                                               ; preds = %211, %50
  %52 = load i32, i32* %18, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %214

55:                                               ; preds = %51
  %56 = load i32, i32* %18, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %10, i64 0, i64 %57
  %59 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 16
  store i64 %60, i64* %20, align 8
  %61 = load i32, i32* %18, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %10, i64 0, i64 %62
  %64 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %21, align 4
  %66 = load i64, i64* %20, align 8
  %67 = call i32 @GET_CODE(i64 %66)
  store i32 %67, i32* %22, align 4
  %68 = load i32, i32* %22, align 4
  switch i32 %68, label %209 [
    i32 128, label %69
    i32 131, label %69
    i32 130, label %103
    i32 133, label %118
    i32 129, label %161
    i32 132, label %191
  ]

69:                                               ; preds = %55, %55
  %70 = load i32, i32* %13, align 4
  %71 = icmp eq i32 %70, 7
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load i64, i64* @NULL_RTX, align 8
  store i64 %73, i64* %5, align 8
  br label %750

74:                                               ; preds = %69
  %75 = load i64, i64* %20, align 8
  %76 = call i64 @XEXP(i64 %75, i32 1)
  %77 = load i32, i32* %13, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %10, i64 0, i64 %78
  %80 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %79, i32 0, i32 0
  store i64 %76, i64* %80, align 16
  %81 = load i32, i32* %22, align 4
  %82 = icmp eq i32 %81, 131
  %83 = zext i1 %82 to i32
  %84 = load i32, i32* %21, align 4
  %85 = xor i32 %83, %84
  %86 = load i32, i32* %13, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %10, i64 0, i64 %87
  %89 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %88, i32 0, i32 1
  store i32 %85, i32* %89, align 8
  %90 = load i32, i32* %13, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %13, align 4
  %92 = load i64, i64* %20, align 8
  %93 = call i64 @XEXP(i64 %92, i32 0)
  %94 = load i32, i32* %18, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %10, i64 0, i64 %95
  %97 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %96, i32 0, i32 0
  store i64 %93, i64* %97, align 16
  %98 = load i32, i32* %14, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %14, align 4
  store i32 1, i32* %15, align 4
  %100 = load i32, i32* %21, align 4
  %101 = load i32, i32* %17, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %17, align 4
  br label %210

103:                                              ; preds = %55
  %104 = load i64, i64* %20, align 8
  %105 = call i64 @XEXP(i64 %104, i32 0)
  %106 = load i32, i32* %18, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %10, i64 0, i64 %107
  %109 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %108, i32 0, i32 0
  store i64 %105, i64* %109, align 16
  %110 = load i32, i32* %21, align 4
  %111 = icmp ne i32 %110, 0
  %112 = xor i1 %111, true
  %113 = zext i1 %112 to i32
  %114 = load i32, i32* %18, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %10, i64 0, i64 %115
  %117 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %116, i32 0, i32 1
  store i32 %113, i32* %117, align 8
  store i32 1, i32* %15, align 4
  store i32 1, i32* %17, align 4
  br label %210

118:                                              ; preds = %55
  %119 = load i32, i32* %13, align 4
  %120 = icmp slt i32 %119, 7
  br i1 %120, label %121, label %160

121:                                              ; preds = %118
  %122 = load i64, i64* %20, align 8
  %123 = call i64 @XEXP(i64 %122, i32 0)
  %124 = call i32 @GET_CODE(i64 %123)
  %125 = icmp eq i32 %124, 128
  br i1 %125, label %126, label %160

126:                                              ; preds = %121
  %127 = load i64, i64* %20, align 8
  %128 = call i64 @XEXP(i64 %127, i32 0)
  %129 = call i64 @XEXP(i64 %128, i32 0)
  %130 = call i64 @CONSTANT_P(i64 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %160

132:                                              ; preds = %126
  %133 = load i64, i64* %20, align 8
  %134 = call i64 @XEXP(i64 %133, i32 0)
  %135 = call i64 @XEXP(i64 %134, i32 1)
  %136 = call i64 @CONSTANT_P(i64 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %160

138:                                              ; preds = %132
  %139 = load i64, i64* %20, align 8
  %140 = call i64 @XEXP(i64 %139, i32 0)
  %141 = call i64 @XEXP(i64 %140, i32 0)
  %142 = load i32, i32* %18, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %10, i64 0, i64 %143
  %145 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %144, i32 0, i32 0
  store i64 %141, i64* %145, align 16
  %146 = load i64, i64* %20, align 8
  %147 = call i64 @XEXP(i64 %146, i32 0)
  %148 = call i64 @XEXP(i64 %147, i32 1)
  %149 = load i32, i32* %13, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %10, i64 0, i64 %150
  %152 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %151, i32 0, i32 0
  store i64 %148, i64* %152, align 16
  %153 = load i32, i32* %21, align 4
  %154 = load i32, i32* %13, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %10, i64 0, i64 %155
  %157 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %156, i32 0, i32 1
  store i32 %153, i32* %157, align 8
  %158 = load i32, i32* %13, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %13, align 4
  store i32 1, i32* %15, align 4
  store i32 1, i32* %17, align 4
  br label %160

160:                                              ; preds = %138, %132, %126, %121, %118
  br label %210

161:                                              ; preds = %55
  %162 = load i32, i32* %13, align 4
  %163 = icmp ne i32 %162, 7
  br i1 %163, label %164, label %190

164:                                              ; preds = %161
  %165 = load i64, i64* @constm1_rtx, align 8
  %166 = load i32, i32* %13, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %10, i64 0, i64 %167
  %169 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %168, i32 0, i32 0
  store i64 %165, i64* %169, align 16
  %170 = load i32, i32* %21, align 4
  %171 = load i32, i32* %13, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %13, align 4
  %173 = sext i32 %171 to i64
  %174 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %10, i64 0, i64 %173
  %175 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %174, i32 0, i32 1
  store i32 %170, i32* %175, align 8
  %176 = load i64, i64* %20, align 8
  %177 = call i64 @XEXP(i64 %176, i32 0)
  %178 = load i32, i32* %18, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %10, i64 0, i64 %179
  %181 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %180, i32 0, i32 0
  store i64 %177, i64* %181, align 16
  %182 = load i32, i32* %21, align 4
  %183 = icmp ne i32 %182, 0
  %184 = xor i1 %183, true
  %185 = zext i1 %184 to i32
  %186 = load i32, i32* %18, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %10, i64 0, i64 %187
  %189 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %188, i32 0, i32 1
  store i32 %185, i32* %189, align 8
  store i32 1, i32* %15, align 4
  store i32 1, i32* %17, align 4
  br label %190

190:                                              ; preds = %164, %161
  br label %210

191:                                              ; preds = %55
  %192 = load i32, i32* %16, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %16, align 4
  %194 = load i32, i32* %21, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %208

196:                                              ; preds = %191
  %197 = load i32, i32* %7, align 4
  %198 = load i64, i64* %20, align 8
  %199 = call i64 @neg_const_int(i32 %197, i64 %198)
  %200 = load i32, i32* %18, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %10, i64 0, i64 %201
  %203 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %202, i32 0, i32 0
  store i64 %199, i64* %203, align 16
  %204 = load i32, i32* %18, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %10, i64 0, i64 %205
  %207 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %206, i32 0, i32 1
  store i32 0, i32* %207, align 8
  store i32 1, i32* %15, align 4
  store i32 1, i32* %17, align 4
  br label %208

208:                                              ; preds = %196, %191
  br label %210

209:                                              ; preds = %55
  br label %210

210:                                              ; preds = %209, %208, %190, %160, %103, %74
  br label %211

211:                                              ; preds = %210
  %212 = load i32, i32* %18, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %18, align 4
  br label %51

214:                                              ; preds = %51
  br label %215

215:                                              ; preds = %214
  %216 = load i32, i32* %15, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %50, label %218

218:                                              ; preds = %215
  %219 = load i32, i32* %16, align 4
  %220 = icmp sgt i32 %219, 1
  br i1 %220, label %221, label %222

221:                                              ; preds = %218
  store i32 1, i32* %17, align 4
  br label %222

222:                                              ; preds = %221, %218
  %223 = load i32, i32* %13, align 4
  %224 = icmp sge i32 %223, 2
  %225 = zext i1 %224 to i32
  %226 = call i32 @gcc_assert(i32 %225)
  %227 = load i32, i32* %13, align 4
  %228 = icmp eq i32 %227, 2
  br i1 %228, label %229, label %287

229:                                              ; preds = %222
  %230 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %10, i64 0, i64 0
  %231 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 8
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %239, label %234

234:                                              ; preds = %229
  %235 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %10, i64 0, i64 1
  %236 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 8
  %238 = icmp ne i32 %237, 0
  br label %239

239:                                              ; preds = %234, %229
  %240 = phi i1 [ true, %229 ], [ %238, %234 ]
  %241 = zext i1 %240 to i64
  %242 = select i1 %240, i32 131, i32 128
  store i32 %242, i32* %23, align 4
  %243 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %10, i64 0, i64 0
  %244 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 8
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %261

247:                                              ; preds = %239
  %248 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %10, i64 0, i64 1
  %249 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 8
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %261

252:                                              ; preds = %247
  %253 = load i32, i32* %7, align 4
  %254 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %10, i64 0, i64 0
  %255 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 16
  %257 = call i64 @gen_rtx_NEG(i32 %253, i64 %256)
  store i64 %257, i64* %24, align 8
  %258 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %10, i64 0, i64 1
  %259 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 16
  store i64 %260, i64* %25, align 8
  br label %281

261:                                              ; preds = %247, %239
  %262 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %10, i64 0, i64 0
  %263 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 8
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %273

266:                                              ; preds = %261
  %267 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %10, i64 0, i64 1
  %268 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 16
  store i64 %269, i64* %24, align 8
  %270 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %10, i64 0, i64 0
  %271 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 16
  store i64 %272, i64* %25, align 8
  br label %280

273:                                              ; preds = %261
  %274 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %10, i64 0, i64 0
  %275 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 16
  store i64 %276, i64* %24, align 8
  %277 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %10, i64 0, i64 1
  %278 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 16
  store i64 %279, i64* %25, align 8
  br label %280

280:                                              ; preds = %273, %266
  br label %281

281:                                              ; preds = %280, %252
  %282 = load i32, i32* %23, align 4
  %283 = load i32, i32* %7, align 4
  %284 = load i64, i64* %24, align 8
  %285 = load i64, i64* %25, align 8
  %286 = call i64 @simplify_const_binary_operation(i32 %282, i32 %283, i64 %284, i64 %285)
  store i64 %286, i64* %5, align 8
  br label %750

287:                                              ; preds = %222
  br label %288

288:                                              ; preds = %572, %287
  store i32 1, i32* %18, align 4
  br label %289

289:                                              ; preds = %340, %288
  %290 = load i32, i32* %18, align 4
  %291 = load i32, i32* %13, align 4
  %292 = icmp slt i32 %290, %291
  br i1 %292, label %293, label %343

293:                                              ; preds = %289
  %294 = load i32, i32* %18, align 4
  %295 = sub nsw i32 %294, 1
  store i32 %295, i32* %19, align 4
  %296 = load i32, i32* %19, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %10, i64 0, i64 %297
  %299 = load i32, i32* %18, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %10, i64 0, i64 %300
  %302 = call i64 @simplify_plus_minus_op_data_cmp(%struct.simplify_plus_minus_op_data* %298, %struct.simplify_plus_minus_op_data* %301)
  %303 = icmp slt i64 %302, 0
  br i1 %303, label %304, label %305

304:                                              ; preds = %293
  br label %340

305:                                              ; preds = %293
  store i32 1, i32* %17, align 4
  %306 = load i32, i32* %18, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %10, i64 0, i64 %307
  %309 = bitcast %struct.simplify_plus_minus_op_data* %26 to i8*
  %310 = bitcast %struct.simplify_plus_minus_op_data* %308 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %309, i8* align 16 %310, i64 16, i1 false)
  br label %311

311:                                              ; preds = %331, %305
  %312 = load i32, i32* %19, align 4
  %313 = add nsw i32 %312, 1
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %10, i64 0, i64 %314
  %316 = load i32, i32* %19, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %10, i64 0, i64 %317
  %319 = bitcast %struct.simplify_plus_minus_op_data* %315 to i8*
  %320 = bitcast %struct.simplify_plus_minus_op_data* %318 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %319, i8* align 16 %320, i64 16, i1 false)
  br label %321

321:                                              ; preds = %311
  %322 = load i32, i32* %19, align 4
  %323 = add nsw i32 %322, -1
  store i32 %323, i32* %19, align 4
  %324 = icmp ne i32 %322, 0
  br i1 %324, label %325, label %331

325:                                              ; preds = %321
  %326 = load i32, i32* %19, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %10, i64 0, i64 %327
  %329 = call i64 @simplify_plus_minus_op_data_cmp(%struct.simplify_plus_minus_op_data* %328, %struct.simplify_plus_minus_op_data* %26)
  %330 = icmp sgt i64 %329, 0
  br label %331

331:                                              ; preds = %325, %321
  %332 = phi i1 [ false, %321 ], [ %330, %325 ]
  br i1 %332, label %311, label %333

333:                                              ; preds = %331
  %334 = load i32, i32* %19, align 4
  %335 = add nsw i32 %334, 1
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %10, i64 0, i64 %336
  %338 = bitcast %struct.simplify_plus_minus_op_data* %337 to i8*
  %339 = bitcast %struct.simplify_plus_minus_op_data* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %338, i8* align 8 %339, i64 16, i1 false)
  br label %340

340:                                              ; preds = %333, %304
  %341 = load i32, i32* %18, align 4
  %342 = add nsw i32 %341, 1
  store i32 %342, i32* %18, align 4
  br label %289

343:                                              ; preds = %289
  %344 = load i32, i32* %17, align 4
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %348, label %346

346:                                              ; preds = %343
  %347 = load i64, i64* @NULL_RTX, align 8
  store i64 %347, i64* %5, align 8
  br label %750

348:                                              ; preds = %343
  store i32 0, i32* %15, align 4
  %349 = load i32, i32* %13, align 4
  %350 = sub nsw i32 %349, 1
  store i32 %350, i32* %18, align 4
  br label %351

351:                                              ; preds = %540, %348
  %352 = load i32, i32* %18, align 4
  %353 = icmp sgt i32 %352, 0
  br i1 %353, label %354, label %543

354:                                              ; preds = %351
  %355 = load i32, i32* %18, align 4
  %356 = sub nsw i32 %355, 1
  store i32 %356, i32* %19, align 4
  br label %357

357:                                              ; preds = %536, %354
  %358 = load i32, i32* %19, align 4
  %359 = icmp sge i32 %358, 0
  br i1 %359, label %360, label %539

360:                                              ; preds = %357
  %361 = load i32, i32* %19, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %10, i64 0, i64 %362
  %364 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %363, i32 0, i32 0
  %365 = load i64, i64* %364, align 16
  store i64 %365, i64* %27, align 8
  %366 = load i32, i32* %18, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %10, i64 0, i64 %367
  %369 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %368, i32 0, i32 0
  %370 = load i64, i64* %369, align 16
  store i64 %370, i64* %28, align 8
  %371 = load i32, i32* %19, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %10, i64 0, i64 %372
  %374 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %373, i32 0, i32 1
  %375 = load i32, i32* %374, align 8
  store i32 %375, i32* %29, align 4
  %376 = load i32, i32* %18, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %10, i64 0, i64 %377
  %379 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %378, i32 0, i32 1
  %380 = load i32, i32* %379, align 8
  store i32 %380, i32* %30, align 4
  %381 = load i64, i64* %27, align 8
  %382 = icmp ne i64 %381, 0
  br i1 %382, label %383, label %535

383:                                              ; preds = %360
  %384 = load i64, i64* %28, align 8
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %386, label %535

386:                                              ; preds = %383
  store i32 128, i32* %31, align 4
  %387 = load i32, i32* %29, align 4
  %388 = load i32, i32* %30, align 4
  %389 = icmp ne i32 %387, %388
  br i1 %389, label %390, label %398

390:                                              ; preds = %386
  store i32 131, i32* %31, align 4
  %391 = load i32, i32* %29, align 4
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %397

393:                                              ; preds = %390
  %394 = load i64, i64* %27, align 8
  store i64 %394, i64* %12, align 8
  %395 = load i64, i64* %28, align 8
  store i64 %395, i64* %27, align 8
  %396 = load i64, i64* %12, align 8
  store i64 %396, i64* %28, align 8
  br label %397

397:                                              ; preds = %393, %390
  br label %408

398:                                              ; preds = %386
  %399 = load i64, i64* %27, align 8
  %400 = load i64, i64* %28, align 8
  %401 = call i64 @swap_commutative_operands_p(i64 %399, i64 %400)
  %402 = icmp ne i64 %401, 0
  br i1 %402, label %403, label %407

403:                                              ; preds = %398
  %404 = load i64, i64* %27, align 8
  store i64 %404, i64* %12, align 8
  %405 = load i64, i64* %28, align 8
  store i64 %405, i64* %27, align 8
  %406 = load i64, i64* %12, align 8
  store i64 %406, i64* %28, align 8
  br label %407

407:                                              ; preds = %403, %398
  br label %408

408:                                              ; preds = %407, %397
  %409 = load i64, i64* %27, align 8
  %410 = call i32 @GET_CODE(i64 %409)
  %411 = icmp eq i32 %410, 133
  br i1 %411, label %416, label %412

412:                                              ; preds = %408
  %413 = load i64, i64* %27, align 8
  %414 = call i32 @GET_CODE(i64 %413)
  %415 = icmp eq i32 %414, 132
  br i1 %415, label %416, label %462

416:                                              ; preds = %412, %408
  %417 = load i64, i64* %28, align 8
  %418 = call i32 @GET_CODE(i64 %417)
  %419 = icmp eq i32 %418, 133
  br i1 %419, label %424, label %420

420:                                              ; preds = %416
  %421 = load i64, i64* %28, align 8
  %422 = call i32 @GET_CODE(i64 %421)
  %423 = icmp eq i32 %422, 132
  br i1 %423, label %424, label %462

424:                                              ; preds = %420, %416
  %425 = load i64, i64* %27, align 8
  %426 = call i32 @GET_CODE(i64 %425)
  %427 = icmp eq i32 %426, 133
  br i1 %427, label %428, label %431

428:                                              ; preds = %424
  %429 = load i64, i64* %27, align 8
  %430 = call i64 @XEXP(i64 %429, i32 0)
  br label %433

431:                                              ; preds = %424
  %432 = load i64, i64* %27, align 8
  br label %433

433:                                              ; preds = %431, %428
  %434 = phi i64 [ %430, %428 ], [ %432, %431 ]
  store i64 %434, i64* %32, align 8
  %435 = load i64, i64* %28, align 8
  %436 = call i32 @GET_CODE(i64 %435)
  %437 = icmp eq i32 %436, 133
  br i1 %437, label %438, label %441

438:                                              ; preds = %433
  %439 = load i64, i64* %28, align 8
  %440 = call i64 @XEXP(i64 %439, i32 0)
  br label %443

441:                                              ; preds = %433
  %442 = load i64, i64* %28, align 8
  br label %443

443:                                              ; preds = %441, %438
  %444 = phi i64 [ %440, %438 ], [ %442, %441 ]
  store i64 %444, i64* %33, align 8
  %445 = load i32, i32* %31, align 4
  %446 = load i32, i32* %7, align 4
  %447 = load i64, i64* %32, align 8
  %448 = load i64, i64* %33, align 8
  %449 = call i64 @simplify_binary_operation(i32 %445, i32 %446, i64 %447, i64 %448)
  store i64 %449, i64* %12, align 8
  %450 = load i64, i64* %12, align 8
  %451 = icmp ne i64 %450, 0
  br i1 %451, label %452, label %461

452:                                              ; preds = %443
  %453 = load i64, i64* %12, align 8
  %454 = call i64 @CONSTANT_P(i64 %453)
  %455 = icmp ne i64 %454, 0
  br i1 %455, label %461, label %456

456:                                              ; preds = %452
  %457 = load i64, i64* %12, align 8
  %458 = call i32 @GET_MODE(i64 %457)
  %459 = load i64, i64* %12, align 8
  %460 = call i64 @gen_rtx_CONST(i32 %458, i64 %459)
  store i64 %460, i64* %12, align 8
  br label %461

461:                                              ; preds = %456, %452, %443
  br label %468

462:                                              ; preds = %420, %412
  %463 = load i32, i32* %31, align 4
  %464 = load i32, i32* %7, align 4
  %465 = load i64, i64* %27, align 8
  %466 = load i64, i64* %28, align 8
  %467 = call i64 @simplify_binary_operation(i32 %463, i32 %464, i64 %465, i64 %466)
  store i64 %467, i64* %12, align 8
  br label %468

468:                                              ; preds = %462, %461
  %469 = load i64, i64* %12, align 8
  %470 = icmp ne i64 %469, 0
  br i1 %470, label %471, label %534

471:                                              ; preds = %468
  %472 = load i64, i64* %12, align 8
  %473 = call i32 @GET_CODE(i64 %472)
  %474 = icmp eq i32 %473, 133
  br i1 %474, label %475, label %493

475:                                              ; preds = %471
  %476 = load i64, i64* %12, align 8
  %477 = call i64 @XEXP(i64 %476, i32 0)
  %478 = call i32 @GET_CODE(i64 %477)
  %479 = load i32, i32* %31, align 4
  %480 = icmp eq i32 %478, %479
  br i1 %480, label %481, label %493

481:                                              ; preds = %475
  %482 = load i64, i64* %12, align 8
  %483 = call i64 @XEXP(i64 %482, i32 0)
  %484 = call i64 @XEXP(i64 %483, i32 0)
  %485 = load i64, i64* %27, align 8
  %486 = icmp eq i64 %484, %485
  br i1 %486, label %487, label %493

487:                                              ; preds = %481
  %488 = load i64, i64* %12, align 8
  %489 = call i64 @XEXP(i64 %488, i32 0)
  %490 = call i64 @XEXP(i64 %489, i32 1)
  %491 = load i64, i64* %28, align 8
  %492 = icmp eq i64 %490, %491
  br i1 %492, label %534, label %493

493:                                              ; preds = %487, %481, %475, %471
  %494 = load i32, i32* %30, align 4
  %495 = load i32, i32* %29, align 4
  %496 = and i32 %495, %494
  store i32 %496, i32* %29, align 4
  %497 = load i64, i64* %12, align 8
  %498 = call i32 @GET_CODE(i64 %497)
  %499 = icmp eq i32 %498, 130
  br i1 %499, label %500, label %507

500:                                              ; preds = %493
  %501 = load i64, i64* %12, align 8
  %502 = call i64 @XEXP(i64 %501, i32 0)
  store i64 %502, i64* %12, align 8
  %503 = load i32, i32* %29, align 4
  %504 = icmp ne i32 %503, 0
  %505 = xor i1 %504, true
  %506 = zext i1 %505 to i32
  store i32 %506, i32* %29, align 4
  br label %507

507:                                              ; preds = %500, %493
  %508 = load i64, i64* %12, align 8
  %509 = call i32 @GET_CODE(i64 %508)
  %510 = icmp eq i32 %509, 132
  br i1 %510, label %511, label %518

511:                                              ; preds = %507
  %512 = load i32, i32* %29, align 4
  %513 = icmp ne i32 %512, 0
  br i1 %513, label %514, label %518

514:                                              ; preds = %511
  %515 = load i32, i32* %7, align 4
  %516 = load i64, i64* %12, align 8
  %517 = call i64 @neg_const_int(i32 %515, i64 %516)
  store i64 %517, i64* %12, align 8
  store i32 0, i32* %29, align 4
  br label %518

518:                                              ; preds = %514, %511, %507
  %519 = load i64, i64* %12, align 8
  %520 = load i32, i32* %18, align 4
  %521 = sext i32 %520 to i64
  %522 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %10, i64 0, i64 %521
  %523 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %522, i32 0, i32 0
  store i64 %519, i64* %523, align 16
  %524 = load i32, i32* %29, align 4
  %525 = load i32, i32* %18, align 4
  %526 = sext i32 %525 to i64
  %527 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %10, i64 0, i64 %526
  %528 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %527, i32 0, i32 1
  store i32 %524, i32* %528, align 8
  %529 = load i64, i64* @NULL_RTX, align 8
  %530 = load i32, i32* %19, align 4
  %531 = sext i32 %530 to i64
  %532 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %10, i64 0, i64 %531
  %533 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %532, i32 0, i32 0
  store i64 %529, i64* %533, align 16
  store i32 1, i32* %15, align 4
  br label %534

534:                                              ; preds = %518, %487, %468
  br label %535

535:                                              ; preds = %534, %383, %360
  br label %536

536:                                              ; preds = %535
  %537 = load i32, i32* %19, align 4
  %538 = add nsw i32 %537, -1
  store i32 %538, i32* %19, align 4
  br label %357

539:                                              ; preds = %357
  br label %540

540:                                              ; preds = %539
  %541 = load i32, i32* %18, align 4
  %542 = add nsw i32 %541, -1
  store i32 %542, i32* %18, align 4
  br label %351

543:                                              ; preds = %351
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %544

544:                                              ; preds = %567, %543
  %545 = load i32, i32* %19, align 4
  %546 = load i32, i32* %13, align 4
  %547 = icmp slt i32 %545, %546
  br i1 %547, label %548, label %570

548:                                              ; preds = %544
  %549 = load i32, i32* %19, align 4
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %10, i64 0, i64 %550
  %552 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %551, i32 0, i32 0
  %553 = load i64, i64* %552, align 16
  %554 = icmp ne i64 %553, 0
  br i1 %554, label %555, label %566

555:                                              ; preds = %548
  %556 = load i32, i32* %18, align 4
  %557 = sext i32 %556 to i64
  %558 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %10, i64 0, i64 %557
  %559 = load i32, i32* %19, align 4
  %560 = sext i32 %559 to i64
  %561 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %10, i64 0, i64 %560
  %562 = bitcast %struct.simplify_plus_minus_op_data* %558 to i8*
  %563 = bitcast %struct.simplify_plus_minus_op_data* %561 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %562, i8* align 16 %563, i64 16, i1 false)
  %564 = load i32, i32* %18, align 4
  %565 = add nsw i32 %564, 1
  store i32 %565, i32* %18, align 4
  br label %566

566:                                              ; preds = %555, %548
  br label %567

567:                                              ; preds = %566
  %568 = load i32, i32* %19, align 4
  %569 = add nsw i32 %568, 1
  store i32 %569, i32* %19, align 4
  br label %544

570:                                              ; preds = %544
  %571 = load i32, i32* %18, align 4
  store i32 %571, i32* %13, align 4
  br label %572

572:                                              ; preds = %570
  %573 = load i32, i32* %15, align 4
  %574 = icmp ne i32 %573, 0
  br i1 %574, label %288, label %575

575:                                              ; preds = %572
  %576 = load i32, i32* %13, align 4
  %577 = icmp eq i32 %576, 2
  br i1 %577, label %578, label %604

578:                                              ; preds = %575
  %579 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %10, i64 0, i64 1
  %580 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %579, i32 0, i32 0
  %581 = load i64, i64* %580, align 16
  %582 = call i32 @GET_CODE(i64 %581)
  %583 = icmp eq i32 %582, 132
  br i1 %583, label %584, label %604

584:                                              ; preds = %578
  %585 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %10, i64 0, i64 0
  %586 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %585, i32 0, i32 0
  %587 = load i64, i64* %586, align 16
  %588 = call i64 @CONSTANT_P(i64 %587)
  %589 = icmp ne i64 %588, 0
  br i1 %589, label %590, label %604

590:                                              ; preds = %584
  %591 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %10, i64 0, i64 0
  %592 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %591, i32 0, i32 1
  %593 = load i32, i32* %592, align 8
  %594 = icmp ne i32 %593, 0
  br i1 %594, label %595, label %604

595:                                              ; preds = %590
  %596 = load i32, i32* %7, align 4
  %597 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %10, i64 0, i64 1
  %598 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %597, i32 0, i32 0
  %599 = load i64, i64* %598, align 16
  %600 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %10, i64 0, i64 0
  %601 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %600, i32 0, i32 0
  %602 = load i64, i64* %601, align 16
  %603 = call i64 @gen_rtx_fmt_ee(i32 131, i32 %596, i64 %599, i64 %602)
  store i64 %603, i64* %5, align 8
  br label %750

604:                                              ; preds = %590, %584, %578, %575
  %605 = load i32, i32* %13, align 4
  %606 = icmp sgt i32 %605, 1
  br i1 %606, label %607, label %667

607:                                              ; preds = %604
  %608 = load i32, i32* %13, align 4
  %609 = sub nsw i32 %608, 1
  %610 = sext i32 %609 to i64
  %611 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %10, i64 0, i64 %610
  %612 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %611, i32 0, i32 0
  %613 = load i64, i64* %612, align 16
  %614 = call i32 @GET_CODE(i64 %613)
  %615 = icmp eq i32 %614, 132
  br i1 %615, label %616, label %667

616:                                              ; preds = %607
  %617 = load i32, i32* %13, align 4
  %618 = sub nsw i32 %617, 2
  %619 = sext i32 %618 to i64
  %620 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %10, i64 0, i64 %619
  %621 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %620, i32 0, i32 0
  %622 = load i64, i64* %621, align 16
  %623 = call i64 @CONSTANT_P(i64 %622)
  %624 = icmp ne i64 %623, 0
  br i1 %624, label %625, label %667

625:                                              ; preds = %616
  %626 = load i32, i32* %13, align 4
  %627 = sub nsw i32 %626, 1
  %628 = sext i32 %627 to i64
  %629 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %10, i64 0, i64 %628
  %630 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %629, i32 0, i32 0
  %631 = load i64, i64* %630, align 16
  store i64 %631, i64* %34, align 8
  %632 = load i32, i32* %13, align 4
  %633 = sub nsw i32 %632, 1
  %634 = sext i32 %633 to i64
  %635 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %10, i64 0, i64 %634
  %636 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %635, i32 0, i32 1
  %637 = load i32, i32* %636, align 8
  %638 = load i32, i32* %13, align 4
  %639 = sub nsw i32 %638, 2
  %640 = sext i32 %639 to i64
  %641 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %10, i64 0, i64 %640
  %642 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %641, i32 0, i32 1
  %643 = load i32, i32* %642, align 8
  %644 = xor i32 %637, %643
  %645 = icmp ne i32 %644, 0
  br i1 %645, label %646, label %650

646:                                              ; preds = %625
  %647 = load i32, i32* %7, align 4
  %648 = load i64, i64* %34, align 8
  %649 = call i64 @neg_const_int(i32 %647, i64 %648)
  store i64 %649, i64* %34, align 8
  br label %650

650:                                              ; preds = %646, %625
  %651 = load i32, i32* %13, align 4
  %652 = sub nsw i32 %651, 2
  %653 = sext i32 %652 to i64
  %654 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %10, i64 0, i64 %653
  %655 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %654, i32 0, i32 0
  %656 = load i64, i64* %655, align 16
  %657 = load i64, i64* %34, align 8
  %658 = call i32 @INTVAL(i64 %657)
  %659 = call i64 @plus_constant(i64 %656, i32 %658)
  %660 = load i32, i32* %13, align 4
  %661 = sub nsw i32 %660, 2
  %662 = sext i32 %661 to i64
  %663 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %10, i64 0, i64 %662
  %664 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %663, i32 0, i32 0
  store i64 %659, i64* %664, align 16
  %665 = load i32, i32* %13, align 4
  %666 = add nsw i32 %665, -1
  store i32 %666, i32* %13, align 4
  br label %667

667:                                              ; preds = %650, %616, %607, %604
  store i32 0, i32* %18, align 4
  br label %668

668:                                              ; preds = %682, %667
  %669 = load i32, i32* %18, align 4
  %670 = load i32, i32* %13, align 4
  %671 = icmp slt i32 %669, %670
  br i1 %671, label %672, label %679

672:                                              ; preds = %668
  %673 = load i32, i32* %18, align 4
  %674 = sext i32 %673 to i64
  %675 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %10, i64 0, i64 %674
  %676 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %675, i32 0, i32 1
  %677 = load i32, i32* %676, align 8
  %678 = icmp ne i32 %677, 0
  br label %679

679:                                              ; preds = %672, %668
  %680 = phi i1 [ false, %668 ], [ %678, %672 ]
  br i1 %680, label %681, label %685

681:                                              ; preds = %679
  br label %682

682:                                              ; preds = %681
  %683 = load i32, i32* %18, align 4
  %684 = add nsw i32 %683, 1
  store i32 %684, i32* %18, align 4
  br label %668

685:                                              ; preds = %679
  %686 = load i32, i32* %18, align 4
  %687 = load i32, i32* %13, align 4
  %688 = icmp eq i32 %686, %687
  br i1 %688, label %689, label %697

689:                                              ; preds = %685
  %690 = load i32, i32* %7, align 4
  %691 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %10, i64 0, i64 0
  %692 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %691, i32 0, i32 0
  %693 = load i64, i64* %692, align 16
  %694 = call i64 @gen_rtx_NEG(i32 %690, i64 %693)
  %695 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %10, i64 0, i64 0
  %696 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %695, i32 0, i32 0
  store i64 %694, i64* %696, align 16
  br label %720

697:                                              ; preds = %685
  %698 = load i32, i32* %18, align 4
  %699 = icmp ne i32 %698, 0
  br i1 %699, label %700, label %719

700:                                              ; preds = %697
  %701 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %10, i64 0, i64 0
  %702 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %701, i32 0, i32 0
  %703 = load i64, i64* %702, align 16
  store i64 %703, i64* %12, align 8
  %704 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %10, i64 0, i64 0
  %705 = load i32, i32* %18, align 4
  %706 = sext i32 %705 to i64
  %707 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %10, i64 0, i64 %706
  %708 = bitcast %struct.simplify_plus_minus_op_data* %704 to i8*
  %709 = bitcast %struct.simplify_plus_minus_op_data* %707 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %708, i8* align 16 %709, i64 16, i1 false)
  %710 = load i64, i64* %12, align 8
  %711 = load i32, i32* %18, align 4
  %712 = sext i32 %711 to i64
  %713 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %10, i64 0, i64 %712
  %714 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %713, i32 0, i32 0
  store i64 %710, i64* %714, align 16
  %715 = load i32, i32* %18, align 4
  %716 = sext i32 %715 to i64
  %717 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %10, i64 0, i64 %716
  %718 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %717, i32 0, i32 1
  store i32 1, i32* %718, align 8
  br label %719

719:                                              ; preds = %700, %697
  br label %720

720:                                              ; preds = %719, %689
  %721 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %10, i64 0, i64 0
  %722 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %721, i32 0, i32 0
  %723 = load i64, i64* %722, align 16
  store i64 %723, i64* %11, align 8
  store i32 1, i32* %18, align 4
  br label %724

724:                                              ; preds = %745, %720
  %725 = load i32, i32* %18, align 4
  %726 = load i32, i32* %13, align 4
  %727 = icmp slt i32 %725, %726
  br i1 %727, label %728, label %748

728:                                              ; preds = %724
  %729 = load i32, i32* %18, align 4
  %730 = sext i32 %729 to i64
  %731 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %10, i64 0, i64 %730
  %732 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %731, i32 0, i32 1
  %733 = load i32, i32* %732, align 8
  %734 = icmp ne i32 %733, 0
  %735 = zext i1 %734 to i64
  %736 = select i1 %734, i32 131, i32 128
  %737 = load i32, i32* %7, align 4
  %738 = load i64, i64* %11, align 8
  %739 = load i32, i32* %18, align 4
  %740 = sext i32 %739 to i64
  %741 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], [8 x %struct.simplify_plus_minus_op_data]* %10, i64 0, i64 %740
  %742 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %741, i32 0, i32 0
  %743 = load i64, i64* %742, align 16
  %744 = call i64 @gen_rtx_fmt_ee(i32 %736, i32 %737, i64 %738, i64 %743)
  store i64 %744, i64* %11, align 8
  br label %745

745:                                              ; preds = %728
  %746 = load i32, i32* %18, align 4
  %747 = add nsw i32 %746, 1
  store i32 %747, i32* %18, align 4
  br label %724

748:                                              ; preds = %724
  %749 = load i64, i64* %11, align 8
  store i64 %749, i64* %5, align 8
  br label %750

750:                                              ; preds = %748, %595, %346, %281, %72
  %751 = load i64, i64* %5, align 8
  ret i64 %751
}

declare dso_local i32 @memset(%struct.simplify_plus_minus_op_data*, i32, i32) #1

declare dso_local i32 @GET_CODE(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @CONSTANT_P(i64) #1

declare dso_local i64 @neg_const_int(i32, i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @gen_rtx_NEG(i32, i64) #1

declare dso_local i64 @simplify_const_binary_operation(i32, i32, i64, i64) #1

declare dso_local i64 @simplify_plus_minus_op_data_cmp(%struct.simplify_plus_minus_op_data*, %struct.simplify_plus_minus_op_data*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @swap_commutative_operands_p(i64, i64) #1

declare dso_local i64 @simplify_binary_operation(i32, i32, i64, i64) #1

declare dso_local i64 @gen_rtx_CONST(i32, i64) #1

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i64 @gen_rtx_fmt_ee(i32, i32, i64, i64) #1

declare dso_local i64 @plus_constant(i64, i32) #1

declare dso_local i32 @INTVAL(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
