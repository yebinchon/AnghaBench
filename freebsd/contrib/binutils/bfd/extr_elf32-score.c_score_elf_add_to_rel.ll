; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-score.c_score_elf_add_to_rel.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-score.c_score_elf_add_to_rel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.TYPE_3__*, i32)* @score_elf_add_to_rel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @score_elf_add_to_rel(i32* %0, i32* %1, %struct.TYPE_3__* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  store i32 %3, i32* %8, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %12, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = call i8* @bfd_get_32(i32* %21, i32* %22)
  %24 = ptrtoint i8* %23 to i32
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %25, %28
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 1
  %35 = ashr i32 %34, 1
  %36 = and i32 %30, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %4
  store i32 -1, i32* %17, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %17, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %17, align 4
  %45 = load i32, i32* %17, align 4
  %46 = load i32, i32* %9, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %9, align 4
  br label %48

48:                                               ; preds = %38, %4
  %49 = load i64, i64* %12, align 8
  switch i64 %49, label %281 [
    i64 128, label %50
    i64 130, label %94
    i64 129, label %95
    i64 131, label %171
    i64 133, label %215
    i64 132, label %248
  ]

50:                                               ; preds = %48
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = and i32 %51, %54
  %56 = and i32 %55, 67043328
  %57 = ashr i32 %56, 6
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = and i32 %58, %61
  %63 = and i32 %62, 1023
  %64 = or i32 %57, %63
  %65 = sext i32 %64 to i64
  store i64 %65, i64* %11, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = load i64, i64* %11, align 8
  %69 = add i64 %68, %67
  store i64 %69, i64* %11, align 8
  %70 = load i32, i32* %10, align 4
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = xor i32 %73, -1
  %75 = and i32 %70, %74
  %76 = sext i32 %75 to i64
  %77 = load i64, i64* %11, align 8
  %78 = shl i64 %77, 6
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = and i64 %78, %82
  %84 = and i64 %83, 67043328
  %85 = or i64 %76, %84
  %86 = load i64, i64* %11, align 8
  %87 = and i64 %86, 1023
  %88 = or i64 %85, %87
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %10, align 4
  %90 = load i32*, i32** %5, align 8
  %91 = load i32, i32* %10, align 4
  %92 = load i32*, i32** %6, align 8
  %93 = call i32 @bfd_put_32(i32* %90, i32 %91, i32* %92)
  br label %304

94:                                               ; preds = %48
  br label %304

95:                                               ; preds = %48
  %96 = load i32*, i32** %5, align 8
  %97 = load i32*, i32** %6, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 -4
  %99 = call i8* @bfd_get_32(i32* %96, i32* %98)
  %100 = ptrtoint i8* %99 to i64
  store i64 %100, i64* %13, align 8
  %101 = load i64, i64* %13, align 8
  %102 = lshr i64 %101, 16
  %103 = and i64 %102, 3
  %104 = shl i64 %103, 15
  %105 = load i64, i64* %13, align 8
  %106 = and i64 %105, 32767
  %107 = or i64 %104, %106
  %108 = lshr i64 %107, 1
  store i64 %108, i64* %14, align 8
  %109 = load i32, i32* %10, align 4
  %110 = ashr i32 %109, 16
  %111 = and i32 %110, 3
  %112 = shl i32 %111, 15
  %113 = load i32, i32* %10, align 4
  %114 = and i32 %113, 32767
  %115 = or i32 %112, %114
  %116 = ashr i32 %115, 1
  %117 = sext i32 %116 to i64
  store i64 %117, i64* %11, align 8
  %118 = load i64, i64* %14, align 8
  %119 = shl i64 %118, 16
  %120 = load i64, i64* %11, align 8
  %121 = and i64 %120, 65535
  %122 = or i64 %119, %121
  store i64 %122, i64* %11, align 8
  %123 = load i32, i32* %8, align 4
  %124 = sext i32 %123 to i64
  %125 = load i64, i64* %11, align 8
  %126 = add i64 %124, %125
  store i64 %126, i64* %16, align 8
  %127 = load i64, i64* %16, align 8
  %128 = lshr i64 %127, 16
  %129 = shl i64 %128, 1
  store i64 %129, i64* %14, align 8
  %130 = load i64, i64* %13, align 8
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = xor i64 %133, -1
  %135 = and i64 %130, %134
  %136 = load i64, i64* %14, align 8
  %137 = and i64 %136, 32767
  %138 = or i64 %135, %137
  %139 = load i64, i64* %14, align 8
  %140 = shl i64 %139, 1
  %141 = and i64 %140, 196608
  %142 = or i64 %138, %141
  store i64 %142, i64* %15, align 8
  %143 = load i32*, i32** %5, align 8
  %144 = load i64, i64* %15, align 8
  %145 = trunc i64 %144 to i32
  %146 = load i32*, i32** %6, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 -4
  %148 = call i32 @bfd_put_32(i32* %143, i32 %145, i32* %147)
  %149 = load i64, i64* %16, align 8
  %150 = and i64 %149, 65535
  %151 = shl i64 %150, 1
  store i64 %151, i64* %11, align 8
  %152 = load i32, i32* %10, align 4
  %153 = sext i32 %152 to i64
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = xor i64 %156, -1
  %158 = and i64 %153, %157
  %159 = load i64, i64* %11, align 8
  %160 = and i64 %159, 32767
  %161 = or i64 %158, %160
  %162 = load i64, i64* %11, align 8
  %163 = shl i64 %162, 1
  %164 = and i64 %163, 196608
  %165 = or i64 %161, %164
  %166 = trunc i64 %165 to i32
  store i32 %166, i32* %10, align 4
  %167 = load i32*, i32** %5, align 8
  %168 = load i32, i32* %10, align 4
  %169 = load i32*, i32** %6, align 8
  %170 = call i32 @bfd_put_32(i32* %167, i32 %168, i32* %169)
  br label %304

171:                                              ; preds = %48
  %172 = load i32, i32* %10, align 4
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = and i32 %172, %175
  %177 = ashr i32 %176, 1
  %178 = and i32 %177, 33521664
  %179 = load i32, i32* %10, align 4
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = and i32 %179, %182
  %184 = and i32 %183, 32767
  %185 = or i32 %178, %184
  %186 = sext i32 %185 to i64
  store i64 %186, i64* %11, align 8
  %187 = load i32, i32* %8, align 4
  %188 = sext i32 %187 to i64
  %189 = load i64, i64* %11, align 8
  %190 = add i64 %189, %188
  store i64 %190, i64* %11, align 8
  %191 = load i32, i32* %10, align 4
  %192 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = xor i32 %194, -1
  %196 = and i32 %191, %195
  %197 = sext i32 %196 to i64
  %198 = load i64, i64* %11, align 8
  %199 = shl i64 %198, 1
  %200 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = sext i32 %202 to i64
  %204 = and i64 %199, %203
  %205 = and i64 %204, 67043328
  %206 = or i64 %197, %205
  %207 = load i64, i64* %11, align 8
  %208 = and i64 %207, 32767
  %209 = or i64 %206, %208
  %210 = trunc i64 %209 to i32
  store i32 %210, i32* %10, align 4
  %211 = load i32*, i32** %5, align 8
  %212 = load i32, i32* %10, align 4
  %213 = load i32*, i32** %6, align 8
  %214 = call i32 @bfd_put_32(i32* %211, i32 %212, i32* %213)
  br label %304

215:                                              ; preds = %48
  %216 = load i32*, i32** %5, align 8
  %217 = load i32*, i32** %6, align 8
  %218 = call i32 @bfd_get_16(i32* %216, i32* %217)
  store i32 %218, i32* %10, align 4
  %219 = load i32, i32* %10, align 4
  %220 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 8
  %223 = and i32 %219, %222
  %224 = sext i32 %223 to i64
  store i64 %224, i64* %11, align 8
  %225 = load i32, i32* %8, align 4
  %226 = sext i32 %225 to i64
  %227 = load i64, i64* %11, align 8
  %228 = add i64 %227, %226
  store i64 %228, i64* %11, align 8
  %229 = load i32, i32* %10, align 4
  %230 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 8
  %233 = xor i32 %232, -1
  %234 = and i32 %229, %233
  %235 = sext i32 %234 to i64
  %236 = load i64, i64* %11, align 8
  %237 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %238 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 8
  %240 = sext i32 %239 to i64
  %241 = and i64 %236, %240
  %242 = or i64 %235, %241
  %243 = trunc i64 %242 to i32
  store i32 %243, i32* %10, align 4
  %244 = load i32*, i32** %5, align 8
  %245 = load i32, i32* %10, align 4
  %246 = load i32*, i32** %6, align 8
  %247 = call i32 @bfd_put_16(i32* %244, i32 %245, i32* %246)
  br label %304

248:                                              ; preds = %48
  %249 = load i32*, i32** %5, align 8
  %250 = load i32*, i32** %6, align 8
  %251 = call i32 @bfd_get_16(i32* %249, i32* %250)
  store i32 %251, i32* %10, align 4
  %252 = load i32, i32* %10, align 4
  %253 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %254 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 8
  %256 = and i32 %252, %255
  %257 = load i32, i32* %8, align 4
  %258 = ashr i32 %257, 1
  %259 = and i32 %258, 255
  %260 = add nsw i32 %256, %259
  %261 = sext i32 %260 to i64
  store i64 %261, i64* %11, align 8
  %262 = load i32, i32* %10, align 4
  %263 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %264 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 8
  %266 = xor i32 %265, -1
  %267 = and i32 %262, %266
  %268 = sext i32 %267 to i64
  %269 = load i64, i64* %11, align 8
  %270 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %271 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 8
  %273 = sext i32 %272 to i64
  %274 = and i64 %269, %273
  %275 = or i64 %268, %274
  %276 = trunc i64 %275 to i32
  store i32 %276, i32* %10, align 4
  %277 = load i32*, i32** %5, align 8
  %278 = load i32, i32* %10, align 4
  %279 = load i32*, i32** %6, align 8
  %280 = call i32 @bfd_put_16(i32* %277, i32 %278, i32* %279)
  br label %304

281:                                              ; preds = %48
  %282 = load i32, i32* %8, align 4
  %283 = load i32, i32* %9, align 4
  %284 = add nsw i32 %283, %282
  store i32 %284, i32* %9, align 4
  %285 = load i32, i32* %10, align 4
  %286 = sext i32 %285 to i64
  %287 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %288 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %287, i32 0, i32 2
  %289 = load i64, i64* %288, align 8
  %290 = xor i64 %289, -1
  %291 = and i64 %286, %290
  %292 = load i32, i32* %9, align 4
  %293 = sext i32 %292 to i64
  %294 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %295 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %294, i32 0, i32 2
  %296 = load i64, i64* %295, align 8
  %297 = and i64 %293, %296
  %298 = or i64 %291, %297
  %299 = trunc i64 %298 to i32
  store i32 %299, i32* %10, align 4
  %300 = load i32*, i32** %5, align 8
  %301 = load i32, i32* %10, align 4
  %302 = load i32*, i32** %6, align 8
  %303 = call i32 @bfd_put_32(i32* %300, i32 %301, i32* %302)
  br label %304

304:                                              ; preds = %281, %248, %215, %171, %95, %94, %50
  ret void
}

declare dso_local i8* @bfd_get_32(i32*, i32*) #1

declare dso_local i32 @bfd_put_32(i32*, i32, i32*) #1

declare dso_local i32 @bfd_get_16(i32*, i32*) #1

declare dso_local i32 @bfd_put_16(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
