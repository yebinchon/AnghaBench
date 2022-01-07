; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/extr_ihex2fw.c_process_ihex.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/extr_ihex2fw.c_process_ihex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ihex_binrec = type { i32, i32, i32* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Can't find valid record at line %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@wide_records = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"out of memory for records\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"Not enough data to read complete record at line %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"CRC failure at line %d: got 0x%X, expected 0x%X\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"Bad EOF record (type 01) format at line %d\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"Bad HEX86/HEX386 record (type %02X) at line %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"Bad Start Address record (type %02X) at line %d\0A\00", align 1
@include_jump = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"Unknown record (type %02X)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @process_ihex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_ihex(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ihex_binrec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store i8 0, i8* %10, align 1
  store i8 0, i8* %11, align 1
  store i32 1, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %16

16:                                               ; preds = %306, %250, %207, %2
  br label %17

17:                                               ; preds = %42, %16
  %18 = load i32, i32* %12, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %43

21:                                               ; preds = %17
  %22 = load i8*, i8** %4, align 8
  %23 = load i32, i32* %12, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 10
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = load i32, i32* %14, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %14, align 4
  br label %32

32:                                               ; preds = %29, %21
  %33 = load i8*, i8** %4, align 8
  %34 = load i32, i32* %12, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %12, align 4
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i8, i8* %33, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 58
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  br label %43

42:                                               ; preds = %32
  br label %17

43:                                               ; preds = %41, %17
  %44 = load i32, i32* %12, align 4
  %45 = add nsw i32 %44, 10
  %46 = load i32, i32* %5, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load i32, i32* @stderr, align 4
  %50 = load i32, i32* %14, align 4
  %51 = call i32 (i32, i8*, ...) @fprintf(i32 %49, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %315

54:                                               ; preds = %43
  %55 = load i8*, i8** %4, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = call i32 @hex(i8* %58, i8* %10)
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %12, align 4
  %61 = add nsw i32 %60, 2
  store i32 %61, i32* %12, align 4
  %62 = load i64, i64* @wide_records, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %54
  %65 = load i32, i32* %15, align 4
  %66 = shl i32 %65, 8
  store i32 %66, i32* %15, align 4
  %67 = load i8*, i8** %4, align 8
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = call i32 @hex(i8* %70, i8* %10)
  %72 = load i32, i32* %15, align 4
  %73 = add nsw i32 %72, %71
  store i32 %73, i32* %15, align 4
  %74 = load i32, i32* %12, align 4
  %75 = add nsw i32 %74, 2
  store i32 %75, i32* %12, align 4
  br label %76

76:                                               ; preds = %64, %54
  %77 = load i32, i32* %15, align 4
  %78 = sext i32 %77 to i64
  %79 = add i64 16, %78
  %80 = add i64 %79, 3
  %81 = and i64 %80, -4
  %82 = trunc i64 %81 to i32
  %83 = call %struct.ihex_binrec* @malloc(i32 %82)
  store %struct.ihex_binrec* %83, %struct.ihex_binrec** %6, align 8
  %84 = load %struct.ihex_binrec*, %struct.ihex_binrec** %6, align 8
  %85 = icmp ne %struct.ihex_binrec* %84, null
  br i1 %85, label %91, label %86

86:                                               ; preds = %76
  %87 = load i32, i32* @stderr, align 4
  %88 = call i32 (i32, i8*, ...) @fprintf(i32 %87, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %89 = load i32, i32* @ENOMEM, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %3, align 4
  br label %315

91:                                               ; preds = %76
  %92 = load %struct.ihex_binrec*, %struct.ihex_binrec** %6, align 8
  %93 = load i32, i32* %15, align 4
  %94 = sext i32 %93 to i64
  %95 = add i64 16, %94
  %96 = add i64 %95, 3
  %97 = and i64 %96, -4
  %98 = trunc i64 %97 to i32
  %99 = call i32 @memset(%struct.ihex_binrec* %92, i32 0, i32 %98)
  %100 = load i32, i32* %15, align 4
  %101 = load %struct.ihex_binrec*, %struct.ihex_binrec** %6, align 8
  %102 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  %103 = load i32, i32* %12, align 4
  %104 = add nsw i32 %103, 8
  %105 = load %struct.ihex_binrec*, %struct.ihex_binrec** %6, align 8
  %106 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = mul nsw i32 %107, 2
  %109 = add nsw i32 %104, %108
  %110 = load i32, i32* %5, align 4
  %111 = icmp sgt i32 %109, %110
  br i1 %111, label %112, label %118

112:                                              ; preds = %91
  %113 = load i32, i32* @stderr, align 4
  %114 = load i32, i32* %14, align 4
  %115 = call i32 (i32, i8*, ...) @fprintf(i32 %113, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %114)
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %3, align 4
  br label %315

118:                                              ; preds = %91
  %119 = load i8*, i8** %4, align 8
  %120 = load i32, i32* %12, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %119, i64 %121
  %123 = call i32 @hex(i8* %122, i8* %10)
  %124 = shl i32 %123, 8
  %125 = load %struct.ihex_binrec*, %struct.ihex_binrec** %6, align 8
  %126 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 4
  %127 = load i32, i32* %12, align 4
  %128 = add nsw i32 %127, 2
  store i32 %128, i32* %12, align 4
  %129 = load i8*, i8** %4, align 8
  %130 = load i32, i32* %12, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %129, i64 %131
  %133 = call i32 @hex(i8* %132, i8* %10)
  %134 = load %struct.ihex_binrec*, %struct.ihex_binrec** %6, align 8
  %135 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = or i32 %136, %133
  store i32 %137, i32* %135, align 4
  %138 = load i32, i32* %12, align 4
  %139 = add nsw i32 %138, 2
  store i32 %139, i32* %12, align 4
  %140 = load i8*, i8** %4, align 8
  %141 = load i32, i32* %12, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %140, i64 %142
  %144 = call i32 @hex(i8* %143, i8* %10)
  %145 = trunc i32 %144 to i8
  store i8 %145, i8* %9, align 1
  %146 = load i32, i32* %12, align 4
  %147 = add nsw i32 %146, 2
  store i32 %147, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %148

148:                                              ; preds = %166, %118
  %149 = load i32, i32* %13, align 4
  %150 = load %struct.ihex_binrec*, %struct.ihex_binrec** %6, align 8
  %151 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = icmp slt i32 %149, %152
  br i1 %153, label %154, label %171

154:                                              ; preds = %148
  %155 = load i8*, i8** %4, align 8
  %156 = load i32, i32* %12, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8, i8* %155, i64 %157
  %159 = call i32 @hex(i8* %158, i8* %10)
  %160 = load %struct.ihex_binrec*, %struct.ihex_binrec** %6, align 8
  %161 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %160, i32 0, i32 2
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %13, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  store i32 %159, i32* %165, align 4
  br label %166

166:                                              ; preds = %154
  %167 = load i32, i32* %13, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %13, align 4
  %169 = load i32, i32* %12, align 4
  %170 = add nsw i32 %169, 2
  store i32 %170, i32* %12, align 4
  br label %148

171:                                              ; preds = %148
  %172 = load i8*, i8** %4, align 8
  %173 = load i32, i32* %12, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8, i8* %172, i64 %174
  %176 = call i32 @hex(i8* %175, i8* %10)
  %177 = trunc i32 %176 to i8
  store i8 %177, i8* %11, align 1
  %178 = load i32, i32* %12, align 4
  %179 = add nsw i32 %178, 2
  store i32 %179, i32* %12, align 4
  %180 = load i8, i8* %10, align 1
  %181 = sext i8 %180 to i32
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %198

183:                                              ; preds = %171
  %184 = load i32, i32* @stderr, align 4
  %185 = load i32, i32* %14, align 4
  %186 = load i8, i8* %11, align 1
  %187 = sext i8 %186 to i32
  %188 = load i8, i8* %11, align 1
  %189 = sext i8 %188 to i32
  %190 = load i8, i8* %10, align 1
  %191 = sext i8 %190 to i32
  %192 = sub nsw i32 %189, %191
  %193 = trunc i32 %192 to i8
  %194 = zext i8 %193 to i32
  %195 = call i32 (i32, i8*, ...) @fprintf(i32 %184, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %185, i32 %187, i32 %194)
  %196 = load i32, i32* @EINVAL, align 4
  %197 = sub nsw i32 0, %196
  store i32 %197, i32* %3, align 4
  br label %315

198:                                              ; preds = %171
  %199 = load i8, i8* %9, align 1
  %200 = sext i8 %199 to i32
  switch i32 %200, label %307 [
    i32 0, label %201
    i32 1, label %215
    i32 2, label %232
    i32 4, label %232
    i32 3, label %270
    i32 5, label %270
  ]

201:                                              ; preds = %198
  %202 = load %struct.ihex_binrec*, %struct.ihex_binrec** %6, align 8
  %203 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %207, label %206

206:                                              ; preds = %201
  br label %314

207:                                              ; preds = %201
  %208 = load i32, i32* %7, align 4
  %209 = load %struct.ihex_binrec*, %struct.ihex_binrec** %6, align 8
  %210 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = add nsw i32 %211, %208
  store i32 %212, i32* %210, align 4
  %213 = load %struct.ihex_binrec*, %struct.ihex_binrec** %6, align 8
  %214 = call i32 @file_record(%struct.ihex_binrec* %213)
  br label %16

215:                                              ; preds = %198
  %216 = load %struct.ihex_binrec*, %struct.ihex_binrec** %6, align 8
  %217 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %225, label %220

220:                                              ; preds = %215
  %221 = load %struct.ihex_binrec*, %struct.ihex_binrec** %6, align 8
  %222 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %231

225:                                              ; preds = %220, %215
  %226 = load i32, i32* @stderr, align 4
  %227 = load i32, i32* %14, align 4
  %228 = call i32 (i32, i8*, ...) @fprintf(i32 %226, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %227)
  %229 = load i32, i32* @EINVAL, align 4
  %230 = sub nsw i32 0, %229
  store i32 %230, i32* %3, align 4
  br label %315

231:                                              ; preds = %220
  br label %314

232:                                              ; preds = %198, %198
  %233 = load %struct.ihex_binrec*, %struct.ihex_binrec** %6, align 8
  %234 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %242, label %237

237:                                              ; preds = %232
  %238 = load %struct.ihex_binrec*, %struct.ihex_binrec** %6, align 8
  %239 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = icmp ne i32 %240, 2
  br i1 %241, label %242, label %250

242:                                              ; preds = %237, %232
  %243 = load i32, i32* @stderr, align 4
  %244 = load i8, i8* %9, align 1
  %245 = sext i8 %244 to i32
  %246 = load i32, i32* %14, align 4
  %247 = call i32 (i32, i8*, ...) @fprintf(i32 %243, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i32 %245, i32 %246)
  %248 = load i32, i32* @EINVAL, align 4
  %249 = sub nsw i32 0, %248
  store i32 %249, i32* %3, align 4
  br label %315

250:                                              ; preds = %237
  %251 = load %struct.ihex_binrec*, %struct.ihex_binrec** %6, align 8
  %252 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %251, i32 0, i32 2
  %253 = load i32*, i32** %252, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 0
  %255 = load i32, i32* %254, align 4
  %256 = shl i32 %255, 8
  %257 = load %struct.ihex_binrec*, %struct.ihex_binrec** %6, align 8
  %258 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %257, i32 0, i32 2
  %259 = load i32*, i32** %258, align 8
  %260 = getelementptr inbounds i32, i32* %259, i64 1
  %261 = load i32, i32* %260, align 4
  %262 = or i32 %256, %261
  store i32 %262, i32* %7, align 4
  %263 = load i8, i8* %9, align 1
  %264 = sext i8 %263 to i32
  %265 = icmp eq i32 %264, 2
  %266 = zext i1 %265 to i64
  %267 = select i1 %265, i32 4, i32 16
  %268 = load i32, i32* %7, align 4
  %269 = shl i32 %268, %267
  store i32 %269, i32* %7, align 4
  br label %16

270:                                              ; preds = %198, %198
  %271 = load %struct.ihex_binrec*, %struct.ihex_binrec** %6, align 8
  %272 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %280, label %275

275:                                              ; preds = %270
  %276 = load %struct.ihex_binrec*, %struct.ihex_binrec** %6, align 8
  %277 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = icmp ne i32 %278, 4
  br i1 %279, label %280, label %288

280:                                              ; preds = %275, %270
  %281 = load i32, i32* @stderr, align 4
  %282 = load i8, i8* %9, align 1
  %283 = sext i8 %282 to i32
  %284 = load i32, i32* %14, align 4
  %285 = call i32 (i32, i8*, ...) @fprintf(i32 %281, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i32 %283, i32 %284)
  %286 = load i32, i32* @EINVAL, align 4
  %287 = sub nsw i32 0, %286
  store i32 %287, i32* %3, align 4
  br label %315

288:                                              ; preds = %275
  %289 = load %struct.ihex_binrec*, %struct.ihex_binrec** %6, align 8
  %290 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %289, i32 0, i32 2
  %291 = load i32*, i32** %290, align 8
  %292 = getelementptr inbounds i32, i32* %291, i64 0
  %293 = call i32 @memcpy(i32* %8, i32* %292, i32 4)
  %294 = load i32, i32* %8, align 4
  %295 = call i32 @htonl(i32 %294)
  store i32 %295, i32* %8, align 4
  %296 = load %struct.ihex_binrec*, %struct.ihex_binrec** %6, align 8
  %297 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %296, i32 0, i32 2
  %298 = load i32*, i32** %297, align 8
  %299 = getelementptr inbounds i32, i32* %298, i64 0
  %300 = call i32 @memcpy(i32* %299, i32* %8, i32 4)
  %301 = load i32, i32* @include_jump, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %306

303:                                              ; preds = %288
  %304 = load %struct.ihex_binrec*, %struct.ihex_binrec** %6, align 8
  %305 = call i32 @file_record(%struct.ihex_binrec* %304)
  br label %306

306:                                              ; preds = %303, %288
  br label %16

307:                                              ; preds = %198
  %308 = load i32, i32* @stderr, align 4
  %309 = load i8, i8* %9, align 1
  %310 = sext i8 %309 to i32
  %311 = call i32 (i32, i8*, ...) @fprintf(i32 %308, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %310)
  %312 = load i32, i32* @EINVAL, align 4
  %313 = sub nsw i32 0, %312
  store i32 %313, i32* %3, align 4
  br label %315

314:                                              ; preds = %231, %206
  store i32 0, i32* %3, align 4
  br label %315

315:                                              ; preds = %314, %307, %280, %242, %225, %183, %112, %86, %48
  %316 = load i32, i32* %3, align 4
  ret i32 %316
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @hex(i8*, i8*) #1

declare dso_local %struct.ihex_binrec* @malloc(i32) #1

declare dso_local i32 @memset(%struct.ihex_binrec*, i32, i32) #1

declare dso_local i32 @file_record(%struct.ihex_binrec*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
