; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfdump/extr_elfdump.c_elf_print_gnu_hash.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfdump/extr_elfdump.c_elf_print_gnu_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elfdump = type { i32, i64, i64, %struct.section* }
%struct.section = type { i64, i32, i32 }
%struct.TYPE_3__ = type { i32, i32* }

@SOLARIS_FMT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"\0AGNU Hash Section:  %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"\0Agnu hash table (%s):\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"elf_getdata failed: %s\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c".gnu.hash section too small\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Malformed .gnu.hash section\00", align 1
@ELFCLASS32 = common dso_local global i64 0, align 8
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"calloc failed\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"    bucket    symndx    name\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"%10d  \00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"            \00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"[%d]\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"%-10s  \00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"%10u  buckets contain %8d symbols\0A\00", align 1
@.str.14 = private unnamed_addr constant [45 x i8] c"%10u  buckets         %8u symbols (globals)\0A\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"\0Anbucket: %u\0A\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"symndx: %u\0A\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"maskwords: %u\0A\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"shift2: %u\0A\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"nchain: %u\0A\0A\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"bucket[%d]:\0A\09%u\0A\0A\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"chain[%d]:\0A\09%u\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elfdump*, %struct.section*)* @elf_print_gnu_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elf_print_gnu_hash(%struct.elfdump* %0, %struct.section* %1) #0 {
  %3 = alloca %struct.elfdump*, align 8
  %4 = alloca %struct.section*, align 8
  %5 = alloca %struct.section*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca [10 x i8], align 1
  store %struct.elfdump* %0, %struct.elfdump** %3, align 8
  store %struct.section* %1, %struct.section** %4, align 8
  %25 = load %struct.elfdump*, %struct.elfdump** %3, align 8
  %26 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @SOLARIS_FMT, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %2
  %32 = load %struct.section*, %struct.section** %4, align 8
  %33 = getelementptr inbounds %struct.section, %struct.section* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %41

36:                                               ; preds = %2
  %37 = load %struct.section*, %struct.section** %4, align 8
  %38 = getelementptr inbounds %struct.section, %struct.section* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %36, %31
  %42 = call i32 (...) @elf_errno()
  %43 = load %struct.section*, %struct.section** %4, align 8
  %44 = getelementptr inbounds %struct.section, %struct.section* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call %struct.TYPE_3__* @elf_getdata(i32 %45, i32* null)
  store %struct.TYPE_3__* %46, %struct.TYPE_3__** %6, align 8
  %47 = icmp eq %struct.TYPE_3__* %46, null
  br i1 %47, label %48, label %57

48:                                               ; preds = %41
  %49 = call i32 (...) @elf_errno()
  store i32 %49, i32* %22, align 4
  %50 = load i32, i32* %22, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i32, i32* %22, align 4
  %54 = call i32 @elf_errmsg(i32 %53)
  %55 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %52, %48
  br label %389

57:                                               ; preds = %41
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = icmp ult i64 %61, 16
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %389

65:                                               ; preds = %57
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  store i32* %68, i32** %7, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %10, align 4
  %72 = load i32*, i32** %7, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %12, align 4
  %75 = load i32*, i32** %7, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 2
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %13, align 4
  %78 = load i32*, i32** %7, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 3
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %14, align 4
  %81 = load i32*, i32** %7, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 4
  store i32* %82, i32** %7, align 8
  %83 = load %struct.section*, %struct.section** %4, align 8
  %84 = getelementptr inbounds %struct.section, %struct.section* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.elfdump*, %struct.elfdump** %3, align 8
  %87 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp uge i64 %85, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %65
  %91 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %389

92:                                               ; preds = %65
  %93 = load %struct.elfdump*, %struct.elfdump** %3, align 8
  %94 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %93, i32 0, i32 3
  %95 = load %struct.section*, %struct.section** %94, align 8
  %96 = load %struct.section*, %struct.section** %4, align 8
  %97 = getelementptr inbounds %struct.section, %struct.section* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds %struct.section, %struct.section* %95, i64 %98
  store %struct.section* %99, %struct.section** %5, align 8
  %100 = load %struct.section*, %struct.section** %5, align 8
  %101 = call i32 @get_ent_count(%struct.section* %100, i32* %23)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %92
  br label %389

