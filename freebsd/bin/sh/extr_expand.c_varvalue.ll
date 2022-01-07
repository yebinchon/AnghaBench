; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_expand.c_varvalue.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_expand.c_varvalue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8** }
%struct.worddest = type { i32 }

@NSHORTOPTS = common dso_local global i32 0, align 4
@VSLENGTH = common dso_local global i32 0, align 4
@EXP_FULL = common dso_local global i32 0, align 4
@VSTRIMLEFT = common dso_local global i32 0, align 4
@VSTRIMLEFTMAX = common dso_local global i32 0, align 4
@VSTRIMRIGHT = common dso_local global i32 0, align 4
@VSTRIMRIGHTMAX = common dso_local global i32 0, align 4
@rootpid = common dso_local global i32 0, align 4
@oexitstatus = common dso_local global i32 0, align 4
@shellparam = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@optval = common dso_local global i32* null, align 8
@optletter = common dso_local global i32* null, align 8
@EXP_SPLIT = common dso_local global i32 0, align 4
@expdest = common dso_local global i32 0, align 4
@WORD_QUOTEMARK = common dso_local global i32 0, align 4
@arg0 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i32, %struct.worddest*)* @varvalue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @varvalue(i8* %0, i32 %1, i32 %2, i32 %3, %struct.worddest* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.worddest*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [2 x i8], align 1
  %16 = alloca i8**, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.worddest* %4, %struct.worddest** %10, align 8
  %20 = load i32, i32* @NSHORTOPTS, align 4
  %21 = icmp sgt i32 %20, 10
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32, i32* @NSHORTOPTS, align 4
  br label %25

24:                                               ; preds = %5
  br label %25

25:                                               ; preds = %24, %22
  %26 = phi i32 [ %23, %22 ], [ 10, %24 ]
  %27 = add nsw i32 %26, 1
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %17, align 8
  %30 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %18, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @VSLENGTH, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %25
  %35 = load i32, i32* @EXP_FULL, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %9, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %34, %25
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @VSTRIMLEFT, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %55, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @VSTRIMLEFTMAX, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %55, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @VSTRIMRIGHT, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @VSTRIMRIGHTMAX, align 4
  %54 = icmp eq i32 %52, %53
  br label %55

55:                                               ; preds = %51, %47, %43, %39
  %56 = phi i1 [ true, %47 ], [ true, %43 ], [ true, %39 ], [ %54, %51 ]
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %14, align 4
  %58 = load i8*, i8** %6, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  switch i32 %60, label %217 [
    i32 36, label %61
    i32 63, label %63
    i32 35, label %65
    i32 33, label %67
    i32 45, label %69
    i32 64, label %101
    i32 42, label %148
  ]

61:                                               ; preds = %55
  %62 = load i32, i32* @rootpid, align 4
  store i32 %62, i32* %11, align 4
  br label %253

63:                                               ; preds = %55
  %64 = load i32, i32* @oexitstatus, align 4
  store i32 %64, i32* %11, align 4
  br label %253

65:                                               ; preds = %55
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @shellparam, i32 0, i32 0), align 8
  store i32 %66, i32* %11, align 4
  br label %253

67:                                               ; preds = %55
  %68 = call i32 (...) @backgndpidval()
  store i32 %68, i32* %11, align 4
  br label %253

69:                                               ; preds = %55
  store i8* %30, i8** %12, align 8
  store i32 0, i32* %13, align 4
  br label %70

70:                                               ; preds = %91, %69
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* @NSHORTOPTS, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %94

74:                                               ; preds = %70
  %75 = load i32*, i32** @optval, align 8
  %76 = load i32, i32* %13, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %74
  %82 = load i32*, i32** @optletter, align 8
  %83 = load i32, i32* %13, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = trunc i32 %86 to i8
  %88 = load i8*, i8** %12, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %12, align 8
  store i8 %87, i8* %88, align 1
  br label %90

90:                                               ; preds = %81, %74
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %13, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %13, align 4
  br label %70

94:                                               ; preds = %70
  %95 = load i8*, i8** %12, align 8
  store i8 0, i8* %95, align 1
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* %7, align 4
  %99 = load %struct.worddest*, %struct.worddest** %10, align 8
  %100 = call i32 @strtodest(i8* %30, i32 %96, i32 %97, i32 %98, %struct.worddest* %99)
  store i32 1, i32* %19, align 4
  br label %261

101:                                              ; preds = %55
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* @EXP_SPLIT, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %147

106:                                              ; preds = %101
  %107 = load i32, i32* %7, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %147

109:                                              ; preds = %106
  %110 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @shellparam, i32 0, i32 1), align 8
  store i8** %110, i8*** %16, align 8
  br label %111

