; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/lxdialog/extr_inputbox.c_dialog_inputbox.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/lxdialog/extr_inputbox.c_dialog_inputbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@dialog_input_result = common dso_local global i8* null, align 8
@stdscr = common dso_local global i32 0, align 4
@ERRDISPLAYTOOSMALL = common dso_local global i32 0, align 4
@COLS = common dso_local global i32 0, align 4
@LINES = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@dlg = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@ACS_LTEE = common dso_local global i8 0, align 1
@ACS_HLINE = common dso_local global i32 0, align 4
@ACS_RTEE = common dso_local global i32 0, align 4
@MAX_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dialog_inputbox(i8* %0, i8* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i32*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 -1, i32* %21, align 4
  %24 = load i8*, i8** @dialog_input_result, align 8
  store i8* %24, i8** %22, align 8
  %25 = load i8*, i8** %11, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %5
  %28 = load i8*, i8** %22, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  store i8 0, i8* %29, align 1
  br label %34

30:                                               ; preds = %5
  %31 = load i8*, i8** %22, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = call i32 @strcpy(i8* %31, i8* %32)
  br label %34

34:                                               ; preds = %30, %27
  br label %35

35:                                               ; preds = %462, %34
  %36 = load i32, i32* @stdscr, align 4
  %37 = call i32 @getmaxy(i32 %36)
  %38 = load i32, i32* %9, align 4
  %39 = sub nsw i32 %38, 2
  %40 = icmp sle i32 %37, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i32, i32* @ERRDISPLAYTOOSMALL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  br label %470

44:                                               ; preds = %35
  %45 = load i32, i32* @stdscr, align 4
  %46 = call i32 @getmaxx(i32 %45)
  %47 = load i32, i32* %10, align 4
  %48 = sub nsw i32 %47, 2
  %49 = icmp sle i32 %46, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i32, i32* @ERRDISPLAYTOOSMALL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %6, align 4
  br label %470

53:                                               ; preds = %44
  %54 = load i32, i32* @COLS, align 4
  %55 = load i32, i32* %10, align 4
  %56 = sub nsw i32 %54, %55
  %57 = sdiv i32 %56, 2
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* @LINES, align 4
  %59 = load i32, i32* %9, align 4
  %60 = sub nsw i32 %58, %59
  %61 = sdiv i32 %60, 2
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* @stdscr, align 4
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @draw_shadow(i32 %62, i32 %63, i32 %64, i32 %65, i32 %66)
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* %13, align 4
  %72 = call i32* @newwin(i32 %68, i32 %69, i32 %70, i32 %71)
  store i32* %72, i32** %23, align 8
  %73 = load i32*, i32** %23, align 8
  %74 = load i32, i32* @TRUE, align 4
  %75 = call i32 @keypad(i32* %73, i32 %74)
  %76 = load i32*, i32** %23, align 8
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dlg, i32 0, i32 2, i32 0), align 4
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dlg, i32 0, i32 1, i32 0), align 4
  %81 = call i32 @draw_box(i32* %76, i32 0, i32 0, i32 %77, i32 %78, i32 %79, i32 %80)
  %82 = load i32*, i32** %23, align 8
  %83 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dlg, i32 0, i32 1, i32 0), align 4
  %84 = call i32 @wattrset(i32* %82, i32 %83)
  %85 = load i32*, i32** %23, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sub nsw i32 %86, 3
  %88 = load i8, i8* @ACS_LTEE, align 1
  %89 = call i32 @mvwaddch(i32* %85, i32 %87, i32 0, i8 signext %88)
  store i32 0, i32* %12, align 4
  br label %90

90:                                               ; preds = %99, %53
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* %10, align 4
  %93 = sub nsw i32 %92, 2
  %94 = icmp slt i32 %91, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %90
  %96 = load i32*, i32** %23, align 8
  %97 = load i32, i32* @ACS_HLINE, align 4
  %98 = call i32 @waddch(i32* %96, i32 %97)
  br label %99

99:                                               ; preds = %95
  %100 = load i32, i32* %12, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %12, align 4
  br label %90

