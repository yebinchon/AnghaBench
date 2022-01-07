; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_cplus-dem.c_demangle_signature.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_cplus-dem.c_demangle_signature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_stuff = type { i32, i64, i32, i32, i32 }

@AUTO_DEMANGLING = common dso_local global i64 0, align 8
@GNU_DEMANGLING = common dso_local global i64 0, align 8
@HP_DEMANGLING = common dso_local global i32 0, align 4
@EDG_DEMANGLING = common dso_local global i64 0, align 8
@LUCID_DEMANGLING = common dso_local global i64 0, align 8
@ARM_DEMANGLING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"~\00", align 1
@PRINT_ARG_TYPES = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c" static\00", align 1
@TYPE_UNQUALIFIED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.work_stuff*, i8**, i32*)* @demangle_signature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @demangle_signature(%struct.work_stuff* %0, i8** %1, i32* %2) #0 {
  %4 = alloca %struct.work_stuff*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.work_stuff* %0, %struct.work_stuff** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i8* null, i8** %11, align 8
  br label %16

16:                                               ; preds = %417, %3
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load i8**, i8*** %5, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 0
  br label %25

25:                                               ; preds = %19, %16
  %26 = phi i1 [ false, %16 ], [ %24, %19 ]
  br i1 %26, label %27, label %418

27:                                               ; preds = %25
  %28 = load i8**, i8*** %5, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  switch i32 %31, label %381 [
    i32 81, label %32
    i32 75, label %60
    i32 83, label %74
    i32 67, label %86
    i32 86, label %86
    i32 117, label %86
    i32 76, label %104
    i32 48, label %139
    i32 49, label %139
    i32 50, label %139
    i32 51, label %139
    i32 52, label %139
    i32 53, label %139
    i32 54, label %139
    i32 55, label %139
    i32 56, label %139
    i32 57, label %139
    i32 66, label %183
    i32 70, label %197
    i32 116, label %243
    i32 95, label %309
    i32 72, label %358
  ]

32:                                               ; preds = %27
  %33 = load i8**, i8*** %5, align 8
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %11, align 8
  %35 = load %struct.work_stuff*, %struct.work_stuff** %4, align 8
  %36 = load i8**, i8*** %5, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @demangle_qualified(%struct.work_stuff* %35, i8** %36, i32* %37, i32 1, i32 0)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %32
  %42 = load %struct.work_stuff*, %struct.work_stuff** %4, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = load i8**, i8*** %5, align 8
  %45 = load i8*, i8** %44, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = ptrtoint i8* %45 to i64
  %48 = ptrtoint i8* %46 to i64
  %49 = sub i64 %47, %48
  %50 = trunc i64 %49 to i32
  %51 = call i32 @remember_type(%struct.work_stuff* %42, i8* %43, i32 %50)
  br label %52

52:                                               ; preds = %41, %32
  %53 = load i64, i64* @AUTO_DEMANGLING, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = load i64, i64* @GNU_DEMANGLING, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55, %52
  store i32 1, i32* %9, align 4
  br label %59

59:                                               ; preds = %58, %55
  store i8* null, i8** %11, align 8
  br label %394

60:                                               ; preds = %27
  %61 = load i8**, i8*** %5, align 8
  %62 = load i8*, i8** %61, align 8
  store i8* %62, i8** %11, align 8
  %63 = load %struct.work_stuff*, %struct.work_stuff** %4, align 8
  %64 = load i8**, i8*** %5, align 8
  %65 = load i32*, i32** %6, align 8
  %66 = call i32 @demangle_qualified(%struct.work_stuff* %63, i8** %64, i32* %65, i32 1, i32 0)
  store i32 %66, i32* %7, align 4
  %67 = load i64, i64* @AUTO_DEMANGLING, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %60
  %70 = load i64, i64* @GNU_DEMANGLING, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %69, %60
  store i32 1, i32* %9, align 4
  br label %73

73:                                               ; preds = %72, %69
  store i8* null, i8** %11, align 8
  br label %394