111:                                              ; preds = %138, %109
  %112 = load i8**, i8*** %16, align 8
  %113 = getelementptr inbounds i8*, i8** %112, i32 1
  store i8** %113, i8*** %16, align 8
  %114 = load i8*, i8** %112, align 8
  store i8* %114, i8** %12, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %116, label %139

116:                                              ; preds = %111
  %117 = load i8*, i8** %12, align 8
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* %7, align 4
  %121 = load %struct.worddest*, %struct.worddest** %10, align 8
  %122 = call i32 @strtodest(i8* %117, i32 %118, i32 %119, i32 %120, %struct.worddest* %121)
  %123 = load i8**, i8*** %16, align 8
  %124 = load i8*, i8** %123, align 8
  %125 = icmp ne i8* %124, null
  br i1 %125, label %126, label %138

126:                                              ; preds = %116
  %127 = load i32, i32* %14, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %126
  %130 = load i32, i32* @expdest, align 4
  %131 = call i32 @STPUTC(i8 signext 0, i32 %130)
  br label %137

132:                                              ; preds = %126
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* @expdest, align 4
  %135 = load %struct.worddest*, %struct.worddest** %10, align 8
  %136 = call i32 @NEXTWORD(i8 signext 0, i32 %133, i32 %134, %struct.worddest* %135)
  br label %137

137:                                              ; preds = %132, %129
  br label %138

138:                                              ; preds = %137, %116
  br label %111

139:                                              ; preds = %111
  %140 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @shellparam, i32 0, i32 0), align 8
  %141 = icmp sgt i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %139
  %143 = load i32, i32* @WORD_QUOTEMARK, align 4
  %144 = load %struct.worddest*, %struct.worddest** %10, align 8
  %145 = getelementptr inbounds %struct.worddest, %struct.worddest* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 4
  br label %146

146:                                              ; preds = %142, %139
  store i32 1, i32* %19, align 4
  br label %261

147:                                              ; preds = %106, %101
  br label %148

148:                                              ; preds = %55, %147
  %149 = call i32 (...) @ifsset()
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %148
  %152 = call i8* (...) @ifsval()
  %153 = getelementptr inbounds i8, i8* %152, i64 0
  %154 = load i8, i8* %153, align 1
  %155 = getelementptr inbounds [2 x i8], [2 x i8]* %15, i64 0, i64 0
  store i8 %154, i8* %155, align 1
  br label %158

156:                                              ; preds = %148
  %157 = getelementptr inbounds [2 x i8], [2 x i8]* %15, i64 0, i64 0
  store i8 32, i8* %157, align 1
  br label %158

158:                                              ; preds = %156, %151
  %159 = getelementptr inbounds [2 x i8], [2 x i8]* %15, i64 0, i64 1
  store i8 0, i8* %159, align 1
  %160 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @shellparam, i32 0, i32 1), align 8
  store i8** %160, i8*** %16, align 8
  br label %161

161:                                              ; preds = %215, %158
  %162 = load i8**, i8*** %16, align 8
  %163 = getelementptr inbounds i8*, i8** %162, i32 1
  store i8** %163, i8*** %16, align 8
  %164 = load i8*, i8** %162, align 8
  store i8* %164, i8** %12, align 8
  %165 = icmp ne i8* %164, null
  br i1 %165, label %166, label %216

166:                                              ; preds = %161
  %167 = load i8*, i8** %12, align 8
  %168 = load i32, i32* %9, align 4
  %169 = load i32, i32* %8, align 4
  %170 = load i32, i32* %7, align 4
  %171 = load %struct.worddest*, %struct.worddest** %10, align 8
  %172 = call i32 @strtodest(i8* %167, i32 %168, i32 %169, i32 %170, %struct.worddest* %171)
  %173 = load i8**, i8*** %16, align 8
  %174 = load i8*, i8** %173, align 8
  %175 = icmp ne i8* %174, null
  br i1 %175, label %177, label %176

176:                                              ; preds = %166
  br label %216

177:                                              ; preds = %166
  %178 = getelementptr inbounds [2 x i8], [2 x i8]* %15, i64 0, i64 0
  %179 = load i8, i8* %178, align 1
  %180 = icmp ne i8 %179, 0
  br i1 %180, label %181, label %188

181:                                              ; preds = %177
  %182 = getelementptr inbounds [2 x i8], [2 x i8]* %15, i64 0, i64 0
  %183 = load i32, i32* %9, align 4
  %184 = load i32, i32* %8, align 4
  %185 = load i32, i32* %7, align 4
  %186 = load %struct.worddest*, %struct.worddest** %10, align 8
  %187 = call i32 @strtodest(i8* %182, i32 %183, i32 %184, i32 %185, %struct.worddest* %186)
  br label %215

