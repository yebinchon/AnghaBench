; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bzip2/extr_blocksort.c_fallbackQSort3.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bzip2/extr_blocksort.c_fallbackQSort3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALLBACK_QSORT_STACK_SIZE = common dso_local global i32 0, align 4
@FALLBACK_QSORT_SMALL_THRESH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"fallbackQSort3(2)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i64, i64)* @fallbackQSort3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fallbackQSort3(i32* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %24 = load i32, i32* @FALLBACK_QSORT_STACK_SIZE, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %21, align 8
  %27 = alloca i64, i64 %25, align 16
  store i64 %25, i64* %22, align 8
  %28 = load i32, i32* @FALLBACK_QSORT_STACK_SIZE, align 4
  %29 = zext i32 %28 to i64
  %30 = alloca i64, i64 %29, align 16
  store i64 %29, i64* %23, align 8
  store i32 0, i32* %19, align 4
  store i64 0, i64* %15, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @fpush(i64 %31, i64 %32)
  br label %34

34:                                               ; preds = %283, %221, %53, %4
  %35 = load i64, i64* %15, align 8
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %284

37:                                               ; preds = %34
  %38 = load i64, i64* %15, align 8
  %39 = load i32, i32* @FALLBACK_QSORT_STACK_SIZE, align 4
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = icmp slt i64 %38, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @AssertH(i32 %43, i32 1004)
  %45 = load i64, i64* %16, align 8
  %46 = load i64, i64* %17, align 8
  %47 = call i32 @fpop(i64 %45, i64 %46)
  %48 = load i64, i64* %17, align 8
  %49 = load i64, i64* %16, align 8
  %50 = sub nsw i64 %48, %49
  %51 = load i64, i64* @FALLBACK_QSORT_SMALL_THRESH, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %37
  %54 = load i32*, i32** %5, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = load i64, i64* %16, align 8
  %57 = load i64, i64* %17, align 8
  %58 = call i32 @fallbackSimpleSort(i32* %54, i32* %55, i64 %56, i64 %57)
  br label %34

59:                                               ; preds = %37
  %60 = load i32, i32* %19, align 4
  %61 = mul nsw i32 %60, 7621
  %62 = add nsw i32 %61, 1
  %63 = srem i32 %62, 32768
  store i32 %63, i32* %19, align 4
  %64 = load i32, i32* %19, align 4
  %65 = srem i32 %64, 3
  store i32 %65, i32* %20, align 4
  %66 = load i32, i32* %20, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %59
  %69 = load i32*, i32** %6, align 8
  %70 = load i32*, i32** %5, align 8
  %71 = load i64, i64* %16, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %69, i64 %74
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %18, align 4
  br label %102

77:                                               ; preds = %59
  %78 = load i32, i32* %20, align 4
  %79 = icmp eq i32 %78, 1
  br i1 %79, label %80, label %92

80:                                               ; preds = %77
  %81 = load i32*, i32** %6, align 8
  %82 = load i32*, i32** %5, align 8
  %83 = load i64, i64* %16, align 8
  %84 = load i64, i64* %17, align 8
  %85 = add nsw i64 %83, %84
  %86 = ashr i64 %85, 1
  %87 = getelementptr inbounds i32, i32* %82, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %81, i64 %89
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %18, align 4
  br label %101

92:                                               ; preds = %77
  %93 = load i32*, i32** %6, align 8
  %94 = load i32*, i32** %5, align 8
  %95 = load i64, i64* %17, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %93, i64 %98
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %18, align 4
  br label %101

101:                                              ; preds = %92, %80
  br label %102

102:                                              ; preds = %101, %68
  %103 = load i64, i64* %16, align 8
  store i64 %103, i64* %11, align 8
  store i64 %103, i64* %9, align 8
  %104 = load i64, i64* %17, align 8
  store i64 %104, i64* %12, align 8
  store i64 %104, i64* %10, align 8
  br label %105

105:                                              ; preds = %197, %102
  br label %106

106:                                              ; preds = %105
  br label %107

107:                                              ; preds = %146, %128, %106
  br label %108

108:                                              ; preds = %107
  %109 = load i64, i64* %9, align 8
  %110 = load i64, i64* %10, align 8
  %111 = icmp sgt i64 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %108
  br label %149

