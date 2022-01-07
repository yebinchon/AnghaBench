; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/mod/extr_mod-extract.c_extract_elf32.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/mod/extr_mod-extract.c_extract_elf32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"calloc\00", align 1
@SHT_NOBITS = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Section goes beyond EOF\0A\00", align 1
@SHF_ALLOC = common dso_local global i64 0, align 8
@SHT_REL = common dso_local global i32 0, align 4
@SHT_RELA = common dso_local global i32 0, align 4
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
@.str.12 = private unnamed_addr constant [25 x i8] c"section goes beyond EOF\0A\00", align 1
@.str.13 = private unnamed_addr constant [66 x i8] c"Invalid ELF - REL/RELA sh_info does not refer to a valid section\0A\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"%3u %08lx \00", align 1
@outfd = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [13 x i8] c"%02x %4d %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"%08lx         (%lu bytes csum 0x%02x)\0A\00", align 1
@xcsum = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, %struct.TYPE_7__*)* @extract_elf32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @extract_elf32(i8* %0, i64 %1, %struct.TYPE_7__* %2) #0 {
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
  %21 = alloca i32, align 4
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
  %33 = alloca i32, align 4
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i32, align 4
  %37 = alloca i64, align 8
  %38 = alloca i8*, align 8
  %39 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %6, align 8
  %40 = load i8*, i8** %4, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = call i32 @get32(i32* %42)
  %44 = sext i32 %43 to i64
  %45 = getelementptr i8, i8* %40, i64 %44
  %46 = bitcast i8* %45 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %46, %struct.TYPE_6__** %8, align 8
  %47 = load i8*, i8** %4, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = call i64 @get16(i32* %50)
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = call i32 @get32(i32* %53)
  %55 = sext i32 %54 to i64
  %56 = getelementptr i8, i8* %47, i64 %55
  store i8* %56, i8** %9, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 2
  %59 = call i64 @get16(i32* %58)
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %14, align 4
  %62 = mul nsw i32 %61, 2
  %63 = call i32* @calloc(i32 4, i32 %62)
  store i32* %63, i32** %15, align 8
  %64 = load i32*, i32** %15, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %3
  %67 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %68 = call i32 @exit(i32 1) #3
  unreachable

69:                                               ; preds = %3
  %70 = load i32*, i32** %15, align 8
  %71 = load i32, i32* %14, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32* %73, i32** %16, align 8
  store i32 0, i32* %17, align 4
  store i32* null, i32** %7, align 8
  store i8* null, i8** %10, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %11, align 8
  store i32 1, i32* %13, align 4
  br label %74

74:                                               ; preds = %198, %69
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* %14, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %201

78:                                               ; preds = %74
  %79 = load i8*, i8** %9, align 8
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %81 = load i32, i32* %13, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = call i32 @get32(i32* %84)
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %79, i64 %86
  store i8* %87, i8** %20, align 8
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %89 = load i32, i32* %13, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 2
  %93 = call i32 @get32(i32* %92)
  store i32 %93, i32* %21, align 4
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %95 = load i32, i32* %13, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 3
  %99 = call i32 @get32(i32* %98)
  %100 = sext i32 %99 to i64
  store i64 %100, i64* %22, align 8
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %102 = load i32, i32* %13, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 4
  %106 = call i32 @get32(i32* %105)
  %107 = sext i32 %106 to i64
  store i64 %107, i64* %23, align 8
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %109 = load i32, i32* %13, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 5
  %113 = call i32 @get32(i32* %112)
  %114 = sext i32 %113 to i64
  store i64 %114, i64* %24, align 8
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %116 = load i32, i32* %13, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = call i32 @get32(i32* %119)
  %121 = sext i32 %120 to i64
  store i64 %121, i64* %25, align 8
  %122 = load i8*, i8** %4, align 8
  %123 = load i64, i64* %25, align 8
  %124 = getelementptr i8, i8* %122, i64 %123
  store i8* %124, i8** %26, align 8
  %125 = load i32, i32* %21, align 4
  %126 = load i32, i32* @SHT_NOBITS, align 4
  %127 = icmp ne i32 %125, %126
  br i1 %127, label %128, label %138