188:                                              ; preds = %177
  %189 = load i32, i32* %9, align 4
  %190 = load i32, i32* @EXP_SPLIT, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %214

193:                                              ; preds = %188
  %194 = load i32, i32* %7, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %214, label %196

196:                                              ; preds = %193
  %197 = load i8**, i8*** %16, align 8
  %198 = load i8*, i8** %197, align 8
  %199 = load i8, i8* %198, align 1
  %200 = sext i8 %199 to i32
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %214

202:                                              ; preds = %196
  %203 = load i32, i32* %14, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %202
  %206 = load i32, i32* @expdest, align 4
  %207 = call i32 @STPUTC(i8 signext 0, i32 %206)
  br label %213

208:                                              ; preds = %202
  %209 = load i32, i32* %9, align 4
  %210 = load i32, i32* @expdest, align 4
  %211 = load %struct.worddest*, %struct.worddest** %10, align 8
  %212 = call i32 @NEXTWORD(i8 signext 0, i32 %209, i32 %210, %struct.worddest* %211)
  br label %213

213:                                              ; preds = %208, %205
  br label %214

214:                                              ; preds = %213, %196, %193, %188
  br label %215

215:                                              ; preds = %214, %181
  br label %161

216:                                              ; preds = %176, %161
  store i32 1, i32* %19, align 4
  br label %261

217:                                              ; preds = %55
  %218 = load i8*, i8** %6, align 8
  %219 = load i8, i8* %218, align 1
  %220 = call i32 @is_digit(i8 signext %219)
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %252

222:                                              ; preds = %217
  %223 = load i8*, i8** %6, align 8
  %224 = call i32 @atoi(i8* %223)
  store i32 %224, i32* %11, align 4
  %225 = load i32, i32* %11, align 4
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %229

227:                                              ; preds = %222
  %228 = load i8*, i8** @arg0, align 8
  store i8* %228, i8** %12, align 8
  br label %245

229:                                              ; preds = %222
  %230 = load i32, i32* %11, align 4
  %231 = icmp sgt i32 %230, 0
  br i1 %231, label %232, label %243

232:                                              ; preds = %229
  %233 = load i32, i32* %11, align 4
  %234 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @shellparam, i32 0, i32 0), align 8
  %235 = icmp sle i32 %233, %234
  br i1 %235, label %236, label %243

236:                                              ; preds = %232
  %237 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @shellparam, i32 0, i32 1), align 8
  %238 = load i32, i32* %11, align 4
  %239 = sub nsw i32 %238, 1
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i8*, i8** %237, i64 %240
  %242 = load i8*, i8** %241, align 8
  store i8* %242, i8** %12, align 8
  br label %244

243:                                              ; preds = %232, %229
  store i32 1, i32* %19, align 4
  br label %261

244:                                              ; preds = %236
  br label %245

245:                                              ; preds = %244, %227
  %246 = load i8*, i8** %12, align 8
  %247 = load i32, i32* %9, align 4
  %248 = load i32, i32* %8, align 4
  %249 = load i32, i32* %7, align 4
  %250 = load %struct.worddest*, %struct.worddest** %10, align 8
  %251 = call i32 @strtodest(i8* %246, i32 %247, i32 %248, i32 %249, %struct.worddest* %250)
  br label %252

252:                                              ; preds = %245, %217
  store i32 1, i32* %19, align 4
  br label %261

253:                                              ; preds = %67, %65, %63, %61
  %254 = load i32, i32* %11, align 4
  %255 = call i32 @cvtnum(i32 %254, i8* %30)
  %256 = load i32, i32* %9, align 4
  %257 = load i32, i32* %8, align 4
  %258 = load i32, i32* %7, align 4
  %259 = load %struct.worddest*, %struct.worddest** %10, align 8
  %260 = call i32 @strtodest(i8* %30, i32 %256, i32 %257, i32 %258, %struct.worddest* %259)
  store i32 0, i32* %19, align 4
  br label %261

261:                                              ; preds = %253, %252, %243, %216, %146, %94
  %262 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %262)
  %263 = load i32, i32* %19, align 4
  switch i32 %263, label %265 [
    i32 0, label %264
    i32 1, label %264
  ]

264:                                              ; preds = %261, %261
  ret void

265:                                              ; preds = %261
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @backgndpidval(...) #2

declare dso_local i32 @strtodest(i8*, i32, i32, i32, %struct.worddest*) #2

declare dso_local i32 @STPUTC(i8 signext, i32) #2

declare dso_local i32 @NEXTWORD(i8 signext, i32, i32, %struct.worddest*) #2

declare dso_local i32 @ifsset(...) #2

declare dso_local i8* @ifsval(...) #2

declare dso_local i32 @is_digit(i8 signext) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local i32 @cvtnum(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