74:                                               ; preds = %27
  %75 = load i8*, i8** %11, align 8
  %76 = icmp eq i8* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i8**, i8*** %5, align 8
  %79 = load i8*, i8** %78, align 8
  store i8* %79, i8** %11, align 8
  br label %80

80:                                               ; preds = %77, %74
  %81 = load i8**, i8*** %5, align 8
  %82 = load i8*, i8** %81, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %81, align 8
  %84 = load %struct.work_stuff*, %struct.work_stuff** %4, align 8
  %85 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %84, i32 0, i32 0
  store i32 1, i32* %85, align 8
  br label %394

86:                                               ; preds = %27, %27, %27
  %87 = load i8**, i8*** %5, align 8
  %88 = load i8*, i8** %87, align 8
  %89 = load i8, i8* %88, align 1
  %90 = call i64 @code_for_qualifier(i8 signext %89)
  %91 = load %struct.work_stuff*, %struct.work_stuff** %4, align 8
  %92 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = or i64 %93, %90
  store i64 %94, i64* %92, align 8
  %95 = load i8*, i8** %11, align 8
  %96 = icmp eq i8* %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %86
  %98 = load i8**, i8*** %5, align 8
  %99 = load i8*, i8** %98, align 8
  store i8* %99, i8** %11, align 8
  br label %100

100:                                              ; preds = %97, %86
  %101 = load i8**, i8*** %5, align 8
  %102 = load i8*, i8** %101, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %101, align 8
  br label %394

104:                                              ; preds = %27
  %105 = load i32, i32* @HP_DEMANGLING, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %137

107:                                              ; preds = %104
  br label %108

108:                                              ; preds = %122, %107
  %109 = load i8**, i8*** %5, align 8
  %110 = load i8*, i8** %109, align 8
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %108
  %115 = load i8**, i8*** %5, align 8
  %116 = load i8*, i8** %115, align 8
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp ne i32 %118, 95
  br label %120

120:                                              ; preds = %114, %108
  %121 = phi i1 [ false, %108 ], [ %119, %114 ]
  br i1 %121, label %122, label %126

122:                                              ; preds = %120
  %123 = load i8**, i8*** %5, align 8
  %124 = load i8*, i8** %123, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %125, i8** %123, align 8
  br label %108

126:                                              ; preds = %120
  %127 = load i8**, i8*** %5, align 8
  %128 = load i8*, i8** %127, align 8
  %129 = load i8, i8* %128, align 1
  %130 = icmp ne i8 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %126
  store i32 0, i32* %7, align 4
  br label %136

132:                                              ; preds = %126
  %133 = load i8**, i8*** %5, align 8
  %134 = load i8*, i8** %133, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %133, align 8
  br label %136

136:                                              ; preds = %132, %131
  br label %138

137:                                              ; preds = %104
  store i32 0, i32* %7, align 4
  br label %138

138:                                              ; preds = %137, %136
  br label %394

139:                                              ; preds = %27, %27, %27, %27, %27, %27, %27, %27, %27, %27
  %140 = load i8*, i8** %11, align 8
  %141 = icmp eq i8* %140, null
  br i1 %141, label %142, label %145

142:                                              ; preds = %139
  %143 = load i8**, i8*** %5, align 8
  %144 = load i8*, i8** %143, align 8
  store i8* %144, i8** %11, align 8
  br label %145

145:                                              ; preds = %142, %139
  %146 = load %struct.work_stuff*, %struct.work_stuff** %4, align 8
  %147 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %146, i32 0, i32 2
  store i32 -1, i32* %147, align 8
  %148 = load %struct.work_stuff*, %struct.work_stuff** %4, align 8
  %149 = load i8**, i8*** %5, align 8
  %150 = load i32*, i32** %6, align 8
  %151 = call i32 @demangle_class(%struct.work_stuff* %148, i8** %149, i32* %150)
  store i32 %151, i32* %7, align 4
  %152 = load i32, i32* %7, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %165