102:                                              ; preds = %90
  %103 = load i32*, i32** %23, align 8
  %104 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dlg, i32 0, i32 2, i32 0), align 4
  %105 = call i32 @wattrset(i32* %103, i32 %104)
  %106 = load i32*, i32** %23, align 8
  %107 = load i32, i32* @ACS_RTEE, align 4
  %108 = call i32 @waddch(i32* %106, i32 %107)
  %109 = load i32*, i32** %23, align 8
  %110 = load i8*, i8** %7, align 8
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @print_title(i32* %109, i8* %110, i32 %111)
  %113 = load i32*, i32** %23, align 8
  %114 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dlg, i32 0, i32 2, i32 0), align 4
  %115 = call i32 @wattrset(i32* %113, i32 %114)
  %116 = load i32*, i32** %23, align 8
  %117 = load i8*, i8** %8, align 8
  %118 = load i32, i32* %10, align 4
  %119 = sub nsw i32 %118, 2
  %120 = call i32 @print_autowrap(i32* %116, i8* %117, i32 %119, i32 1, i32 3)
  %121 = load i32, i32* %10, align 4
  %122 = sub nsw i32 %121, 6
  store i32 %122, i32* %17, align 4
  %123 = load i32*, i32** %23, align 8
  %124 = load i32, i32* %14, align 4
  %125 = load i32, i32* %13, align 4
  %126 = call i32 @getyx(i32* %123, i32 %124, i32 %125)
  %127 = load i32, i32* %14, align 4
  %128 = add nsw i32 %127, 2
  store i32 %128, i32* %15, align 4
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* %17, align 4
  %131 = sub nsw i32 %129, %130
  %132 = sdiv i32 %131, 2
  store i32 %132, i32* %16, align 4
  %133 = load i32*, i32** %23, align 8
  %134 = load i32, i32* %14, align 4
  %135 = add nsw i32 %134, 1
  %136 = load i32, i32* %16, align 4
  %137 = sub nsw i32 %136, 1
  %138 = load i32, i32* %17, align 4
  %139 = add nsw i32 %138, 2
  %140 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dlg, i32 0, i32 2, i32 0), align 4
  %141 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dlg, i32 0, i32 1, i32 0), align 4
  %142 = call i32 @draw_box(i32* %133, i32 %135, i32 %137, i32 3, i32 %139, i32 %140, i32 %141)
  %143 = load i32*, i32** %23, align 8
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* %10, align 4
  %146 = call i32 @print_buttons(i32* %143, i32 %144, i32 %145, i32 0)
  %147 = load i32*, i32** %23, align 8
  %148 = load i32, i32* %15, align 4
  %149 = load i32, i32* %16, align 4
  %150 = call i32 @wmove(i32* %147, i32 %148, i32 %149)
  %151 = load i32*, i32** %23, align 8
  %152 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dlg, i32 0, i32 0, i32 0), align 4
  %153 = call i32 @wattrset(i32* %151, i32 %152)
  %154 = load i8*, i8** %22, align 8
  %155 = call i32 @strlen(i8* %154)
  store i32 %155, i32* %18, align 4
  %156 = load i32, i32* %18, align 4
  %157 = load i32, i32* %17, align 4
  %158 = icmp sge i32 %156, %157
  br i1 %158, label %159, label %186

159:                                              ; preds = %102
  %160 = load i32, i32* %18, align 4
  %161 = load i32, i32* %17, align 4
  %162 = sub nsw i32 %160, %161
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %19, align 4
  %164 = load i32, i32* %17, align 4
  %165 = sub nsw i32 %164, 1
  store i32 %165, i32* %18, align 4
  store i32 0, i32* %12, align 4
  br label %166

166:                                              ; preds = %182, %159
  %167 = load i32, i32* %12, align 4
  %168 = load i32, i32* %17, align 4
  %169 = sub nsw i32 %168, 1
  %170 = icmp slt i32 %167, %169
  br i1 %170, label %171, label %185

171:                                              ; preds = %166
  %172 = load i32*, i32** %23, align 8
  %173 = load i8*, i8** %22, align 8
  %174 = load i32, i32* %19, align 4
  %175 = load i32, i32* %12, align 4
  %176 = add nsw i32 %174, %175
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i8, i8* %173, i64 %177
  %179 = load i8, i8* %178, align 1
  %180 = sext i8 %179 to i32
  %181 = call i32 @waddch(i32* %172, i32 %180)
  br label %182

182:                                              ; preds = %171
  %183 = load i32, i32* %12, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %12, align 4
  br label %166

185:                                              ; preds = %166
  br label %190

186:                                              ; preds = %102
  %187 = load i32*, i32** %23, align 8
  %188 = load i8*, i8** %22, align 8
  %189 = call i32 @waddstr(i32* %187, i8* %188)
  br label %190

