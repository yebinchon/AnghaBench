; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_cplus-dem.c_demangle_arm_hp_template.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_cplus-dem.c_demangle_arm_hp_template.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_stuff = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }

@HP_DEMANGLING = common dso_local global i64 0, align 8
@DMGL_PARAMS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"_GLOBAL_\00", align 1
@cplus_markers = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [12 x i8] c"{anonymous}\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_stuff*, i8**, i32, %struct.TYPE_13__*)* @demangle_arm_hp_template to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @demangle_arm_hp_template(%struct.work_stuff* %0, i8** %1, i32 %2, %struct.TYPE_13__* %3) #0 {
  %5 = alloca %struct.work_stuff*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_13__, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_13__, align 4
  %17 = alloca i8*, align 8
  store %struct.work_stuff* %0, %struct.work_stuff** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %8, align 8
  %18 = load i8**, i8*** %6, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  store i8* %22, i8** %11, align 8
  %23 = load i64, i64* @HP_DEMANGLING, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %169

25:                                               ; preds = %4
  %26 = load i8**, i8*** %6, align 8
  %27 = load i8*, i8** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 88
  br i1 %33, label %34, label %169

34:                                               ; preds = %25
  store i8* null, i8** %13, align 8
  %35 = load i8**, i8*** %6, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = call i8* @strchr(i8* %36, i8 signext 60)
  store i8* %37, i8** %13, align 8
  %38 = load i8*, i8** %13, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %62

40:                                               ; preds = %34
  %41 = load i8*, i8** %13, align 8
  %42 = load i8**, i8*** %6, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = ptrtoint i8* %41 to i64
  %45 = ptrtoint i8* %43 to i64
  %46 = sub i64 %44, %45
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = icmp slt i64 %46, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %40
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %52 = load i8**, i8*** %6, align 8
  %53 = load i8*, i8** %52, align 8
  %54 = load i8*, i8** %13, align 8
  %55 = load i8**, i8*** %6, align 8
  %56 = load i8*, i8** %55, align 8
  %57 = ptrtoint i8* %54 to i64
  %58 = ptrtoint i8* %56 to i64
  %59 = sub i64 %57, %58
  %60 = trunc i64 %59 to i32
  %61 = call i32 @string_appendn(%struct.TYPE_13__* %51, i8* %53, i32 %60)
  br label %68

62:                                               ; preds = %40, %34
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %64 = load i8**, i8*** %6, align 8
  %65 = load i8*, i8** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @string_appendn(%struct.TYPE_13__* %63, i8* %65, i32 %66)
  br label %68

68:                                               ; preds = %62, %50
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  %71 = load i8**, i8*** %6, align 8
  %72 = load i8*, i8** %71, align 8
  %73 = sext i32 %70 to i64
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  store i8* %74, i8** %71, align 8
  %75 = call i32 @string_init(%struct.TYPE_13__* %12)
  %76 = load %struct.work_stuff*, %struct.work_stuff** %5, align 8
  %77 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, -1
  br i1 %79, label %80, label %90

80:                                               ; preds = %68
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = sub nsw i32 %83, %86
  %88 = load %struct.work_stuff*, %struct.work_stuff** %5, align 8
  %89 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  br label %90