104:                                              ; preds = %92
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* %23, align 4
  %107 = icmp sge i32 %105, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  %109 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %389

110:                                              ; preds = %104
  %111 = load i32, i32* %23, align 4
  %112 = load i32, i32* %12, align 4
  %113 = sub nsw i32 %111, %112
  store i32 %113, i32* %11, align 4
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = sext i32 %116 to i64
  %118 = load i32, i32* %13, align 4
  %119 = sext i32 %118 to i64
  %120 = load %struct.elfdump*, %struct.elfdump** %3, align 8
  %121 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @ELFCLASS32, align 8
  %124 = icmp eq i64 %122, %123
  %125 = zext i1 %124 to i64
  %126 = select i1 %124, i64 4, i64 4
  %127 = mul i64 %119, %126
  %128 = add i64 16, %127
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* %11, align 4
  %131 = add nsw i32 %129, %130
  %132 = sext i32 %131 to i64
  %133 = mul i64 %132, 4
  %134 = add i64 %128, %133
  %135 = icmp ne i64 %117, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %110
  %137 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %389

138:                                              ; preds = %110
  %139 = load i32*, i32** %7, align 8
  %140 = load %struct.elfdump*, %struct.elfdump** %3, align 8
  %141 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @ELFCLASS32, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %147

145:                                              ; preds = %138
  %146 = load i32, i32* %13, align 4
  br label %150

147:                                              ; preds = %138
  %148 = load i32, i32* %13, align 4
  %149 = mul nsw i32 %148, 2
  br label %150

150:                                              ; preds = %147, %145
  %151 = phi i32 [ %146, %145 ], [ %149, %147 ]
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %139, i64 %152
  store i32* %153, i32** %8, align 8
  %154 = load i32*, i32** %8, align 8
  %155 = load i32, i32* %10, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  store i32* %157, i32** %9, align 8
  %158 = load %struct.elfdump*, %struct.elfdump** %3, align 8
  %159 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @SOLARIS_FMT, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %346

164:                                              ; preds = %150
  store i32 0, i32* %17, align 4
  %165 = load i32, i32* %10, align 4
  %166 = call i32* @calloc(i32 %165, i32 4)
  store i32* %166, i32** %15, align 8
  %167 = icmp eq i32* %166, null
  br i1 %167, label %168, label %171