190:                                              ; preds = %186, %185
  %191 = load i32*, i32** %23, align 8
  %192 = load i32, i32* %15, align 4
  %193 = load i32, i32* %16, align 4
  %194 = load i32, i32* %18, align 4
  %195 = add nsw i32 %193, %194
  %196 = call i32 @wmove(i32* %191, i32 %192, i32 %195)
  %197 = load i32*, i32** %23, align 8
  %198 = call i32 @wrefresh(i32* %197)
  br label %199

199:                                              ; preds = %466, %385, %305, %211, %210, %190
  %200 = load i32, i32* %20, align 4
  %201 = icmp ne i32 %200, 133
  br i1 %201, label %202, label %467

202:                                              ; preds = %199
  %203 = load i32*, i32** %23, align 8
  %204 = call i32 @wgetch(i32* %203)
  store i32 %204, i32* %20, align 4
  %205 = load i32, i32* %21, align 4
  %206 = icmp eq i32 %205, -1
  br i1 %206, label %207, label %388

207:                                              ; preds = %202
  %208 = load i32, i32* %20, align 4
  switch i32 %208, label %306 [
    i32 128, label %209
    i32 129, label %209
    i32 134, label %209
    i32 132, label %210
    i32 130, label %211
    i32 135, label %212
    i32 127, label %212
  ]

209:                                              ; preds = %207, %207, %207
  br label %387

210:                                              ; preds = %207
  br label %199

211:                                              ; preds = %207
  br label %199

212:                                              ; preds = %207, %207
  %213 = load i32, i32* %18, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %218, label %215

215:                                              ; preds = %212
  %216 = load i32, i32* %19, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %305

218:                                              ; preds = %215, %212
  %219 = load i32*, i32** %23, align 8
  %220 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dlg, i32 0, i32 0, i32 0), align 4
  %221 = call i32 @wattrset(i32* %219, i32 %220)
  %222 = load i32, i32* %18, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %281, label %224

224:                                              ; preds = %218
  %225 = load i32, i32* %19, align 4
  %226 = load i32, i32* %17, align 4
  %227 = sub nsw i32 %226, 1
  %228 = icmp slt i32 %225, %227
  br i1 %228, label %229, label %230

229:                                              ; preds = %224
  br label %235

230:                                              ; preds = %224
  %231 = load i32, i32* %19, align 4
  %232 = load i32, i32* %17, align 4
  %233 = sub nsw i32 %232, 1
  %234 = sub nsw i32 %231, %233
  br label %235

235:                                              ; preds = %230, %229
  %236 = phi i32 [ 0, %229 ], [ %234, %230 ]
  store i32 %236, i32* %19, align 4
  %237 = load i32*, i32** %23, align 8
  %238 = load i32, i32* %15, align 4
  %239 = load i32, i32* %16, align 4
  %240 = call i32 @wmove(i32* %237, i32 %238, i32 %239)
  store i32 0, i32* %12, align 4
  br label %241

241:                                              ; preds = %273, %235
  %242 = load i32, i32* %12, align 4
  %243 = load i32, i32* %17, align 4
  %244 = icmp slt i32 %242, %243
  br i1 %244, label %245, label %276

245:                                              ; preds = %241
  %246 = load i32*, i32** %23, align 8
  %247 = load i8*, i8** %22, align 8
  %248 = load i32, i32* %19, align 4
  %249 = load i32, i32* %18, align 4
  %250 = add nsw i32 %248, %249
  %251 = load i32, i32* %12, align 4
  %252 = add nsw i32 %250, %251
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i8, i8* %247, i64 %253
  %255 = load i8, i8* %254, align 1
  %256 = sext i8 %255 to i32
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %269

258:                                              ; preds = %245
  %259 = load i8*, i8** %22, align 8
  %260 = load i32, i32* %19, align 4
  %261 = load i32, i32* %18, align 4
  %262 = add nsw i32 %260, %261
  %263 = load i32, i32* %12, align 4
  %264 = add nsw i32 %262, %263
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i8, i8* %259, i64 %265
  %267 = load i8, i8* %266, align 1
  %268 = sext i8 %267 to i32
  br label %270

269:                                              ; preds = %245
  br label %270

270:                                              ; preds = %269, %258
  %271 = phi i32 [ %268, %258 ], [ 32, %269 ]
  %272 = call i32 @waddch(i32* %246, i32 %271)
  br label %273

