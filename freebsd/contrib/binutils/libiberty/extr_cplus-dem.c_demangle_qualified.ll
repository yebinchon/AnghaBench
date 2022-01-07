; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_cplus-dem.c_demangle_qualified.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_cplus-dem.c_demangle_qualified.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_stuff = type { i32, i32, i32, i8** }
%struct.TYPE_17__ = type { i32 }

@EDG_DEMANGLING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"~\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.work_stuff*, i8**, %struct.TYPE_17__*, i32, i32)* @demangle_qualified to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @demangle_qualified(%struct.work_stuff* %0, i8** %1, %struct.TYPE_17__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.work_stuff*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [2 x i8], align 1
  %15 = alloca %struct.TYPE_17__, align 4
  %16 = alloca %struct.TYPE_17__, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.work_stuff* %0, %struct.work_stuff** %7, align 8
  store i8** %1, i8*** %8, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 1, i32* %13, align 4
  %22 = load %struct.work_stuff*, %struct.work_stuff** %7, align 8
  %23 = call i32 @register_Btype(%struct.work_stuff* %22)
  store i32 %23, i32* %17, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %5
  %27 = load %struct.work_stuff*, %struct.work_stuff** %7, align 8
  %28 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = and i32 %29, 1
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = load %struct.work_stuff*, %struct.work_stuff** %7, align 8
  %34 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 1
  %37 = icmp ne i32 %36, 0
  br label %38

38:                                               ; preds = %32, %26
  %39 = phi i1 [ true, %26 ], [ %37, %32 ]
  br label %40

40:                                               ; preds = %38, %5
  %41 = phi i1 [ false, %5 ], [ %39, %38 ]
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %10, align 4
  %43 = call i32 @string_init(%struct.TYPE_17__* %15)
  %44 = call i32 @string_init(%struct.TYPE_17__* %16)
  %45 = load i8**, i8*** %8, align 8
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 75
  br i1 %50, label %51, label %76

51:                                               ; preds = %40
  %52 = load i8**, i8*** %8, align 8
  %53 = load i8*, i8** %52, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %52, align 8
  %55 = load i8**, i8*** %8, align 8
  %56 = call i32 @consume_count_with_underscores(i8** %55)
  store i32 %56, i32* %18, align 4
  %57 = load i32, i32* %18, align 4
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %65, label %59

59:                                               ; preds = %51
  %60 = load i32, i32* %18, align 4
  %61 = load %struct.work_stuff*, %struct.work_stuff** %7, align 8
  %62 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = icmp sge i32 %60, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %59, %51
  store i32 0, i32* %13, align 4
  br label %75

66:                                               ; preds = %59
  %67 = load %struct.work_stuff*, %struct.work_stuff** %7, align 8
  %68 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %67, i32 0, i32 3
  %69 = load i8**, i8*** %68, align 8
  %70 = load i32, i32* %18, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8*, i8** %69, i64 %71
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @string_append(%struct.TYPE_17__* %15, i8* %73)
  br label %75

75:                                               ; preds = %66, %65
  br label %118

76:                                               ; preds = %40
  %77 = load i8**, i8*** %8, align 8
  %78 = load i8*, i8** %77, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 1
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  switch i32 %81, label %116 [
    i32 95, label %82
    i32 49, label %92
    i32 50, label %92
    i32 51, label %92
    i32 52, label %92
    i32 53, label %92
    i32 54, label %92
    i32 55, label %92
    i32 56, label %92
    i32 57, label %92
    i32 48, label %115
  ]

82:                                               ; preds = %76
  %83 = load i8**, i8*** %8, align 8
  %84 = load i8*, i8** %83, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %83, align 8
  %86 = load i8**, i8*** %8, align 8
  %87 = call i32 @consume_count_with_underscores(i8** %86)
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %12, align 4
  %89 = icmp eq i32 %88, -1
  br i1 %89, label %90, label %91

90:                                               ; preds = %82
  store i32 0, i32* %13, align 4
  br label %91

