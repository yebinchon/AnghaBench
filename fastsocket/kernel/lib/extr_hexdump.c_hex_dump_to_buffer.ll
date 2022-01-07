; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_hexdump.c_hex_dump_to_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_hexdump.c_hex_dump_to_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"%s%16.16llx\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%s%8.8x\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%s%4.4x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hex_dump_to_buffer(i8* %0, i64 %1, i32 %2, i32 %3, i8* %4, i64 %5, i32 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8, align 1
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64*, align 8
  %25 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  store i32 %6, i32* %14, align 4
  %26 = load i8*, i8** %8, align 8
  store i8* %26, i8** %15, align 8
  store i32 0, i32* %18, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 16
  br i1 %28, label %29, label %33

29:                                               ; preds = %7
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 32
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 16, i32* %10, align 4
  br label %33

33:                                               ; preds = %32, %29, %7
  %34 = load i64, i64* %9, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  br label %300

37:                                               ; preds = %33
  %38 = load i64, i64* %9, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = icmp ugt i64 %38, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %9, align 8
  br label %45

45:                                               ; preds = %42, %37
  %46 = load i64, i64* %9, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = urem i64 %46, %48
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store i32 1, i32* %11, align 4
  br label %52

52:                                               ; preds = %51, %45
  %53 = load i32, i32* %11, align 4
  switch i32 %53, label %174 [
    i32 8, label %54
    i32 4, label %94
    i32 2, label %134
  ]

54:                                               ; preds = %52
  %55 = load i8*, i8** %8, align 8
  %56 = bitcast i8* %55 to i64*
  store i64* %56, i64** %20, align 8
  %57 = load i64, i64* %9, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = udiv i64 %57, %59
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %21, align 4
  store i32 0, i32* %17, align 4
  br label %62

62:                                               ; preds = %87, %54
  %63 = load i32, i32* %17, align 4
  %64 = load i32, i32* %21, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %90

66:                                               ; preds = %62
  %67 = load i8*, i8** %12, align 8
  %68 = load i32, i32* %18, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = load i64, i64* %13, align 8
  %72 = load i32, i32* %18, align 4
  %73 = sext i32 %72 to i64
  %74 = sub i64 %71, %73
  %75 = load i32, i32* %17, align 4
  %76 = icmp ne i32 %75, 0
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %79 = load i64*, i64** %20, align 8
  %80 = load i32, i32* %17, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @scnprintf(i8* %70, i64 %74, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %78, i64 %83)
  %85 = load i32, i32* %18, align 4
  %86 = add nsw i32 %85, %84
  store i32 %86, i32* %18, align 4
  br label %87

87:                                               ; preds = %66
  %88 = load i32, i32* %17, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %17, align 4
  br label %62

90:                                               ; preds = %62
  %91 = load i32, i32* %21, align 4
  %92 = mul nsw i32 17, %91
  %93 = add nsw i32 %92, 2
  store i32 %93, i32* %19, align 4
  br label %226

94:                                               ; preds = %52
  %95 = load i8*, i8** %8, align 8
  %96 = bitcast i8* %95 to i64*
  store i64* %96, i64** %22, align 8
  %97 = load i64, i64* %9, align 8
  %98 = load i32, i32* %11, align 4
  %99 = sext i32 %98 to i64
  %100 = udiv i64 %97, %99
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %23, align 4
  store i32 0, i32* %17, align 4
  br label %102

102:                                              ; preds = %127, %94
  %103 = load i32, i32* %17, align 4
  %104 = load i32, i32* %23, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %130

106:                                              ; preds = %102
  %107 = load i8*, i8** %12, align 8
  %108 = load i32, i32* %18, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %107, i64 %109
  %111 = load i64, i64* %13, align 8
  %112 = load i32, i32* %18, align 4
  %113 = sext i32 %112 to i64
  %114 = sub i64 %111, %113
  %115 = load i32, i32* %17, align 4
  %116 = icmp ne i32 %115, 0
  %117 = zext i1 %116 to i64
  %118 = select i1 %116, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %119 = load i64*, i64** %22, align 8
  %120 = load i32, i32* %17, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i64, i64* %119, i64 %121
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @scnprintf(i8* %110, i64 %114, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %118, i64 %123)
  %125 = load i32, i32* %18, align 4
  %126 = add nsw i32 %125, %124
  store i32 %126, i32* %18, align 4
  br label %127

127:                                              ; preds = %106
  %128 = load i32, i32* %17, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %17, align 4
  br label %102

