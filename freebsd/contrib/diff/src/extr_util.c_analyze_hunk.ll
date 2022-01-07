; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_util.c_analyze_hunk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_util.c_analyze_hunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i8** }
%struct.change = type { i64, i64, i64, i64, %struct.change* }

@ignore_blank_lines = common dso_local global i32 0, align 4
@ignore_regexp = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@IGNORE_SPACE_CHANGE = common dso_local global i64 0, align 8
@ignore_white_space = common dso_local global i64 0, align 8
@files = common dso_local global %struct.TYPE_5__* null, align 8
@UNCHANGED = common dso_local global i32 0, align 4
@OLD = common dso_local global i32 0, align 4
@NEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @analyze_hunk(%struct.change* %0, i64* %1, i64* %2, i64* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.change*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.change*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8**, align 8
  %22 = alloca i8**, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i64, align 8
  %30 = alloca i8*, align 8
  store %struct.change* %0, %struct.change** %7, align 8
  store i64* %1, i64** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  %31 = load i32, i32* @ignore_blank_lines, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %5
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ignore_regexp, i32 0, i32 0), align 8
  %35 = icmp ne i64 %34, 0
  br label %36

36:                                               ; preds = %33, %5
  %37 = phi i1 [ true, %5 ], [ %35, %33 ]
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %18, align 4
  %39 = load i32, i32* @ignore_blank_lines, align 4
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %19, align 8
  %42 = load i32, i32* @ignore_blank_lines, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %36
  %45 = load i64, i64* @IGNORE_SPACE_CHANGE, align 8
  %46 = load i64, i64* @ignore_white_space, align 8
  %47 = icmp sle i64 %45, %46
  br label %48

48:                                               ; preds = %44, %36
  %49 = phi i1 [ false, %36 ], [ %47, %44 ]
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %20, align 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** @files, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i64 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i8**, i8*** %53, align 8
  store i8** %54, i8*** %21, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** @files, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i64 1
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i8**, i8*** %57, align 8
  store i8** %58, i8*** %22, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %15, align 8
  %59 = load %struct.change*, %struct.change** %7, align 8
  %60 = getelementptr inbounds %struct.change, %struct.change* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64*, i64** %8, align 8
  store i64 %61, i64* %62, align 8
  %63 = load %struct.change*, %struct.change** %7, align 8
  %64 = getelementptr inbounds %struct.change, %struct.change* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64*, i64** %10, align 8
  store i64 %65, i64* %66, align 8
  %67 = load %struct.change*, %struct.change** %7, align 8
  store %struct.change* %67, %struct.change** %12, align 8
  br label %68

68:                                               ; preds = %237, %48
  %69 = load %struct.change*, %struct.change** %12, align 8
  %70 = getelementptr inbounds %struct.change, %struct.change* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.change*, %struct.change** %12, align 8
  %73 = getelementptr inbounds %struct.change, %struct.change* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = add i64 %71, %74
  %76 = sub i64 %75, 1
  store i64 %76, i64* %13, align 8
  %77 = load %struct.change*, %struct.change** %12, align 8
  %78 = getelementptr inbounds %struct.change, %struct.change* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.change*, %struct.change** %12, align 8
  %81 = getelementptr inbounds %struct.change, %struct.change* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = add i64 %79, %82
  %84 = sub i64 %83, 1
  store i64 %84, i64* %14, align 8
  %85 = load %struct.change*, %struct.change** %12, align 8
  %86 = getelementptr inbounds %struct.change, %struct.change* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %15, align 8
  %89 = add i64 %88, %87
  store i64 %89, i64* %15, align 8
  %90 = load %struct.change*, %struct.change** %12, align 8
  %91 = getelementptr inbounds %struct.change, %struct.change* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %16, align 8
  %94 = add i64 %93, %92
  store i64 %94, i64* %16, align 8
  %95 = load %struct.change*, %struct.change** %12, align 8
  %96 = getelementptr inbounds %struct.change, %struct.change* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  store i64 %97, i64* %17, align 8
  br label %98

98:                                               ; preds = %162, %68
  %99 = load i64, i64* %17, align 8
  %100 = load i64, i64* %13, align 8
  %101 = icmp ule i64 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %98
  %103 = load i32, i32* %18, align 4
  %104 = icmp ne i32 %103, 0
  br label %105

105:                                              ; preds = %102, %98
  %106 = phi i1 [ false, %98 ], [ %104, %102 ]
  br i1 %106, label %107, label %165