91:                                               ; preds = %90, %82
  br label %117

92:                                               ; preds = %76, %76, %76, %76, %76, %76, %76, %76, %76
  %93 = load i8**, i8*** %8, align 8
  %94 = load i8*, i8** %93, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 1
  %96 = load i8, i8* %95, align 1
  %97 = getelementptr inbounds [2 x i8], [2 x i8]* %14, i64 0, i64 0
  store i8 %96, i8* %97, align 1
  %98 = getelementptr inbounds [2 x i8], [2 x i8]* %14, i64 0, i64 1
  store i8 0, i8* %98, align 1
  %99 = getelementptr inbounds [2 x i8], [2 x i8]* %14, i64 0, i64 0
  %100 = call i32 @atoi(i8* %99)
  store i32 %100, i32* %12, align 4
  %101 = load i8**, i8*** %8, align 8
  %102 = load i8*, i8** %101, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 2
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 95
  br i1 %106, label %107, label %111

107:                                              ; preds = %92
  %108 = load i8**, i8*** %8, align 8
  %109 = load i8*, i8** %108, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %108, align 8
  br label %111

111:                                              ; preds = %107, %92
  %112 = load i8**, i8*** %8, align 8
  %113 = load i8*, i8** %112, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 2
  store i8* %114, i8** %112, align 8
  br label %117

115:                                              ; preds = %76
  br label %116

116:                                              ; preds = %76, %115
  store i32 0, i32* %13, align 4
  br label %117

117:                                              ; preds = %116, %111, %91
  br label %118

118:                                              ; preds = %117, %75
  %119 = load i32, i32* %13, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %123, label %121

121:                                              ; preds = %118
  %122 = load i32, i32* %13, align 4
  store i32 %122, i32* %6, align 4
  br label %277

123:                                              ; preds = %118
  br label %124

124:                                              ; preds = %233, %123
  %125 = load i32, i32* %12, align 4
  %126 = add nsw i32 %125, -1
  store i32 %126, i32* %12, align 4
  %127 = icmp sgt i32 %125, 0
  br i1 %127, label %128, label %234

128:                                              ; preds = %124
  store i32 1, i32* %19, align 4
  %129 = call i32 @string_clear(%struct.TYPE_17__* %16)
  %130 = load i8**, i8*** %8, align 8
  %131 = getelementptr inbounds i8*, i8** %130, i64 0
  %132 = load i8*, i8** %131, align 8
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp eq i32 %134, 95
  br i1 %135, label %136, label %140

136:                                              ; preds = %128
  %137 = load i8**, i8*** %8, align 8
  %138 = load i8*, i8** %137, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %139, i8** %137, align 8
  br label %140

140:                                              ; preds = %136, %128
  %141 = load i8**, i8*** %8, align 8
  %142 = getelementptr inbounds i8*, i8** %141, i64 0
  %143 = load i8*, i8** %142, align 8
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp eq i32 %145, 116
  br i1 %146, label %147, label %155

147:                                              ; preds = %140
  %148 = load %struct.work_stuff*, %struct.work_stuff** %7, align 8
  %149 = load i8**, i8*** %8, align 8
  %150 = call i32 @demangle_template(%struct.work_stuff* %148, i8** %149, %struct.TYPE_17__* %15, %struct.TYPE_17__* %16, i32 1, i32 0)
  store i32 %150, i32* %13, align 4
  %151 = load i32, i32* %13, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %154, label %153

153:                                              ; preds = %147
  br label %234

154:                                              ; preds = %147
  br label %217

155:                                              ; preds = %140
  %156 = load i8**, i8*** %8, align 8
  %157 = getelementptr inbounds i8*, i8** %156, i64 0
  %158 = load i8*, i8** %157, align 8
  %159 = load i8, i8* %158, align 1
  %160 = sext i8 %159 to i32
  %161 = icmp eq i32 %160, 75
  br i1 %161, label %162, label %191