130:                                              ; preds = %102
  %131 = load i32, i32* %23, align 4
  %132 = mul nsw i32 9, %131
  %133 = add nsw i32 %132, 2
  store i32 %133, i32* %19, align 4
  br label %226

134:                                              ; preds = %52
  %135 = load i8*, i8** %8, align 8
  %136 = bitcast i8* %135 to i64*
  store i64* %136, i64** %24, align 8
  %137 = load i64, i64* %9, align 8
  %138 = load i32, i32* %11, align 4
  %139 = sext i32 %138 to i64
  %140 = udiv i64 %137, %139
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %25, align 4
  store i32 0, i32* %17, align 4
  br label %142

142:                                              ; preds = %167, %134
  %143 = load i32, i32* %17, align 4
  %144 = load i32, i32* %25, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %170

146:                                              ; preds = %142
  %147 = load i8*, i8** %12, align 8
  %148 = load i32, i32* %18, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8, i8* %147, i64 %149
  %151 = load i64, i64* %13, align 8
  %152 = load i32, i32* %18, align 4
  %153 = sext i32 %152 to i64
  %154 = sub i64 %151, %153
  %155 = load i32, i32* %17, align 4
  %156 = icmp ne i32 %155, 0
  %157 = zext i1 %156 to i64
  %158 = select i1 %156, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %159 = load i64*, i64** %24, align 8
  %160 = load i32, i32* %17, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i64, i64* %159, i64 %161
  %163 = load i64, i64* %162, align 8
  %164 = call i32 @scnprintf(i8* %150, i64 %154, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %158, i64 %163)
  %165 = load i32, i32* %18, align 4
  %166 = add nsw i32 %165, %164
  store i32 %166, i32* %18, align 4
  br label %167

167:                                              ; preds = %146
  %168 = load i32, i32* %17, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %17, align 4
  br label %142

170:                                              ; preds = %142
  %171 = load i32, i32* %25, align 4
  %172 = mul nsw i32 5, %171
  %173 = add nsw i32 %172, 2
  store i32 %173, i32* %19, align 4
  br label %226

174:                                              ; preds = %52
  store i32 0, i32* %17, align 4
  br label %175

175:                                              ; preds = %213, %174
  %176 = load i32, i32* %17, align 4
  %177 = sext i32 %176 to i64
  %178 = load i64, i64* %9, align 8
  %179 = icmp ult i64 %177, %178
  br i1 %179, label %180, label %186

180:                                              ; preds = %175
  %181 = load i32, i32* %18, align 4
  %182 = add nsw i32 %181, 3
  %183 = sext i32 %182 to i64
  %184 = load i64, i64* %13, align 8
  %185 = icmp ule i64 %183, %184
  br label %186

186:                                              ; preds = %180, %175
  %187 = phi i1 [ false, %175 ], [ %185, %180 ]
  br i1 %187, label %188, label %216

188:                                              ; preds = %186
  %189 = load i8*, i8** %15, align 8
  %190 = load i32, i32* %17, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i8, i8* %189, i64 %191
  %193 = load i8, i8* %192, align 1
  store i8 %193, i8* %16, align 1
  %194 = load i8, i8* %16, align 1
  %195 = call signext i8 @hex_asc_hi(i8 signext %194)
  %196 = load i8*, i8** %12, align 8
  %197 = load i32, i32* %18, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %18, align 4
  %199 = sext i32 %197 to i64
  %200 = getelementptr inbounds i8, i8* %196, i64 %199
  store i8 %195, i8* %200, align 1
  %201 = load i8, i8* %16, align 1
  %202 = call signext i8 @hex_asc_lo(i8 signext %201)
  %203 = load i8*, i8** %12, align 8
  %204 = load i32, i32* %18, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %18, align 4
  %206 = sext i32 %204 to i64
  %207 = getelementptr inbounds i8, i8* %203, i64 %206
  store i8 %202, i8* %207, align 1
  %208 = load i8*, i8** %12, align 8
  %209 = load i32, i32* %18, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %18, align 4
  %211 = sext i32 %209 to i64
  %212 = getelementptr inbounds i8, i8* %208, i64 %211
  store i8 32, i8* %212, align 1
  br label %213

213:                                              ; preds = %188
  %214 = load i32, i32* %17, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %17, align 4
  br label %175

216:                                              ; preds = %186
  %217 = load i32, i32* %17, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %216
  %220 = load i32, i32* %18, align 4
  %221 = add nsw i32 %220, -1
  store i32 %221, i32* %18, align 4
  br label %222

