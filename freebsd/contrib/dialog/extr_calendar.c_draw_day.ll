; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_calendar.c_draw_day.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_calendar.c_draw_day.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i64, i32, i32, i64 }
%struct.tm = type { i32, i32, i32, i64, i64 }

@MON_WIDE = common dso_local global i32 0, align 4
@MARGIN = common dso_local global i32 0, align 4
@menubox_attr = common dso_local global i32 0, align 4
@menubox_border_attr = common dso_local global i32 0, align 4
@menubox_border2_attr = common dso_local global i32 0, align 4
@MAX_DAYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%*.*s \00", align 1
@dialog_vars = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"%*d \00", align 1
@ERR = common dso_local global i64 0, align 8
@item_attr = common dso_local global i32 0, align 4
@item_selected_attr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"%*d\00", align 1
@TRUE = common dso_local global i32 0, align 4
@ARROWS_COL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, %struct.tm*)* @draw_day to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @draw_day(%struct.TYPE_4__* %0, %struct.tm* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.tm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store %struct.tm* %1, %struct.tm** %4, align 8
  %18 = load i32, i32* @MON_WIDE, align 4
  store i32 %18, i32* %5, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %19 = load %struct.tm*, %struct.tm** %4, align 8
  %20 = getelementptr inbounds %struct.tm, %struct.tm* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %11, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32* null, i32** %15, align 8
  %22 = load %struct.tm*, %struct.tm** %4, align 8
  %23 = call i32 @days_in_month(%struct.tm* %22, i32 0)
  store i32 %23, i32* %16, align 4
  %24 = load %struct.tm*, %struct.tm** %4, align 8
  %25 = call i32 @days_in_month(%struct.tm* %24, i32 -1)
  store i32 %25, i32* %17, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @werase(i32 %28)
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @MARGIN, align 4
  %37 = sub nsw i32 %35, %36
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @MARGIN, align 4
  %42 = sub nsw i32 %40, %41
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* @MARGIN, align 4
  %47 = mul nsw i32 2, %46
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %45, %48
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 6
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* @MARGIN, align 4
  %54 = mul nsw i32 2, %53
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %52, %55
  %57 = load i32, i32* @menubox_attr, align 4
  %58 = load i32, i32* @menubox_border_attr, align 4
  %59 = load i32, i32* @menubox_border2_attr, align 4
  %60 = call i32 @dlg_draw_box2(i32 %32, i32 %37, i32 %42, i64 %49, i64 %56, i32 %57, i32 %58, i32 %59)
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @menubox_attr, align 4
  %65 = call i32 @dlg_attrset(i32 %63, i32 %64)
  store i32 0, i32* %7, align 4
  br label %66

66:                                               ; preds = %89, %2
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @MAX_DAYS, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %92

70:                                               ; preds = %66
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 1
  %76 = load i32, i32* %5, align 4
  %77 = mul nsw i32 %75, %76
  %78 = load i32, i32* %5, align 4
  %79 = sub nsw i32 %78, 1
  %80 = load i32, i32* %5, align 4
  %81 = sub nsw i32 %80, 1
  %82 = load i32, i32* %7, align 4
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %82, %85
  %87 = call i32 @nameOfDayOfWeek(i32 %86)
  %88 = call i32 (i32, i32, i32, i8*, i32, i32, ...) @mvwprintw(i32 %73, i32 0, i32 %77, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %79, i32 %81, i32 %87)
  br label %89

89:                                               ; preds = %70
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %7, align 4
  br label %66

92:                                               ; preds = %66
  %93 = load %struct.tm*, %struct.tm** %4, align 8
  %94 = getelementptr inbounds %struct.tm, %struct.tm* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = add nsw i32 6, %95
  %97 = load %struct.tm*, %struct.tm** %4, align 8
  %98 = getelementptr inbounds %struct.tm, %struct.tm* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = sub nsw i32 %96, %99
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = add nsw i32 %100, %103
  %105 = load i32, i32* @MAX_DAYS, align 4
  %106 = srem i32 %104, %105
  %107 = load i32, i32* @MAX_DAYS, align 4
  %108 = sub nsw i32 %106, %107
  store i32 %108, i32* %12, align 4
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* @MAX_DAYS, align 4
  %111 = sub nsw i32 0, %110
  %112 = icmp sle i32 %109, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %92
  %114 = load i32, i32* @MAX_DAYS, align 4
  %115 = load i32, i32* %12, align 4
  %116 = add nsw i32 %115, %114
  store i32 %116, i32* %12, align 4
  br label %117

117:                                              ; preds = %113, %92
  %118 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @dialog_vars, i32 0, i32 0), align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %130