162:                                              ; preds = %155
  %163 = load i8**, i8*** %8, align 8
  %164 = load i8*, i8** %163, align 8
  %165 = getelementptr inbounds i8, i8* %164, i32 1
  store i8* %165, i8** %163, align 8
  %166 = load i8**, i8*** %8, align 8
  %167 = call i32 @consume_count_with_underscores(i8** %166)
  store i32 %167, i32* %20, align 4
  %168 = load i32, i32* %20, align 4
  %169 = icmp eq i32 %168, -1
  br i1 %169, label %176, label %170

170:                                              ; preds = %162
  %171 = load i32, i32* %20, align 4
  %172 = load %struct.work_stuff*, %struct.work_stuff** %7, align 8
  %173 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = icmp sge i32 %171, %174
  br i1 %175, label %176, label %177

176:                                              ; preds = %170, %162
  store i32 0, i32* %13, align 4
  br label %186

177:                                              ; preds = %170
  %178 = load %struct.work_stuff*, %struct.work_stuff** %7, align 8
  %179 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %178, i32 0, i32 3
  %180 = load i8**, i8*** %179, align 8
  %181 = load i32, i32* %20, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8*, i8** %180, i64 %182
  %184 = load i8*, i8** %183, align 8
  %185 = call i32 @string_append(%struct.TYPE_17__* %15, i8* %184)
  br label %186

186:                                              ; preds = %177, %176
  store i32 0, i32* %19, align 4
  %187 = load i32, i32* %13, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %190, label %189

189:                                              ; preds = %186
  br label %234

190:                                              ; preds = %186
  br label %216

191:                                              ; preds = %155
  %192 = load i64, i64* @EDG_DEMANGLING, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %205

194:                                              ; preds = %191
  %195 = load i8**, i8*** %8, align 8
  %196 = call i32 @consume_count(i8** %195)
  store i32 %196, i32* %21, align 4
  %197 = load i32, i32* %21, align 4
  %198 = icmp eq i32 %197, -1
  br i1 %198, label %199, label %200

199:                                              ; preds = %194
  store i32 0, i32* %13, align 4
  br label %234

200:                                              ; preds = %194
  %201 = load %struct.work_stuff*, %struct.work_stuff** %7, align 8
  %202 = load i8**, i8*** %8, align 8
  %203 = load i32, i32* %21, align 4
  %204 = call i32 @recursively_demangle(%struct.work_stuff* %201, i8** %202, %struct.TYPE_17__* %15, i32 %203)
  br label %215

205:                                              ; preds = %191
  %206 = call i32 @string_delete(%struct.TYPE_17__* %16)
  %207 = load %struct.work_stuff*, %struct.work_stuff** %7, align 8
  %208 = load i8**, i8*** %8, align 8
  %209 = call i32 @do_type(%struct.work_stuff* %207, i8** %208, %struct.TYPE_17__* %16)
  store i32 %209, i32* %13, align 4
  %210 = load i32, i32* %13, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %213, label %212

212:                                              ; preds = %205
  br label %234

213:                                              ; preds = %205
  %214 = call i32 @string_appends(%struct.TYPE_17__* %15, %struct.TYPE_17__* %16)
  br label %215

215:                                              ; preds = %213, %200
  br label %216

216:                                              ; preds = %215, %190
  br label %217

217:                                              ; preds = %216, %154
  %218 = load i32, i32* %19, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %226

220:                                              ; preds = %217
  %221 = load %struct.work_stuff*, %struct.work_stuff** %7, align 8
  %222 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @LEN_STRING(%struct.TYPE_17__* %15)
  %225 = call i32 @remember_Ktype(%struct.work_stuff* %221, i32 %223, i32 %224)
  br label %226

226:                                              ; preds = %220, %217
  %227 = load i32, i32* %12, align 4
  %228 = icmp sgt i32 %227, 0
  br i1 %228, label %229, label %233

229:                                              ; preds = %226
  %230 = load %struct.work_stuff*, %struct.work_stuff** %7, align 8
  %231 = call i8* @SCOPE_STRING(%struct.work_stuff* %230)
  %232 = call i32 @string_append(%struct.TYPE_17__* %15, i8* %231)
  br label %233

