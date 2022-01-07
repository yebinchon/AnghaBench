; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_go7007-fw.c_modet_to_package.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_go7007-fw.c_modet_to_package.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.go7007 = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.go7007*, i32*, i32)* @modet_to_package to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @modet_to_package(%struct.go7007* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.go7007*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [32 x i32], align 16
  %14 = alloca [32 x i32], align 16
  store %struct.go7007* %0, %struct.go7007** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %12, align 4
  %15 = getelementptr inbounds [32 x i32], [32 x i32]* %14, i64 0, i64 0
  store i32 8206, i32* %15, align 4
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  store i32 49026, i32* %17, align 4
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load %struct.go7007*, %struct.go7007** %5, align 8
  %20 = getelementptr inbounds %struct.go7007, %struct.go7007* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %18, align 4
  %25 = getelementptr inbounds i32, i32* %18, i64 1
  store i32 49027, i32* %25, align 4
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load %struct.go7007*, %struct.go7007** %5, align 8
  %28 = getelementptr inbounds %struct.go7007, %struct.go7007* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %26, align 4
  %33 = getelementptr inbounds i32, i32* %26, i64 1
  store i32 49028, i32* %33, align 4
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load %struct.go7007*, %struct.go7007** %5, align 8
  %36 = getelementptr inbounds %struct.go7007, %struct.go7007* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %34, align 4
  %41 = getelementptr inbounds i32, i32* %34, i64 1
  store i32 49029, i32* %41, align 4
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load %struct.go7007*, %struct.go7007** %5, align 8
  %44 = getelementptr inbounds %struct.go7007, %struct.go7007* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 3
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %42, align 4
  %49 = getelementptr inbounds i32, i32* %42, i64 1
  store i32 49030, i32* %49, align 4
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = load %struct.go7007*, %struct.go7007** %5, align 8
  %52 = getelementptr inbounds %struct.go7007, %struct.go7007* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %50, align 4
  %57 = getelementptr inbounds i32, i32* %50, i64 1
  store i32 49031, i32* %57, align 4
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load %struct.go7007*, %struct.go7007** %5, align 8
  %60 = getelementptr inbounds %struct.go7007, %struct.go7007* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %58, align 4
  %65 = getelementptr inbounds i32, i32* %58, i64 1
  store i32 49032, i32* %65, align 4
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  %67 = load %struct.go7007*, %struct.go7007** %5, align 8
  %68 = getelementptr inbounds %struct.go7007, %struct.go7007* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 2
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %66, align 4
  %73 = getelementptr inbounds i32, i32* %66, i64 1
  store i32 49033, i32* %73, align 4
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  %75 = load %struct.go7007*, %struct.go7007** %5, align 8
  %76 = getelementptr inbounds %struct.go7007, %struct.go7007* %75, i32 0, i32 1
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 3
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %74, align 4
  %81 = getelementptr inbounds i32, i32* %74, i64 1
  store i32 49034, i32* %81, align 4
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  %83 = load %struct.go7007*, %struct.go7007** %5, align 8
  %84 = getelementptr inbounds %struct.go7007, %struct.go7007* %83, i32 0, i32 1
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %82, align 4
  %89 = getelementptr inbounds i32, i32* %82, i64 1
  store i32 49035, i32* %89, align 4
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  %91 = load %struct.go7007*, %struct.go7007** %5, align 8
  %92 = getelementptr inbounds %struct.go7007, %struct.go7007* %91, i32 0, i32 1
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i64 1
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %90, align 4
  %97 = getelementptr inbounds i32, i32* %90, i64 1
  store i32 49036, i32* %97, align 4
  %98 = getelementptr inbounds i32, i32* %97, i64 1
  %99 = load %struct.go7007*, %struct.go7007** %5, align 8
  %100 = getelementptr inbounds %struct.go7007, %struct.go7007* %99, i32 0, i32 1
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i64 2
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %98, align 4
  %105 = getelementptr inbounds i32, i32* %98, i64 1
  store i32 49037, i32* %105, align 4
  %106 = getelementptr inbounds i32, i32* %105, i64 1
  %107 = load %struct.go7007*, %struct.go7007** %5, align 8
  %108 = getelementptr inbounds %struct.go7007, %struct.go7007* %107, i32 0, i32 1
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i64 3
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %106, align 4
  %113 = getelementptr inbounds i32, i32* %106, i64 1
  store i32 49038, i32* %113, align 4
  %114 = getelementptr inbounds i32, i32* %113, i64 1
  store i32 0, i32* %114, align 4
  %115 = getelementptr inbounds i32, i32* %114, i64 1
  store i32 49039, i32* %115, align 4
  %116 = getelementptr inbounds i32, i32* %115, i64 1
  store i32 0, i32* %116, align 4
  %117 = getelementptr inbounds i32, i32* %116, i64 1
  store i32 0, i32* %117, align 4
  %118 = getelementptr inbounds i32, i32* %117, i64 1
  store i32 0, i32* %118, align 4
  %119 = load i32*, i32** %6, align 8
  %120 = getelementptr inbounds [32 x i32], [32 x i32]* %14, i64 0, i64 0
  %121 = load i32, i32* %7, align 4
  %122 = call i32 @copy_packages(i32* %119, i32* %120, i32 1, i32 %121)
  store i32 %122, i32* %8, align 4
  %123 = load i32, i32* %8, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %260

126:                                              ; preds = %3
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* %12, align 4
  %129 = add nsw i32 %128, %127
  store i32 %129, i32* %12, align 4
  store i32 47808, i32* %11, align 4
  %130 = getelementptr inbounds [32 x i32], [32 x i32]* %13, i64 0, i64 0
  %131 = call i32 @memset(i32* %130, i32 0, i32 64)
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %132

132:                                              ; preds = %204, %126
  %133 = load i32, i32* %9, align 4
  %134 = icmp slt i32 %133, 1624
  br i1 %134, label %135, label %207

135:                                              ; preds = %132
  %136 = load i32, i32* %10, align 4
  %137 = mul nsw i32 %136, 2
  %138 = add nsw i32 %137, 3
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [32 x i32], [32 x i32]* %13, i64 0, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = shl i32 %141, 2
  store i32 %142, i32* %140, align 4
  %143 = load %struct.go7007*, %struct.go7007** %5, align 8
  %144 = getelementptr inbounds %struct.go7007, %struct.go7007* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %9, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %10, align 4
  %151 = mul nsw i32 %150, 2
  %152 = add nsw i32 %151, 3
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [32 x i32], [32 x i32]* %13, i64 0, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = or i32 %155, %149
  store i32 %156, i32* %154, align 4
  %157 = load i32, i32* %9, align 4
  %158 = srem i32 %157, 8
  %159 = icmp ne i32 %158, 7
  br i1 %159, label %160, label %161

160:                                              ; preds = %135
  br label %204

161:                                              ; preds = %135
  %162 = load i32, i32* %11, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %11, align 4
  %164 = load i32, i32* %10, align 4
  %165 = mul nsw i32 %164, 2
  %166 = add nsw i32 %165, 2
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [32 x i32], [32 x i32]* %13, i64 0, i64 %167
  store i32 %162, i32* %168, align 4
  %169 = load i32, i32* %10, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %10, align 4
  %171 = load i32, i32* %10, align 4
  %172 = icmp eq i32 %171, 10
  br i1 %172, label %176, label %173

173:                                              ; preds = %161
  %174 = load i32, i32* %9, align 4
  %175 = icmp eq i32 %174, 1623
  br i1 %175, label %176, label %198

176:                                              ; preds = %173, %161
  %177 = load i32, i32* %10, align 4
  %178 = or i32 8192, %177
  %179 = getelementptr inbounds [32 x i32], [32 x i32]* %13, i64 0, i64 0
  store i32 %178, i32* %179, align 16
  %180 = load i32*, i32** %6, align 8
  %181 = load i32, i32* %12, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  %184 = getelementptr inbounds [32 x i32], [32 x i32]* %13, i64 0, i64 0
  %185 = load i32, i32* %7, align 4
  %186 = load i32, i32* %12, align 4
  %187 = sub nsw i32 %185, %186
  %188 = call i32 @copy_packages(i32* %183, i32* %184, i32 1, i32 %187)
  store i32 %188, i32* %8, align 4
  %189 = load i32, i32* %8, align 4
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %176
  store i32 -1, i32* %4, align 4
  br label %260

192:                                              ; preds = %176
  %193 = load i32, i32* %8, align 4
  %194 = load i32, i32* %12, align 4
  %195 = add nsw i32 %194, %193
  store i32 %195, i32* %12, align 4
  store i32 0, i32* %10, align 4
  %196 = getelementptr inbounds [32 x i32], [32 x i32]* %13, i64 0, i64 0
  %197 = call i32 @memset(i32* %196, i32 0, i32 64)
  br label %198

198:                                              ; preds = %192, %173
  %199 = load i32, i32* %10, align 4
  %200 = mul nsw i32 %199, 2
  %201 = add nsw i32 %200, 3
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [32 x i32], [32 x i32]* %13, i64 0, i64 %202
  store i32 0, i32* %203, align 4
  br label %204

204:                                              ; preds = %198, %160
  %205 = load i32, i32* %9, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %9, align 4
  br label %132

207:                                              ; preds = %132
  %208 = getelementptr inbounds [32 x i32], [32 x i32]* %13, i64 0, i64 0
  %209 = call i32 @memset(i32* %208, i32 0, i32 64)
  store i32 0, i32* %10, align 4
  store i32 48016, i32* %11, align 4
  br label %210

210:                                              ; preds = %255, %207
  %211 = load i32, i32* %11, align 4
  %212 = icmp slt i32 %211, 48122
  br i1 %212, label %213, label %258

213:                                              ; preds = %210
  %214 = load i32, i32* %11, align 4
  %215 = load i32, i32* %10, align 4
  %216 = mul nsw i32 %215, 2
  %217 = add nsw i32 %216, 2
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [32 x i32], [32 x i32]* %13, i64 0, i64 %218
  store i32 %214, i32* %219, align 4
  %220 = load i32, i32* %10, align 4
  %221 = mul nsw i32 %220, 2
  %222 = add nsw i32 %221, 3
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds [32 x i32], [32 x i32]* %13, i64 0, i64 %223
  store i32 0, i32* %224, align 4
  %225 = load i32, i32* %10, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %10, align 4
  %227 = load i32, i32* %10, align 4
  %228 = icmp eq i32 %227, 10
  br i1 %228, label %232, label %229

229:                                              ; preds = %213
  %230 = load i32, i32* %11, align 4
  %231 = icmp eq i32 %230, 48121
  br i1 %231, label %232, label %254

232:                                              ; preds = %229, %213
  %233 = load i32, i32* %10, align 4
  %234 = or i32 8192, %233
  %235 = getelementptr inbounds [32 x i32], [32 x i32]* %13, i64 0, i64 0
  store i32 %234, i32* %235, align 16
  %236 = load i32*, i32** %6, align 8
  %237 = load i32, i32* %12, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %236, i64 %238
  %240 = getelementptr inbounds [32 x i32], [32 x i32]* %13, i64 0, i64 0
  %241 = load i32, i32* %7, align 4
  %242 = load i32, i32* %12, align 4
  %243 = sub nsw i32 %241, %242
  %244 = call i32 @copy_packages(i32* %239, i32* %240, i32 1, i32 %243)
  store i32 %244, i32* %8, align 4
  %245 = load i32, i32* %8, align 4
  %246 = icmp slt i32 %245, 0
  br i1 %246, label %247, label %248

247:                                              ; preds = %232
  store i32 -1, i32* %4, align 4
  br label %260

248:                                              ; preds = %232
  %249 = load i32, i32* %8, align 4
  %250 = load i32, i32* %12, align 4
  %251 = add nsw i32 %250, %249
  store i32 %251, i32* %12, align 4
  store i32 0, i32* %10, align 4
  %252 = getelementptr inbounds [32 x i32], [32 x i32]* %13, i64 0, i64 0
  %253 = call i32 @memset(i32* %252, i32 0, i32 64)
  br label %254

254:                                              ; preds = %248, %229
  br label %255

255:                                              ; preds = %254
  %256 = load i32, i32* %11, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %11, align 4
  br label %210

258:                                              ; preds = %210
  %259 = load i32, i32* %12, align 4
  store i32 %259, i32* %4, align 4
  br label %260

260:                                              ; preds = %258, %247, %191, %125
  %261 = load i32, i32* %4, align 4
  ret i32 %261
}

declare dso_local i32 @copy_packages(i32*, i32*, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