113:                                              ; preds = %108
  %114 = load i32*, i32** %6, align 8
  %115 = load i32*, i32** %5, align 8
  %116 = load i64, i64* %9, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %114, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = sext i32 %121 to i64
  %123 = load i32, i32* %18, align 4
  %124 = sext i32 %123 to i64
  %125 = sub nsw i64 %122, %124
  store i64 %125, i64* %13, align 8
  %126 = load i64, i64* %13, align 8
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %142

128:                                              ; preds = %113
  %129 = load i32*, i32** %5, align 8
  %130 = load i64, i64* %9, align 8
  %131 = getelementptr inbounds i32, i32* %129, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load i32*, i32** %5, align 8
  %134 = load i64, i64* %11, align 8
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @fswap(i32 %132, i32 %136)
  %138 = load i64, i64* %11, align 8
  %139 = add nsw i64 %138, 1
  store i64 %139, i64* %11, align 8
  %140 = load i64, i64* %9, align 8
  %141 = add nsw i64 %140, 1
  store i64 %141, i64* %9, align 8
  br label %107

142:                                              ; preds = %113
  %143 = load i64, i64* %13, align 8
  %144 = icmp sgt i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %142
  br label %149

146:                                              ; preds = %142
  %147 = load i64, i64* %9, align 8
  %148 = add nsw i64 %147, 1
  store i64 %148, i64* %9, align 8
  br label %107

149:                                              ; preds = %145, %112
  br label %150

150:                                              ; preds = %189, %171, %149
  br label %151

151:                                              ; preds = %150
  %152 = load i64, i64* %9, align 8
  %153 = load i64, i64* %10, align 8
  %154 = icmp sgt i64 %152, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %151
  br label %192

156:                                              ; preds = %151
  %157 = load i32*, i32** %6, align 8
  %158 = load i32*, i32** %5, align 8
  %159 = load i64, i64* %10, align 8
  %160 = getelementptr inbounds i32, i32* %158, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %157, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = sext i32 %164 to i64
  %166 = load i32, i32* %18, align 4
  %167 = sext i32 %166 to i64
  %168 = sub nsw i64 %165, %167
  store i64 %168, i64* %13, align 8
  %169 = load i64, i64* %13, align 8
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %171, label %185

171:                                              ; preds = %156
  %172 = load i32*, i32** %5, align 8
  %173 = load i64, i64* %10, align 8
  %174 = getelementptr inbounds i32, i32* %172, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = load i32*, i32** %5, align 8
  %177 = load i64, i64* %12, align 8
  %178 = getelementptr inbounds i32, i32* %176, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @fswap(i32 %175, i32 %179)
  %181 = load i64, i64* %12, align 8
  %182 = add nsw i64 %181, -1
  store i64 %182, i64* %12, align 8
  %183 = load i64, i64* %10, align 8
  %184 = add nsw i64 %183, -1
  store i64 %184, i64* %10, align 8
  br label %150

185:                                              ; preds = %156
  %186 = load i64, i64* %13, align 8
  %187 = icmp slt i64 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %185
  br label %192

189:                                              ; preds = %185
  %190 = load i64, i64* %10, align 8
  %191 = add nsw i64 %190, -1
  store i64 %191, i64* %10, align 8
  br label %150

192:                                              ; preds = %188, %155
  %193 = load i64, i64* %9, align 8
  %194 = load i64, i64* %10, align 8
  %195 = icmp sgt i64 %193, %194
  br i1 %195, label %196, label %197

196:                                              ; preds = %192
  br label %211

197:                                              ; preds = %192
  %198 = load i32*, i32** %5, align 8
  %199 = load i64, i64* %9, align 8
  %200 = getelementptr inbounds i32, i32* %198, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = load i32*, i32** %5, align 8
  %203 = load i64, i64* %10, align 8
  %204 = getelementptr inbounds i32, i32* %202, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @fswap(i32 %201, i32 %205)
  %207 = load i64, i64* %9, align 8
  %208 = add nsw i64 %207, 1
  store i64 %208, i64* %9, align 8
  %209 = load i64, i64* %10, align 8
  %210 = add nsw i64 %209, -1
  store i64 %210, i64* %10, align 8
  br label %105