222:                                              ; preds = %219, %216
  %223 = load i32, i32* %10, align 4
  %224 = mul nsw i32 3, %223
  %225 = add nsw i32 %224, 2
  store i32 %225, i32* %19, align 4
  br label %226

226:                                              ; preds = %222, %170, %130, %90
  %227 = load i32, i32* %14, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %230, label %229

229:                                              ; preds = %226
  br label %300

230:                                              ; preds = %226
  br label %231

231:                                              ; preds = %244, %230
  %232 = load i32, i32* %18, align 4
  %233 = sext i32 %232 to i64
  %234 = load i64, i64* %13, align 8
  %235 = sub i64 %234, 1
  %236 = icmp ult i64 %233, %235
  br i1 %236, label %237, label %242

237:                                              ; preds = %231
  %238 = load i32, i32* %18, align 4
  %239 = load i32, i32* %19, align 4
  %240 = sub nsw i32 %239, 1
  %241 = icmp slt i32 %238, %240
  br label %242

242:                                              ; preds = %237, %231
  %243 = phi i1 [ false, %231 ], [ %241, %237 ]
  br i1 %243, label %244, label %250

244:                                              ; preds = %242
  %245 = load i8*, i8** %12, align 8
  %246 = load i32, i32* %18, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %18, align 4
  %248 = sext i32 %246 to i64
  %249 = getelementptr inbounds i8, i8* %245, i64 %248
  store i8 32, i8* %249, align 1
  br label %231

250:                                              ; preds = %242
  store i32 0, i32* %17, align 4
  br label %251

251:                                              ; preds = %296, %250
  %252 = load i32, i32* %17, align 4
  %253 = sext i32 %252 to i64
  %254 = load i64, i64* %9, align 8
  %255 = icmp ult i64 %253, %254
  br i1 %255, label %256, label %262

256:                                              ; preds = %251
  %257 = load i32, i32* %18, align 4
  %258 = add nsw i32 %257, 2
  %259 = sext i32 %258 to i64
  %260 = load i64, i64* %13, align 8
  %261 = icmp ult i64 %259, %260
  br label %262

262:                                              ; preds = %256, %251
  %263 = phi i1 [ false, %251 ], [ %261, %256 ]
  br i1 %263, label %264, label %299

264:                                              ; preds = %262
  %265 = load i8*, i8** %15, align 8
  %266 = load i32, i32* %17, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i8, i8* %265, i64 %267
  %269 = load i8, i8* %268, align 1
  %270 = call i64 @isascii(i8 signext %269)
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %287

272:                                              ; preds = %264
  %273 = load i8*, i8** %15, align 8
  %274 = load i32, i32* %17, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i8, i8* %273, i64 %275
  %277 = load i8, i8* %276, align 1
  %278 = call i64 @isprint(i8 signext %277)
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %287

280:                                              ; preds = %272
  %281 = load i8*, i8** %15, align 8
  %282 = load i32, i32* %17, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i8, i8* %281, i64 %283
  %285 = load i8, i8* %284, align 1
  %286 = sext i8 %285 to i32
  br label %288

287:                                              ; preds = %272, %264
  br label %288

288:                                              ; preds = %287, %280
  %289 = phi i32 [ %286, %280 ], [ 46, %287 ]
  %290 = trunc i32 %289 to i8
  %291 = load i8*, i8** %12, align 8
  %292 = load i32, i32* %18, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %18, align 4
  %294 = sext i32 %292 to i64
  %295 = getelementptr inbounds i8, i8* %291, i64 %294
  store i8 %290, i8* %295, align 1
  br label %296

296:                                              ; preds = %288
  %297 = load i32, i32* %17, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %17, align 4
  br label %251

299:                                              ; preds = %262
  br label %300

300:                                              ; preds = %299, %229, %36
  %301 = load i8*, i8** %12, align 8
  %302 = load i32, i32* %18, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %18, align 4
  %304 = sext i32 %302 to i64
  %305 = getelementptr inbounds i8, i8* %301, i64 %304
  store i8 0, i8* %305, align 1
  ret void
}

declare dso_local i32 @scnprintf(i8*, i64, i8*, i8*, i64) #1

declare dso_local signext i8 @hex_asc_hi(i8 signext) #1

declare dso_local signext i8 @hex_asc_lo(i8 signext) #1

declare dso_local i64 @isascii(i8 signext) #1

declare dso_local i64 @isprint(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
