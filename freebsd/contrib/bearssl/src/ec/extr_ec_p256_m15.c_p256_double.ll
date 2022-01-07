; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ec/extr_ec_p256_m15.c_p256_double.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ec/extr_ec_p256_m15.c_p256_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32*, i32* }

@F256 = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @p256_double to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p256_double(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca [20 x i32], align 16
  %4 = alloca [20 x i32], align 16
  %5 = alloca [20 x i32], align 16
  %6 = alloca [20 x i32], align 16
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %8 = getelementptr inbounds [20 x i32], [20 x i32]* %3, i64 0, i64 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = call i32 @square_f256(i32* %8, i32* %11)
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %51, %1
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 20
  br i1 %15, label %16, label %54

16:                                               ; preds = %13
  %17 = load i32*, i32** @F256, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 %21, 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %22, %29
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [20 x i32], [20 x i32]* %3, i64 0, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %30, %34
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 %37
  store i32 %35, i32* %38, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [20 x i32], [20 x i32]* %3, i64 0, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, %45
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %16
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %13

54:                                               ; preds = %13
  %55 = getelementptr inbounds [20 x i32], [20 x i32]* %3, i64 0, i64 0
  %56 = getelementptr inbounds [20 x i32], [20 x i32]* %3, i64 0, i64 0
  %57 = call i32 @norm13(i32* %55, i32* %56, i32 20)
  %58 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 0
  %59 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 0
  %60 = call i32 @norm13(i32* %58, i32* %59, i32 20)
  %61 = getelementptr inbounds [20 x i32], [20 x i32]* %5, i64 0, i64 0
  %62 = getelementptr inbounds [20 x i32], [20 x i32]* %3, i64 0, i64 0
  %63 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 0
  %64 = call i32 @mul_f256(i32* %61, i32* %62, i32* %63)
  store i32 0, i32* %7, align 4
  br label %65

65:                                               ; preds = %77, %54
  %66 = load i32, i32* %7, align 4
  %67 = icmp slt i32 %66, 20
  br i1 %67, label %68, label %80

68:                                               ; preds = %65
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [20 x i32], [20 x i32]* %5, i64 0, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @MUL15(i32 3, i32 %72)
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [20 x i32], [20 x i32]* %3, i64 0, i64 %75
  store i32 %73, i32* %76, align 4
  br label %77

77:                                               ; preds = %68
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %7, align 4
  br label %65

80:                                               ; preds = %65
  %81 = getelementptr inbounds [20 x i32], [20 x i32]* %3, i64 0, i64 0
  %82 = getelementptr inbounds [20 x i32], [20 x i32]* %3, i64 0, i64 0
  %83 = call i32 @norm13(i32* %81, i32* %82, i32 20)
  %84 = getelementptr inbounds [20 x i32], [20 x i32]* %5, i64 0, i64 0
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @square_f256(i32* %84, i32* %87)
  store i32 0, i32* %7, align 4
  br label %89

89:                                               ; preds = %98, %80
  %90 = load i32, i32* %7, align 4
  %91 = icmp slt i32 %90, 20
  br i1 %91, label %92, label %101

92:                                               ; preds = %89
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [20 x i32], [20 x i32]* %5, i64 0, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = shl i32 %96, 1
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %92
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %7, align 4
  br label %89

101:                                              ; preds = %89
  %102 = getelementptr inbounds [20 x i32], [20 x i32]* %5, i64 0, i64 0
  %103 = getelementptr inbounds [20 x i32], [20 x i32]* %5, i64 0, i64 0
  %104 = call i32 @norm13(i32* %102, i32* %103, i32 20)
  %105 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 0
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds [20 x i32], [20 x i32]* %5, i64 0, i64 0
  %110 = call i32 @mul_f256(i32* %105, i32* %108, i32* %109)
  store i32 0, i32* %7, align 4
  br label %111

111:                                              ; preds = %120, %101
  %112 = load i32, i32* %7, align 4
  %113 = icmp slt i32 %112, 20
  br i1 %113, label %114, label %123

114:                                              ; preds = %111
  %115 = load i32, i32* %7, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = shl i32 %118, 1
  store i32 %119, i32* %117, align 4
  br label %120

120:                                              ; preds = %114
  %121 = load i32, i32* %7, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %7, align 4
  br label %111

123:                                              ; preds = %111
  %124 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 0
  %125 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 0
  %126 = call i32 @norm13(i32* %124, i32* %125, i32 20)
  %127 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 0
  %128 = call i32 @reduce_f256(i32* %127)
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds [20 x i32], [20 x i32]* %3, i64 0, i64 0
  %133 = call i32 @square_f256(i32* %131, i32* %132)
  store i32 0, i32* %7, align 4
  br label %134

134:                                              ; preds = %158, %123
  %135 = load i32, i32* %7, align 4
  %136 = icmp slt i32 %135, 20
  br i1 %136, label %137, label %161

137:                                              ; preds = %134
  %138 = load i32*, i32** @F256, align 8
  %139 = load i32, i32* %7, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = shl i32 %142, 2
  %144 = load i32, i32* %7, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = shl i32 %147, 1
  %149 = sub nsw i32 %143, %148
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %7, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = add nsw i32 %156, %149
  store i32 %157, i32* %155, align 4
  br label %158

158:                                              ; preds = %137
  %159 = load i32, i32* %7, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %7, align 4
  br label %134

161:                                              ; preds = %134
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 1
  %167 = load i32*, i32** %166, align 8
  %168 = call i32 @norm13(i32* %164, i32* %167, i32 20)
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 1
  %171 = load i32*, i32** %170, align 8
  %172 = call i32 @reduce_f256(i32* %171)
  %173 = getelementptr inbounds [20 x i32], [20 x i32]* %6, i64 0, i64 0
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 2
  %176 = load i32*, i32** %175, align 8
  %177 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 0
  %179 = load i32*, i32** %178, align 8
  %180 = call i32 @mul_f256(i32* %173, i32* %176, i32* %179)
  store i32 0, i32* %7, align 4
  br label %181

181:                                              ; preds = %196, %161
  %182 = load i32, i32* %7, align 4
  %183 = icmp slt i32 %182, 20
  br i1 %183, label %184, label %199

184:                                              ; preds = %181
  %185 = load i32, i32* %7, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds [20 x i32], [20 x i32]* %6, i64 0, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = shl i32 %188, 1
  %190 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  %193 = load i32, i32* %7, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  store i32 %189, i32* %195, align 4
  br label %196

196:                                              ; preds = %184
  %197 = load i32, i32* %7, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %7, align 4
  br label %181

199:                                              ; preds = %181
  %200 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 0
  %202 = load i32*, i32** %201, align 8
  %203 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 0
  %205 = load i32*, i32** %204, align 8
  %206 = call i32 @norm13(i32* %202, i32* %205, i32 20)
  %207 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 0
  %209 = load i32*, i32** %208, align 8
  %210 = call i32 @reduce_f256(i32* %209)
  store i32 0, i32* %7, align 4
  br label %211

211:                                              ; preds = %234, %199
  %212 = load i32, i32* %7, align 4
  %213 = icmp slt i32 %212, 20
  br i1 %213, label %214, label %237

214:                                              ; preds = %211
  %215 = load i32*, i32** @F256, align 8
  %216 = load i32, i32* %7, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %215, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = shl i32 %219, 1
  %221 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %222 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %221, i32 0, i32 1
  %223 = load i32*, i32** %222, align 8
  %224 = load i32, i32* %7, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %223, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = sub nsw i32 %220, %227
  %229 = load i32, i32* %7, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = add nsw i32 %232, %228
  store i32 %233, i32* %231, align 4
  br label %234

234:                                              ; preds = %214
  %235 = load i32, i32* %7, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %7, align 4
  br label %211

237:                                              ; preds = %211
  %238 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 0
  %239 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 0
  %240 = call i32 @norm13(i32* %238, i32* %239, i32 20)
  %241 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %242 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %241, i32 0, i32 2
  %243 = load i32*, i32** %242, align 8
  %244 = getelementptr inbounds [20 x i32], [20 x i32]* %3, i64 0, i64 0
  %245 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 0
  %246 = call i32 @mul_f256(i32* %243, i32* %244, i32* %245)
  %247 = getelementptr inbounds [20 x i32], [20 x i32]* %6, i64 0, i64 0
  %248 = getelementptr inbounds [20 x i32], [20 x i32]* %5, i64 0, i64 0
  %249 = call i32 @square_f256(i32* %247, i32* %248)
  store i32 0, i32* %7, align 4
  br label %250

250:                                              ; preds = %274, %237
  %251 = load i32, i32* %7, align 4
  %252 = icmp slt i32 %251, 20
  br i1 %252, label %253, label %277

253:                                              ; preds = %250
  %254 = load i32*, i32** @F256, align 8
  %255 = load i32, i32* %7, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %254, i64 %256
  %258 = load i32, i32* %257, align 4
  %259 = shl i32 %258, 2
  %260 = load i32, i32* %7, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds [20 x i32], [20 x i32]* %6, i64 0, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = shl i32 %263, 1
  %265 = sub nsw i32 %259, %264
  %266 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %267 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %266, i32 0, i32 2
  %268 = load i32*, i32** %267, align 8
  %269 = load i32, i32* %7, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32, i32* %268, i64 %270
  %272 = load i32, i32* %271, align 4
  %273 = add nsw i32 %272, %265
  store i32 %273, i32* %271, align 4
  br label %274

274:                                              ; preds = %253
  %275 = load i32, i32* %7, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %7, align 4
  br label %250

277:                                              ; preds = %250
  %278 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %279 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %278, i32 0, i32 2
  %280 = load i32*, i32** %279, align 8
  %281 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %282 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %281, i32 0, i32 2
  %283 = load i32*, i32** %282, align 8
  %284 = call i32 @norm13(i32* %280, i32* %283, i32 20)
  %285 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %286 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %285, i32 0, i32 2
  %287 = load i32*, i32** %286, align 8
  %288 = call i32 @reduce_f256(i32* %287)
  ret void
}

declare dso_local i32 @square_f256(i32*, i32*) #1

declare dso_local i32 @norm13(i32*, i32*, i32) #1

declare dso_local i32 @mul_f256(i32*, i32*, i32*) #1

declare dso_local i32 @MUL15(i32, i32) #1

declare dso_local i32 @reduce_f256(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
