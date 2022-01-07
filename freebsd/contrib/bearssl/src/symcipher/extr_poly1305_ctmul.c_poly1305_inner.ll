; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_poly1305_ctmul.c_poly1305_inner.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_poly1305_ctmul.c_poly1305_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i8*, i64)* @poly1305_inner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @poly1305_inner(i32* %0, i32* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
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
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca [16 x i8], align 16
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %15, align 4
  %34 = load i32*, i32** %6, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %16, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 2
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %17, align 4
  %40 = load i32*, i32** %6, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 3
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %18, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 4
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %19, align 4
  %46 = load i32, i32* %16, align 4
  %47 = mul nsw i32 %46, 5
  store i32 %47, i32* %20, align 4
  %48 = load i32, i32* %17, align 4
  %49 = mul nsw i32 %48, 5
  store i32 %49, i32* %21, align 4
  %50 = load i32, i32* %18, align 4
  %51 = mul nsw i32 %50, 5
  store i32 %51, i32* %22, align 4
  %52 = load i32, i32* %19, align 4
  %53 = mul nsw i32 %52, 5
  store i32 %53, i32* %23, align 4
  %54 = load i32*, i32** %5, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %10, align 4
  %57 = load i32*, i32** %5, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %11, align 4
  %60 = load i32*, i32** %5, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 2
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %12, align 4
  %63 = load i32*, i32** %5, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 3
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %13, align 4
  %66 = load i32*, i32** %5, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 4
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %14, align 4
  %69 = load i8*, i8** %7, align 8
  store i8* %69, i8** %9, align 8
  br label %70

70:                                               ; preds = %84, %4
  %71 = load i64, i64* %8, align 8
  %72 = icmp ugt i64 %71, 0
  br i1 %72, label %73, label %259

73:                                               ; preds = %70
  %74 = load i64, i64* %8, align 8
  %75 = icmp ult i64 %74, 16
  br i1 %75, label %76, label %84

76:                                               ; preds = %73
  %77 = getelementptr inbounds [16 x i8], [16 x i8]* %30, i64 0, i64 0
  %78 = call i32 @memset(i8* %77, i32 0, i32 16)
  %79 = getelementptr inbounds [16 x i8], [16 x i8]* %30, i64 0, i64 0
  %80 = load i8*, i8** %9, align 8
  %81 = load i64, i64* %8, align 8
  %82 = call i32 @memcpy(i8* %79, i8* %80, i64 %81)
  %83 = getelementptr inbounds [16 x i8], [16 x i8]* %30, i64 0, i64 0
  store i8* %83, i8** %9, align 8
  store i64 16, i64* %8, align 8
  br label %84

84:                                               ; preds = %76, %73
  %85 = load i8*, i8** %9, align 8
  %86 = call i32 @br_dec32le(i8* %85)
  %87 = and i32 %86, 67108863
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 %88, %87
  store i32 %89, i32* %10, align 4
  %90 = load i8*, i8** %9, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 3
  %92 = call i32 @br_dec32le(i8* %91)
  %93 = ashr i32 %92, 2
  %94 = and i32 %93, 67108863
  %95 = load i32, i32* %11, align 4
  %96 = add nsw i32 %95, %94
  store i32 %96, i32* %11, align 4
  %97 = load i8*, i8** %9, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 6
  %99 = call i32 @br_dec32le(i8* %98)
  %100 = ashr i32 %99, 4
  %101 = and i32 %100, 67108863
  %102 = load i32, i32* %12, align 4
  %103 = add nsw i32 %102, %101
  store i32 %103, i32* %12, align 4
  %104 = load i8*, i8** %9, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 9
  %106 = call i32 @br_dec32le(i8* %105)
  %107 = ashr i32 %106, 6
  %108 = and i32 %107, 67108863
  %109 = load i32, i32* %13, align 4
  %110 = add nsw i32 %109, %108
  store i32 %110, i32* %13, align 4
  %111 = load i8*, i8** %9, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 12
  %113 = call i32 @br_dec32le(i8* %112)
  %114 = ashr i32 %113, 8
  %115 = or i32 %114, 16777216
  %116 = load i32, i32* %14, align 4
  %117 = add nsw i32 %116, %115
  store i32 %117, i32* %14, align 4
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* %15, align 4
  %120 = mul nsw i32 %118, %119
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* %23, align 4
  %123 = mul nsw i32 %121, %122
  %124 = add nsw i32 %120, %123
  %125 = load i32, i32* %12, align 4
  %126 = load i32, i32* %22, align 4
  %127 = mul nsw i32 %125, %126
  %128 = add nsw i32 %124, %127
  %129 = load i32, i32* %13, align 4
  %130 = load i32, i32* %21, align 4
  %131 = mul nsw i32 %129, %130
  %132 = add nsw i32 %128, %131
  %133 = load i32, i32* %14, align 4
  %134 = load i32, i32* %20, align 4
  %135 = mul nsw i32 %133, %134
  %136 = add nsw i32 %132, %135
  store i32 %136, i32* %24, align 4
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* %16, align 4
  %139 = mul nsw i32 %137, %138
  %140 = load i32, i32* %11, align 4
  %141 = load i32, i32* %15, align 4
  %142 = mul nsw i32 %140, %141
  %143 = add nsw i32 %139, %142
  %144 = load i32, i32* %12, align 4
  %145 = load i32, i32* %23, align 4
  %146 = mul nsw i32 %144, %145
  %147 = add nsw i32 %143, %146
  %148 = load i32, i32* %13, align 4
  %149 = load i32, i32* %22, align 4
  %150 = mul nsw i32 %148, %149
  %151 = add nsw i32 %147, %150
  %152 = load i32, i32* %14, align 4
  %153 = load i32, i32* %21, align 4
  %154 = mul nsw i32 %152, %153
  %155 = add nsw i32 %151, %154
  store i32 %155, i32* %25, align 4
  %156 = load i32, i32* %10, align 4
  %157 = load i32, i32* %17, align 4
  %158 = mul nsw i32 %156, %157
  %159 = load i32, i32* %11, align 4
  %160 = load i32, i32* %16, align 4
  %161 = mul nsw i32 %159, %160
  %162 = add nsw i32 %158, %161
  %163 = load i32, i32* %12, align 4
  %164 = load i32, i32* %15, align 4
  %165 = mul nsw i32 %163, %164
  %166 = add nsw i32 %162, %165
  %167 = load i32, i32* %13, align 4
  %168 = load i32, i32* %23, align 4
  %169 = mul nsw i32 %167, %168
  %170 = add nsw i32 %166, %169
  %171 = load i32, i32* %14, align 4
  %172 = load i32, i32* %22, align 4
  %173 = mul nsw i32 %171, %172
  %174 = add nsw i32 %170, %173
  store i32 %174, i32* %26, align 4
  %175 = load i32, i32* %10, align 4
  %176 = load i32, i32* %18, align 4
  %177 = mul nsw i32 %175, %176
  %178 = load i32, i32* %11, align 4
  %179 = load i32, i32* %17, align 4
  %180 = mul nsw i32 %178, %179
  %181 = add nsw i32 %177, %180
  %182 = load i32, i32* %12, align 4
  %183 = load i32, i32* %16, align 4
  %184 = mul nsw i32 %182, %183
  %185 = add nsw i32 %181, %184
  %186 = load i32, i32* %13, align 4
  %187 = load i32, i32* %15, align 4
  %188 = mul nsw i32 %186, %187
  %189 = add nsw i32 %185, %188
  %190 = load i32, i32* %14, align 4
  %191 = load i32, i32* %23, align 4
  %192 = mul nsw i32 %190, %191
  %193 = add nsw i32 %189, %192
  store i32 %193, i32* %27, align 4
  %194 = load i32, i32* %10, align 4
  %195 = load i32, i32* %19, align 4
  %196 = mul nsw i32 %194, %195
  %197 = load i32, i32* %11, align 4
  %198 = load i32, i32* %18, align 4
  %199 = mul nsw i32 %197, %198
  %200 = add nsw i32 %196, %199
  %201 = load i32, i32* %12, align 4
  %202 = load i32, i32* %17, align 4
  %203 = mul nsw i32 %201, %202
  %204 = add nsw i32 %200, %203
  %205 = load i32, i32* %13, align 4
  %206 = load i32, i32* %16, align 4
  %207 = mul nsw i32 %205, %206
  %208 = add nsw i32 %204, %207
  %209 = load i32, i32* %14, align 4
  %210 = load i32, i32* %15, align 4
  %211 = mul nsw i32 %209, %210
  %212 = add nsw i32 %208, %211
  store i32 %212, i32* %28, align 4
  %213 = load i32, i32* %24, align 4
  %214 = ashr i32 %213, 26
  store i32 %214, i32* %29, align 4
  %215 = load i32, i32* %24, align 4
  %216 = and i32 %215, 67108863
  store i32 %216, i32* %10, align 4
  %217 = load i32, i32* %29, align 4
  %218 = load i32, i32* %25, align 4
  %219 = add nsw i32 %218, %217
  store i32 %219, i32* %25, align 4
  %220 = load i32, i32* %25, align 4
  %221 = ashr i32 %220, 26
  store i32 %221, i32* %29, align 4
  %222 = load i32, i32* %25, align 4
  %223 = and i32 %222, 67108863
  store i32 %223, i32* %11, align 4
  %224 = load i32, i32* %29, align 4
  %225 = load i32, i32* %26, align 4
  %226 = add nsw i32 %225, %224
  store i32 %226, i32* %26, align 4
  %227 = load i32, i32* %26, align 4
  %228 = ashr i32 %227, 26
  store i32 %228, i32* %29, align 4
  %229 = load i32, i32* %26, align 4
  %230 = and i32 %229, 67108863
  store i32 %230, i32* %12, align 4
  %231 = load i32, i32* %29, align 4
  %232 = load i32, i32* %27, align 4
  %233 = add nsw i32 %232, %231
  store i32 %233, i32* %27, align 4
  %234 = load i32, i32* %27, align 4
  %235 = ashr i32 %234, 26
  store i32 %235, i32* %29, align 4
  %236 = load i32, i32* %27, align 4
  %237 = and i32 %236, 67108863
  store i32 %237, i32* %13, align 4
  %238 = load i32, i32* %29, align 4
  %239 = load i32, i32* %28, align 4
  %240 = add nsw i32 %239, %238
  store i32 %240, i32* %28, align 4
  %241 = load i32, i32* %28, align 4
  %242 = ashr i32 %241, 26
  store i32 %242, i32* %29, align 4
  %243 = load i32, i32* %28, align 4
  %244 = and i32 %243, 67108863
  store i32 %244, i32* %14, align 4
  %245 = load i32, i32* %29, align 4
  %246 = mul nsw i32 %245, 5
  %247 = load i32, i32* %10, align 4
  %248 = add nsw i32 %247, %246
  store i32 %248, i32* %10, align 4
  %249 = load i32, i32* %10, align 4
  %250 = ashr i32 %249, 26
  %251 = load i32, i32* %11, align 4
  %252 = add nsw i32 %251, %250
  store i32 %252, i32* %11, align 4
  %253 = load i32, i32* %10, align 4
  %254 = and i32 %253, 67108863
  store i32 %254, i32* %10, align 4
  %255 = load i8*, i8** %9, align 8
  %256 = getelementptr inbounds i8, i8* %255, i64 16
  store i8* %256, i8** %9, align 8
  %257 = load i64, i64* %8, align 8
  %258 = sub i64 %257, 16
  store i64 %258, i64* %8, align 8
  br label %70

259:                                              ; preds = %70
  %260 = load i32, i32* %10, align 4
  %261 = load i32*, i32** %5, align 8
  %262 = getelementptr inbounds i32, i32* %261, i64 0
  store i32 %260, i32* %262, align 4
  %263 = load i32, i32* %11, align 4
  %264 = load i32*, i32** %5, align 8
  %265 = getelementptr inbounds i32, i32* %264, i64 1
  store i32 %263, i32* %265, align 4
  %266 = load i32, i32* %12, align 4
  %267 = load i32*, i32** %5, align 8
  %268 = getelementptr inbounds i32, i32* %267, i64 2
  store i32 %266, i32* %268, align 4
  %269 = load i32, i32* %13, align 4
  %270 = load i32*, i32** %5, align 8
  %271 = getelementptr inbounds i32, i32* %270, i64 3
  store i32 %269, i32* %271, align 4
  %272 = load i32, i32* %14, align 4
  %273 = load i32*, i32** %5, align 8
  %274 = getelementptr inbounds i32, i32* %273, i64 4
  store i32 %272, i32* %274, align 4
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @br_dec32le(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