128:                                              ; preds = %78
  %129 = load i64, i64* %5, align 8
  %130 = load i64, i64* %25, align 8
  %131 = load i64, i64* %22, align 8
  %132 = add i64 %130, %131
  %133 = icmp ult i64 %129, %132
  br i1 %133, label %134, label %138

134:                                              ; preds = %128
  %135 = load i32, i32* @stderr, align 4
  %136 = call i32 @fprintf(i32 %135, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %137 = call i32 @exit(i32 3) #3
  unreachable

138:                                              ; preds = %128, %78
  %139 = load i64, i64* %23, align 8
  %140 = load i64, i64* @SHF_ALLOC, align 8
  %141 = and i64 %139, %140
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %150

143:                                              ; preds = %138
  %144 = load i32, i32* %13, align 4
  %145 = load i32*, i32** %15, align 8
  %146 = load i32, i32* %17, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %17, align 4
  %148 = sext i32 %146 to i64
  %149 = getelementptr inbounds i32, i32* %145, i64 %148
  store i32 %144, i32* %149, align 4
  br label %176

150:                                              ; preds = %138
  %151 = load i32, i32* %21, align 4
  %152 = load i32, i32* @SHT_REL, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %158, label %154

154:                                              ; preds = %150
  %155 = load i32, i32* %21, align 4
  %156 = load i32, i32* @SHT_RELA, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %175

158:                                              ; preds = %154, %150
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %160 = load i64, i64* %24, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 4
  %163 = call i32 @get32(i32* %162)
  %164 = sext i32 %163 to i64
  %165 = load i64, i64* @SHF_ALLOC, align 8
  %166 = and i64 %164, %165
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %175

168:                                              ; preds = %158
  %169 = load i32, i32* %13, align 4
  %170 = load i32*, i32** %15, align 8
  %171 = load i32, i32* %17, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %17, align 4
  %173 = sext i32 %171 to i64
  %174 = getelementptr inbounds i32, i32* %170, i64 %173
  store i32 %169, i32* %174, align 4
  br label %175

175:                                              ; preds = %168, %158, %154
  br label %176

176:                                              ; preds = %175, %143
  %177 = load i32, i32* %21, align 4
  switch i32 %177, label %196 [
    i32 128, label %178
    i32 129, label %188
  ]

178:                                              ; preds = %176
  %179 = load i8*, i8** %20, align 8
  %180 = call i64 @strcmp(i8* %179, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %181 = icmp eq i64 %180, 0
  br i1 %181, label %182, label %187

182:                                              ; preds = %178
  %183 = load i8*, i8** %26, align 8
  %184 = bitcast i8* %183 to i32*
  store i32* %184, i32** %7, align 8
  %185 = load i64, i64* %22, align 8
  %186 = udiv i64 %185, 4
  store i64 %186, i64* %11, align 8
  br label %187

187:                                              ; preds = %182, %178
  br label %197

188:                                              ; preds = %176
  %189 = load i8*, i8** %20, align 8
  %190 = call i64 @strcmp(i8* %189, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %188
  %193 = load i8*, i8** %26, align 8
  store i8* %193, i8** %10, align 8
  %194 = load i64, i64* %22, align 8
  store i64 %194, i64* %12, align 8
  br label %195

195:                                              ; preds = %192, %188
  br label %197

196:                                              ; preds = %176
  br label %197

197:                                              ; preds = %196, %195, %187
  br label %198

198:                                              ; preds = %197
  %199 = load i32, i32* %13, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %13, align 4
  br label %74

201:                                              ; preds = %74
  %202 = load i32*, i32** %7, align 8
  %203 = icmp ne i32* %202, null
  br i1 %203, label %208, label %204

204:                                              ; preds = %201
  %205 = load i32, i32* @stderr, align 4
  %206 = call i32 @fprintf(i32 %205, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %207 = call i32 @exit(i32 3) #3
  unreachable

208:                                              ; preds = %201
  %209 = load i8*, i8** %10, align 8
  %210 = icmp ne i8* %209, null
  br i1 %210, label %215, label %211

211:                                              ; preds = %208
  %212 = load i32, i32* @stderr, align 4
  %213 = call i32 @fprintf(i32 %212, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %214 = call i32 @exit(i32 3) #3
  unreachable

215:                                              ; preds = %208
  br label %216

216:                                              ; preds = %284, %215
  store i32 0, i32* %18, align 4
  store i32 0, i32* %13, align 4
  br label %217

217:                                              ; preds = %280, %216
  %218 = load i32, i32* %13, align 4
  %219 = load i32, i32* %17, align 4
  %220 = sub nsw i32 %219, 1
  %221 = icmp slt i32 %218, %220
  br i1 %221, label %222, label %283

222:                                              ; preds = %217
  %223 = load i8*, i8** %9, align 8
  %224 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %225 = load i32*, i32** %15, align 8
  %226 = load i32, i32* %13, align 4
  %227 = add nsw i32 %226, 0
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %225, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 1
  %234 = call i32 @get32(i32* %233)
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i8, i8* %223, i64 %235
  store i8* %236, i8** %27, align 8
  %237 = load i8*, i8** %9, align 8
  %238 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %239 = load i32*, i32** %15, align 8
  %240 = load i32, i32* %13, align 4
  %241 = add nsw i32 %240, 1
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %239, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i64 %245
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i32 0, i32 1
  %248 = call i32 @get32(i32* %247)
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i8, i8* %237, i64 %249
  store i8* %250, i8** %28, align 8
  %251 = load i8*, i8** %27, align 8
  %252 = load i8*, i8** %28, align 8
  %253 = call i64 @strcmp(i8* %251, i8* %252)
  %254 = icmp sgt i64 %253, 0
  br i1 %254, label %255, label %279

255:                                              ; preds = %222
  %256 = load i32*, i32** %15, align 8
  %257 = load i32, i32* %13, align 4
  %258 = add nsw i32 %257, 0
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %256, i64 %259
  %261 = load i32, i32* %260, align 4
  store i32 %261, i32* %19, align 4
  %262 = load i32*, i32** %15, align 8
  %263 = load i32, i32* %13, align 4
  %264 = add nsw i32 %263, 1
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %262, i64 %265
  %267 = load i32, i32* %266, align 4
  %268 = load i32*, i32** %15, align 8
  %269 = load i32, i32* %13, align 4
  %270 = add nsw i32 %269, 0
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %268, i64 %271
  store i32 %267, i32* %272, align 4
  %273 = load i32, i32* %19, align 4
  %274 = load i32*, i32** %15, align 8
  %275 = load i32, i32* %13, align 4
  %276 = add nsw i32 %275, 1
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %274, i64 %277
  store i32 %273, i32* %278, align 4
  store i32 1, i32* %18, align 4
  br label %279

279:                                              ; preds = %255, %222
  br label %280

280:                                              ; preds = %279
  %281 = load i32, i32* %13, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %13, align 4
  br label %217

283:                                              ; preds = %217
  br label %284

284:                                              ; preds = %283
  %285 = load i32, i32* %18, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %216, label %287

287:                                              ; preds = %284
  store i32 0, i32* %13, align 4
  br label %288

288:                                              ; preds = %303, %287
  %289 = load i32, i32* %13, align 4
  %290 = load i32, i32* %17, align 4
  %291 = icmp slt i32 %289, %290
  br i1 %291, label %292, label %306

292:                                              ; preds = %288
  %293 = load i32, i32* %13, align 4
  %294 = add nsw i32 %293, 1
  %295 = load i32*, i32** %16, align 8
  %296 = load i32*, i32** %15, align 8
  %297 = load i32, i32* %13, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i32, i32* %296, i64 %298
  %300 = load i32, i32* %299, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i32, i32* %295, i64 %301
  store i32 %294, i32* %302, align 4
  br label %303

303:                                              ; preds = %292
  %304 = load i32, i32* %13, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %13, align 4
  br label %288

306:                                              ; preds = %288
  %307 = load i32, i32* @is_verbose, align 4
  %308 = icmp sgt i32 %307, 1
  br i1 %308, label %309, label %366

309:                                              ; preds = %306
  %310 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %13, align 4
  br label %311

311:                                              ; preds = %332, %309
  %312 = load i32, i32* %13, align 4
  %313 = load i32, i32* %14, align 4
  %314 = icmp slt i32 %312, %313
  br i1 %314, label %315, label %335

315:                                              ; preds = %311
  %316 = load i8*, i8** %9, align 8
  %317 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %318 = load i32, i32* %13, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %317, i64 %319
  %321 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %320, i32 0, i32 1
  %322 = call i32 @get32(i32* %321)
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i8, i8* %316, i64 %323
  store i8* %324, i8** %29, align 8
  %325 = load i32*, i32** %16, align 8
  %326 = load i32, i32* %13, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i32, i32* %325, i64 %327
  %329 = load i32, i32* %328, align 4
  %330 = load i8*, i8** %29, align 8
  %331 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %329, i8* %330)
  br label %332

332:                                              ; preds = %315
  %333 = load i32, i32* %13, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %13, align 4
  br label %311

335:                                              ; preds = %311
  %336 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %337

337:                                              ; preds = %362, %335
  %338 = load i32, i32* %13, align 4
  %339 = load i32, i32* %17, align 4
  %340 = icmp slt i32 %338, %339
  br i1 %340, label %341, label %365

341:                                              ; preds = %337
  %342 = load i8*, i8** %9, align 8
  %343 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %344 = load i32*, i32** %15, align 8
  %345 = load i32, i32* %13, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds i32, i32* %344, i64 %346
  %348 = load i32, i32* %347, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %343, i64 %349
  %351 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %350, i32 0, i32 1
  %352 = call i32 @get32(i32* %351)
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds i8, i8* %342, i64 %353
  store i8* %354, i8** %30, align 8
  %355 = load i32*, i32** %15, align 8
  %356 = load i32, i32* %13, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds i32, i32* %355, i64 %357
  %359 = load i32, i32* %358, align 4
  %360 = load i8*, i8** %30, align 8
  %361 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %359, i8* %360)
  br label %362

362:                                              ; preds = %341
  %363 = load i32, i32* %13, align 4
  %364 = add nsw i32 %363, 1
  store i32 %364, i32* %13, align 4
  br label %337

365:                                              ; preds = %337
  br label %366

366:                                              ; preds = %365, %306
  %367 = call i32 (i8*, ...) @verbose(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %368 = call i32 (i8*, ...) @verbose(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  %369 = call i32 (i8*, ...) @verbose(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %370

370:                                              ; preds = %648, %366
  %371 = load i32, i32* %13, align 4
  %372 = load i32, i32* %17, align 4
  %373 = icmp slt i32 %371, %372
  br i1 %373, label %374, label %651

374:                                              ; preds = %370
  %375 = load i32*, i32** %15, align 8
  %376 = load i32, i32* %13, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds i32, i32* %375, i64 %377
  %379 = load i32, i32* %378, align 4
  store i32 %379, i32* %31, align 4
  %380 = load i8*, i8** %9, align 8
  %381 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %382 = load i32, i32* %31, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %381, i64 %383
  %385 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %384, i32 0, i32 1
  %386 = call i32 @get32(i32* %385)
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds i8, i8* %380, i64 %387
  store i8* %388, i8** %32, align 8
  %389 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %390 = load i32, i32* %31, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %389, i64 %391
  %393 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %392, i32 0, i32 2
  %394 = call i32 @get32(i32* %393)
  store i32 %394, i32* %33, align 4
  %395 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %396 = load i32, i32* %31, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %395, i64 %397
  %399 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %398, i32 0, i32 3
  %400 = call i32 @get32(i32* %399)
  %401 = sext i32 %400 to i64
  store i64 %401, i64* %34, align 8
  %402 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %403 = load i32, i32* %31, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %402, i64 %404
  %406 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %405, i32 0, i32 4
  %407 = call i32 @get32(i32* %406)
  %408 = sext i32 %407 to i64
  store i64 %408, i64* %35, align 8
  %409 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %410 = load i32, i32* %31, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %409, i64 %411
  %413 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %412, i32 0, i32 5
  %414 = call i32 @get32(i32* %413)
  store i32 %414, i32* %36, align 4
  %415 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %416 = load i32, i32* %31, align 4
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %415, i64 %417
  %419 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %418, i32 0, i32 0
  %420 = call i32 @get32(i32* %419)
  %421 = sext i32 %420 to i64
  store i64 %421, i64* %37, align 8
  %422 = load i8*, i8** %4, align 8
  %423 = load i64, i64* %37, align 8
  %424 = getelementptr i8, i8* %422, i64 %423
  store i8* %424, i8** %38, align 8
  store i32 0, i32* @csum, align 4
  %425 = load i32, i32* %33, align 4
  %426 = load i32, i32* @SHT_NOBITS, align 4
  %427 = icmp ne i32 %425, %426
  br i1 %427, label %428, label %438

428:                                              ; preds = %374
  %429 = load i64, i64* %5, align 8
  %430 = load i64, i64* %37, align 8
  %431 = load i64, i64* %34, align 8
  %432 = add i64 %430, %431
  %433 = icmp ult i64 %429, %432
  br i1 %433, label %434, label %438

434:                                              ; preds = %428
  %435 = load i32, i32* @stderr, align 4
  %436 = call i32 @fprintf(i32 %435, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0))
  %437 = call i32 @exit(i32 3) #3
  unreachable

438:                                              ; preds = %428, %374
  %439 = load i32, i32* %33, align 4
  %440 = load i32, i32* @SHT_REL, align 4
  %441 = icmp eq i32 %439, %440
  br i1 %441, label %446, label %442

442:                                              ; preds = %438
  %443 = load i32, i32* %33, align 4
  %444 = load i32, i32* @SHT_RELA, align 4
  %445 = icmp eq i32 %443, %444
  br i1 %445, label %446, label %541

446:                                              ; preds = %442, %438
  %447 = load i32, i32* %36, align 4
  %448 = icmp sle i32 %447, 0
  br i1 %448, label %449, label %459

449:                                              ; preds = %446
  %450 = load i32, i32* %36, align 4
  %451 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %452 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %451, i32 0, i32 2
  %453 = load i32, i32* %452, align 4
  %454 = icmp sge i32 %450, %453
  br i1 %454, label %455, label %459

455:                                              ; preds = %449
  %456 = load i32, i32* @stderr, align 4
  %457 = call i32 @fprintf(i32 %456, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.13, i64 0, i64 0))
  %458 = call i32 @exit(i32 3) #3
  unreachable

459:                                              ; preds = %449, %446
  %460 = load i32, i32* %13, align 4
  %461 = load i32, i32* @outfd, align 4
  %462 = call i32 @ftell(i32 %461)
  %463 = call i32 (i8*, ...) @verbose(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i32 %460, i32 %462)
  %464 = load i32*, i32** %16, align 8
  %465 = load i32, i32* %36, align 4
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds i32, i32* %464, i64 %466
  %468 = load i32, i32* %467, align 4
  %469 = call i32 @set32(i32* %39, i32 %468)
  %470 = load i8*, i8** %32, align 8
  %471 = load i8*, i8** %32, align 8
  %472 = call i32 @strlen(i8* %471)
  %473 = sext i32 %472 to i64
  %474 = call i32 @write_out(i8* %470, i64 %473)
  %475 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %476 = load i32, i32* %31, align 4
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %475, i64 %477
  %479 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %478, i32 0, i32 2
  %480 = load i32, i32* %479, align 4
  %481 = call i32 @write_out_val(i32 %480)
  %482 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %483 = load i32, i32* %31, align 4
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %482, i64 %484
  %486 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %485, i32 0, i32 4
  %487 = load i32, i32* %486, align 4
  %488 = call i32 @write_out_val(i32 %487)
  %489 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %490 = load i32, i32* %31, align 4
  %491 = sext i32 %490 to i64
  %492 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %489, i64 %491
  %493 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %492, i32 0, i32 3
  %494 = load i32, i32* %493, align 4
  %495 = call i32 @write_out_val(i32 %494)
  %496 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %497 = load i32, i32* %31, align 4
  %498 = sext i32 %497 to i64
  %499 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %496, i64 %498
  %500 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %499, i32 0, i32 6
  %501 = load i32, i32* %500, align 4
  %502 = call i32 @write_out_val(i32 %501)
  %503 = load i32, i32* %39, align 4
  %504 = call i32 @write_out_val(i32 %503)
  %505 = load i32, i32* %33, align 4
  %506 = load i32, i32* @SHT_RELA, align 4
  %507 = icmp eq i32 %505, %506
  br i1 %507, label %508, label %524

508:                                              ; preds = %459
  %509 = load i8*, i8** %4, align 8
  %510 = load i32, i32* %31, align 4
  %511 = load i32, i32* %36, align 4
  %512 = load i8*, i8** %38, align 8
  %513 = load i64, i64* %34, align 8
  %514 = udiv i64 %513, 4
  %515 = load i32*, i32** %7, align 8
  %516 = load i64, i64* %11, align 8
  %517 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %518 = load i32, i32* %14, align 4
  %519 = load i32*, i32** %16, align 8
  %520 = load i8*, i8** %10, align 8
  %521 = load i64, i64* %12, align 8
  %522 = load i8*, i8** %32, align 8
  %523 = call i32 @extract_elf32_rela(i8* %509, i32 %510, i32 %511, i8* %512, i64 %514, i32* %515, i64 %516, %struct.TYPE_6__* %517, i32 %518, i32* %519, i8* %520, i64 %521, i8* %522)
  br label %540

524:                                              ; preds = %459
  %525 = load i8*, i8** %4, align 8
  %526 = load i32, i32* %31, align 4
  %527 = load i32, i32* %36, align 4
  %528 = load i8*, i8** %38, align 8
  %529 = load i64, i64* %34, align 8
  %530 = udiv i64 %529, 4
  %531 = load i32*, i32** %7, align 8
  %532 = load i64, i64* %11, align 8
  %533 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %534 = load i32, i32* %14, align 4
  %535 = load i32*, i32** %16, align 8
  %536 = load i8*, i8** %10, align 8
  %537 = load i64, i64* %12, align 8
  %538 = load i8*, i8** %32, align 8
  %539 = call i32 @extract_elf32_rel(i8* %525, i32 %526, i32 %527, i8* %528, i64 %530, i32* %531, i64 %532, %struct.TYPE_6__* %533, i32 %534, i32* %535, i8* %536, i64 %537, i8* %538)
  br label %540

540:                                              ; preds = %524, %508
  br label %648

541:                                              ; preds = %442
  %542 = load i32, i32* %33, align 4
  %543 = load i32, i32* @SHT_NOBITS, align 4
  %544 = icmp eq i32 %542, %543
  br i1 %544, label %545, label %592

545:                                              ; preds = %541
  %546 = load i64, i64* %35, align 8
  %547 = load i64, i64* @SHF_ALLOC, align 8
  %548 = and i64 %546, %547
  %549 = icmp ne i64 %548, 0
  br i1 %549, label %550, label %592

550:                                              ; preds = %545
  %551 = load i32, i32* %13, align 4
  %552 = load i32, i32* @outfd, align 4
  %553 = call i32 @ftell(i32 %552)
  %554 = call i32 (i8*, ...) @verbose(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i32 %551, i32 %553)
  %555 = load i8*, i8** %32, align 8
  %556 = load i8*, i8** %32, align 8
  %557 = call i32 @strlen(i8* %556)
  %558 = sext i32 %557 to i64
  %559 = call i32 @write_out(i8* %555, i64 %558)
  %560 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %561 = load i32, i32* %31, align 4
  %562 = sext i32 %561 to i64
  %563 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %560, i64 %562
  %564 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %563, i32 0, i32 2
  %565 = load i32, i32* %564, align 4
  %566 = call i32 @write_out_val(i32 %565)
  %567 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %568 = load i32, i32* %31, align 4
  %569 = sext i32 %568 to i64
  %570 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %567, i64 %569
  %571 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %570, i32 0, i32 4
  %572 = load i32, i32* %571, align 4
  %573 = call i32 @write_out_val(i32 %572)
  %574 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %575 = load i32, i32* %31, align 4
  %576 = sext i32 %575 to i64
  %577 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %574, i64 %576
  %578 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %577, i32 0, i32 3
  %579 = load i32, i32* %578, align 4
  %580 = call i32 @write_out_val(i32 %579)
  %581 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %582 = load i32, i32* %31, align 4
  %583 = sext i32 %582 to i64
  %584 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %581, i64 %583
  %585 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %584, i32 0, i32 6
  %586 = load i32, i32* %585, align 4
  %587 = call i32 @write_out_val(i32 %586)
  %588 = load i32, i32* @csum, align 4
  %589 = load i32, i32* %31, align 4
  %590 = load i8*, i8** %32, align 8
  %591 = call i32 (i8*, ...) @verbose(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i32 %588, i32 %589, i8* %590)
  br label %592

592:                                              ; preds = %550, %545, %541
  %593 = load i32, i32* %33, align 4
  %594 = load i32, i32* @SHT_NOBITS, align 4
  %595 = icmp ne i32 %593, %594
  br i1 %595, label %596, label %602

596:                                              ; preds = %592
  %597 = load i64, i64* %35, align 8
  %598 = load i64, i64* @SHF_ALLOC, align 8
  %599 = and i64 %597, %598
  %600 = icmp ne i64 %599, 0
  br i1 %600, label %601, label %602

601:                                              ; preds = %596
  br label %603

602:                                              ; preds = %596, %592
  br label %648

603:                                              ; preds = %601
  %604 = load i32, i32* %13, align 4
  %605 = load i32, i32* @outfd, align 4
  %606 = call i32 @ftell(i32 %605)
  %607 = call i32 (i8*, ...) @verbose(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i32 %604, i32 %606)
  %608 = load i8*, i8** %32, align 8
  %609 = load i8*, i8** %32, align 8
  %610 = call i32 @strlen(i8* %609)
  %611 = sext i32 %610 to i64
  %612 = call i32 @write_out(i8* %608, i64 %611)
  %613 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %614 = load i32, i32* %31, align 4
  %615 = sext i32 %614 to i64
  %616 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %613, i64 %615
  %617 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %616, i32 0, i32 2
  %618 = load i32, i32* %617, align 4
  %619 = call i32 @write_out_val(i32 %618)
  %620 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %621 = load i32, i32* %31, align 4
  %622 = sext i32 %621 to i64
  %623 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %620, i64 %622
  %624 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %623, i32 0, i32 4
  %625 = load i32, i32* %624, align 4
  %626 = call i32 @write_out_val(i32 %625)
  %627 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %628 = load i32, i32* %31, align 4
  %629 = sext i32 %628 to i64
  %630 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %627, i64 %629
  %631 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %630, i32 0, i32 3
  %632 = load i32, i32* %631, align 4
  %633 = call i32 @write_out_val(i32 %632)
  %634 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %635 = load i32, i32* %31, align 4
  %636 = sext i32 %635 to i64
  %637 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %634, i64 %636
  %638 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %637, i32 0, i32 6
  %639 = load i32, i32* %638, align 4
  %640 = call i32 @write_out_val(i32 %639)
  %641 = load i8*, i8** %38, align 8
  %642 = load i64, i64* %34, align 8
  %643 = call i32 @write_out(i8* %641, i64 %642)
  %644 = load i32, i32* @csum, align 4
  %645 = load i32, i32* %31, align 4
  %646 = load i8*, i8** %32, align 8
  %647 = call i32 (i8*, ...) @verbose(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i32 %644, i32 %645, i8* %646)
  br label %648

648:                                              ; preds = %603, %602, %540
  %649 = load i32, i32* %13, align 4
  %650 = add nsw i32 %649, 1
  store i32 %650, i32* %13, align 4
  br label %370

651:                                              ; preds = %370
  %652 = load i32, i32* @outfd, align 4
  %653 = call i32 @ftell(i32 %652)
  %654 = load i32, i32* @outfd, align 4
  %655 = call i32 @ftell(i32 %654)
  %656 = load i8*, i8** @xcsum, align 8
  %657 = call i32 (i8*, ...) @verbose(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16, i64 0, i64 0), i32 %653, i32 %655, i8* %656)
  ret void
}

declare dso_local i32 @get32(i32*) #1

declare dso_local i64 @get16(i32*) #1

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @verbose(i8*, ...) #1

declare dso_local i32 @ftell(i32) #1

declare dso_local i32 @set32(i32*, i32) #1

declare dso_local i32 @write_out(i8*, i64) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @write_out_val(i32) #1

declare dso_local i32 @extract_elf32_rela(i8*, i32, i32, i8*, i64, i32*, i64, %struct.TYPE_6__*, i32, i32*, i8*, i64, i8*) #1

declare dso_local i32 @extract_elf32_rel(i8*, i32, i32, i8*, i64, i32*, i64, %struct.TYPE_6__*, i32, i32*, i8*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