273:                                              ; preds = %270
  %274 = load i32, i32* %12, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %12, align 4
  br label %241

276:                                              ; preds = %241
  %277 = load i8*, i8** %22, align 8
  %278 = call i32 @strlen(i8* %277)
  %279 = load i32, i32* %19, align 4
  %280 = sub nsw i32 %278, %279
  store i32 %280, i32* %18, align 4
  br label %284

281:                                              ; preds = %218
  %282 = load i32, i32* %18, align 4
  %283 = add nsw i32 %282, -1
  store i32 %283, i32* %18, align 4
  br label %284

284:                                              ; preds = %281, %276
  %285 = load i8*, i8** %22, align 8
  %286 = load i32, i32* %19, align 4
  %287 = load i32, i32* %18, align 4
  %288 = add nsw i32 %286, %287
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i8, i8* %285, i64 %289
  store i8 0, i8* %290, align 1
  %291 = load i32*, i32** %23, align 8
  %292 = load i32, i32* %15, align 4
  %293 = load i32, i32* %18, align 4
  %294 = load i32, i32* %16, align 4
  %295 = add nsw i32 %293, %294
  %296 = call i32 @mvwaddch(i32* %291, i32 %292, i32 %295, i8 signext 32)
  %297 = load i32*, i32** %23, align 8
  %298 = load i32, i32* %15, align 4
  %299 = load i32, i32* %18, align 4
  %300 = load i32, i32* %16, align 4
  %301 = add nsw i32 %299, %300
  %302 = call i32 @wmove(i32* %297, i32 %298, i32 %301)
  %303 = load i32*, i32** %23, align 8
  %304 = call i32 @wrefresh(i32* %303)
  br label %305

305:                                              ; preds = %284, %215
  br label %199

306:                                              ; preds = %207
  %307 = load i32, i32* %20, align 4
  %308 = icmp slt i32 %307, 256
  br i1 %308, label %309, label %386

309:                                              ; preds = %306
  %310 = load i32, i32* %20, align 4
  %311 = call i32 @isprint(i32 %310) #3
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %386

313:                                              ; preds = %309
  %314 = load i32, i32* %19, align 4
  %315 = load i32, i32* %18, align 4
  %316 = add nsw i32 %314, %315
  %317 = load i32, i32* @MAX_LEN, align 4
  %318 = icmp slt i32 %316, %317
  br i1 %318, label %319, label %383

319:                                              ; preds = %313
  %320 = load i32*, i32** %23, align 8
  %321 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dlg, i32 0, i32 0, i32 0), align 4
  %322 = call i32 @wattrset(i32* %320, i32 %321)
  %323 = load i32, i32* %20, align 4
  %324 = trunc i32 %323 to i8
  %325 = load i8*, i8** %22, align 8
  %326 = load i32, i32* %19, align 4
  %327 = load i32, i32* %18, align 4
  %328 = add nsw i32 %326, %327
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i8, i8* %325, i64 %329
  store i8 %324, i8* %330, align 1
  %331 = load i8*, i8** %22, align 8
  %332 = load i32, i32* %19, align 4
  %333 = load i32, i32* %18, align 4
  %334 = add nsw i32 %332, %333
  %335 = add nsw i32 %334, 1
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i8, i8* %331, i64 %336
  store i8 0, i8* %337, align 1
  %338 = load i32, i32* %18, align 4
  %339 = load i32, i32* %17, align 4
  %340 = sub nsw i32 %339, 1
  %341 = icmp eq i32 %338, %340
  br i1 %341, label %342, label %369

342:                                              ; preds = %319
  %343 = load i32, i32* %19, align 4
  %344 = add nsw i32 %343, 1
  store i32 %344, i32* %19, align 4
  %345 = load i32*, i32** %23, align 8
  %346 = load i32, i32* %15, align 4
  %347 = load i32, i32* %16, align 4
  %348 = call i32 @wmove(i32* %345, i32 %346, i32 %347)
  store i32 0, i32* %12, align 4
  br label %349

349:                                              ; preds = %365, %342
  %350 = load i32, i32* %12, align 4
  %351 = load i32, i32* %17, align 4
  %352 = sub nsw i32 %351, 1
  %353 = icmp slt i32 %350, %352
  br i1 %353, label %354, label %368

