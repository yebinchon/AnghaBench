; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-spu.c_find_function_stack_adjust.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-spu.c_find_function_stack_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i64)* @find_function_stack_adjust to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_function_stack_adjust(%struct.TYPE_4__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca [128 x i32], align 16
  %8 = alloca [4 x i8], align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = getelementptr inbounds [128 x i32], [128 x i32]* %7, i64 0, i64 0
  %14 = call i32 @memset(i32* %13, i32 0, i32 512)
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %276, %2
  %16 = load i64, i64* %5, align 8
  %17 = add nsw i64 %16, 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sle i64 %17, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 32
  br label %25

25:                                               ; preds = %22, %15
  %26 = phi i1 [ false, %15 ], [ %24, %22 ]
  br i1 %26, label %27, label %279

27:                                               ; preds = %25
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %32 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @bfd_get_section_contents(i32 %30, %struct.TYPE_4__* %31, i8* %32, i64 %33, i32 4)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %27
  br label %279

37:                                               ; preds = %27
  %38 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = icmp eq i32 %40, 36
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %276

43:                                               ; preds = %37
  %44 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 3
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = and i32 %46, 127
  store i32 %47, i32* %9, align 4
  %48 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 2
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = and i32 %50, 63
  %52 = shl i32 %51, 1
  %53 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 3
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = ashr i32 %55, 7
  %57 = or i32 %52, %56
  store i32 %57, i32* %10, align 4
  %58 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 1
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = shl i32 %60, 9
  %62 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 2
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = shl i32 %64, 1
  %66 = or i32 %61, %65
  %67 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 3
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = ashr i32 %69, 7
  %71 = or i32 %66, %70
  store i32 %71, i32* %11, align 4
  %72 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = icmp eq i32 %74, 28
  br i1 %75, label %76, label %103

76:                                               ; preds = %43
  %77 = load i32, i32* %11, align 4
  %78 = ashr i32 %77, 7
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = xor i32 %79, 512
  %81 = sub nsw i32 %80, 512
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [128 x i32], [128 x i32]* %7, i64 0, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %11, align 4
  %87 = add nsw i32 %85, %86
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [128 x i32], [128 x i32]* %7, i64 0, i64 %89
  store i32 %87, i32* %90, align 4
  %91 = load i32, i32* %9, align 4
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %93, label %102

93:                                               ; preds = %76
  %94 = load i32, i32* %11, align 4
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  br label %279

97:                                               ; preds = %93
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [128 x i32], [128 x i32]* %7, i64 0, i64 %99
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %3, align 4
  br label %280

102:                                              ; preds = %76
  br label %272

103:                                              ; preds = %43
  %104 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %105 = load i8, i8* %104, align 1
  %106 = zext i8 %105 to i32
  %107 = icmp eq i32 %106, 24
  br i1 %107, label %108, label %146

108:                                              ; preds = %103
  %109 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 1
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  %112 = and i32 %111, 224
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %146

114:                                              ; preds = %108
  %115 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 1
  %116 = load i8, i8* %115, align 1
  %117 = zext i8 %116 to i32
  %118 = and i32 %117, 31
  %119 = shl i32 %118, 2
  %120 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 2
  %121 = load i8, i8* %120, align 1
  %122 = zext i8 %121 to i32
  %123 = and i32 %122, 192
  %124 = ashr i32 %123, 6
  %125 = or i32 %119, %124
  store i32 %125, i32* %12, align 4
  %126 = load i32, i32* %10, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [128 x i32], [128 x i32]* %7, i64 0, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %12, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [128 x i32], [128 x i32]* %7, i64 0, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 %129, %133
  %135 = load i32, i32* %9, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [128 x i32], [128 x i32]* %7, i64 0, i64 %136
  store i32 %134, i32* %137, align 4
  %138 = load i32, i32* %9, align 4
  %139 = icmp eq i32 %138, 1
  br i1 %139, label %140, label %145

140:                                              ; preds = %114
  %141 = load i32, i32* %9, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [128 x i32], [128 x i32]* %7, i64 0, i64 %142
  %144 = load i32, i32* %143, align 4
  store i32 %144, i32* %3, align 4
  br label %280

145:                                              ; preds = %114
  br label %271

146:                                              ; preds = %108, %103
  %147 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %148 = load i8, i8* %147, align 1
  %149 = zext i8 %148 to i32
  %150 = and i32 %149, 252
  %151 = icmp eq i32 %150, 64
  br i1 %151, label %152, label %199

152:                                              ; preds = %146
  %153 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %154 = load i8, i8* %153, align 1
  %155 = zext i8 %154 to i32
  %156 = icmp sge i32 %155, 66
  br i1 %156, label %157, label %165

157:                                              ; preds = %152
  %158 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %159 = load i8, i8* %158, align 1
  %160 = zext i8 %159 to i32
  %161 = and i32 %160, 1
  %162 = shl i32 %161, 17
  %163 = load i32, i32* %11, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %11, align 4
  br label %194

165:                                              ; preds = %152
  %166 = load i32, i32* %11, align 4
  %167 = and i32 %166, 65535
  store i32 %167, i32* %11, align 4
  %168 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %169 = load i8, i8* %168, align 1
  %170 = zext i8 %169 to i32
  %171 = icmp eq i32 %170, 64
  br i1 %171, label %172, label %183

172:                                              ; preds = %165
  %173 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 1
  %174 = load i8, i8* %173, align 1
  %175 = zext i8 %174 to i32
  %176 = and i32 %175, 128
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %172
  br label %273

179:                                              ; preds = %172
  %180 = load i32, i32* %11, align 4
  %181 = xor i32 %180, 32768
  %182 = sub nsw i32 %181, 32768
  store i32 %182, i32* %11, align 4
  br label %193

183:                                              ; preds = %165
  %184 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 1
  %185 = load i8, i8* %184, align 1
  %186 = zext i8 %185 to i32
  %187 = and i32 %186, 128
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %183
  %190 = load i32, i32* %11, align 4
  %191 = shl i32 %190, 16
  store i32 %191, i32* %11, align 4
  br label %192

192:                                              ; preds = %189, %183
  br label %193

193:                                              ; preds = %192, %179
  br label %194

194:                                              ; preds = %193, %157
  %195 = load i32, i32* %11, align 4
  %196 = load i32, i32* %9, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [128 x i32], [128 x i32]* %7, i64 0, i64 %197
  store i32 %195, i32* %198, align 4
  br label %276

199:                                              ; preds = %146
  %200 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %201 = load i8, i8* %200, align 1
  %202 = zext i8 %201 to i32
  %203 = icmp eq i32 %202, 96
  br i1 %203, label %204, label %218

204:                                              ; preds = %199
  %205 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 1
  %206 = load i8, i8* %205, align 1
  %207 = zext i8 %206 to i32
  %208 = and i32 %207, 128
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %218

210:                                              ; preds = %204
  %211 = load i32, i32* %11, align 4
  %212 = and i32 %211, 65535
  %213 = load i32, i32* %9, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds [128 x i32], [128 x i32]* %7, i64 0, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = or i32 %216, %212
  store i32 %217, i32* %215, align 4
  br label %276

218:                                              ; preds = %204, %199
  %219 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %220 = load i8, i8* %219, align 1
  %221 = zext i8 %220 to i32
  %222 = icmp eq i32 %221, 4
  br i1 %222, label %223, label %238

223:                                              ; preds = %218
  %224 = load i32, i32* %11, align 4
  %225 = ashr i32 %224, 7
  store i32 %225, i32* %11, align 4
  %226 = load i32, i32* %11, align 4
  %227 = xor i32 %226, 512
  %228 = sub nsw i32 %227, 512
  store i32 %228, i32* %11, align 4
  %229 = load i32, i32* %10, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds [128 x i32], [128 x i32]* %7, i64 0, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* %11, align 4
  %234 = or i32 %232, %233
  %235 = load i32, i32* %9, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds [128 x i32], [128 x i32]* %7, i64 0, i64 %236
  store i32 %234, i32* %237, align 4
  br label %276

238:                                              ; preds = %218
  %239 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %240 = load i8, i8* %239, align 1
  %241 = zext i8 %240 to i32
  %242 = icmp eq i32 %241, 51
  br i1 %242, label %243, label %246

243:                                              ; preds = %238
  %244 = load i32, i32* %11, align 4
  %245 = icmp eq i32 %244, 1
  br i1 %245, label %257, label %246

246:                                              ; preds = %243, %238
  %247 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %248 = load i8, i8* %247, align 1
  %249 = zext i8 %248 to i32
  %250 = icmp eq i32 %249, 8
  br i1 %250, label %251, label %261

251:                                              ; preds = %246
  %252 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 1
  %253 = load i8, i8* %252, align 1
  %254 = zext i8 %253 to i32
  %255 = and i32 %254, 224
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %257, label %261

257:                                              ; preds = %251, %243
  %258 = load i32, i32* %9, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds [128 x i32], [128 x i32]* %7, i64 0, i64 %259
  store i32 0, i32* %260, align 4
  br label %276

261:                                              ; preds = %251, %246
  %262 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %263 = call i64 @is_branch(i8* %262)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %266

265:                                              ; preds = %261
  br label %279

266:                                              ; preds = %261
  br label %267

267:                                              ; preds = %266
  br label %268

268:                                              ; preds = %267
  br label %269

269:                                              ; preds = %268
  br label %270

270:                                              ; preds = %269
  br label %271

271:                                              ; preds = %270, %145
  br label %272

272:                                              ; preds = %271, %102
  br label %273

273:                                              ; preds = %272, %178
  %274 = load i32, i32* %6, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %6, align 4
  br label %276

276:                                              ; preds = %273, %257, %223, %210, %194, %42
  %277 = load i64, i64* %5, align 8
  %278 = add nsw i64 %277, 4
  store i64 %278, i64* %5, align 8
  br label %15

279:                                              ; preds = %265, %96, %36, %25
  store i32 0, i32* %3, align 4
  br label %280

280:                                              ; preds = %279, %140, %97
  %281 = load i32, i32* %3, align 4
  ret i32 %281
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @bfd_get_section_contents(i32, %struct.TYPE_4__*, i8*, i64, i32) #1

declare dso_local i64 @is_branch(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