168:                                              ; preds = %164
  %169 = load i32, i32* @EXIT_FAILURE, align 4
  %170 = call i32 @err(i32 %169, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %171

171:                                              ; preds = %168, %164
  store i32 0, i32* %19, align 4
  br label %172

172:                                              ; preds = %224, %171
  %173 = load i32, i32* %19, align 4
  %174 = load i32, i32* %10, align 4
  %175 = icmp slt i32 %173, %174
  br i1 %175, label %176, label %227

176:                                              ; preds = %172
  %177 = load i32*, i32** %8, align 8
  %178 = load i32, i32* %19, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  %181 = load i32, i32* %180, align 4
  store i32 %181, i32* %20, align 4
  br label %182

182:                                              ; preds = %220, %176
  %183 = load i32, i32* %20, align 4
  %184 = icmp sgt i32 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %182
  %186 = load i32, i32* %20, align 4
  %187 = load i32, i32* %12, align 4
  %188 = sub nsw i32 %186, %187
  %189 = load i32, i32* %11, align 4
  %190 = icmp slt i32 %188, %189
  br label %191

191:                                              ; preds = %185, %182
  %192 = phi i1 [ false, %182 ], [ %190, %185 ]
  br i1 %192, label %193, label %223

193:                                              ; preds = %191
  %194 = load i32*, i32** %15, align 8
  %195 = load i32, i32* %19, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %194, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %197, align 4
  %200 = load i32, i32* %17, align 4
  %201 = icmp sgt i32 %199, %200
  br i1 %201, label %202, label %208

202:                                              ; preds = %193
  %203 = load i32*, i32** %15, align 8
  %204 = load i32, i32* %19, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  %207 = load i32, i32* %206, align 4
  store i32 %207, i32* %17, align 4
  br label %208

208:                                              ; preds = %202, %193
  %209 = load i32*, i32** %9, align 8
  %210 = load i32, i32* %20, align 4
  %211 = load i32, i32* %12, align 4
  %212 = sub nsw i32 %210, %211
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %209, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = and i32 %215, 1
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %208
  br label %223

219:                                              ; preds = %208
  br label %220

220:                                              ; preds = %219
  %221 = load i32, i32* %20, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %20, align 4
  br label %182

223:                                              ; preds = %218, %191
  br label %224

224:                                              ; preds = %223
  %225 = load i32, i32* %19, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %19, align 4
  br label %172

227:                                              ; preds = %172
  %228 = load i32, i32* %17, align 4
  %229 = add nsw i32 %228, 1
  %230 = call i32* @calloc(i32 %229, i32 4)
  store i32* %230, i32** %16, align 8
  %231 = icmp eq i32* %230, null
  br i1 %231, label %232, label %235

232:                                              ; preds = %227
  %233 = load i32, i32* @EXIT_FAILURE, align 4
  %234 = call i32 @err(i32 %233, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %235

235:                                              ; preds = %232, %227
  store i32 0, i32* %19, align 4
  br label %236

236:                                              ; preds = %251, %235
  %237 = load i32, i32* %19, align 4
  %238 = load i32, i32* %10, align 4
  %239 = icmp slt i32 %237, %238
  br i1 %239, label %240, label %254

240:                                              ; preds = %236
  %241 = load i32*, i32** %16, align 8
  %242 = load i32*, i32** %15, align 8
  %243 = load i32, i32* %19, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %242, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %241, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %248, align 4
  br label %251

251:                                              ; preds = %240
  %252 = load i32, i32* %19, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %19, align 4
  br label %236

254:                                              ; preds = %236
  %255 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %19, align 4
  br label %256

256:                                              ; preds = %313, %254
  %257 = load i32, i32* %19, align 4
  %258 = load i32, i32* %10, align 4
  %259 = icmp slt i32 %257, %258
  br i1 %259, label %260, label %316

260:                                              ; preds = %256
  store i32 1, i32* %21, align 4
  %261 = load i32*, i32** %8, align 8
  %262 = load i32, i32* %19, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i32, i32* %261, i64 %263
  %265 = load i32, i32* %264, align 4
  store i32 %265, i32* %20, align 4
  br label %266

266:                                              ; preds = %309, %260
  %267 = load i32, i32* %20, align 4
  %268 = icmp sgt i32 %267, 0
  br i1 %268, label %269, label %275

269:                                              ; preds = %266
  %270 = load i32, i32* %20, align 4
  %271 = load i32, i32* %12, align 4
  %272 = sub nsw i32 %270, %271
  %273 = load i32, i32* %11, align 4
  %274 = icmp slt i32 %272, %273
  br label %275

275:                                              ; preds = %269, %266
  %276 = phi i1 [ false, %266 ], [ %274, %269 ]
  br i1 %276, label %277, label %312

277:                                              ; preds = %275
  %278 = load i32, i32* %21, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %283

280:                                              ; preds = %277
  %281 = load i32, i32* %19, align 4
  %282 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %281)
  store i32 0, i32* %21, align 4
  br label %285

283:                                              ; preds = %277
  %284 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  br label %285

285:                                              ; preds = %283, %280
  %286 = getelementptr inbounds [10 x i8], [10 x i8]* %24, i64 0, i64 0
  %287 = load i32, i32* %20, align 4
  %288 = call i32 @snprintf(i8* %286, i32 10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 %287)
  %289 = getelementptr inbounds [10 x i8], [10 x i8]* %24, i64 0, i64 0
  %290 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8* %289)
  %291 = load %struct.elfdump*, %struct.elfdump** %3, align 8
  %292 = load %struct.section*, %struct.section** %4, align 8
  %293 = getelementptr inbounds %struct.section, %struct.section* %292, i32 0, i32 0
  %294 = load i64, i64* %293, align 8
  %295 = load i32, i32* %20, align 4
  %296 = call i32 @get_symbol_name(%struct.elfdump* %291, i64 %294, i32 %295)
  %297 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %296)
  %298 = load i32*, i32** %9, align 8
  %299 = load i32, i32* %20, align 4
  %300 = load i32, i32* %12, align 4
  %301 = sub nsw i32 %299, %300
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i32, i32* %298, i64 %302
  %304 = load i32, i32* %303, align 4
  %305 = and i32 %304, 1
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %308