233:                                              ; preds = %229, %226
  br label %124

234:                                              ; preds = %212, %199, %189, %153, %124
  %235 = load %struct.work_stuff*, %struct.work_stuff** %7, align 8
  %236 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @LEN_STRING(%struct.TYPE_17__* %15)
  %239 = load i32, i32* %17, align 4
  %240 = call i32 @remember_Btype(%struct.work_stuff* %235, i32 %237, i32 %238, i32 %239)
  %241 = load i32, i32* %10, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %256

243:                                              ; preds = %234
  %244 = load %struct.work_stuff*, %struct.work_stuff** %7, align 8
  %245 = call i8* @SCOPE_STRING(%struct.work_stuff* %244)
  %246 = call i32 @string_append(%struct.TYPE_17__* %15, i8* %245)
  %247 = load %struct.work_stuff*, %struct.work_stuff** %7, align 8
  %248 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = and i32 %249, 1
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %254

252:                                              ; preds = %243
  %253 = call i32 @string_append(%struct.TYPE_17__* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %254

254:                                              ; preds = %252, %243
  %255 = call i32 @string_appends(%struct.TYPE_17__* %15, %struct.TYPE_17__* %16)
  br label %256

256:                                              ; preds = %254, %234
  %257 = load i32, i32* %11, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %262

259:                                              ; preds = %256
  %260 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %261 = call i32 @string_appends(%struct.TYPE_17__* %260, %struct.TYPE_17__* %15)
  br label %273

262:                                              ; preds = %256
  %263 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %264 = call i32 @STRING_EMPTY(%struct.TYPE_17__* %263)
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %270, label %266

266:                                              ; preds = %262
  %267 = load %struct.work_stuff*, %struct.work_stuff** %7, align 8
  %268 = call i8* @SCOPE_STRING(%struct.work_stuff* %267)
  %269 = call i32 @string_append(%struct.TYPE_17__* %15, i8* %268)
  br label %270

270:                                              ; preds = %266, %262
  %271 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %272 = call i32 @string_prepends(%struct.TYPE_17__* %271, %struct.TYPE_17__* %15)
  br label %273

273:                                              ; preds = %270, %259
  %274 = call i32 @string_delete(%struct.TYPE_17__* %16)
  %275 = call i32 @string_delete(%struct.TYPE_17__* %15)
  %276 = load i32, i32* %13, align 4
  store i32 %276, i32* %6, align 4
  br label %277

277:                                              ; preds = %273, %121
  %278 = load i32, i32* %6, align 4
  ret i32 %278
}

declare dso_local i32 @register_Btype(%struct.work_stuff*) #1

declare dso_local i32 @string_init(%struct.TYPE_17__*) #1

declare dso_local i32 @consume_count_with_underscores(i8**) #1

declare dso_local i32 @string_append(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @string_clear(%struct.TYPE_17__*) #1

declare dso_local i32 @demangle_template(%struct.work_stuff*, i8**, %struct.TYPE_17__*, %struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @consume_count(i8**) #1

declare dso_local i32 @recursively_demangle(%struct.work_stuff*, i8**, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @string_delete(%struct.TYPE_17__*) #1

declare dso_local i32 @do_type(%struct.work_stuff*, i8**, %struct.TYPE_17__*) #1

declare dso_local i32 @string_appends(%struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local i32 @remember_Ktype(%struct.work_stuff*, i32, i32) #1

declare dso_local i32 @LEN_STRING(%struct.TYPE_17__*) #1

declare dso_local i8* @SCOPE_STRING(%struct.work_stuff*) #1

declare dso_local i32 @remember_Btype(%struct.work_stuff*, i32, i32, i32) #1

declare dso_local i32 @STRING_EMPTY(%struct.TYPE_17__*) #1

declare dso_local i32 @string_prepends(%struct.TYPE_17__*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