354:                                              ; preds = %349
  %355 = load i32*, i32** %23, align 8
  %356 = load i8*, i8** %22, align 8
  %357 = load i32, i32* %19, align 4
  %358 = load i32, i32* %12, align 4
  %359 = add nsw i32 %357, %358
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds i8, i8* %356, i64 %360
  %362 = load i8, i8* %361, align 1
  %363 = sext i8 %362 to i32
  %364 = call i32 @waddch(i32* %355, i32 %363)
  br label %365

365:                                              ; preds = %354
  %366 = load i32, i32* %12, align 4
  %367 = add nsw i32 %366, 1
  store i32 %367, i32* %12, align 4
  br label %349

368:                                              ; preds = %349
  br label %380

369:                                              ; preds = %319
  %370 = load i32*, i32** %23, align 8
  %371 = load i32, i32* %15, align 4
  %372 = load i32, i32* %18, align 4
  %373 = add nsw i32 %372, 1
  store i32 %373, i32* %18, align 4
  %374 = load i32, i32* %16, align 4
  %375 = add nsw i32 %372, %374
  %376 = call i32 @wmove(i32* %370, i32 %371, i32 %375)
  %377 = load i32*, i32** %23, align 8
  %378 = load i32, i32* %20, align 4
  %379 = call i32 @waddch(i32* %377, i32 %378)
  br label %380

380:                                              ; preds = %369, %368
  %381 = load i32*, i32** %23, align 8
  %382 = call i32 @wrefresh(i32* %381)
  br label %385

383:                                              ; preds = %313
  %384 = call i32 (...) @flash()
  br label %385

385:                                              ; preds = %383, %380
  br label %199

386:                                              ; preds = %309, %306
  br label %387

387:                                              ; preds = %386, %209
  br label %388

388:                                              ; preds = %387, %202
  %389 = load i32, i32* %20, align 4
  switch i32 %389, label %466 [
    i32 79, label %390
    i32 111, label %390
    i32 72, label %393
    i32 104, label %393
    i32 129, label %396
    i32 132, label %396
    i32 128, label %422
    i32 134, label %422
    i32 130, label %422
    i32 32, label %448
    i32 10, label %448
    i32 88, label %458
    i32 120, label %458
    i32 133, label %459
    i32 131, label %462
  ]

390:                                              ; preds = %388, %388
  %391 = load i32*, i32** %23, align 8
  %392 = call i32 @delwin(i32* %391)
  store i32 0, i32* %6, align 4
  br label %470

393:                                              ; preds = %388, %388
  %394 = load i32*, i32** %23, align 8
  %395 = call i32 @delwin(i32* %394)
  store i32 1, i32* %6, align 4
  br label %470

396:                                              ; preds = %388, %388
  %397 = load i32, i32* %21, align 4
  switch i32 %397, label %421 [
    i32 -1, label %398
    i32 0, label %403
    i32 1, label %416
  ]

398:                                              ; preds = %396
  store i32 1, i32* %21, align 4
  %399 = load i32*, i32** %23, align 8
  %400 = load i32, i32* %9, align 4
  %401 = load i32, i32* %10, align 4
  %402 = call i32 @print_buttons(i32* %399, i32 %400, i32 %401, i32 1)
  br label %421

403:                                              ; preds = %396
  store i32 -1, i32* %21, align 4
  %404 = load i32*, i32** %23, align 8
  %405 = load i32, i32* %9, align 4
  %406 = load i32, i32* %10, align 4
  %407 = call i32 @print_buttons(i32* %404, i32 %405, i32 %406, i32 0)
  %408 = load i32*, i32** %23, align 8
  %409 = load i32, i32* %15, align 4
  %410 = load i32, i32* %16, align 4
  %411 = load i32, i32* %18, align 4
  %412 = add nsw i32 %410, %411
  %413 = call i32 @wmove(i32* %408, i32 %409, i32 %412)
  %414 = load i32*, i32** %23, align 8
  %415 = call i32 @wrefresh(i32* %414)
  br label %421

416:                                              ; preds = %396
  store i32 0, i32* %21, align 4
  %417 = load i32*, i32** %23, align 8
  %418 = load i32, i32* %9, align 4
  %419 = load i32, i32* %10, align 4
  %420 = call i32 @print_buttons(i32* %417, i32 %418, i32 %419, i32 0)
  br label %421

421:                                              ; preds = %396, %416, %403, %398
  br label %466