154:                                              ; preds = %145
  %155 = load %struct.work_stuff*, %struct.work_stuff** %4, align 8
  %156 = load i8*, i8** %11, align 8
  %157 = load i8**, i8*** %5, align 8
  %158 = load i8*, i8** %157, align 8
  %159 = load i8*, i8** %11, align 8
  %160 = ptrtoint i8* %158 to i64
  %161 = ptrtoint i8* %159 to i64
  %162 = sub i64 %160, %161
  %163 = trunc i64 %162 to i32
  %164 = call i32 @remember_type(%struct.work_stuff* %155, i8* %156, i32 %163)
  br label %165

165:                                              ; preds = %154, %145
  %166 = load i64, i64* @AUTO_DEMANGLING, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %174, label %168

168:                                              ; preds = %165
  %169 = load i64, i64* @GNU_DEMANGLING, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %174, label %171

171:                                              ; preds = %168
  %172 = load i64, i64* @EDG_DEMANGLING, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %182

174:                                              ; preds = %171, %168, %165
  %175 = load i8**, i8*** %5, align 8
  %176 = load i8*, i8** %175, align 8
  %177 = load i8, i8* %176, align 1
  %178 = sext i8 %177 to i32
  %179 = icmp ne i32 %178, 70
  br i1 %179, label %180, label %181

180:                                              ; preds = %174
  store i32 1, i32* %9, align 4
  br label %181

181:                                              ; preds = %180, %174
  br label %182

182:                                              ; preds = %181, %171
  store i8* null, i8** %11, align 8
  br label %394

183:                                              ; preds = %27
  %184 = load %struct.work_stuff*, %struct.work_stuff** %4, align 8
  %185 = load i8**, i8*** %5, align 8
  %186 = call i32 @do_type(%struct.work_stuff* %184, i8** %185, i32* %14)
  store i32 %186, i32* %7, align 4
  %187 = load i32, i32* %7, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %196

189:                                              ; preds = %183
  %190 = load %struct.work_stuff*, %struct.work_stuff** %4, align 8
  %191 = call i8* @SCOPE_STRING(%struct.work_stuff* %190)
  %192 = call i32 @string_append(i32* %14, i8* %191)
  %193 = load i32*, i32** %6, align 8
  %194 = call i32 @string_prepends(i32* %193, i32* %14)
  %195 = call i32 @string_delete(i32* %14)
  br label %196

196:                                              ; preds = %189, %183
  store i8* null, i8** %11, align 8
  store i32 1, i32* %9, align 4
  br label %394

197:                                              ; preds = %27
  store i8* null, i8** %11, align 8
  store i32 1, i32* %8, align 4
  %198 = load i8**, i8*** %5, align 8
  %199 = load i8*, i8** %198, align 8
  %200 = getelementptr inbounds i8, i8* %199, i32 1
  store i8* %200, i8** %198, align 8
  %201 = load i64, i64* @LUCID_DEMANGLING, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %212, label %203

203:                                              ; preds = %197
  %204 = load i64, i64* @ARM_DEMANGLING, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %212, label %206

206:                                              ; preds = %203
  %207 = load i32, i32* @HP_DEMANGLING, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %212, label %209

209:                                              ; preds = %206
  %210 = load i64, i64* @EDG_DEMANGLING, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %215

212:                                              ; preds = %209, %206, %203, %197
  %213 = load %struct.work_stuff*, %struct.work_stuff** %4, align 8
  %214 = call i32 @forget_types(%struct.work_stuff* %213)
  br label %215

215:                                              ; preds = %212, %209
  %216 = load %struct.work_stuff*, %struct.work_stuff** %4, align 8
  %217 = load i8**, i8*** %5, align 8
  %218 = load i32*, i32** %6, align 8
  %219 = call i32 @demangle_args(%struct.work_stuff* %216, i8** %217, i32* %218)
  store i32 %219, i32* %7, align 4
  %220 = load i32, i32* %7, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %242

222:                                              ; preds = %215
  %223 = load i64, i64* @AUTO_DEMANGLING, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %228, label %225

