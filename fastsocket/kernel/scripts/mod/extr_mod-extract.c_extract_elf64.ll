; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/mod/extr_mod-extract.c_extract_elf64.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/mod/extr_mod-extract.c_extract_elf64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"calloc\00", align 1
@SHT_NOBITS = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Section goes beyond EOF\0A\00", align 1
@SHF_ALLOC = common dso_local global i64 0, align 8
@SHT_REL = common dso_local global i64 0, align 8
@SHT_RELA = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c".symtab\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c".strtab\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Couldn't locate symbol table\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Couldn't locate strings table\0A\00", align 1
@is_verbose = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"\0ASection canonicalisation map:\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"%4d %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"\0AAllocated section list in canonical order:\0A\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"CAN FILE POS CS SECT NAME\0A\00", align 1
@.str.11 = private unnamed_addr constant [53 x i8] c"=== ======== == ==== ==============================\0A\00", align 1
@csum = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [66 x i8] c"Invalid ELF - REL/RELA sh_info does not refer to a valid section\0A\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"%3u %08lx \00", align 1
@outfd = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [13 x i8] c"%02x %4d %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"%08lx         (%lu bytes csum 0x%02x)\0A\00", align 1
@xcsum = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, %struct.TYPE_7__*)* @extract_elf64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @extract_elf64(i8* %0, i64 %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i8*, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  %38 = alloca i8*, align 8
  %39 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %6, align 8
  %40 = load i8*, i8** %4, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 2
  %43 = call i64 @get64(i32* %42)
  %44 = getelementptr i8, i8* %40, i64 %43
  %45 = bitcast i8* %44 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %45, %struct.TYPE_6__** %8, align 8
  %46 = load i8*, i8** %4, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = call i64 @get16(i64* %49)
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 4
  %53 = call i64 @get64(i32* %52)
  %54 = getelementptr i8, i8* %46, i64 %53
  store i8* %54, i8** %9, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = call i64 @get16(i64* %56)
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %14, align 4
  %60 = mul nsw i32 %59, 2
  %61 = call i32* @calloc(i32 4, i32 %60)
  store i32* %61, i32** %15, align 8
  %62 = load i32*, i32** %15, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %3
  %65 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %66 = call i32 @exit(i32 1) #3
  unreachable

67:                                               ; preds = %3
  %68 = load i32*, i32** %15, align 8
  %69 = load i32, i32* %14, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32* %71, i32** %16, align 8
  store i32 0, i32* %17, align 4
  store i32* null, i32** %7, align 8
  store i8* null, i8** %10, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %11, align 8
  store i32 1, i32* %13, align 4
  br label %72

72:                                               ; preds = %193, %67
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %14, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %196

76:                                               ; preds = %72
  %77 = load i8*, i8** %9, align 8
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %79 = load i32, i32* %13, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 6
  %83 = call i32 @get32(i32* %82)
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %77, i64 %84
  store i8* %85, i8** %20, align 8
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %87 = load i32, i32* %13, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 3
  %91 = call i32 @get32(i32* %90)
  %92 = sext i32 %91 to i64
  store i64 %92, i64* %21, align 8
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %94 = load i32, i32* %13, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = call i64 @get64(i32* %97)
  store i64 %98, i64* %22, align 8
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %100 = load i32, i32* %13, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 2
  %104 = call i64 @get64(i32* %103)
  store i64 %104, i64* %23, align 8
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %106 = load i32, i32* %13, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 5
  %110 = call i32 @get32(i32* %109)
  %111 = sext i32 %110 to i64
  store i64 %111, i64* %24, align 8
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %113 = load i32, i32* %13, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 4
  %117 = call i64 @get64(i32* %116)
  store i64 %117, i64* %25, align 8
  %118 = load i8*, i8** %4, align 8
  %119 = load i64, i64* %25, align 8
  %120 = getelementptr i8, i8* %118, i64 %119
  store i8* %120, i8** %26, align 8
  %121 = load i64, i64* %21, align 8
  %122 = load i64, i64* @SHT_NOBITS, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %134

124:                                              ; preds = %76
  %125 = load i64, i64* %5, align 8
  %126 = load i64, i64* %25, align 8
  %127 = load i64, i64* %22, align 8
  %128 = add i64 %126, %127
  %129 = icmp ult i64 %125, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %124
  %131 = load i32, i32* @stderr, align 4
  %132 = call i32 @fprintf(i32 %131, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %133 = call i32 @exit(i32 3) #3
  unreachable

134:                                              ; preds = %124, %76
  %135 = load i64, i64* %23, align 8
  %136 = load i64, i64* @SHF_ALLOC, align 8
  %137 = and i64 %135, %136
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %146

139:                                              ; preds = %134
  %140 = load i32, i32* %13, align 4
  %141 = load i32*, i32** %15, align 8
  %142 = load i32, i32* %17, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %17, align 4
  %144 = sext i32 %142 to i64
  %145 = getelementptr inbounds i32, i32* %141, i64 %144
  store i32 %140, i32* %145, align 4
  br label %171

146:                                              ; preds = %134
  %147 = load i64, i64* %21, align 8
  %148 = load i64, i64* @SHT_REL, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %154, label %150

150:                                              ; preds = %146
  %151 = load i64, i64* %21, align 8
  %152 = load i64, i64* @SHT_RELA, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %170

154:                                              ; preds = %150, %146
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %156 = load i64, i64* %24, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 2
  %159 = call i64 @get64(i32* %158)
  %160 = load i64, i64* @SHF_ALLOC, align 8
  %161 = and i64 %159, %160
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %170

163:                                              ; preds = %154
  %164 = load i32, i32* %13, align 4
  %165 = load i32*, i32** %15, align 8
  %166 = load i32, i32* %17, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %17, align 4
  %168 = sext i32 %166 to i64
  %169 = getelementptr inbounds i32, i32* %165, i64 %168
  store i32 %164, i32* %169, align 4
  br label %170

170:                                              ; preds = %163, %154, %150
  br label %171

171:                                              ; preds = %170, %139
  %172 = load i64, i64* %21, align 8
  switch i64 %172, label %191 [
    i64 128, label %173
    i64 129, label %183
  ]

173:                                              ; preds = %171
  %174 = load i8*, i8** %20, align 8
  %175 = call i64 @strcmp(i8* %174, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %176 = icmp eq i64 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %173
  %178 = load i8*, i8** %26, align 8
  %179 = bitcast i8* %178 to i32*
  store i32* %179, i32** %7, align 8
  %180 = load i64, i64* %22, align 8
  %181 = udiv i64 %180, 4
  store i64 %181, i64* %11, align 8
  br label %182

182:                                              ; preds = %177, %173
  br label %192

183:                                              ; preds = %171
  %184 = load i8*, i8** %20, align 8
  %185 = call i64 @strcmp(i8* %184, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %183
  %188 = load i8*, i8** %26, align 8
  store i8* %188, i8** %10, align 8
  %189 = load i64, i64* %22, align 8
  store i64 %189, i64* %12, align 8
  br label %190

190:                                              ; preds = %187, %183
  br label %192

191:                                              ; preds = %171
  br label %192

192:                                              ; preds = %191, %190, %182
  br label %193

193:                                              ; preds = %192
  %194 = load i32, i32* %13, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %13, align 4
  br label %72

196:                                              ; preds = %72
  %197 = load i32*, i32** %7, align 8
  %198 = icmp ne i32* %197, null
  br i1 %198, label %203, label %199

199:                                              ; preds = %196
  %200 = load i32, i32* @stderr, align 4
  %201 = call i32 @fprintf(i32 %200, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %202 = call i32 @exit(i32 3) #3
  unreachable

203:                                              ; preds = %196
  %204 = load i8*, i8** %10, align 8
  %205 = icmp ne i8* %204, null
  br i1 %205, label %210, label %206

206:                                              ; preds = %203
  %207 = load i32, i32* @stderr, align 4
  %208 = call i32 @fprintf(i32 %207, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %209 = call i32 @exit(i32 3) #3
  unreachable

210:                                              ; preds = %203
  br label %211

211:                                              ; preds = %279, %210
  store i32 0, i32* %18, align 4
  store i32 0, i32* %13, align 4
  br label %212

212:                                              ; preds = %275, %211
  %213 = load i32, i32* %13, align 4
  %214 = load i32, i32* %17, align 4
  %215 = sub nsw i32 %214, 1
  %216 = icmp slt i32 %213, %215
  br i1 %216, label %217, label %278

217:                                              ; preds = %212
  %218 = load i8*, i8** %9, align 8
  %219 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %220 = load i32*, i32** %15, align 8
  %221 = load i32, i32* %13, align 4
  %222 = add nsw i32 %221, 0
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %220, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 6
  %229 = call i32 @get32(i32* %228)
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i8, i8* %218, i64 %230
  store i8* %231, i8** %27, align 8
  %232 = load i8*, i8** %9, align 8
  %233 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %234 = load i32*, i32** %15, align 8
  %235 = load i32, i32* %13, align 4
  %236 = add nsw i32 %235, 1
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %234, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 6
  %243 = call i32 @get32(i32* %242)
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i8, i8* %232, i64 %244
  store i8* %245, i8** %28, align 8
  %246 = load i8*, i8** %27, align 8
  %247 = load i8*, i8** %28, align 8
  %248 = call i64 @strcmp(i8* %246, i8* %247)
  %249 = icmp sgt i64 %248, 0
  br i1 %249, label %250, label %274

250:                                              ; preds = %217
  %251 = load i32*, i32** %15, align 8
  %252 = load i32, i32* %13, align 4
  %253 = add nsw i32 %252, 0
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %251, i64 %254
  %256 = load i32, i32* %255, align 4
  store i32 %256, i32* %19, align 4
  %257 = load i32*, i32** %15, align 8
  %258 = load i32, i32* %13, align 4
  %259 = add nsw i32 %258, 1
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %257, i64 %260
  %262 = load i32, i32* %261, align 4
  %263 = load i32*, i32** %15, align 8
  %264 = load i32, i32* %13, align 4
  %265 = add nsw i32 %264, 0
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32, i32* %263, i64 %266
  store i32 %262, i32* %267, align 4
  %268 = load i32, i32* %19, align 4
  %269 = load i32*, i32** %15, align 8
  %270 = load i32, i32* %13, align 4
  %271 = add nsw i32 %270, 1
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %269, i64 %272
  store i32 %268, i32* %273, align 4
  store i32 1, i32* %18, align 4
  br label %274

274:                                              ; preds = %250, %217
  br label %275

275:                                              ; preds = %274
  %276 = load i32, i32* %13, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %13, align 4
  br label %212

278:                                              ; preds = %212
  br label %279

279:                                              ; preds = %278
  %280 = load i32, i32* %18, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %211, label %282

282:                                              ; preds = %279
  store i32 0, i32* %13, align 4
  br label %283

283:                                              ; preds = %298, %282
  %284 = load i32, i32* %13, align 4
  %285 = load i32, i32* %17, align 4
  %286 = icmp slt i32 %284, %285
  br i1 %286, label %287, label %301

287:                                              ; preds = %283
  %288 = load i32, i32* %13, align 4
  %289 = add nsw i32 %288, 1
  %290 = load i32*, i32** %16, align 8
  %291 = load i32*, i32** %15, align 8
  %292 = load i32, i32* %13, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i32, i32* %291, i64 %293
  %295 = load i32, i32* %294, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %290, i64 %296
  store i32 %289, i32* %297, align 4
  br label %298

298:                                              ; preds = %287
  %299 = load i32, i32* %13, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %13, align 4
  br label %283

301:                                              ; preds = %283
  %302 = load i32, i32* @is_verbose, align 4
  %303 = icmp sgt i32 %302, 1
  br i1 %303, label %304, label %361

304:                                              ; preds = %301
  %305 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %13, align 4
  br label %306

306:                                              ; preds = %327, %304
  %307 = load i32, i32* %13, align 4
  %308 = load i32, i32* %14, align 4
  %309 = icmp slt i32 %307, %308
  br i1 %309, label %310, label %330

310:                                              ; preds = %306
  %311 = load i8*, i8** %9, align 8
  %312 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %313 = load i32, i32* %13, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %312, i64 %314
  %316 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %315, i32 0, i32 6
  %317 = call i32 @get32(i32* %316)
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i8, i8* %311, i64 %318
  store i8* %319, i8** %29, align 8
  %320 = load i32*, i32** %16, align 8
  %321 = load i32, i32* %13, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i32, i32* %320, i64 %322
  %324 = load i32, i32* %323, align 4
  %325 = load i8*, i8** %29, align 8
  %326 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %324, i8* %325)
  br label %327

327:                                              ; preds = %310
  %328 = load i32, i32* %13, align 4
  %329 = add nsw i32 %328, 1
  store i32 %329, i32* %13, align 4
  br label %306

330:                                              ; preds = %306
  %331 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %332

332:                                              ; preds = %357, %330
  %333 = load i32, i32* %13, align 4
  %334 = load i32, i32* %17, align 4
  %335 = icmp slt i32 %333, %334
  br i1 %335, label %336, label %360

336:                                              ; preds = %332
  %337 = load i8*, i8** %9, align 8
  %338 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %339 = load i32*, i32** %15, align 8
  %340 = load i32, i32* %13, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i32, i32* %339, i64 %341
  %343 = load i32, i32* %342, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %338, i64 %344
  %346 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %345, i32 0, i32 6
  %347 = call i32 @get32(i32* %346)
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i8, i8* %337, i64 %348
  store i8* %349, i8** %30, align 8
  %350 = load i32*, i32** %15, align 8
  %351 = load i32, i32* %13, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds i32, i32* %350, i64 %352
  %354 = load i32, i32* %353, align 4
  %355 = load i8*, i8** %30, align 8
  %356 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %354, i8* %355)
  br label %357

357:                                              ; preds = %336
  %358 = load i32, i32* %13, align 4
  %359 = add nsw i32 %358, 1
  store i32 %359, i32* %13, align 4
  br label %332

360:                                              ; preds = %332
  br label %361

361:                                              ; preds = %360, %301
  %362 = call i32 (i8*, ...) @verbose(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %363 = call i32 (i8*, ...) @verbose(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  %364 = call i32 (i8*, ...) @verbose(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %365

365:                                              ; preds = %627, %361
  %366 = load i32, i32* %13, align 4
  %367 = load i32, i32* %17, align 4
  %368 = icmp slt i32 %366, %367
  br i1 %368, label %369, label %630

369:                                              ; preds = %365
  %370 = load i32*, i32** %15, align 8
  %371 = load i32, i32* %13, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds i32, i32* %370, i64 %372
  %374 = load i32, i32* %373, align 4
  store i32 %374, i32* %31, align 4
  %375 = load i8*, i8** %9, align 8
  %376 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %377 = load i32, i32* %31, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %376, i64 %378
  %380 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %379, i32 0, i32 6
  %381 = call i32 @get32(i32* %380)
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds i8, i8* %375, i64 %382
  store i8* %383, i8** %32, align 8
  %384 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %385 = load i32, i32* %31, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %384, i64 %386
  %388 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %387, i32 0, i32 3
  %389 = call i32 @get32(i32* %388)
  %390 = sext i32 %389 to i64
  store i64 %390, i64* %33, align 8
  %391 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %392 = load i32, i32* %31, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %391, i64 %393
  %395 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %394, i32 0, i32 1
  %396 = call i64 @get64(i32* %395)
  store i64 %396, i64* %34, align 8
  %397 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %398 = load i32, i32* %31, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %397, i64 %399
  %401 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %400, i32 0, i32 2
  %402 = call i64 @get64(i32* %401)
  store i64 %402, i64* %35, align 8
  %403 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %404 = load i32, i32* %31, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %403, i64 %405
  %407 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %406, i32 0, i32 5
  %408 = call i32 @get32(i32* %407)
  %409 = sext i32 %408 to i64
  store i64 %409, i64* %36, align 8
  %410 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %411 = load i32, i32* %31, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %410, i64 %412
  %414 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %413, i32 0, i32 4
  %415 = call i64 @get64(i32* %414)
  store i64 %415, i64* %37, align 8
  %416 = load i8*, i8** %4, align 8
  %417 = load i64, i64* %37, align 8
  %418 = getelementptr i8, i8* %416, i64 %417
  store i8* %418, i8** %38, align 8
  store i32 0, i32* @csum, align 4
  %419 = load i64, i64* %33, align 8
  %420 = load i64, i64* @SHT_REL, align 8
  %421 = icmp eq i64 %419, %420
  br i1 %421, label %426, label %422

422:                                              ; preds = %369
  %423 = load i64, i64* %33, align 8
  %424 = load i64, i64* @SHT_RELA, align 8
  %425 = icmp eq i64 %423, %424
  br i1 %425, label %426, label %520

426:                                              ; preds = %422, %369
  %427 = load i64, i64* %36, align 8
  %428 = icmp ule i64 %427, 0
  br i1 %428, label %429, label %439

429:                                              ; preds = %426
  %430 = load i64, i64* %36, align 8
  %431 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %432 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %431, i32 0, i32 1
  %433 = load i64, i64* %432, align 8
  %434 = icmp uge i64 %430, %433
  br i1 %434, label %435, label %439

435:                                              ; preds = %429
  %436 = load i32, i32* @stderr, align 4
  %437 = call i32 @fprintf(i32 %436, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.12, i64 0, i64 0))
  %438 = call i32 @exit(i32 3) #3
  unreachable

439:                                              ; preds = %429, %426
  %440 = load i32, i32* %13, align 4
  %441 = load i32, i32* @outfd, align 4
  %442 = call i32 @ftell(i32 %441)
  %443 = call i32 (i8*, ...) @verbose(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i32 %440, i32 %442)
  %444 = load i32*, i32** %16, align 8
  %445 = load i64, i64* %36, align 8
  %446 = getelementptr inbounds i32, i32* %444, i64 %445
  %447 = load i32, i32* %446, align 4
  %448 = call i32 @set32(i32* %39, i32 %447)
  %449 = load i8*, i8** %32, align 8
  %450 = load i8*, i8** %32, align 8
  %451 = call i32 @strlen(i8* %450)
  %452 = sext i32 %451 to i64
  %453 = call i32 @write_out(i8* %449, i64 %452)
  %454 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %455 = load i32, i32* %31, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %454, i64 %456
  %458 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %457, i32 0, i32 3
  %459 = load i32, i32* %458, align 4
  %460 = call i32 @write_out_val(i32 %459)
  %461 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %462 = load i32, i32* %31, align 4
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %461, i64 %463
  %465 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %464, i32 0, i32 2
  %466 = load i32, i32* %465, align 4
  %467 = call i32 @write_out_val(i32 %466)
  %468 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %469 = load i32, i32* %31, align 4
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %468, i64 %470
  %472 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %471, i32 0, i32 1
  %473 = load i32, i32* %472, align 4
  %474 = call i32 @write_out_val(i32 %473)
  %475 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %476 = load i32, i32* %31, align 4
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %475, i64 %477
  %479 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %478, i32 0, i32 0
  %480 = load i32, i32* %479, align 4
  %481 = call i32 @write_out_val(i32 %480)
  %482 = load i32, i32* %39, align 4
  %483 = call i32 @write_out_val(i32 %482)
  %484 = load i64, i64* %33, align 8
  %485 = load i64, i64* @SHT_RELA, align 8
  %486 = icmp eq i64 %484, %485
  br i1 %486, label %487, label %503

487:                                              ; preds = %439
  %488 = load i8*, i8** %4, align 8
  %489 = load i32, i32* %31, align 4
  %490 = load i64, i64* %36, align 8
  %491 = load i8*, i8** %38, align 8
  %492 = load i64, i64* %34, align 8
  %493 = udiv i64 %492, 4
  %494 = load i32*, i32** %7, align 8
  %495 = load i64, i64* %11, align 8
  %496 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %497 = load i32, i32* %14, align 4
  %498 = load i32*, i32** %16, align 8
  %499 = load i8*, i8** %10, align 8
  %500 = load i64, i64* %12, align 8
  %501 = load i8*, i8** %32, align 8
  %502 = call i32 @extract_elf64_rela(i8* %488, i32 %489, i64 %490, i8* %491, i64 %493, i32* %494, i64 %495, %struct.TYPE_6__* %496, i32 %497, i32* %498, i8* %499, i64 %500, i8* %501)
  br label %519

503:                                              ; preds = %439
  %504 = load i8*, i8** %4, align 8
  %505 = load i32, i32* %31, align 4
  %506 = load i64, i64* %36, align 8
  %507 = load i8*, i8** %38, align 8
  %508 = load i64, i64* %34, align 8
  %509 = udiv i64 %508, 4
  %510 = load i32*, i32** %7, align 8
  %511 = load i64, i64* %11, align 8
  %512 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %513 = load i32, i32* %14, align 4
  %514 = load i32*, i32** %16, align 8
  %515 = load i8*, i8** %10, align 8
  %516 = load i64, i64* %12, align 8
  %517 = load i8*, i8** %32, align 8
  %518 = call i32 @extract_elf64_rel(i8* %504, i32 %505, i64 %506, i8* %507, i64 %509, i32* %510, i64 %511, %struct.TYPE_6__* %512, i32 %513, i32* %514, i8* %515, i64 %516, i8* %517)
  br label %519

519:                                              ; preds = %503, %487
  br label %627

520:                                              ; preds = %422
  %521 = load i64, i64* %33, align 8
  %522 = load i64, i64* @SHT_NOBITS, align 8
  %523 = icmp eq i64 %521, %522
  br i1 %523, label %524, label %571

524:                                              ; preds = %520
  %525 = load i64, i64* %35, align 8
  %526 = load i64, i64* @SHF_ALLOC, align 8
  %527 = and i64 %525, %526
  %528 = icmp ne i64 %527, 0
  br i1 %528, label %529, label %571

529:                                              ; preds = %524
  %530 = load i32, i32* %13, align 4
  %531 = load i32, i32* @outfd, align 4
  %532 = call i32 @ftell(i32 %531)
  %533 = call i32 (i8*, ...) @verbose(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i32 %530, i32 %532)
  %534 = load i8*, i8** %32, align 8
  %535 = load i8*, i8** %32, align 8
  %536 = call i32 @strlen(i8* %535)
  %537 = sext i32 %536 to i64
  %538 = call i32 @write_out(i8* %534, i64 %537)
  %539 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %540 = load i32, i32* %31, align 4
  %541 = sext i32 %540 to i64
  %542 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %539, i64 %541
  %543 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %542, i32 0, i32 3
  %544 = load i32, i32* %543, align 4
  %545 = call i32 @write_out_val(i32 %544)
  %546 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %547 = load i32, i32* %31, align 4
  %548 = sext i32 %547 to i64
  %549 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %546, i64 %548
  %550 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %549, i32 0, i32 2
  %551 = load i32, i32* %550, align 4
  %552 = call i32 @write_out_val(i32 %551)
  %553 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %554 = load i32, i32* %31, align 4
  %555 = sext i32 %554 to i64
  %556 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %553, i64 %555
  %557 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %556, i32 0, i32 1
  %558 = load i32, i32* %557, align 4
  %559 = call i32 @write_out_val(i32 %558)
  %560 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %561 = load i32, i32* %31, align 4
  %562 = sext i32 %561 to i64
  %563 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %560, i64 %562
  %564 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %563, i32 0, i32 0
  %565 = load i32, i32* %564, align 4
  %566 = call i32 @write_out_val(i32 %565)
  %567 = load i32, i32* @csum, align 4
  %568 = load i32, i32* %31, align 4
  %569 = load i8*, i8** %32, align 8
  %570 = call i32 (i8*, ...) @verbose(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i32 %567, i32 %568, i8* %569)
  br label %571

571:                                              ; preds = %529, %524, %520
  %572 = load i64, i64* %33, align 8
  %573 = load i64, i64* @SHT_NOBITS, align 8
  %574 = icmp ne i64 %572, %573
  br i1 %574, label %575, label %581

575:                                              ; preds = %571
  %576 = load i64, i64* %35, align 8
  %577 = load i64, i64* @SHF_ALLOC, align 8
  %578 = and i64 %576, %577
  %579 = icmp ne i64 %578, 0
  br i1 %579, label %580, label %581

580:                                              ; preds = %575
  br label %582

581:                                              ; preds = %575, %571
  br label %627

582:                                              ; preds = %580
  %583 = load i32, i32* %13, align 4
  %584 = load i32, i32* @outfd, align 4
  %585 = call i32 @ftell(i32 %584)
  %586 = call i32 (i8*, ...) @verbose(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i32 %583, i32 %585)
  %587 = load i8*, i8** %32, align 8
  %588 = load i8*, i8** %32, align 8
  %589 = call i32 @strlen(i8* %588)
  %590 = sext i32 %589 to i64
  %591 = call i32 @write_out(i8* %587, i64 %590)
  %592 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %593 = load i32, i32* %31, align 4
  %594 = sext i32 %593 to i64
  %595 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %592, i64 %594
  %596 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %595, i32 0, i32 3
  %597 = load i32, i32* %596, align 4
  %598 = call i32 @write_out_val(i32 %597)
  %599 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %600 = load i32, i32* %31, align 4
  %601 = sext i32 %600 to i64
  %602 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %599, i64 %601
  %603 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %602, i32 0, i32 2
  %604 = load i32, i32* %603, align 4
  %605 = call i32 @write_out_val(i32 %604)
  %606 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %607 = load i32, i32* %31, align 4
  %608 = sext i32 %607 to i64
  %609 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %606, i64 %608
  %610 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %609, i32 0, i32 1
  %611 = load i32, i32* %610, align 4
  %612 = call i32 @write_out_val(i32 %611)
  %613 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %614 = load i32, i32* %31, align 4
  %615 = sext i32 %614 to i64
  %616 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %613, i64 %615
  %617 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %616, i32 0, i32 0
  %618 = load i32, i32* %617, align 4
  %619 = call i32 @write_out_val(i32 %618)
  %620 = load i8*, i8** %38, align 8
  %621 = load i64, i64* %34, align 8
  %622 = call i32 @write_out(i8* %620, i64 %621)
  %623 = load i32, i32* @csum, align 4
  %624 = load i32, i32* %31, align 4
  %625 = load i8*, i8** %32, align 8
  %626 = call i32 (i8*, ...) @verbose(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i32 %623, i32 %624, i8* %625)
  br label %627

627:                                              ; preds = %582, %581, %519
  %628 = load i32, i32* %13, align 4
  %629 = add nsw i32 %628, 1
  store i32 %629, i32* %13, align 4
  br label %365

630:                                              ; preds = %365
  %631 = load i32, i32* @outfd, align 4
  %632 = call i32 @ftell(i32 %631)
  %633 = load i32, i32* @outfd, align 4
  %634 = call i32 @ftell(i32 %633)
  %635 = load i8*, i8** @xcsum, align 8
  %636 = call i32 (i8*, ...) @verbose(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i64 0, i64 0), i32 %632, i32 %634, i8* %635)
  ret void
}

declare dso_local i64 @get64(i32*) #1

declare dso_local i64 @get16(i64*) #1

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @get32(i32*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @verbose(i8*, ...) #1

declare dso_local i32 @ftell(i32) #1

declare dso_local i32 @set32(i32*, i32) #1

declare dso_local i32 @write_out(i8*, i64) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @write_out_val(i32) #1

declare dso_local i32 @extract_elf64_rela(i8*, i32, i64, i8*, i64, i32*, i64, %struct.TYPE_6__*, i32, i32*, i8*, i64, i8*) #1

declare dso_local i32 @extract_elf64_rel(i8*, i32, i64, i8*, i64, i32*, i64, %struct.TYPE_6__*, i32, i32*, i8*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