422:                                              ; preds = %388, %388, %388
  %423 = load i32, i32* %21, align 4
  switch i32 %423, label %447 [
    i32 -1, label %424
    i32 0, label %429
    i32 1, label %434
  ]

424:                                              ; preds = %422
  store i32 0, i32* %21, align 4
  %425 = load i32*, i32** %23, align 8
  %426 = load i32, i32* %9, align 4
  %427 = load i32, i32* %10, align 4
  %428 = call i32 @print_buttons(i32* %425, i32 %426, i32 %427, i32 0)
  br label %447

429:                                              ; preds = %422
  store i32 1, i32* %21, align 4
  %430 = load i32*, i32** %23, align 8
  %431 = load i32, i32* %9, align 4
  %432 = load i32, i32* %10, align 4
  %433 = call i32 @print_buttons(i32* %430, i32 %431, i32 %432, i32 1)
  br label %447

434:                                              ; preds = %422
  store i32 -1, i32* %21, align 4
  %435 = load i32*, i32** %23, align 8
  %436 = load i32, i32* %9, align 4
  %437 = load i32, i32* %10, align 4
  %438 = call i32 @print_buttons(i32* %435, i32 %436, i32 %437, i32 0)
  %439 = load i32*, i32** %23, align 8
  %440 = load i32, i32* %15, align 4
  %441 = load i32, i32* %16, align 4
  %442 = load i32, i32* %18, align 4
  %443 = add nsw i32 %441, %442
  %444 = call i32 @wmove(i32* %439, i32 %440, i32 %443)
  %445 = load i32*, i32** %23, align 8
  %446 = call i32 @wrefresh(i32* %445)
  br label %447

447:                                              ; preds = %422, %434, %429, %424
  br label %466

448:                                              ; preds = %388, %388
  %449 = load i32*, i32** %23, align 8
  %450 = call i32 @delwin(i32* %449)
  %451 = load i32, i32* %21, align 4
  %452 = icmp eq i32 %451, -1
  br i1 %452, label %453, label %454

453:                                              ; preds = %448
  br label %456

454:                                              ; preds = %448
  %455 = load i32, i32* %21, align 4
  br label %456

456:                                              ; preds = %454, %453
  %457 = phi i32 [ 0, %453 ], [ %455, %454 ]
  store i32 %457, i32* %6, align 4
  br label %470

458:                                              ; preds = %388, %388
  store i32 133, i32* %20, align 4
  br label %466

459:                                              ; preds = %388
  %460 = load i32*, i32** %23, align 8
  %461 = call i32 @on_key_esc(i32* %460)
  store i32 %461, i32* %20, align 4
  br label %466

462:                                              ; preds = %388
  %463 = load i32*, i32** %23, align 8
  %464 = call i32 @delwin(i32* %463)
  %465 = call i32 (...) @on_key_resize()
  br label %35

466:                                              ; preds = %388, %459, %458, %447, %421
  br label %199

467:                                              ; preds = %199
  %468 = load i32*, i32** %23, align 8
  %469 = call i32 @delwin(i32* %468)
  store i32 133, i32* %6, align 4
  br label %470

470:                                              ; preds = %467, %456, %393, %390, %50, %41
  %471 = load i32, i32* %6, align 4
  ret i32 %471
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @getmaxy(i32) #1

declare dso_local i32 @getmaxx(i32) #1

declare dso_local i32 @draw_shadow(i32, i32, i32, i32, i32) #1

declare dso_local i32* @newwin(i32, i32, i32, i32) #1

declare dso_local i32 @keypad(i32*, i32) #1

declare dso_local i32 @draw_box(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @wattrset(i32*, i32) #1

declare dso_local i32 @mvwaddch(i32*, i32, i32, i8 signext) #1

declare dso_local i32 @waddch(i32*, i32) #1

declare dso_local i32 @print_title(i32*, i8*, i32) #1

declare dso_local i32 @print_autowrap(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @getyx(i32*, i32, i32) #1

declare dso_local i32 @print_buttons(i32*, i32, i32, i32) #1

declare dso_local i32 @wmove(i32*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @waddstr(i32*, i8*) #1

declare dso_local i32 @wrefresh(i32*) #1

declare dso_local i32 @wgetch(i32*) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isprint(i32) #2

declare dso_local i32 @flash(...) #1

declare dso_local i32 @delwin(i32*) #1

declare dso_local i32 @on_key_esc(i32*) #1

declare dso_local i32 @on_key_resize(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