107:                                              ; preds = %105
  %108 = load i8**, i8*** %21, align 8
  %109 = load i64, i64* %17, align 8
  %110 = getelementptr inbounds i8*, i8** %108, i64 %109
  %111 = load i8*, i8** %110, align 8
  store i8* %111, i8** %23, align 8
  %112 = load i8**, i8*** %21, align 8
  %113 = load i64, i64* %17, align 8
  %114 = add i64 %113, 1
  %115 = getelementptr inbounds i8*, i8** %112, i64 %114
  %116 = load i8*, i8** %115, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 -1
  store i8* %117, i8** %24, align 8
  %118 = load i8*, i8** %24, align 8
  %119 = load i8*, i8** %23, align 8
  %120 = ptrtoint i8* %118 to i64
  %121 = ptrtoint i8* %119 to i64
  %122 = sub i64 %120, %121
  store i64 %122, i64* %25, align 8
  %123 = load i8*, i8** %23, align 8
  store i8* %123, i8** %26, align 8
  %124 = load i32, i32* %20, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %143

126:                                              ; preds = %107
  br label %127

127:                                              ; preds = %139, %126
  %128 = load i8*, i8** %26, align 8
  %129 = load i8, i8* %128, align 1
  %130 = call i64 @isspace(i8 zeroext %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %127
  %133 = load i8*, i8** %26, align 8
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp ne i32 %135, 10
  br label %137

137:                                              ; preds = %132, %127
  %138 = phi i1 [ false, %127 ], [ %136, %132 ]
  br i1 %138, label %139, label %142

139:                                              ; preds = %137
  %140 = load i8*, i8** %26, align 8
  %141 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %141, i8** %26, align 8
  br label %127

142:                                              ; preds = %137
  br label %143

143:                                              ; preds = %142, %107
  %144 = load i8*, i8** %24, align 8
  %145 = load i8*, i8** %26, align 8
  %146 = ptrtoint i8* %144 to i64
  %147 = ptrtoint i8* %145 to i64
  %148 = sub i64 %146, %147
  %149 = load i64, i64* %19, align 8
  %150 = icmp ne i64 %148, %149
  br i1 %150, label %151, label %161

151:                                              ; preds = %143
  %152 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ignore_regexp, i32 0, i32 0), align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %151
  %155 = load i8*, i8** %23, align 8
  %156 = load i64, i64* %25, align 8
  %157 = load i64, i64* %25, align 8
  %158 = call i64 @re_search(%struct.TYPE_4__* @ignore_regexp, i8* %155, i64 %156, i32 0, i64 %157, i32 0)
  %159 = icmp slt i64 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %154, %151
  store i32 0, i32* %18, align 4
  br label %161

161:                                              ; preds = %160, %154, %143
  br label %162

162:                                              ; preds = %161
  %163 = load i64, i64* %17, align 8
  %164 = add i64 %163, 1
  store i64 %164, i64* %17, align 8
  br label %98

165:                                              ; preds = %105
  %166 = load %struct.change*, %struct.change** %12, align 8
  %167 = getelementptr inbounds %struct.change, %struct.change* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  store i64 %168, i64* %17, align 8
  br label %169

169:                                              ; preds = %233, %165
  %170 = load i64, i64* %17, align 8
  %171 = load i64, i64* %14, align 8
  %172 = icmp ule i64 %170, %171
  br i1 %172, label %173, label %176

173:                                              ; preds = %169
  %174 = load i32, i32* %18, align 4
  %175 = icmp ne i32 %174, 0
  br label %176

176:                                              ; preds = %173, %169
  %177 = phi i1 [ false, %169 ], [ %175, %173 ]
  br i1 %177, label %178, label %236

178:                                              ; preds = %176
  %179 = load i8**, i8*** %22, align 8
  %180 = load i64, i64* %17, align 8
  %181 = getelementptr inbounds i8*, i8** %179, i64 %180
  %182 = load i8*, i8** %181, align 8
  store i8* %182, i8** %27, align 8
  %183 = load i8**, i8*** %22, align 8
  %184 = load i64, i64* %17, align 8
  %185 = add i64 %184, 1
  %186 = getelementptr inbounds i8*, i8** %183, i64 %185
  %187 = load i8*, i8** %186, align 8
  %188 = getelementptr inbounds i8, i8* %187, i64 -1
  store i8* %188, i8** %28, align 8
  %189 = load i8*, i8** %28, align 8
  %190 = load i8*, i8** %27, align 8
  %191 = ptrtoint i8* %189 to i64
  %192 = ptrtoint i8* %190 to i64
  %193 = sub i64 %191, %192
  store i64 %193, i64* %29, align 8
  %194 = load i8*, i8** %27, align 8
  store i8* %194, i8** %30, align 8
  %195 = load i32, i32* %20, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %214

