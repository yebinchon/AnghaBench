; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_sparc-dis.c_compare_opcodes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_sparc-dis.c_compare_opcodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32, i8*, i32, i32 }

@current_arch_mask = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Internal error:  bad sparc-opcode.h: \22%s\22, %#.8lx, %#.8lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"Internal error: bad sparc-opcode.h: \22%s\22, %#.8lx, %#.8lx\0A\00", align 1
@F_ALIAS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"Internal error: bad sparc-opcode.h: \22%s\22 == \22%s\22\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"i,1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @compare_opcodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_opcodes(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_2__*, align 8
  %7 = alloca %struct.TYPE_2__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = bitcast i8* %25 to %struct.TYPE_2__**
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  store %struct.TYPE_2__* %27, %struct.TYPE_2__** %6, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = bitcast i8* %28 to %struct.TYPE_2__**
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  store %struct.TYPE_2__* %30, %struct.TYPE_2__** %7, align 8
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %8, align 8
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %9, align 8
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %10, align 8
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %11, align 8
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @current_arch_mask, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %2
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @current_arch_mask, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %49
  store i32 -1, i32* %3, align 4
  br label %317

57:                                               ; preds = %49
  br label %84

58:                                               ; preds = %2
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @current_arch_mask, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  store i32 1, i32* %3, align 4
  br label %317

66:                                               ; preds = %58
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %69, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %66
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = sub nsw i32 %77, %80
  store i32 %81, i32* %3, align 4
  br label %317

82:                                               ; preds = %66
  br label %83

83:                                               ; preds = %82
  br label %84

84:                                               ; preds = %83, %57
  %85 = load i64, i64* %8, align 8
  %86 = load i64, i64* %10, align 8
  %87 = and i64 %85, %86
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %109

89:                                               ; preds = %84
  %90 = load i32, i32* @stderr, align 4
  %91 = call i8* @_(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 3
  %94 = load i8*, i8** %93, align 8
  %95 = load i64, i64* %8, align 8
  %96 = load i64, i64* %10, align 8
  %97 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %90, i8* %91, i8* %94, i64 %95, i64 %96)
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = xor i64 %100, -1
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = and i64 %104, %101
  store i64 %105, i64* %103, align 8
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  store i64 %108, i64* %10, align 8
  br label %109

109:                                              ; preds = %89, %84
  %110 = load i64, i64* %9, align 8
  %111 = load i64, i64* %11, align 8
  %112 = and i64 %110, %111
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %134

114:                                              ; preds = %109
  %115 = load i32, i32* @stderr, align 4
  %116 = call i8* @_(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 3
  %119 = load i8*, i8** %118, align 8
  %120 = load i64, i64* %9, align 8
  %121 = load i64, i64* %11, align 8
  %122 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %115, i8* %116, i8* %119, i64 %120, i64 %121)
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = xor i64 %125, -1
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = and i64 %129, %126
  store i64 %130, i64* %128, align 8
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  store i64 %133, i64* %11, align 8
  br label %134

134:                                              ; preds = %114, %109
  store i32 0, i32* %12, align 4
  br label %135

135:                                              ; preds = %160, %134
  %136 = load i32, i32* %12, align 4
  %137 = icmp ult i32 %136, 32
  br i1 %137, label %138, label %163

138:                                              ; preds = %135
  %139 = load i32, i32* %12, align 4
  %140 = shl i32 1, %139
  %141 = sext i32 %140 to i64
  store i64 %141, i64* %13, align 8
  %142 = load i64, i64* %8, align 8
  %143 = load i64, i64* %13, align 8
  %144 = and i64 %142, %143
  %145 = icmp ne i64 %144, 0
  %146 = zext i1 %145 to i32
  store i32 %146, i32* %14, align 4
  %147 = load i64, i64* %9, align 8
  %148 = load i64, i64* %13, align 8
  %149 = and i64 %147, %148
  %150 = icmp ne i64 %149, 0
  %151 = zext i1 %150 to i32
  store i32 %151, i32* %15, align 4
  %152 = load i32, i32* %14, align 4
  %153 = load i32, i32* %15, align 4
  %154 = icmp ne i32 %152, %153
  br i1 %154, label %155, label %159

155:                                              ; preds = %138
  %156 = load i32, i32* %15, align 4
  %157 = load i32, i32* %14, align 4
  %158 = sub nsw i32 %156, %157
  store i32 %158, i32* %3, align 4
  br label %317

159:                                              ; preds = %138
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %12, align 4
  %162 = add i32 %161, 1
  store i32 %162, i32* %12, align 4
  br label %135

163:                                              ; preds = %135
  store i32 0, i32* %12, align 4
  br label %164

164:                                              ; preds = %189, %163
  %165 = load i32, i32* %12, align 4
  %166 = icmp ult i32 %165, 32
  br i1 %166, label %167, label %192

167:                                              ; preds = %164
  %168 = load i32, i32* %12, align 4
  %169 = shl i32 1, %168
  %170 = sext i32 %169 to i64
  store i64 %170, i64* %16, align 8
  %171 = load i64, i64* %10, align 8
  %172 = load i64, i64* %16, align 8
  %173 = and i64 %171, %172
  %174 = icmp ne i64 %173, 0
  %175 = zext i1 %174 to i32
  store i32 %175, i32* %17, align 4
  %176 = load i64, i64* %11, align 8
  %177 = load i64, i64* %16, align 8
  %178 = and i64 %176, %177
  %179 = icmp ne i64 %178, 0
  %180 = zext i1 %179 to i32
  store i32 %180, i32* %18, align 4
  %181 = load i32, i32* %17, align 4
  %182 = load i32, i32* %18, align 4
  %183 = icmp ne i32 %181, %182
  br i1 %183, label %184, label %188

184:                                              ; preds = %167
  %185 = load i32, i32* %18, align 4
  %186 = load i32, i32* %17, align 4
  %187 = sub nsw i32 %185, %186
  store i32 %187, i32* %3, align 4
  br label %317

188:                                              ; preds = %167
  br label %189

189:                                              ; preds = %188
  %190 = load i32, i32* %12, align 4
  %191 = add i32 %190, 1
  store i32 %191, i32* %12, align 4
  br label %164

192:                                              ; preds = %164
  %193 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 4
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* @F_ALIAS, align 4
  %197 = and i32 %195, %196
  %198 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 4
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @F_ALIAS, align 4
  %202 = and i32 %200, %201
  %203 = sub nsw i32 %197, %202
  store i32 %203, i32* %19, align 4
  %204 = load i32, i32* %19, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %192
  %207 = load i32, i32* %19, align 4
  store i32 %207, i32* %3, align 4
  br label %317

208:                                              ; preds = %192
  %209 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i32 0, i32 3
  %211 = load i8*, i8** %210, align 8
  %212 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i32 0, i32 3
  %214 = load i8*, i8** %213, align 8
  %215 = call i32 @strcmp(i8* %211, i8* %214)
  store i32 %215, i32* %12, align 4
  %216 = load i32, i32* %12, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %238

218:                                              ; preds = %208
  %219 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %219, i32 0, i32 4
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* @F_ALIAS, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %227

225:                                              ; preds = %218
  %226 = load i32, i32* %12, align 4
  store i32 %226, i32* %3, align 4
  br label %317

227:                                              ; preds = %218
  %228 = load i32, i32* @stderr, align 4
  %229 = call i8* @_(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  %230 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %230, i32 0, i32 3
  %232 = load i8*, i8** %231, align 8
  %233 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %234 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %233, i32 0, i32 3
  %235 = load i8*, i8** %234, align 8
  %236 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %228, i8* %229, i8* %232, i8* %235)
  br label %237

237:                                              ; preds = %227
  br label %238

238:                                              ; preds = %237, %208
  %239 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %239, i32 0, i32 5
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @strlen(i32 %241)
  %243 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %244 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %243, i32 0, i32 5
  %245 = load i32, i32* %244, align 4
  %246 = call i32 @strlen(i32 %245)
  %247 = sub nsw i32 %242, %246
  store i32 %247, i32* %20, align 4
  %248 = load i32, i32* %20, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %252

250:                                              ; preds = %238
  %251 = load i32, i32* %20, align 4
  store i32 %251, i32* %3, align 4
  br label %317

252:                                              ; preds = %238
  %253 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %254 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %253, i32 0, i32 5
  %255 = load i32, i32* %254, align 4
  %256 = call i64 @strchr(i32 %255, i8 signext 43)
  %257 = inttoptr i64 %256 to i8*
  store i8* %257, i8** %21, align 8
  %258 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %259 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %258, i32 0, i32 5
  %260 = load i32, i32* %259, align 4
  %261 = call i64 @strchr(i32 %260, i8 signext 43)
  %262 = inttoptr i64 %261 to i8*
  store i8* %262, i8** %22, align 8
  %263 = load i8*, i8** %21, align 8
  %264 = icmp ne i8* %263, null
  br i1 %264, label %265, label %295

265:                                              ; preds = %252
  %266 = load i8*, i8** %22, align 8
  %267 = icmp ne i8* %266, null
  br i1 %267, label %268, label %295

268:                                              ; preds = %265
  %269 = load i8*, i8** %21, align 8
  %270 = getelementptr inbounds i8, i8* %269, i64 -1
  %271 = load i8, i8* %270, align 1
  %272 = sext i8 %271 to i32
  %273 = icmp eq i32 %272, 105
  br i1 %273, label %274, label %281

274:                                              ; preds = %268
  %275 = load i8*, i8** %22, align 8
  %276 = getelementptr inbounds i8, i8* %275, i64 1
  %277 = load i8, i8* %276, align 1
  %278 = sext i8 %277 to i32
  %279 = icmp eq i32 %278, 105
  br i1 %279, label %280, label %281

280:                                              ; preds = %274
  store i32 1, i32* %3, align 4
  br label %317

281:                                              ; preds = %274, %268
  %282 = load i8*, i8** %21, align 8
  %283 = getelementptr inbounds i8, i8* %282, i64 1
  %284 = load i8, i8* %283, align 1
  %285 = sext i8 %284 to i32
  %286 = icmp eq i32 %285, 105
  br i1 %286, label %287, label %294

287:                                              ; preds = %281
  %288 = load i8*, i8** %22, align 8
  %289 = getelementptr inbounds i8, i8* %288, i64 -1
  %290 = load i8, i8* %289, align 1
  %291 = sext i8 %290 to i32
  %292 = icmp eq i32 %291, 105
  br i1 %292, label %293, label %294

293:                                              ; preds = %287
  store i32 -1, i32* %3, align 4
  br label %317

294:                                              ; preds = %287, %281
  br label %295

295:                                              ; preds = %294, %265, %252
  %296 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %297 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %296, i32 0, i32 5
  %298 = load i32, i32* %297, align 4
  %299 = call i64 @strncmp(i32 %298, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 3)
  %300 = icmp eq i64 %299, 0
  %301 = zext i1 %300 to i32
  store i32 %301, i32* %23, align 4
  %302 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %303 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %302, i32 0, i32 5
  %304 = load i32, i32* %303, align 4
  %305 = call i64 @strncmp(i32 %304, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 3)
  %306 = icmp eq i64 %305, 0
  %307 = zext i1 %306 to i32
  store i32 %307, i32* %24, align 4
  %308 = load i32, i32* %23, align 4
  %309 = load i32, i32* %24, align 4
  %310 = xor i32 %308, %309
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %316

312:                                              ; preds = %295
  %313 = load i32, i32* %23, align 4
  %314 = load i32, i32* %24, align 4
  %315 = sub nsw i32 %313, %314
  store i32 %315, i32* %3, align 4
  br label %317

316:                                              ; preds = %295
  store i32 0, i32* %3, align 4
  br label %317

317:                                              ; preds = %316, %312, %293, %280, %250, %225, %206, %184, %155, %74, %65, %56
  %318 = load i32, i32* %3, align 4
  ret i32 %318
}

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i64 @strchr(i32, i8 signext) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