225:                                              ; preds = %222
  %226 = load i64, i64* @EDG_DEMANGLING, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %242

228:                                              ; preds = %225, %222
  %229 = load i8**, i8*** %5, align 8
  %230 = load i8*, i8** %229, align 8
  %231 = load i8, i8* %230, align 1
  %232 = sext i8 %231 to i32
  %233 = icmp eq i32 %232, 95
  br i1 %233, label %234, label %242

234:                                              ; preds = %228
  %235 = load i8**, i8*** %5, align 8
  %236 = load i8*, i8** %235, align 8
  %237 = getelementptr inbounds i8, i8* %236, i32 1
  store i8* %237, i8** %235, align 8
  %238 = load %struct.work_stuff*, %struct.work_stuff** %4, align 8
  %239 = load i8**, i8*** %5, align 8
  %240 = call i32 @do_type(%struct.work_stuff* %238, i8** %239, i32* %13)
  store i32 %240, i32* %7, align 4
  %241 = call i32 @string_delete(i32* %13)
  br label %242

242:                                              ; preds = %234, %228, %225, %215
  br label %394

243:                                              ; preds = %27
  %244 = call i32 @string_init(i32* %12)
  %245 = call i32 @string_init(i32* %13)
  %246 = load i8*, i8** %11, align 8
  %247 = icmp eq i8* %246, null
  br i1 %247, label %248, label %251

248:                                              ; preds = %243
  %249 = load i8**, i8*** %5, align 8
  %250 = load i8*, i8** %249, align 8
  store i8* %250, i8** %11, align 8
  br label %251

251:                                              ; preds = %248, %243
  %252 = load %struct.work_stuff*, %struct.work_stuff** %4, align 8
  %253 = load i8**, i8*** %5, align 8
  %254 = call i32 @demangle_template(%struct.work_stuff* %252, i8** %253, i32* %13, i32* %12, i32 1, i32 1)
  store i32 %254, i32* %7, align 4
  %255 = load i32, i32* %7, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %268

257:                                              ; preds = %251
  %258 = load %struct.work_stuff*, %struct.work_stuff** %4, align 8
  %259 = load i8*, i8** %11, align 8
  %260 = load i8**, i8*** %5, align 8
  %261 = load i8*, i8** %260, align 8
  %262 = load i8*, i8** %11, align 8
  %263 = ptrtoint i8* %261 to i64
  %264 = ptrtoint i8* %262 to i64
  %265 = sub i64 %263, %264
  %266 = trunc i64 %265 to i32
  %267 = call i32 @remember_type(%struct.work_stuff* %258, i8* %259, i32 %266)
  br label %268

268:                                              ; preds = %257, %251
  %269 = load %struct.work_stuff*, %struct.work_stuff** %4, align 8
  %270 = call i8* @SCOPE_STRING(%struct.work_stuff* %269)
  %271 = call i32 @string_append(i32* %13, i8* %270)
  %272 = load i32*, i32** %6, align 8
  %273 = call i32 @string_prepends(i32* %272, i32* %13)
  %274 = load %struct.work_stuff*, %struct.work_stuff** %4, align 8
  %275 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %274, i32 0, i32 3
  %276 = load i32, i32* %275, align 4
  %277 = and i32 %276, 1
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %287