211:                                              ; preds = %196
  %212 = load i64, i64* %10, align 8
  %213 = load i64, i64* %9, align 8
  %214 = sub nsw i64 %213, 1
  %215 = icmp eq i64 %212, %214
  %216 = zext i1 %215 to i32
  %217 = call i32 @AssertD(i32 %216, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %218 = load i64, i64* %12, align 8
  %219 = load i64, i64* %11, align 8
  %220 = icmp slt i64 %218, %219
  br i1 %220, label %221, label %222

221:                                              ; preds = %211
  br label %34

222:                                              ; preds = %211
  %223 = load i64, i64* %11, align 8
  %224 = load i64, i64* %16, align 8
  %225 = sub nsw i64 %223, %224
  %226 = load i64, i64* %9, align 8
  %227 = load i64, i64* %11, align 8
  %228 = sub nsw i64 %226, %227
  %229 = call i64 @fmin(i64 %225, i64 %228)
  store i64 %229, i64* %13, align 8
  %230 = load i64, i64* %16, align 8
  %231 = load i64, i64* %9, align 8
  %232 = load i64, i64* %13, align 8
  %233 = sub nsw i64 %231, %232
  %234 = load i64, i64* %13, align 8
  %235 = call i32 @fvswap(i64 %230, i64 %233, i64 %234)
  %236 = load i64, i64* %17, align 8
  %237 = load i64, i64* %12, align 8
  %238 = sub nsw i64 %236, %237
  %239 = load i64, i64* %12, align 8
  %240 = load i64, i64* %10, align 8
  %241 = sub nsw i64 %239, %240
  %242 = call i64 @fmin(i64 %238, i64 %241)
  store i64 %242, i64* %14, align 8
  %243 = load i64, i64* %9, align 8
  %244 = load i64, i64* %17, align 8
  %245 = load i64, i64* %14, align 8
  %246 = sub nsw i64 %244, %245
  %247 = add nsw i64 %246, 1
  %248 = load i64, i64* %14, align 8
  %249 = call i32 @fvswap(i64 %243, i64 %247, i64 %248)
  %250 = load i64, i64* %16, align 8
  %251 = load i64, i64* %9, align 8
  %252 = add nsw i64 %250, %251
  %253 = load i64, i64* %11, align 8
  %254 = sub nsw i64 %252, %253
  %255 = sub nsw i64 %254, 1
  store i64 %255, i64* %13, align 8
  %256 = load i64, i64* %17, align 8
  %257 = load i64, i64* %12, align 8
  %258 = load i64, i64* %10, align 8
  %259 = sub nsw i64 %257, %258
  %260 = sub nsw i64 %256, %259
  %261 = add nsw i64 %260, 1
  store i64 %261, i64* %14, align 8
  %262 = load i64, i64* %13, align 8
  %263 = load i64, i64* %16, align 8
  %264 = sub nsw i64 %262, %263
  %265 = load i64, i64* %17, align 8
  %266 = load i64, i64* %14, align 8
  %267 = sub nsw i64 %265, %266
  %268 = icmp sgt i64 %264, %267
  br i1 %268, label %269, label %276

269:                                              ; preds = %222
  %270 = load i64, i64* %16, align 8
  %271 = load i64, i64* %13, align 8
  %272 = call i32 @fpush(i64 %270, i64 %271)
  %273 = load i64, i64* %14, align 8
  %274 = load i64, i64* %17, align 8
  %275 = call i32 @fpush(i64 %273, i64 %274)
  br label %283

276:                                              ; preds = %222
  %277 = load i64, i64* %14, align 8
  %278 = load i64, i64* %17, align 8
  %279 = call i32 @fpush(i64 %277, i64 %278)
  %280 = load i64, i64* %16, align 8
  %281 = load i64, i64* %13, align 8
  %282 = call i32 @fpush(i64 %280, i64 %281)
  br label %283

283:                                              ; preds = %276, %269
  br label %34

284:                                              ; preds = %34
  %285 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %285)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @fpush(i64, i64) #2

declare dso_local i32 @AssertH(i32, i32) #2

declare dso_local i32 @fpop(i64, i64) #2

declare dso_local i32 @fallbackSimpleSort(i32*, i32*, i64, i64) #2

declare dso_local i32 @fswap(i32, i32) #2

declare dso_local i32 @AssertD(i32, i8*) #2

declare dso_local i64 @fmin(i64, i64) #2

declare dso_local i32 @fvswap(i64, i64, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