120:                                              ; preds = %117
  %121 = load %struct.tm*, %struct.tm** %4, align 8
  %122 = getelementptr inbounds %struct.tm, %struct.tm* %121, i32 0, i32 4
  %123 = load i64, i64* %122, align 8
  %124 = add nsw i64 %123, 1900
  %125 = load %struct.tm*, %struct.tm** %4, align 8
  %126 = getelementptr inbounds %struct.tm, %struct.tm* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = add nsw i64 %127, 1
  %129 = call i32* @getisoweeks(i64 %124, i64 %128)
  store i32* %129, i32** %15, align 8
  br label %143

130:                                              ; preds = %117
  %131 = load %struct.tm*, %struct.tm** %4, align 8
  %132 = getelementptr inbounds %struct.tm, %struct.tm* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = add nsw i32 %133, 6
  %135 = load i32, i32* %12, align 4
  %136 = add nsw i32 %134, %135
  %137 = load %struct.tm*, %struct.tm** %4, align 8
  %138 = getelementptr inbounds %struct.tm, %struct.tm* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = sub nsw i32 %136, %139
  %141 = load i32, i32* @MAX_DAYS, align 4
  %142 = sdiv i32 %140, %141
  store i32 %142, i32* %13, align 4
  br label %143

143:                                              ; preds = %130, %120
  store i32 1, i32* %6, align 4
  br label %144

144:                                              ; preds = %270, %143
  %145 = load i32, i32* %12, align 4
  %146 = load i32, i32* %16, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %273

148:                                              ; preds = %144
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @menubox_attr, align 4
  %153 = call i32 @dlg_attrset(i32 %151, i32 %152)
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 5
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* %6, align 4
  %158 = load i32, i32* %5, align 4
  %159 = sub nsw i32 %158, 1
  %160 = load i32*, i32** %15, align 8
  %161 = icmp ne i32* %160, null
  br i1 %161, label %162, label %169

162:                                              ; preds = %148
  %163 = load i32*, i32** %15, align 8
  %164 = load i32, i32* %14, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %14, align 4
  %166 = sext i32 %164 to i64
  %167 = getelementptr inbounds i32, i32* %163, i64 %166
  %168 = load i32, i32* %167, align 4
  br label %172

169:                                              ; preds = %148
  %170 = load i32, i32* %13, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %13, align 4
  br label %172

172:                                              ; preds = %169, %162
  %173 = phi i32 [ %168, %162 ], [ %171, %169 ]
  %174 = call i32 (i32, i32, i32, i8*, i32, i32, ...) @mvwprintw(i32 %156, i32 %157, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %159, i32 %173)
  store i32 0, i32* %7, align 4
  br label %175

175:                                              ; preds = %260, %172
  %176 = load i32, i32* %7, align 4
  %177 = load i32, i32* @MAX_DAYS, align 4
  %178 = icmp slt i32 %176, %177
  br i1 %178, label %179, label %263

179:                                              ; preds = %175
  %180 = load i32, i32* %7, align 4
  %181 = add nsw i32 %180, 1
  %182 = load i32, i32* %5, align 4
  %183 = mul nsw i32 %181, %182
  %184 = add nsw i32 1, %183
  store i32 %184, i32* %8, align 4
  %185 = load i32, i32* %12, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %12, align 4
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 5
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* %6, align 4
  %191 = load i32, i32* %8, align 4
  %192 = call i64 @wmove(i32 %189, i32 %190, i32 %191)
  %193 = load i64, i64* @ERR, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %196

195:                                              ; preds = %179
  br label %260

196:                                              ; preds = %179
  %197 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 5
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @item_attr, align 4
  %201 = call i32 @dlg_attrset(i32 %199, i32 %200)
  %202 = load i32, i32* %12, align 4
  %203 = load i32, i32* %11, align 4
  %204 = icmp eq i32 %202, %203
  br i1 %204, label %205, label %213

205:                                              ; preds = %196
  %206 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 5
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* @item_selected_attr, align 4
  %210 = call i32 @dlg_attrset(i32 %208, i32 %209)
  %211 = load i32, i32* %6, align 4
  store i32 %211, i32* %9, align 4
  %212 = load i32, i32* %8, align 4
  store i32 %212, i32* %10, align 4
  br label %213