197:                                              ; preds = %178
  br label %198

198:                                              ; preds = %210, %197
  %199 = load i8*, i8** %30, align 8
  %200 = load i8, i8* %199, align 1
  %201 = call i64 @isspace(i8 zeroext %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %208

203:                                              ; preds = %198
  %204 = load i8*, i8** %30, align 8
  %205 = load i8, i8* %204, align 1
  %206 = sext i8 %205 to i32
  %207 = icmp ne i32 %206, 10
  br label %208

208:                                              ; preds = %203, %198
  %209 = phi i1 [ false, %198 ], [ %207, %203 ]
  br i1 %209, label %210, label %213

210:                                              ; preds = %208
  %211 = load i8*, i8** %30, align 8
  %212 = getelementptr inbounds i8, i8* %211, i32 1
  store i8* %212, i8** %30, align 8
  br label %198

213:                                              ; preds = %208
  br label %214

214:                                              ; preds = %213, %178
  %215 = load i8*, i8** %28, align 8
  %216 = load i8*, i8** %30, align 8
  %217 = ptrtoint i8* %215 to i64
  %218 = ptrtoint i8* %216 to i64
  %219 = sub i64 %217, %218
  %220 = load i64, i64* %19, align 8
  %221 = icmp ne i64 %219, %220
  br i1 %221, label %222, label %232

222:                                              ; preds = %214
  %223 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ignore_regexp, i32 0, i32 0), align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %231

225:                                              ; preds = %222
  %226 = load i8*, i8** %27, align 8
  %227 = load i64, i64* %29, align 8
  %228 = load i64, i64* %29, align 8
  %229 = call i64 @re_search(%struct.TYPE_4__* @ignore_regexp, i8* %226, i64 %227, i32 0, i64 %228, i32 0)
  %230 = icmp slt i64 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %225, %222
  store i32 0, i32* %18, align 4
  br label %232

232:                                              ; preds = %231, %225, %214
  br label %233

233:                                              ; preds = %232
  %234 = load i64, i64* %17, align 8
  %235 = add i64 %234, 1
  store i64 %235, i64* %17, align 8
  br label %169

236:                                              ; preds = %176
  br label %237

237:                                              ; preds = %236
  %238 = load %struct.change*, %struct.change** %12, align 8
  %239 = getelementptr inbounds %struct.change, %struct.change* %238, i32 0, i32 4
  %240 = load %struct.change*, %struct.change** %239, align 8
  store %struct.change* %240, %struct.change** %12, align 8
  %241 = icmp ne %struct.change* %240, null
  br i1 %241, label %68, label %242

242:                                              ; preds = %237
  %243 = load i64, i64* %13, align 8
  %244 = load i64*, i64** %9, align 8
  store i64 %243, i64* %244, align 8
  %245 = load i64, i64* %14, align 8
  %246 = load i64*, i64** %11, align 8
  store i64 %245, i64* %246, align 8
  %247 = load i32, i32* %18, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %251

249:                                              ; preds = %242
  %250 = load i32, i32* @UNCHANGED, align 4
  store i32 %250, i32* %6, align 4
  br label %269

251:                                              ; preds = %242
  %252 = load i64, i64* %15, align 8
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %256

254:                                              ; preds = %251
  %255 = load i32, i32* @OLD, align 4
  br label %258

256:                                              ; preds = %251
  %257 = load i32, i32* @UNCHANGED, align 4
  br label %258

258:                                              ; preds = %256, %254
  %259 = phi i32 [ %255, %254 ], [ %257, %256 ]
  %260 = load i64, i64* %16, align 8
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %264

262:                                              ; preds = %258
  %263 = load i32, i32* @NEW, align 4
  br label %266

264:                                              ; preds = %258
  %265 = load i32, i32* @UNCHANGED, align 4
  br label %266

266:                                              ; preds = %264, %262
  %267 = phi i32 [ %263, %262 ], [ %265, %264 ]
  %268 = or i32 %259, %267
  store i32 %268, i32* %6, align 4
  br label %269

269:                                              ; preds = %266, %249
  %270 = load i32, i32* %6, align 4
  ret i32 %270
}

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i64 @re_search(%struct.TYPE_4__*, i8*, i64, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
