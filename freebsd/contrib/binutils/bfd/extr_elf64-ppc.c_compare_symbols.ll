; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-ppc.c_compare_symbols.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-ppc.c_compare_symbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i64 }
%struct.TYPE_3__ = type { i32, i64, %struct.TYPE_4__* }

@BSF_SECTION_SYM = common dso_local global i32 0, align 4
@synthetic_opd = common dso_local global %struct.TYPE_4__* null, align 8
@SEC_CODE = common dso_local global i32 0, align 4
@SEC_ALLOC = common dso_local global i32 0, align 4
@SEC_THREAD_LOCAL = common dso_local global i32 0, align 4
@synthetic_relocatable = common dso_local global i64 0, align 8
@BSF_GLOBAL = common dso_local global i32 0, align 4
@BSF_FUNCTION = common dso_local global i32 0, align 4
@BSF_WEAK = common dso_local global i32 0, align 4
@BSF_DYNAMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @compare_symbols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_symbols(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_3__**
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_3__**
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %7, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @BSF_SECTION_SYM, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %2
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @BSF_SECTION_SYM, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  store i32 -1, i32* %3, align 4
  br label %328

28:                                               ; preds = %20, %2
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @BSF_SECTION_SYM, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %28
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @BSF_SECTION_SYM, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  store i32 1, i32* %3, align 4
  br label %328

43:                                               ; preds = %35, %28
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** @synthetic_opd, align 8
  %48 = icmp eq %struct.TYPE_4__* %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %43
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** @synthetic_opd, align 8
  %54 = icmp ne %struct.TYPE_4__* %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  store i32 -1, i32* %3, align 4
  br label %328

56:                                               ; preds = %49, %43
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** @synthetic_opd, align 8
  %61 = icmp ne %struct.TYPE_4__* %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %56
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** @synthetic_opd, align 8
  %67 = icmp eq %struct.TYPE_4__* %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  store i32 1, i32* %3, align 4
  br label %328

69:                                               ; preds = %62, %56
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @SEC_CODE, align 4
  %76 = load i32, i32* @SEC_ALLOC, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @SEC_THREAD_LOCAL, align 4
  %79 = or i32 %77, %78
  %80 = and i32 %74, %79
  %81 = load i32, i32* @SEC_CODE, align 4
  %82 = load i32, i32* @SEC_ALLOC, align 4
  %83 = or i32 %81, %82
  %84 = icmp eq i32 %80, %83
  br i1 %84, label %85, label %102

85:                                               ; preds = %69
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @SEC_CODE, align 4
  %92 = load i32, i32* @SEC_ALLOC, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @SEC_THREAD_LOCAL, align 4
  %95 = or i32 %93, %94
  %96 = and i32 %90, %95
  %97 = load i32, i32* @SEC_CODE, align 4
  %98 = load i32, i32* @SEC_ALLOC, align 4
  %99 = or i32 %97, %98
  %100 = icmp ne i32 %96, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %85
  store i32 -1, i32* %3, align 4
  br label %328

102:                                              ; preds = %85, %69
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 2
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @SEC_CODE, align 4
  %109 = load i32, i32* @SEC_ALLOC, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @SEC_THREAD_LOCAL, align 4
  %112 = or i32 %110, %111
  %113 = and i32 %107, %112
  %114 = load i32, i32* @SEC_CODE, align 4
  %115 = load i32, i32* @SEC_ALLOC, align 4
  %116 = or i32 %114, %115
  %117 = icmp ne i32 %113, %116
  br i1 %117, label %118, label %135

118:                                              ; preds = %102
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 2
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @SEC_CODE, align 4
  %125 = load i32, i32* @SEC_ALLOC, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* @SEC_THREAD_LOCAL, align 4
  %128 = or i32 %126, %127
  %129 = and i32 %123, %128
  %130 = load i32, i32* @SEC_CODE, align 4
  %131 = load i32, i32* @SEC_ALLOC, align 4
  %132 = or i32 %130, %131
  %133 = icmp eq i32 %129, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %118
  store i32 1, i32* %3, align 4
  br label %328

135:                                              ; preds = %118, %102
  %136 = load i64, i64* @synthetic_relocatable, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %165

138:                                              ; preds = %135
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 2
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 2
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = icmp slt i64 %143, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %138
  store i32 -1, i32* %3, align 4
  br label %328

151:                                              ; preds = %138
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 2
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 2
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = icmp sgt i64 %156, %161
  br i1 %162, label %163, label %164

163:                                              ; preds = %151
  store i32 1, i32* %3, align 4
  br label %328

164:                                              ; preds = %151
  br label %165

165:                                              ; preds = %164, %135
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 2
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = add nsw i64 %168, %173
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 2
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = add nsw i64 %177, %182
  %184 = icmp slt i64 %174, %183
  br i1 %184, label %185, label %186

185:                                              ; preds = %165
  store i32 -1, i32* %3, align 4
  br label %328

186:                                              ; preds = %165
  %187 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i32 0, i32 2
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 2
  %194 = load i64, i64* %193, align 8
  %195 = add nsw i64 %189, %194
  %196 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 2
  %201 = load %struct.TYPE_4__*, %struct.TYPE_4__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 2
  %203 = load i64, i64* %202, align 8
  %204 = add nsw i64 %198, %203
  %205 = icmp sgt i64 %195, %204
  br i1 %205, label %206, label %207

206:                                              ; preds = %186
  store i32 1, i32* %3, align 4
  br label %328

207:                                              ; preds = %186
  %208 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @BSF_GLOBAL, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %222

214:                                              ; preds = %207
  %215 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* @BSF_GLOBAL, align 4
  %219 = and i32 %217, %218
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %214
  store i32 -1, i32* %3, align 4
  br label %328

222:                                              ; preds = %214, %207
  %223 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* @BSF_GLOBAL, align 4
  %227 = and i32 %225, %226
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %237

229:                                              ; preds = %222
  %230 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = load i32, i32* @BSF_GLOBAL, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %237

236:                                              ; preds = %229
  store i32 1, i32* %3, align 4
  br label %328

237:                                              ; preds = %229, %222
  %238 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %239 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* @BSF_FUNCTION, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %252

244:                                              ; preds = %237
  %245 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %246 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = load i32, i32* @BSF_FUNCTION, align 4
  %249 = and i32 %247, %248
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %252

251:                                              ; preds = %244
  store i32 -1, i32* %3, align 4
  br label %328

252:                                              ; preds = %244, %237
  %253 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %254 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = load i32, i32* @BSF_FUNCTION, align 4
  %257 = and i32 %255, %256
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %259, label %267

259:                                              ; preds = %252
  %260 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %261 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = load i32, i32* @BSF_FUNCTION, align 4
  %264 = and i32 %262, %263
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %267

266:                                              ; preds = %259
  store i32 1, i32* %3, align 4
  br label %328

267:                                              ; preds = %259, %252
  %268 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %269 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = load i32, i32* @BSF_WEAK, align 4
  %272 = and i32 %270, %271
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %274, label %282

274:                                              ; preds = %267
  %275 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %276 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = load i32, i32* @BSF_WEAK, align 4
  %279 = and i32 %277, %278
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %282

281:                                              ; preds = %274
  store i32 -1, i32* %3, align 4
  br label %328

282:                                              ; preds = %274, %267
  %283 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %284 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = load i32, i32* @BSF_WEAK, align 4
  %287 = and i32 %285, %286
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %297

289:                                              ; preds = %282
  %290 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %291 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = load i32, i32* @BSF_WEAK, align 4
  %294 = and i32 %292, %293
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %296, label %297

296:                                              ; preds = %289
  store i32 1, i32* %3, align 4
  br label %328

297:                                              ; preds = %289, %282
  %298 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %299 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = load i32, i32* @BSF_DYNAMIC, align 4
  %302 = and i32 %300, %301
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %312

304:                                              ; preds = %297
  %305 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %306 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = load i32, i32* @BSF_DYNAMIC, align 4
  %309 = and i32 %307, %308
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %311, label %312

311:                                              ; preds = %304
  store i32 -1, i32* %3, align 4
  br label %328

312:                                              ; preds = %304, %297
  %313 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %314 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = load i32, i32* @BSF_DYNAMIC, align 4
  %317 = and i32 %315, %316
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %319, label %327

319:                                              ; preds = %312
  %320 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %321 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 8
  %323 = load i32, i32* @BSF_DYNAMIC, align 4
  %324 = and i32 %322, %323
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %327

326:                                              ; preds = %319
  store i32 1, i32* %3, align 4
  br label %328

327:                                              ; preds = %319, %312
  store i32 0, i32* %3, align 4
  br label %328

328:                                              ; preds = %327, %326, %311, %296, %281, %266, %251, %236, %221, %206, %185, %163, %150, %134, %101, %68, %55, %42, %27
  %329 = load i32, i32* %3, align 4
  ret i32 %329
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