307:                                              ; preds = %285
  br label %312

308:                                              ; preds = %285
  br label %309

309:                                              ; preds = %308
  %310 = load i32, i32* %20, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %20, align 4
  br label %266

312:                                              ; preds = %307, %275
  br label %313

313:                                              ; preds = %312
  %314 = load i32, i32* %19, align 4
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %19, align 4
  br label %256

316:                                              ; preds = %256
  %317 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %318

318:                                              ; preds = %339, %316
  %319 = load i32, i32* %19, align 4
  %320 = load i32, i32* %17, align 4
  %321 = icmp sle i32 %319, %320
  br i1 %321, label %322, label %342

322:                                              ; preds = %318
  %323 = load i32*, i32** %16, align 8
  %324 = load i32, i32* %19, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i32, i32* %323, i64 %325
  %327 = load i32, i32* %326, align 4
  %328 = load i32, i32* %19, align 4
  %329 = mul nsw i32 %327, %328
  %330 = load i32, i32* %18, align 4
  %331 = add nsw i32 %330, %329
  store i32 %331, i32* %18, align 4
  %332 = load i32*, i32** %16, align 8
  %333 = load i32, i32* %19, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i32, i32* %332, i64 %334
  %336 = load i32, i32* %335, align 4
  %337 = load i32, i32* %19, align 4
  %338 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0), i32 %336, i32 %337)
  br label %339

339:                                              ; preds = %322
  %340 = load i32, i32* %19, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %19, align 4
  br label %318

342:                                              ; preds = %318
  %343 = load i32, i32* %10, align 4
  %344 = load i32, i32* %18, align 4
  %345 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.14, i64 0, i64 0), i32 %343, i32 %344)
  br label %389

346:                                              ; preds = %150
  %347 = load i32, i32* %10, align 4
  %348 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i32 %347)
  %349 = load i32, i32* %12, align 4
  %350 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i32 %349)
  %351 = load i32, i32* %13, align 4
  %352 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), i32 %351)
  %353 = load i32, i32* %14, align 4
  %354 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i32 %353)
  %355 = load i32, i32* %11, align 4
  %356 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0), i32 %355)
  store i32 0, i32* %19, align 4
  br label %357

357:                                              ; preds = %369, %346
  %358 = load i32, i32* %19, align 4
  %359 = load i32, i32* %10, align 4
  %360 = icmp slt i32 %358, %359
  br i1 %360, label %361, label %372

361:                                              ; preds = %357
  %362 = load i32, i32* %19, align 4
  %363 = load i32*, i32** %8, align 8
  %364 = load i32, i32* %19, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i32, i32* %363, i64 %365
  %367 = load i32, i32* %366, align 4
  %368 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i64 0, i64 0), i32 %362, i32 %367)
  br label %369

369:                                              ; preds = %361
  %370 = load i32, i32* %19, align 4
  %371 = add nsw i32 %370, 1
  store i32 %371, i32* %19, align 4
  br label %357

372:                                              ; preds = %357
  store i32 0, i32* %19, align 4
  br label %373

373:                                              ; preds = %385, %372
  %374 = load i32, i32* %19, align 4
  %375 = load i32, i32* %11, align 4
  %376 = icmp slt i32 %374, %375
  br i1 %376, label %377, label %388

377:                                              ; preds = %373
  %378 = load i32, i32* %19, align 4
  %379 = load i32*, i32** %9, align 8
  %380 = load i32, i32* %19, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds i32, i32* %379, i64 %381
  %383 = load i32, i32* %382, align 4
  %384 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0), i32 %378, i32 %383)
  br label %385

385:                                              ; preds = %377
  %386 = load i32, i32* %19, align 4
  %387 = add nsw i32 %386, 1
  store i32 %387, i32* %19, align 4
  br label %373

388:                                              ; preds = %373
  br label %389

389:                                              ; preds = %56, %63, %90, %103, %108, %136, %388, %342
  ret void
}

declare dso_local i32 @PRT(i8*, ...) #1

declare dso_local i32 @elf_errno(...) #1

declare dso_local %struct.TYPE_3__* @elf_getdata(i32, i32*) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i32 @elf_errmsg(i32) #1

declare dso_local i32 @get_ent_count(%struct.section*, i32*) #1

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @get_symbol_name(%struct.elfdump*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