279:                                              ; preds = %268
  %280 = call i32 @string_prepend(i32* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %281 = load i32*, i32** %6, align 8
  %282 = call i32 @string_appends(i32* %281, i32* %12)
  %283 = load %struct.work_stuff*, %struct.work_stuff** %4, align 8
  %284 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %283, i32 0, i32 3
  %285 = load i32, i32* %284, align 4
  %286 = sub nsw i32 %285, 1
  store i32 %286, i32* %284, align 4
  br label %287

287:                                              ; preds = %279, %268
  %288 = load %struct.work_stuff*, %struct.work_stuff** %4, align 8
  %289 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %288, i32 0, i32 4
  %290 = load i32, i32* %289, align 8
  %291 = and i32 %290, 1
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %299, label %293

293:                                              ; preds = %287
  %294 = load %struct.work_stuff*, %struct.work_stuff** %4, align 8
  %295 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %294, i32 0, i32 3
  %296 = load i32, i32* %295, align 4
  %297 = and i32 %296, 1
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %306

299:                                              ; preds = %293, %287
  %300 = load i32*, i32** %6, align 8
  %301 = call i32 @string_appends(i32* %300, i32* %12)
  %302 = load %struct.work_stuff*, %struct.work_stuff** %4, align 8
  %303 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %302, i32 0, i32 4
  %304 = load i32, i32* %303, align 8
  %305 = sub nsw i32 %304, 1
  store i32 %305, i32* %303, align 8
  br label %306

306:                                              ; preds = %299, %293
  %307 = call i32 @string_delete(i32* %12)
  %308 = call i32 @string_delete(i32* %13)
  store i8* null, i8** %11, align 8
  store i32 1, i32* %9, align 4
  br label %394

309:                                              ; preds = %27
  %310 = load i64, i64* @AUTO_DEMANGLING, align 8
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %315, label %312

312:                                              ; preds = %309
  %313 = load i64, i64* @GNU_DEMANGLING, align 8
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %315, label %329

315:                                              ; preds = %312, %309
  %316 = load i32, i32* %10, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %329

318:                                              ; preds = %315
  %319 = load i8**, i8*** %5, align 8
  %320 = load i8*, i8** %319, align 8
  %321 = getelementptr inbounds i8, i8* %320, i32 1
  store i8* %321, i8** %319, align 8
  %322 = load %struct.work_stuff*, %struct.work_stuff** %4, align 8
  %323 = load i8**, i8*** %5, align 8
  %324 = call i32 @do_type(%struct.work_stuff* %322, i8** %323, i32* %15)
  store i32 %324, i32* %7, align 4
  %325 = call i32 @APPEND_BLANK(i32* %15)
  %326 = load i32*, i32** %6, align 8
  %327 = call i32 @string_prepends(i32* %326, i32* %15)
  %328 = call i32 @string_delete(i32* %15)
  br label %394

329:                                              ; preds = %315, %312
  %330 = load i32, i32* @HP_DEMANGLING, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %355

332:                                              ; preds = %329
  %333 = load i8**, i8*** %5, align 8
  %334 = load i8*, i8** %333, align 8
  %335 = getelementptr inbounds i8, i8* %334, i32 1
  store i8* %335, i8** %333, align 8
  br label %336

336:                                              ; preds = %350, %332
  %337 = load i8**, i8*** %5, align 8
  %338 = load i8*, i8** %337, align 8
  %339 = load i8, i8* %338, align 1
  %340 = sext i8 %339 to i32
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %348

342:                                              ; preds = %336
  %343 = load i8**, i8*** %5, align 8
  %344 = load i8*, i8** %343, align 8
  %345 = load i8, i8* %344, align 1
  %346 = call i32 @ISDIGIT(i8 zeroext %345)
  %347 = icmp ne i32 %346, 0
  br label %348

348:                                              ; preds = %342, %336
  %349 = phi i1 [ false, %336 ], [ %347, %342 ]
  br i1 %349, label %350, label %354

350:                                              ; preds = %348
  %351 = load i8**, i8*** %5, align 8
  %352 = load i8*, i8** %351, align 8
  %353 = getelementptr inbounds i8, i8* %352, i32 1
  store i8* %353, i8** %351, align 8
  br label %336

354:                                              ; preds = %348
  br label %356

355:                                              ; preds = %329
  store i32 0, i32* %7, align 4
  br label %356

356:                                              ; preds = %355, %354
  br label %357

357:                                              ; preds = %356
  br label %394

358:                                              ; preds = %27
  %359 = load i64, i64* @AUTO_DEMANGLING, align 8
  %360 = icmp ne i64 %359, 0
  br i1 %360, label %364, label %361

361:                                              ; preds = %358
  %362 = load i64, i64* @GNU_DEMANGLING, align 8
  %363 = icmp ne i64 %362, 0
  br i1 %363, label %364, label %379

364:                                              ; preds = %361, %358
  %365 = load %struct.work_stuff*, %struct.work_stuff** %4, align 8
  %366 = load i8**, i8*** %5, align 8
  %367 = load i32*, i32** %6, align 8
  %368 = call i32 @demangle_template(%struct.work_stuff* %365, i8** %366, i32* %367, i32* null, i32 0, i32 0)
  store i32 %368, i32* %7, align 4
  %369 = load %struct.work_stuff*, %struct.work_stuff** %4, align 8
  %370 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %369, i32 0, i32 4
  %371 = load i32, i32* %370, align 8
  %372 = and i32 %371, 1
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %375, label %374

374:                                              ; preds = %364
  store i32 1, i32* %10, align 4
  br label %375

375:                                              ; preds = %374, %364
  %376 = load i8**, i8*** %5, align 8
  %377 = load i8*, i8** %376, align 8
  %378 = getelementptr inbounds i8, i8* %377, i32 1
  store i8* %378, i8** %376, align 8
  br label %394

379:                                              ; preds = %361
  br label %380

380:                                              ; preds = %379
  br label %381

381:                                              ; preds = %27, %380
  %382 = load i64, i64* @AUTO_DEMANGLING, align 8
  %383 = icmp ne i64 %382, 0
  br i1 %383, label %387, label %384

384:                                              ; preds = %381
  %385 = load i64, i64* @GNU_DEMANGLING, align 8
  %386 = icmp ne i64 %385, 0
  br i1 %386, label %387, label %392

387:                                              ; preds = %384, %381
  store i32 1, i32* %8, align 4
  %388 = load %struct.work_stuff*, %struct.work_stuff** %4, align 8
  %389 = load i8**, i8*** %5, align 8
  %390 = load i32*, i32** %6, align 8
  %391 = call i32 @demangle_args(%struct.work_stuff* %388, i8** %389, i32* %390)
  store i32 %391, i32* %7, align 4
  br label %393

392:                                              ; preds = %384
  store i32 0, i32* %7, align 4
  br label %393

393:                                              ; preds = %392, %387
  br label %394

394:                                              ; preds = %393, %375, %357, %318, %306, %242, %196, %182, %138, %100, %80, %73, %59
  %395 = load i32, i32* %7, align 4
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %397, label %417

397:                                              ; preds = %394
  %398 = load i32, i32* %9, align 4
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %400, label %417

400:                                              ; preds = %397
  store i32 1, i32* %8, align 4
  %401 = load i64, i64* @LUCID_DEMANGLING, align 8
  %402 = icmp ne i64 %401, 0
  br i1 %402, label %409, label %403

403:                                              ; preds = %400
  %404 = load i64, i64* @ARM_DEMANGLING, align 8
  %405 = icmp ne i64 %404, 0
  br i1 %405, label %409, label %406

406:                                              ; preds = %403
  %407 = load i64, i64* @EDG_DEMANGLING, align 8
  %408 = icmp ne i64 %407, 0
  br i1 %408, label %409, label %412

409:                                              ; preds = %406, %403, %400
  %410 = load %struct.work_stuff*, %struct.work_stuff** %4, align 8
  %411 = call i32 @forget_types(%struct.work_stuff* %410)
  br label %412

412:                                              ; preds = %409, %406
  %413 = load %struct.work_stuff*, %struct.work_stuff** %4, align 8
  %414 = load i8**, i8*** %5, align 8
  %415 = load i32*, i32** %6, align 8
  %416 = call i32 @demangle_args(%struct.work_stuff* %413, i8** %414, i32* %415)
  store i32 %416, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %417

417:                                              ; preds = %412, %397, %394
  br label %16

418:                                              ; preds = %25
  %419 = load i32, i32* %7, align 4
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %421, label %436

421:                                              ; preds = %418
  %422 = load i32, i32* %8, align 4
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %436, label %424

424:                                              ; preds = %421
  %425 = load i64, i64* @AUTO_DEMANGLING, align 8
  %426 = icmp ne i64 %425, 0
  br i1 %426, label %430, label %427

427:                                              ; preds = %424
  %428 = load i64, i64* @GNU_DEMANGLING, align 8
  %429 = icmp ne i64 %428, 0
  br i1 %429, label %430, label %435

430:                                              ; preds = %427, %424
  %431 = load %struct.work_stuff*, %struct.work_stuff** %4, align 8
  %432 = load i8**, i8*** %5, align 8
  %433 = load i32*, i32** %6, align 8
  %434 = call i32 @demangle_args(%struct.work_stuff* %431, i8** %432, i32* %433)
  store i32 %434, i32* %7, align 4
  br label %435

435:                                              ; preds = %430, %427
  br label %436

436:                                              ; preds = %435, %421, %418
  %437 = load i32, i32* %7, align 4
  %438 = icmp ne i32 %437, 0
  br i1 %438, label %439, label %466

439:                                              ; preds = %436
  %440 = load i64, i64* @PRINT_ARG_TYPES, align 8
  %441 = icmp ne i64 %440, 0
  br i1 %441, label %442, label %466

442:                                              ; preds = %439
  %443 = load %struct.work_stuff*, %struct.work_stuff** %4, align 8
  %444 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %443, i32 0, i32 0
  %445 = load i32, i32* %444, align 8
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %447, label %450

447:                                              ; preds = %442
  %448 = load i32*, i32** %6, align 8
  %449 = call i32 @string_append(i32* %448, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %450

450:                                              ; preds = %447, %442
  %451 = load %struct.work_stuff*, %struct.work_stuff** %4, align 8
  %452 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %451, i32 0, i32 1
  %453 = load i64, i64* %452, align 8
  %454 = load i64, i64* @TYPE_UNQUALIFIED, align 8
  %455 = icmp ne i64 %453, %454
  br i1 %455, label %456, label %465

456:                                              ; preds = %450
  %457 = load i32*, i32** %6, align 8
  %458 = call i32 @APPEND_BLANK(i32* %457)
  %459 = load i32*, i32** %6, align 8
  %460 = load %struct.work_stuff*, %struct.work_stuff** %4, align 8
  %461 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %460, i32 0, i32 1
  %462 = load i64, i64* %461, align 8
  %463 = call i8* @qualifier_string(i64 %462)
  %464 = call i32 @string_append(i32* %459, i8* %463)
  br label %465

465:                                              ; preds = %456, %450
  br label %466

466:                                              ; preds = %465, %439, %436
  %467 = load i32, i32* %7, align 4
  ret i32 %467
}

declare dso_local i32 @demangle_qualified(%struct.work_stuff*, i8**, i32*, i32, i32) #1

declare dso_local i32 @remember_type(%struct.work_stuff*, i8*, i32) #1

declare dso_local i64 @code_for_qualifier(i8 signext) #1

declare dso_local i32 @demangle_class(%struct.work_stuff*, i8**, i32*) #1

declare dso_local i32 @do_type(%struct.work_stuff*, i8**, i32*) #1

declare dso_local i32 @string_append(i32*, i8*) #1

declare dso_local i8* @SCOPE_STRING(%struct.work_stuff*) #1

declare dso_local i32 @string_prepends(i32*, i32*) #1

declare dso_local i32 @string_delete(i32*) #1

declare dso_local i32 @forget_types(%struct.work_stuff*) #1

declare dso_local i32 @demangle_args(%struct.work_stuff*, i8**, i32*) #1

declare dso_local i32 @string_init(i32*) #1

declare dso_local i32 @demangle_template(%struct.work_stuff*, i8**, i32*, i32*, i32, i32) #1

declare dso_local i32 @string_prepend(i32*, i8*) #1

declare dso_local i32 @string_appends(i32*, i32*) #1

declare dso_local i32 @APPEND_BLANK(i32*) #1

declare dso_local i32 @ISDIGIT(i8 zeroext) #1

declare dso_local i8* @qualifier_string(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
