; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcc.c_validate_switches.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcc.c_validate_switches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64*, i32 }

@n_switches = common dso_local global i32 0, align 4
@switches = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @validate_switches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @validate_switches(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  store i8* %9, i8** %3, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %294, %203, %1
  br label %11

11:                                               ; preds = %10
  br label %12

12:                                               ; preds = %24, %11
  %13 = load i8*, i8** %3, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 32
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = load i8*, i8** %3, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 9
  br label %22

22:                                               ; preds = %17, %12
  %23 = phi i1 [ true, %12 ], [ %21, %17 ]
  br i1 %23, label %24, label %27

24:                                               ; preds = %22
  %25 = load i8*, i8** %3, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %3, align 8
  br label %12

27:                                               ; preds = %22
  br label %28

28:                                               ; preds = %27
  %29 = load i8*, i8** %3, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 33
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i8*, i8** %3, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %3, align 8
  br label %36

36:                                               ; preds = %33, %28
  br label %37

37:                                               ; preds = %36
  br label %38

38:                                               ; preds = %50, %37
  %39 = load i8*, i8** %3, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 32
  br i1 %42, label %48, label %43

43:                                               ; preds = %38
  %44 = load i8*, i8** %3, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 9
  br label %48

48:                                               ; preds = %43, %38
  %49 = phi i1 [ true, %38 ], [ %47, %43 ]
  br i1 %49, label %50, label %53

50:                                               ; preds = %48
  %51 = load i8*, i8** %3, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %3, align 8
  br label %38

53:                                               ; preds = %48
  br label %54

54:                                               ; preds = %53
  %55 = load i8*, i8** %3, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 46
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  store i32 1, i32* %7, align 4
  %60 = load i8*, i8** %3, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %3, align 8
  br label %62

62:                                               ; preds = %59, %54
  %63 = load i8*, i8** %3, align 8
  store i8* %63, i8** %4, align 8
  br label %64

64:                                               ; preds = %101, %62
  %65 = load i8*, i8** %3, align 8
  %66 = load i8, i8* %65, align 1
  %67 = call i64 @ISIDNUM(i8 signext %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %99, label %69

69:                                               ; preds = %64
  %70 = load i8*, i8** %3, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 45
  br i1 %73, label %99, label %74

74:                                               ; preds = %69
  %75 = load i8*, i8** %3, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 43
  br i1 %78, label %99, label %79

79:                                               ; preds = %74
  %80 = load i8*, i8** %3, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 61
  br i1 %83, label %99, label %84

84:                                               ; preds = %79
  %85 = load i8*, i8** %3, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 44
  br i1 %88, label %99, label %89

89:                                               ; preds = %84
  %90 = load i8*, i8** %3, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 46
  br i1 %93, label %99, label %94

94:                                               ; preds = %89
  %95 = load i8*, i8** %3, align 8
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 64
  br label %99

99:                                               ; preds = %94, %89, %84, %79, %74, %69, %64
  %100 = phi i1 [ true, %89 ], [ true, %84 ], [ true, %79 ], [ true, %74 ], [ true, %69 ], [ true, %64 ], [ %98, %94 ]
  br i1 %100, label %101, label %104

101:                                              ; preds = %99
  %102 = load i8*, i8** %3, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %3, align 8
  br label %64

104:                                              ; preds = %99
  %105 = load i8*, i8** %3, align 8
  %106 = load i8*, i8** %4, align 8
  %107 = ptrtoint i8* %105 to i64
  %108 = ptrtoint i8* %106 to i64
  %109 = sub i64 %107, %108
  store i64 %109, i64* %5, align 8
  %110 = load i8*, i8** %3, align 8
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp eq i32 %112, 42
  br i1 %113, label %114, label %117

114:                                              ; preds = %104
  store i32 1, i32* %8, align 4
  %115 = load i8*, i8** %3, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %3, align 8
  br label %117

117:                                              ; preds = %114, %104
  br label %118

118:                                              ; preds = %117
  br label %119

119:                                              ; preds = %131, %118
  %120 = load i8*, i8** %3, align 8
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %122, 32
  br i1 %123, label %129, label %124

124:                                              ; preds = %119
  %125 = load i8*, i8** %3, align 8
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp eq i32 %127, 9
  br label %129

129:                                              ; preds = %124, %119
  %130 = phi i1 [ true, %119 ], [ %128, %124 ]
  br i1 %130, label %131, label %134

131:                                              ; preds = %129
  %132 = load i8*, i8** %3, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %133, i8** %3, align 8
  br label %119

134:                                              ; preds = %129
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %7, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %179, label %138

138:                                              ; preds = %135
  store i32 0, i32* %6, align 4
  br label %139

139:                                              ; preds = %175, %138
  %140 = load i32, i32* %6, align 4
  %141 = load i32, i32* @n_switches, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %178

143:                                              ; preds = %139
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** @switches, align 8
  %145 = load i32, i32* %6, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 0
  %149 = load i64*, i64** %148, align 8
  %150 = load i8*, i8** %4, align 8
  %151 = load i64, i64* %5, align 8
  %152 = call i32 @strncmp(i64* %149, i8* %150, i64 %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %174, label %154

154:                                              ; preds = %143
  %155 = load i32, i32* %8, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %168, label %157

157:                                              ; preds = %154
  %158 = load %struct.TYPE_2__*, %struct.TYPE_2__** @switches, align 8
  %159 = load i32, i32* %6, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 0
  %163 = load i64*, i64** %162, align 8
  %164 = load i64, i64* %5, align 8
  %165 = getelementptr inbounds i64, i64* %163, i64 %164
  %166 = load i64, i64* %165, align 8
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %157, %154
  %169 = load %struct.TYPE_2__*, %struct.TYPE_2__** @switches, align 8
  %170 = load i32, i32* %6, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 1
  store i32 1, i32* %173, align 8
  br label %174

174:                                              ; preds = %168, %157, %143
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %6, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %6, align 4
  br label %139

178:                                              ; preds = %139
  br label %179

179:                                              ; preds = %178, %135
  %180 = load i8*, i8** %3, align 8
  %181 = load i8, i8* %180, align 1
  %182 = icmp ne i8 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %179
  %184 = load i8*, i8** %3, align 8
  %185 = getelementptr inbounds i8, i8* %184, i32 1
  store i8* %185, i8** %3, align 8
  br label %186

186:                                              ; preds = %183, %179
  %187 = load i8*, i8** %3, align 8
  %188 = load i8, i8* %187, align 1
  %189 = sext i8 %188 to i32
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %204

191:                                              ; preds = %186
  %192 = load i8*, i8** %3, align 8
  %193 = getelementptr inbounds i8, i8* %192, i64 -1
  %194 = load i8, i8* %193, align 1
  %195 = sext i8 %194 to i32
  %196 = icmp eq i32 %195, 124
  br i1 %196, label %203, label %197

197:                                              ; preds = %191
  %198 = load i8*, i8** %3, align 8
  %199 = getelementptr inbounds i8, i8* %198, i64 -1
  %200 = load i8, i8* %199, align 1
  %201 = sext i8 %200 to i32
  %202 = icmp eq i32 %201, 38
  br i1 %202, label %203, label %204

203:                                              ; preds = %197, %191
  br label %10

204:                                              ; preds = %197, %186
  %205 = load i8*, i8** %3, align 8
  %206 = load i8, i8* %205, align 1
  %207 = sext i8 %206 to i32
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %296

209:                                              ; preds = %204
  %210 = load i8*, i8** %3, align 8
  %211 = getelementptr inbounds i8, i8* %210, i64 -1
  %212 = load i8, i8* %211, align 1
  %213 = sext i8 %212 to i32
  %214 = icmp eq i32 %213, 58
  br i1 %214, label %215, label %296

215:                                              ; preds = %209
  br label %216

216:                                              ; preds = %275, %215
  %217 = load i8*, i8** %3, align 8
  %218 = load i8, i8* %217, align 1
  %219 = sext i8 %218 to i32
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %231

221:                                              ; preds = %216
  %222 = load i8*, i8** %3, align 8
  %223 = load i8, i8* %222, align 1
  %224 = sext i8 %223 to i32
  %225 = icmp ne i32 %224, 59
  br i1 %225, label %226, label %231

226:                                              ; preds = %221
  %227 = load i8*, i8** %3, align 8
  %228 = load i8, i8* %227, align 1
  %229 = sext i8 %228 to i32
  %230 = icmp ne i32 %229, 125
  br label %231

231:                                              ; preds = %226, %221, %216
  %232 = phi i1 [ false, %221 ], [ false, %216 ], [ %230, %226 ]
  br i1 %232, label %233, label %276

233:                                              ; preds = %231
  %234 = load i8*, i8** %3, align 8
  %235 = load i8, i8* %234, align 1
  %236 = sext i8 %235 to i32
  %237 = icmp eq i32 %236, 37
  br i1 %237, label %238, label %272

238:                                              ; preds = %233
  %239 = load i8*, i8** %3, align 8
  %240 = getelementptr inbounds i8, i8* %239, i32 1
  store i8* %240, i8** %3, align 8
  %241 = load i8*, i8** %3, align 8
  %242 = load i8, i8* %241, align 1
  %243 = sext i8 %242 to i32
  %244 = icmp eq i32 %243, 123
  br i1 %244, label %250, label %245

245:                                              ; preds = %238
  %246 = load i8*, i8** %3, align 8
  %247 = load i8, i8* %246, align 1
  %248 = sext i8 %247 to i32
  %249 = icmp eq i32 %248, 60
  br i1 %249, label %250, label %254

250:                                              ; preds = %245, %238
  %251 = load i8*, i8** %3, align 8
  %252 = getelementptr inbounds i8, i8* %251, i64 1
  %253 = call i8* @validate_switches(i8* %252)
  store i8* %253, i8** %3, align 8
  br label %271

254:                                              ; preds = %245
  %255 = load i8*, i8** %3, align 8
  %256 = getelementptr inbounds i8, i8* %255, i64 0
  %257 = load i8, i8* %256, align 1
  %258 = sext i8 %257 to i32
  %259 = icmp eq i32 %258, 87
  br i1 %259, label %260, label %270

260:                                              ; preds = %254
  %261 = load i8*, i8** %3, align 8
  %262 = getelementptr inbounds i8, i8* %261, i64 1
  %263 = load i8, i8* %262, align 1
  %264 = sext i8 %263 to i32
  %265 = icmp eq i32 %264, 123
  br i1 %265, label %266, label %270

266:                                              ; preds = %260
  %267 = load i8*, i8** %3, align 8
  %268 = getelementptr inbounds i8, i8* %267, i64 2
  %269 = call i8* @validate_switches(i8* %268)
  store i8* %269, i8** %3, align 8
  br label %270

270:                                              ; preds = %266, %260, %254
  br label %271

271:                                              ; preds = %270, %250
  br label %275

272:                                              ; preds = %233
  %273 = load i8*, i8** %3, align 8
  %274 = getelementptr inbounds i8, i8* %273, i32 1
  store i8* %274, i8** %3, align 8
  br label %275

275:                                              ; preds = %272, %271
  br label %216

276:                                              ; preds = %231
  %277 = load i8*, i8** %3, align 8
  %278 = load i8, i8* %277, align 1
  %279 = icmp ne i8 %278, 0
  br i1 %279, label %280, label %283

280:                                              ; preds = %276
  %281 = load i8*, i8** %3, align 8
  %282 = getelementptr inbounds i8, i8* %281, i32 1
  store i8* %282, i8** %3, align 8
  br label %283

283:                                              ; preds = %280, %276
  %284 = load i8*, i8** %3, align 8
  %285 = load i8, i8* %284, align 1
  %286 = sext i8 %285 to i32
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %295

288:                                              ; preds = %283
  %289 = load i8*, i8** %3, align 8
  %290 = getelementptr inbounds i8, i8* %289, i64 -1
  %291 = load i8, i8* %290, align 1
  %292 = sext i8 %291 to i32
  %293 = icmp eq i32 %292, 59
  br i1 %293, label %294, label %295

294:                                              ; preds = %288
  br label %10

295:                                              ; preds = %288, %283
  br label %296

296:                                              ; preds = %295, %209, %204
  %297 = load i8*, i8** %3, align 8
  ret i8* %297
}

declare dso_local i64 @ISIDNUM(i8 signext) #1

declare dso_local i32 @strncmp(i64*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