90:                                               ; preds = %80, %68
  %91 = load %struct.work_stuff*, %struct.work_stuff** %5, align 8
  %92 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %14, align 4
  %94 = load i32, i32* @DMGL_PARAMS, align 4
  %95 = load %struct.work_stuff*, %struct.work_stuff** %5, align 8
  %96 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 4
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %100 = call i32 @string_append(%struct.TYPE_13__* %99, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %101

101:                                              ; preds = %90, %150
  %102 = call i32 @string_delete(%struct.TYPE_13__* %12)
  %103 = load i8**, i8*** %6, align 8
  %104 = load i8*, i8** %103, align 8
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  switch i32 %106, label %131 [
    i32 84, label %107
    i32 85, label %117
    i32 83, label %117
    i32 65, label %124
  ]

107:                                              ; preds = %101
  %108 = load i8**, i8*** %6, align 8
  %109 = load i8*, i8** %108, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %108, align 8
  %111 = load %struct.work_stuff*, %struct.work_stuff** %5, align 8
  %112 = load i8**, i8*** %6, align 8
  %113 = call i32 @do_type(%struct.work_stuff* %111, i8** %112, %struct.TYPE_13__* %12)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %107
  br label %152

116:                                              ; preds = %107
  br label %132

117:                                              ; preds = %101, %101
  %118 = load %struct.work_stuff*, %struct.work_stuff** %5, align 8
  %119 = load i8**, i8*** %6, align 8
  %120 = call i32 @do_hpacc_template_const_value(%struct.work_stuff* %118, i8** %119, %struct.TYPE_13__* %12)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %117
  br label %152

123:                                              ; preds = %117
  br label %132

124:                                              ; preds = %101
  %125 = load %struct.work_stuff*, %struct.work_stuff** %5, align 8
  %126 = load i8**, i8*** %6, align 8
  %127 = call i32 @do_hpacc_template_literal(%struct.work_stuff* %125, i8** %126, %struct.TYPE_13__* %12)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %124
  br label %152

130:                                              ; preds = %124
  br label %132

131:                                              ; preds = %101
  br label %152

132:                                              ; preds = %130, %123, %116
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %134 = call i32 @string_appends(%struct.TYPE_13__* %133, %struct.TYPE_13__* %12)
  %135 = load i8**, i8*** %6, align 8
  %136 = load i8*, i8** %135, align 8
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %146, label %140

140:                                              ; preds = %132
  %141 = load i8**, i8*** %6, align 8
  %142 = load i8*, i8** %141, align 8
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %144, 95
  br i1 %145, label %146, label %147

146:                                              ; preds = %140, %132
  br label %151

147:                                              ; preds = %140
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %149 = call i32 @string_append(%struct.TYPE_13__* %148, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %150

150:                                              ; preds = %147
  br label %101

151:                                              ; preds = %146
  br label %152

152:                                              ; preds = %151, %131, %129, %122, %115
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %154 = call i32 @string_append(%struct.TYPE_13__* %153, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %155 = call i32 @string_delete(%struct.TYPE_13__* %12)
  %156 = load i8**, i8*** %6, align 8
  %157 = load i8*, i8** %156, align 8
  %158 = load i8, i8* %157, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp eq i32 %159, 95
  br i1 %160, label %161, label %165

161:                                              ; preds = %152
  %162 = load i8**, i8*** %6, align 8
  %163 = load i8*, i8** %162, align 8
  %164 = getelementptr inbounds i8, i8* %163, i32 1
  store i8* %164, i8** %162, align 8
  br label %165

165:                                              ; preds = %161, %152
  %166 = load i32, i32* %14, align 4
  %167 = load %struct.work_stuff*, %struct.work_stuff** %5, align 8
  %168 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %167, i32 0, i32 1
  store i32 %166, i32* %168, align 4
  br label %351

169:                                              ; preds = %25, %4
  %170 = load %struct.work_stuff*, %struct.work_stuff** %5, align 8
  %171 = load i8**, i8*** %6, align 8
  %172 = load i8*, i8** %171, align 8
  %173 = load i32, i32* %7, align 4
  %174 = call i64 @arm_pt(%struct.work_stuff* %170, i8* %172, i32 %173, i8** %9, i8** %10)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %291

176:                                              ; preds = %169
  %177 = call i32 @string_init(%struct.TYPE_13__* %12)
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %179 = load i8**, i8*** %6, align 8
  %180 = load i8*, i8** %179, align 8
  %181 = load i8*, i8** %9, align 8
  %182 = load i8**, i8*** %6, align 8
  %183 = load i8*, i8** %182, align 8
  %184 = ptrtoint i8* %181 to i64
  %185 = ptrtoint i8* %183 to i64
  %186 = sub i64 %184, %185
  %187 = trunc i64 %186 to i32
  %188 = call i32 @string_appendn(%struct.TYPE_13__* %178, i8* %180, i32 %187)
  %189 = load %struct.work_stuff*, %struct.work_stuff** %5, align 8
  %190 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = icmp eq i32 %191, -1
  br i1 %192, label %193, label %203

193:                                              ; preds = %176
  %194 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = sub nsw i32 %196, %199
  %201 = load %struct.work_stuff*, %struct.work_stuff** %5, align 8
  %202 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %201, i32 0, i32 0
  store i32 %200, i32* %202, align 4
  br label %203

203:                                              ; preds = %193, %176
  %204 = load %struct.work_stuff*, %struct.work_stuff** %5, align 8
  %205 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  store i32 %206, i32* %15, align 4
  %207 = load i32, i32* @DMGL_PARAMS, align 4
  %208 = load %struct.work_stuff*, %struct.work_stuff** %5, align 8
  %209 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = or i32 %210, %207
  store i32 %211, i32* %209, align 4
  %212 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %213 = call i32 @string_append(%struct.TYPE_13__* %212, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %214

214:                                              ; preds = %269, %203
  %215 = load i8*, i8** %10, align 8
  %216 = load i8*, i8** %11, align 8
  %217 = icmp ult i8* %215, %216
  br i1 %217, label %218, label %274

218:                                              ; preds = %214
  %219 = call i32 @string_delete(%struct.TYPE_13__* %12)
  %220 = load i8*, i8** %10, align 8
  %221 = load i8, i8* %220, align 1
  %222 = sext i8 %221 to i32
  switch i32 %222, label %254 [
    i32 88, label %223
    i32 76, label %247
  ]

223:                                              ; preds = %218
  %224 = load i8*, i8** %10, align 8
  %225 = getelementptr inbounds i8, i8* %224, i32 1
  store i8* %225, i8** %10, align 8
  %226 = load %struct.work_stuff*, %struct.work_stuff** %5, align 8
  %227 = call i32 @do_type(%struct.work_stuff* %226, i8** %10, %struct.TYPE_13__* %16)
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %230, label %229

229:                                              ; preds = %223
  br label %275

230:                                              ; preds = %223
  %231 = call i32 @string_append(%struct.TYPE_13__* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %232 = call i32 @string_appends(%struct.TYPE_13__* %12, %struct.TYPE_13__* %16)
  %233 = call i32 @string_delete(%struct.TYPE_13__* %16)
  %234 = call i32 @string_append(%struct.TYPE_13__* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %235 = load i8*, i8** %10, align 8
  %236 = load i8, i8* %235, align 1
  %237 = sext i8 %236 to i32
  %238 = icmp ne i32 %237, 76
  br i1 %238, label %239, label %240

239:                                              ; preds = %230
  br label %275

240:                                              ; preds = %230
  %241 = load i8*, i8** %10, align 8
  %242 = getelementptr inbounds i8, i8* %241, i32 1
  store i8* %242, i8** %10, align 8
  %243 = call i32 @snarf_numeric_literal(i8** %10, %struct.TYPE_13__* %12)
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %246, label %245

245:                                              ; preds = %240
  br label %275

246:                                              ; preds = %240
  br label %269

247:                                              ; preds = %218
  %248 = load i8*, i8** %10, align 8
  %249 = getelementptr inbounds i8, i8* %248, i32 1
  store i8* %249, i8** %10, align 8
  %250 = call i32 @snarf_numeric_literal(i8** %10, %struct.TYPE_13__* %12)
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %253, label %252

252:                                              ; preds = %247
  br label %275

253:                                              ; preds = %247
  br label %269

254:                                              ; preds = %218
  %255 = load i8*, i8** %10, align 8
  store i8* %255, i8** %17, align 8
  %256 = load %struct.work_stuff*, %struct.work_stuff** %5, align 8
  %257 = call i32 @do_type(%struct.work_stuff* %256, i8** %10, %struct.TYPE_13__* %12)
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %260, label %259

259:                                              ; preds = %254
  br label %275

260:                                              ; preds = %254
  %261 = load i8*, i8** %10, align 8
  %262 = load i8*, i8** %17, align 8
  %263 = icmp eq i8* %261, %262
  br i1 %263, label %264, label %268

264:                                              ; preds = %260
  %265 = load i32, i32* %15, align 4
  %266 = load %struct.work_stuff*, %struct.work_stuff** %5, align 8
  %267 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %266, i32 0, i32 1
  store i32 %265, i32* %267, align 4
  br label %351

268:                                              ; preds = %260
  br label %269

269:                                              ; preds = %268, %253, %246
  %270 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %271 = call i32 @string_appends(%struct.TYPE_13__* %270, %struct.TYPE_13__* %12)
  %272 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %273 = call i32 @string_append(%struct.TYPE_13__* %272, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %214

274:                                              ; preds = %214
  br label %275

275:                                              ; preds = %274, %259, %252, %245, %239, %229
  %276 = call i32 @string_delete(%struct.TYPE_13__* %12)
  %277 = load i8*, i8** %10, align 8
  %278 = load i8*, i8** %11, align 8
  %279 = icmp uge i8* %277, %278
  br i1 %279, label %280, label %285

280:                                              ; preds = %275
  %281 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %282 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = add nsw i32 %283, -1
  store i32 %284, i32* %282, align 4
  br label %285

285:                                              ; preds = %280, %275
  %286 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %287 = call i32 @string_append(%struct.TYPE_13__* %286, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %288 = load i32, i32* %15, align 4
  %289 = load %struct.work_stuff*, %struct.work_stuff** %5, align 8
  %290 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %289, i32 0, i32 1
  store i32 %288, i32* %290, align 4
  br label %344

291:                                              ; preds = %169
  %292 = load i32, i32* %7, align 4
  %293 = icmp sgt i32 %292, 10
  br i1 %293, label %294, label %329

294:                                              ; preds = %291
  %295 = load i8**, i8*** %6, align 8
  %296 = load i8*, i8** %295, align 8
  %297 = call i64 @strncmp(i8* %296, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 8)
  %298 = icmp eq i64 %297, 0
  br i1 %298, label %299, label %329

299:                                              ; preds = %294
  %300 = load i8**, i8*** %6, align 8
  %301 = load i8*, i8** %300, align 8
  %302 = getelementptr inbounds i8, i8* %301, i64 9
  %303 = load i8, i8* %302, align 1
  %304 = sext i8 %303 to i32
  %305 = icmp eq i32 %304, 78
  br i1 %305, label %306, label %329

306:                                              ; preds = %299
  %307 = load i8**, i8*** %6, align 8
  %308 = load i8*, i8** %307, align 8
  %309 = getelementptr inbounds i8, i8* %308, i64 8
  %310 = load i8, i8* %309, align 1
  %311 = sext i8 %310 to i32
  %312 = load i8**, i8*** %6, align 8
  %313 = load i8*, i8** %312, align 8
  %314 = getelementptr inbounds i8, i8* %313, i64 10
  %315 = load i8, i8* %314, align 1
  %316 = sext i8 %315 to i32
  %317 = icmp eq i32 %311, %316
  br i1 %317, label %318, label %329

318:                                              ; preds = %306
  %319 = load i8*, i8** @cplus_markers, align 8
  %320 = load i8**, i8*** %6, align 8
  %321 = load i8*, i8** %320, align 8
  %322 = getelementptr inbounds i8, i8* %321, i64 8
  %323 = load i8, i8* %322, align 1
  %324 = call i8* @strchr(i8* %319, i8 signext %323)
  %325 = icmp ne i8* %324, null
  br i1 %325, label %326, label %329

326:                                              ; preds = %318
  %327 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %328 = call i32 @string_append(%struct.TYPE_13__* %327, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  br label %343

329:                                              ; preds = %318, %306, %299, %294, %291
  %330 = load %struct.work_stuff*, %struct.work_stuff** %5, align 8
  %331 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 4
  %333 = icmp eq i32 %332, -1
  br i1 %333, label %334, label %337

334:                                              ; preds = %329
  %335 = load %struct.work_stuff*, %struct.work_stuff** %5, align 8
  %336 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %335, i32 0, i32 0
  store i32 0, i32* %336, align 4
  br label %337

337:                                              ; preds = %334, %329
  %338 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %339 = load i8**, i8*** %6, align 8
  %340 = load i8*, i8** %339, align 8
  %341 = load i32, i32* %7, align 4
  %342 = call i32 @string_appendn(%struct.TYPE_13__* %338, i8* %340, i32 %341)
  br label %343

343:                                              ; preds = %337, %326
  br label %344

344:                                              ; preds = %343, %285
  br label %345

345:                                              ; preds = %344
  %346 = load i32, i32* %7, align 4
  %347 = load i8**, i8*** %6, align 8
  %348 = load i8*, i8** %347, align 8
  %349 = sext i32 %346 to i64
  %350 = getelementptr inbounds i8, i8* %348, i64 %349
  store i8* %350, i8** %347, align 8
  br label %351

351:                                              ; preds = %345, %264, %165
  ret void
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @string_appendn(%struct.TYPE_13__*, i8*, i32) #1

declare dso_local i32 @string_init(%struct.TYPE_13__*) #1

declare dso_local i32 @string_append(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @string_delete(%struct.TYPE_13__*) #1

declare dso_local i32 @do_type(%struct.work_stuff*, i8**, %struct.TYPE_13__*) #1

declare dso_local i32 @do_hpacc_template_const_value(%struct.work_stuff*, i8**, %struct.TYPE_13__*) #1

declare dso_local i32 @do_hpacc_template_literal(%struct.work_stuff*, i8**, %struct.TYPE_13__*) #1

declare dso_local i32 @string_appends(%struct.TYPE_13__*, %struct.TYPE_13__*) #1

declare dso_local i64 @arm_pt(%struct.work_stuff*, i8*, i32, i8**, i8**) #1

declare dso_local i32 @snarf_numeric_literal(i8**, %struct.TYPE_13__*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
