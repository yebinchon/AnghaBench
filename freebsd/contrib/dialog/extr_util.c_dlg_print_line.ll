; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_util.c_dlg_print_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_util.c_dlg_print_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@TAB = common dso_local global i32 0, align 4
@dialog_vars = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@ESCAPE_LEN = common dso_local global i32 0, align 4
@dialog_state = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @dlg_print_line(i32* %0, i32* %1, i8* %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  store i8* null, i8** %15, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = call i32* @dlg_index_columns(i8* %26)
  store i32* %27, i32** %16, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = call i32* @dlg_index_wchars(i8* %28)
  store i32* %29, i32** %17, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %31 = load i8*, i8** %9, align 8
  %32 = call i32 @dlg_count_wchars(i8* %31)
  store i32 %32, i32* %22, align 4
  store i32 0, i32* %24, align 4
  %33 = load i32*, i32** %12, align 8
  store i32 1, i32* %33, align 4
  store i32 0, i32* %23, align 4
  br label %34

34:                                               ; preds = %134, %6
  %35 = load i32, i32* %23, align 4
  %36 = load i32, i32* %22, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %137

38:                                               ; preds = %34
  %39 = load i8*, i8** %9, align 8
  %40 = load i32*, i32** %17, align 8
  %41 = load i32, i32* %19, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %39, i64 %45
  store i8* %46, i8** %14, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  store i32 %48, i32* %25, align 4
  %49 = load i32, i32* %25, align 4
  %50 = icmp eq i32 %49, 10
  br i1 %50, label %60, label %51

51:                                               ; preds = %38
  %52 = load i32, i32* %25, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %20, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %21, align 4
  %58 = add nsw i32 %56, %57
  %59 = icmp sge i32 %55, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %54, %51, %38
  br label %137

61:                                               ; preds = %54
  %62 = load i32, i32* %25, align 4
  %63 = load i32, i32* @TAB, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load i32, i32* %23, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store i32 8, i32* %24, align 4
  br label %114

69:                                               ; preds = %65, %61
  %70 = load i32, i32* %25, align 4
  %71 = trunc i32 %70 to i8
  %72 = call i32 @UCH(i8 signext %71)
  %73 = call i64 @isblank(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %96

75:                                               ; preds = %69
  %76 = load i32, i32* %23, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %96

78:                                               ; preds = %75
  %79 = load i8*, i8** %9, align 8
  %80 = load i32*, i32** %17, align 8
  %81 = load i32, i32* %23, align 4
  %82 = sub nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %80, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %79, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = call i32 @UCH(i8 signext %88)
  %90 = call i64 @isblank(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %78
  %93 = load i32, i32* %23, align 4
  store i32 %93, i32* %18, align 4
  %94 = load i32, i32* %20, align 4
  %95 = load i32*, i32** %12, align 8
  store i32 %94, i32* %95, align 4
  br label %113

96:                                               ; preds = %78, %75, %69
  %97 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dialog_vars, i32 0, i32 0), align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %112

99:                                               ; preds = %96
  %100 = load i8*, i8** %14, align 8
  %101 = call i64 @isOurEscape(i8* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %99
  %104 = load i8*, i8** %14, align 8
  store i8* %104, i8** %15, align 8
  %105 = load i32, i32* @ESCAPE_LEN, align 4
  %106 = load i32, i32* %21, align 4
  %107 = add nsw i32 %106, %105
  store i32 %107, i32* %21, align 4
  %108 = load i32, i32* @ESCAPE_LEN, align 4
  %109 = sub nsw i32 %108, 1
  %110 = load i32, i32* %23, align 4
  %111 = add nsw i32 %110, %109
  store i32 %111, i32* %23, align 4
  br label %112

112:                                              ; preds = %103, %99, %96
  br label %113

113:                                              ; preds = %112, %92
  br label %114

114:                                              ; preds = %113, %68
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* %24, align 4
  %117 = add nsw i32 %115, %116
  %118 = load i32*, i32** %16, align 8
  %119 = load i32, i32* %23, align 4
  %120 = add nsw i32 %119, 1
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %118, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %117, %123
  store i32 %124, i32* %20, align 4
  %125 = load i32, i32* %20, align 4
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* %21, align 4
  %128 = add nsw i32 %126, %127
  %129 = icmp sgt i32 %125, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %114
  br label %137

131:                                              ; preds = %114
  %132 = load i32, i32* %23, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %19, align 4
  br label %134

134:                                              ; preds = %131
  %135 = load i32, i32* %23, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %23, align 4
  br label %34

137:                                              ; preds = %130, %60, %34
  %138 = load i8*, i8** %9, align 8
  %139 = load i32*, i32** %17, align 8
  %140 = load i32, i32* %19, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %138, i64 %144
  store i8* %145, i8** %14, align 8
  %146 = load i8*, i8** %14, align 8
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp eq i32 %148, 10
  br i1 %149, label %161, label %150

150:                                              ; preds = %137
  %151 = load i8*, i8** %14, align 8
  %152 = load i8, i8* %151, align 1
  %153 = call i32 @UCH(i8 signext %152)
  %154 = call i64 @isblank(i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %161, label %156

156:                                              ; preds = %150
  %157 = load i8*, i8** %14, align 8
  %158 = load i8, i8* %157, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %194

161:                                              ; preds = %156, %150, %137
  %162 = load i32, i32* %19, align 4
  store i32 %162, i32* %18, align 4
  br label %163

163:                                              ; preds = %182, %161
  %164 = load i32, i32* %18, align 4
  %165 = icmp sgt i32 %164, 0
  br i1 %165, label %166, label %180

166:                                              ; preds = %163
  %167 = load i8*, i8** %9, align 8
  %168 = load i32*, i32** %17, align 8
  %169 = load i32, i32* %18, align 4
  %170 = sub nsw i32 %169, 1
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %168, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8, i8* %167, i64 %174
  %176 = load i8, i8* %175, align 1
  %177 = call i32 @UCH(i8 signext %176)
  %178 = call i64 @isblank(i32 %177)
  %179 = icmp ne i64 %178, 0
  br label %180

180:                                              ; preds = %166, %163
  %181 = phi i1 [ false, %163 ], [ %179, %166 ]
  br i1 %181, label %182, label %185

182:                                              ; preds = %180
  %183 = load i32, i32* %18, align 4
  %184 = add nsw i32 %183, -1
  store i32 %184, i32* %18, align 4
  br label %163

185:                                              ; preds = %180
  %186 = load i32, i32* %10, align 4
  %187 = load i32*, i32** %17, align 8
  %188 = load i32, i32* %18, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %187, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = add nsw i32 %186, %191
  %193 = load i32*, i32** %12, align 8
  store i32 %192, i32* %193, align 4
  br label %207

194:                                              ; preds = %156
  %195 = load i32*, i32** %12, align 8
  %196 = load i32, i32* %195, align 4
  %197 = icmp eq i32 %196, 1
  br i1 %197, label %198, label %206

198:                                              ; preds = %194
  %199 = load i32, i32* %20, align 4
  %200 = load i32, i32* %11, align 4
  %201 = icmp sge i32 %199, %200
  br i1 %201, label %202, label %206

202:                                              ; preds = %198
  %203 = load i32, i32* %11, align 4
  %204 = load i32*, i32** %12, align 8
  store i32 %203, i32* %204, align 4
  %205 = load i32, i32* %19, align 4
  store i32 %205, i32* %18, align 4
  br label %206

206:                                              ; preds = %202, %198, %194
  br label %207

207:                                              ; preds = %206, %185
  %208 = load i8*, i8** %9, align 8
  %209 = load i32*, i32** %17, align 8
  %210 = load i32, i32* %18, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i8, i8* %208, i64 %214
  store i8* %215, i8** %13, align 8
  %216 = load i8*, i8** %15, align 8
  %217 = icmp ne i8* %216, null
  br i1 %217, label %218, label %251

218:                                              ; preds = %207
  %219 = load i8*, i8** %15, align 8
  %220 = load i8*, i8** %13, align 8
  %221 = icmp uge i8* %219, %220
  br i1 %221, label %222, label %251

222:                                              ; preds = %218
  %223 = load i32, i32* @ESCAPE_LEN, align 4
  %224 = load i32, i32* %21, align 4
  %225 = sub nsw i32 %224, %223
  store i32 %225, i32* %21, align 4
  %226 = load i8*, i8** %13, align 8
  store i8* %226, i8** %14, align 8
  br label %227

227:                                              ; preds = %249, %222
  %228 = load i8*, i8** %14, align 8
  %229 = load i8*, i8** %13, align 8
  %230 = icmp ult i8* %228, %229
  br i1 %230, label %231, label %250

231:                                              ; preds = %227
  %232 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dialog_vars, i32 0, i32 0), align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %246

234:                                              ; preds = %231
  %235 = load i8*, i8** %14, align 8
  %236 = call i64 @isOurEscape(i8* %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %246

238:                                              ; preds = %234
  %239 = load i32, i32* @ESCAPE_LEN, align 4
  %240 = load i32, i32* %21, align 4
  %241 = sub nsw i32 %240, %239
  store i32 %241, i32* %21, align 4
  %242 = load i32, i32* @ESCAPE_LEN, align 4
  %243 = load i8*, i8** %14, align 8
  %244 = sext i32 %242 to i64
  %245 = getelementptr inbounds i8, i8* %243, i64 %244
  store i8* %245, i8** %14, align 8
  br label %249

246:                                              ; preds = %234, %231
  %247 = load i8*, i8** %14, align 8
  %248 = getelementptr inbounds i8, i8* %247, i32 1
  store i8* %248, i8** %14, align 8
  br label %249

249:                                              ; preds = %246, %238
  br label %227

250:                                              ; preds = %227
  br label %251

251:                                              ; preds = %250, %218, %207
  %252 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dialog_state, i32 0, i32 0), align 8
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %257, label %254

254:                                              ; preds = %251
  %255 = load i32*, i32** %7, align 8
  %256 = icmp ne i32* %255, null
  br i1 %256, label %257, label %269

257:                                              ; preds = %254, %251
  %258 = load i32*, i32** %7, align 8
  %259 = load i8*, i8** %9, align 8
  %260 = load i32*, i32** %16, align 8
  %261 = load i32, i32* %18, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %260, i64 %262
  %264 = load i32, i32* %263, align 4
  %265 = load i32, i32* %21, align 4
  %266 = sub nsw i32 %264, %265
  %267 = load i32*, i32** %8, align 8
  %268 = call i32 @dlg_print_text(i32* %258, i8* %259, i32 %266, i32* %267)
  br label %269

269:                                              ; preds = %257, %254
  %270 = load i32*, i32** %12, align 8
  %271 = load i32, i32* %270, align 4
  %272 = icmp eq i32 %271, 1
  br i1 %272, label %273, label %276

273:                                              ; preds = %269
  %274 = load i32, i32* %11, align 4
  %275 = load i32*, i32** %12, align 8
  store i32 %274, i32* %275, align 4
  br label %276

276:                                              ; preds = %273, %269
  %277 = load i32, i32* %21, align 4
  %278 = load i32*, i32** %12, align 8
  %279 = load i32, i32* %278, align 4
  %280 = sub nsw i32 %279, %277
  store i32 %280, i32* %278, align 4
  %281 = load i8*, i8** %13, align 8
  store i8* %281, i8** %14, align 8
  br label %282

282:                                              ; preds = %288, %276
  %283 = load i8*, i8** %14, align 8
  %284 = load i8, i8* %283, align 1
  %285 = call i32 @UCH(i8 signext %284)
  %286 = call i64 @isblank(i32 %285)
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %291

288:                                              ; preds = %282
  %289 = load i8*, i8** %14, align 8
  %290 = getelementptr inbounds i8, i8* %289, i32 1
  store i8* %290, i8** %14, align 8
  br label %282

291:                                              ; preds = %282
  %292 = load i8*, i8** %14, align 8
  %293 = load i8, i8* %292, align 1
  %294 = sext i8 %293 to i32
  %295 = icmp eq i32 %294, 10
  br i1 %295, label %296, label %299

296:                                              ; preds = %291
  %297 = load i8*, i8** %14, align 8
  %298 = getelementptr inbounds i8, i8* %297, i32 1
  store i8* %298, i8** %14, align 8
  br label %299

299:                                              ; preds = %296, %291
  %300 = load i8*, i8** %9, align 8
  %301 = call i32 @dlg_finish_string(i8* %300)
  %302 = load i8*, i8** %14, align 8
  ret i8* %302
}

declare dso_local i32* @dlg_index_columns(i8*) #1

declare dso_local i32* @dlg_index_wchars(i8*) #1

declare dso_local i32 @dlg_count_wchars(i8*) #1

declare dso_local i64 @isblank(i32) #1

declare dso_local i32 @UCH(i8 signext) #1

declare dso_local i64 @isOurEscape(i8*) #1

declare dso_local i32 @dlg_print_text(i32*, i8*, i32, i32*) #1

declare dso_local i32 @dlg_finish_string(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