213:                                              ; preds = %205, %196
  %214 = load i32, i32* %12, align 4
  %215 = icmp sgt i32 %214, 0
  br i1 %215, label %216, label %244

216:                                              ; preds = %213
  %217 = load i32, i32* %12, align 4
  %218 = load i32, i32* %16, align 4
  %219 = icmp sle i32 %217, %218
  br i1 %219, label %220, label %228

220:                                              ; preds = %216
  %221 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 5
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* %5, align 4
  %225 = sub nsw i32 %224, 2
  %226 = load i32, i32* %12, align 4
  %227 = call i32 @wprintw(i32 %223, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %225, i32 %226)
  br label %243

228:                                              ; preds = %216
  %229 = load i32, i32* %12, align 4
  %230 = load i32, i32* %11, align 4
  %231 = icmp eq i32 %229, %230
  br i1 %231, label %232, label %242

232:                                              ; preds = %228
  %233 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 5
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* %5, align 4
  %237 = sub nsw i32 %236, 2
  %238 = load i32, i32* %12, align 4
  %239 = load i32, i32* %16, align 4
  %240 = sub nsw i32 %238, %239
  %241 = call i32 @wprintw(i32 %235, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %237, i32 %240)
  br label %242

242:                                              ; preds = %232, %228
  br label %243

243:                                              ; preds = %242, %220
  br label %259

244:                                              ; preds = %213
  %245 = load i32, i32* %12, align 4
  %246 = load i32, i32* %11, align 4
  %247 = icmp eq i32 %245, %246
  br i1 %247, label %248, label %258

248:                                              ; preds = %244
  %249 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %250 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %249, i32 0, i32 5
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* %5, align 4
  %253 = sub nsw i32 %252, 2
  %254 = load i32, i32* %12, align 4
  %255 = load i32, i32* %17, align 4
  %256 = add nsw i32 %254, %255
  %257 = call i32 @wprintw(i32 %251, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %253, i32 %256)
  br label %258

258:                                              ; preds = %248, %244
  br label %259

259:                                              ; preds = %258, %243
  br label %260

260:                                              ; preds = %259, %195
  %261 = load i32, i32* %7, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %7, align 4
  br label %175

263:                                              ; preds = %175
  %264 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %265 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %264, i32 0, i32 5
  %266 = load i32, i32* %265, align 4
  %267 = load i32, i32* %9, align 4
  %268 = load i32, i32* %10, align 4
  %269 = call i64 @wmove(i32 %266, i32 %267, i32 %268)
  br label %270

270:                                              ; preds = %263
  %271 = load i32, i32* %6, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %6, align 4
  br label %144

273:                                              ; preds = %144
  %274 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %275 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %274, i32 0, i32 4
  %276 = load i32, i32* %275, align 8
  %277 = load i32, i32* @TRUE, align 4
  %278 = load i32, i32* @TRUE, align 4
  %279 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %280 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = sext i32 %281 to i64
  %283 = load i64, i64* @ARROWS_COL, align 8
  %284 = add nsw i64 %282, %283
  %285 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %286 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = sub nsw i32 %287, 1
  %289 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %290 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = sext i32 %291 to i64
  %293 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %294 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %293, i32 0, i32 3
  %295 = load i64, i64* %294, align 8
  %296 = add nsw i64 %292, %295
  %297 = call i32 @dlg_draw_arrows(i32 %276, i32 %277, i32 %278, i64 %284, i32 %288, i64 %296)
  ret i32 0
}

declare dso_local i32 @days_in_month(%struct.tm*, i32) #1

declare dso_local i32 @werase(i32) #1

declare dso_local i32 @dlg_draw_box2(i32, i32, i32, i64, i64, i32, i32, i32) #1

declare dso_local i32 @dlg_attrset(i32, i32) #1

declare dso_local i32 @mvwprintw(i32, i32, i32, i8*, i32, i32, ...) #1

declare dso_local i32 @nameOfDayOfWeek(i32) #1

declare dso_local i32* @getisoweeks(i64, i64) #1

declare dso_local i64 @wmove(i32, i32, i32) #1

declare dso_local i32 @wprintw(i32, i8*, i32, i32) #1

declare dso_local i32 @dlg_draw_arrows(i32, i32, i32, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
