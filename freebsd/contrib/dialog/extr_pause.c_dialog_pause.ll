; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_pause.c_dialog_pause.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_pause.c_dialog_pause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@dialog_pause.binding = internal global [4 x i32] [i32 130, i32 132, i32 128, i32 133], align 16
@DLG_EXIT_UNKNOWN = common dso_local global i32 0, align 4
@BTN_HIGH = common dso_local global i32 0, align 4
@MARGIN = common dso_local global i32 0, align 4
@dialog_vars = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [15 x i8] c"# pause args:\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"message\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"seconds\00", align 1
@MIN_HIGH = common dso_local global i64 0, align 8
@MIN_WIDE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"pause\00", align 1
@TRUE = common dso_local global i32 0, align 4
@dialog_attr = common dso_local global i32 0, align 4
@border_attr = common dso_local global i32 0, align 4
@border2_attr = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@title_attr = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"%3d\00", align 1
@A_REVERSE = common dso_local global i32 0, align 4
@MY_TIMEOUT = common dso_local global i64 0, align 8
@M_EVENT = common dso_local global i32 0, align 4
@DLG_EXIT_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dialog_pause(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i8**, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %12, align 4
  %33 = call i32 (...) @dlg_default_button()
  store i32 %33, i32* %17, align 4
  %34 = call i8** (...) @dlg_ok_labels()
  store i8** %34, i8*** %20, align 8
  %35 = load i8**, i8*** %20, align 8
  %36 = call i64 @dlg_button_count(i8** %35)
  %37 = icmp ne i64 %36, 0
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %21, align 4
  store i32 0, i32* %23, align 4
  %39 = load i32, i32* @DLG_EXIT_UNKNOWN, align 4
  store i32 %39, i32* %25, align 4
  %40 = load i32, i32* %21, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %5
  %43 = load i32, i32* @BTN_HIGH, align 4
  br label %46

44:                                               ; preds = %5
  %45 = load i32, i32* @MARGIN, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  store i32 %47, i32* %26, align 4
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dialog_vars, i32 0, i32 0), align 4
  store i32 %48, i32* %29, align 4
  %49 = call i32 @DLG_TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @DLG_TRACE2S(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %50)
  %52 = load i8*, i8** %7, align 8
  %53 = call i32 @DLG_TRACE2S(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %52)
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @DLG_TRACE2N(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @DLG_TRACE2N(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @DLG_TRACE2N(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %58)
  %60 = call i32 @curs_set(i32 0)
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dialog_vars, i32 0, i32 0), align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %46
  %64 = load i32, i32* %10, align 4
  br label %66

65:                                               ; preds = %46
  br label %66

66:                                               ; preds = %65, %63
  %67 = phi i32 [ %64, %63 ], [ 1, %65 ]
  store i32 %67, i32* %18, align 4
  br label %68

68:                                               ; preds = %312, %66
  %69 = load i8*, i8** %7, align 8
  %70 = call i8* @dlg_strclone(i8* %69)
  store i8* %70, i8** %28, align 8
  %71 = load i8*, i8** %28, align 8
  %72 = call i32 @dlg_tab_correct_str(i8* %71)
  %73 = load i32, i32* %21, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %68
  %76 = load i8*, i8** %6, align 8
  %77 = load i8*, i8** %28, align 8
  %78 = load i64, i64* @MIN_HIGH, align 8
  %79 = load i32, i32* @MIN_WIDE, align 4
  %80 = call i32 @dlg_auto_size(i8* %76, i8* %77, i32* %8, i32* %9, i64 %78, i32 %79)
  %81 = load i8**, i8*** %20, align 8
  %82 = call i32 @dlg_button_layout(i8** %81, i32* %9)
  br label %95

83:                                               ; preds = %68
  %84 = load i8*, i8** %6, align 8
  %85 = load i8*, i8** %28, align 8
  %86 = load i64, i64* @MIN_HIGH, align 8
  %87 = load i32, i32* @MARGIN, align 4
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %86, %88
  %90 = load i32, i32* @BTN_HIGH, align 4
  %91 = sext i32 %90 to i64
  %92 = sub nsw i64 %89, %91
  %93 = load i32, i32* @MIN_WIDE, align 4
  %94 = call i32 @dlg_auto_size(i8* %84, i8* %85, i32* %8, i32* %9, i64 %92, i32 %93)
  br label %95

95:                                               ; preds = %83, %75
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %26, align 4
  %98 = sub nsw i32 %96, %97
  %99 = load i32, i32* @MARGIN, align 4
  %100 = mul nsw i32 2, %99
  %101 = add nsw i32 1, %100
  %102 = sub nsw i32 %98, %101
  store i32 %102, i32* %27, align 4
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* %9, align 4
  %105 = call i32 @dlg_print_size(i32 %103, i32 %104)
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* %9, align 4
  %108 = call i32 @dlg_ctl_size(i32 %106, i32 %107)
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @dlg_box_x_ordinate(i32 %109)
  store i32 %110, i32* %14, align 4
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @dlg_box_y_ordinate(i32 %111)
  store i32 %112, i32* %15, align 4
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* %15, align 4
  %116 = load i32, i32* %14, align 4
  %117 = call i32* @dlg_new_window(i32 %113, i32 %114, i32 %115, i32 %116)
  store i32* %117, i32** %19, align 8
  %118 = load i32*, i32** %19, align 8
  %119 = call i32 @dlg_register_window(i32* %118, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32* getelementptr inbounds ([4 x i32], [4 x i32]* @dialog_pause.binding, i64 0, i64 0))
  %120 = load i32*, i32** %19, align 8
  %121 = load i8**, i8*** %20, align 8
  %122 = call i32 @dlg_register_buttons(i32* %120, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8** %121)
  %123 = load i32, i32* %14, align 4
  %124 = load i32, i32* %15, align 4
  %125 = call i32 @dlg_mouse_setbase(i32 %123, i32 %124)
  %126 = load i32*, i32** %19, align 8
  %127 = load i32, i32* @TRUE, align 4
  %128 = call i32 @nodelay(i32* %126, i32 %127)
  %129 = load i32, i32* @TRUE, align 4
  store i32 %129, i32* %22, align 4
  br label %130

130:                                              ; preds = %390, %95
  %131 = load i32*, i32** %19, align 8
  %132 = call i32 @werase(i32* %131)
  %133 = load i32*, i32** %19, align 8
  %134 = load i32, i32* %8, align 4
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* @dialog_attr, align 4
  %137 = load i32, i32* @border_attr, align 4
  %138 = load i32, i32* @border2_attr, align 4
  %139 = call i32 @dlg_draw_box2(i32* %133, i32 0, i32 0, i32 %134, i32 %135, i32 %136, i32 %137, i32 %138)
  %140 = load i32*, i32** %19, align 8
  %141 = load i8*, i8** %6, align 8
  %142 = call i32 @dlg_draw_title(i32* %140, i8* %141)
  %143 = load i32*, i32** %19, align 8
  %144 = load i32, i32* @FALSE, align 4
  %145 = call i32 @dlg_draw_helpline(i32* %143, i32 %144)
  %146 = load i32*, i32** %19, align 8
  %147 = load i32, i32* @dialog_attr, align 4
  %148 = call i32 @dlg_attrset(i32* %146, i32 %147)
  %149 = load i32*, i32** %19, align 8
  %150 = load i8*, i8** %28, align 8
  %151 = load i32, i32* %8, align 4
  %152 = load i32, i32* %9, align 4
  %153 = call i32 @dlg_print_autowrap(i32* %149, i8* %150, i32 %151, i32 %152)
  %154 = load i32*, i32** %19, align 8
  %155 = load i32, i32* %27, align 4
  %156 = load i32, i32* @MARGIN, align 4
  %157 = add nsw i32 2, %156
  %158 = load i32, i32* @MARGIN, align 4
  %159 = add nsw i32 2, %158
  %160 = load i32, i32* %9, align 4
  %161 = load i32, i32* @MARGIN, align 4
  %162 = add nsw i32 2, %161
  %163 = mul nsw i32 2, %162
  %164 = sub nsw i32 %160, %163
  %165 = load i32, i32* @dialog_attr, align 4
  %166 = load i32, i32* @border_attr, align 4
  %167 = load i32, i32* @border2_attr, align 4
  %168 = call i32 @dlg_draw_box2(i32* %154, i32 %155, i32 %157, i32 %159, i32 %164, i32 %165, i32 %166, i32 %167)
  %169 = load i32*, i32** %19, align 8
  %170 = load i32, i32* %27, align 4
  %171 = load i32, i32* @MARGIN, align 4
  %172 = add nsw i32 %170, %171
  %173 = call i32 @wmove(i32* %169, i32 %172, i32 4)
  %174 = load i32*, i32** %19, align 8
  %175 = load i32, i32* @title_attr, align 4
  %176 = call i32 @dlg_attrset(i32* %174, i32 %175)
  store i32 0, i32* %13, align 4
  br label %177

177:                                              ; preds = %188, %130
  %178 = load i32, i32* %13, align 4
  %179 = load i32, i32* %9, align 4
  %180 = load i32, i32* @MARGIN, align 4
  %181 = add nsw i32 3, %180
  %182 = mul nsw i32 2, %181
  %183 = sub nsw i32 %179, %182
  %184 = icmp slt i32 %178, %183
  br i1 %184, label %185, label %191

185:                                              ; preds = %177
  %186 = load i32*, i32** %19, align 8
  %187 = call i32 @waddch(i32* %186, i32 32)
  br label %188

188:                                              ; preds = %185
  %189 = load i32, i32* %13, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %13, align 4
  br label %177

191:                                              ; preds = %177
  %192 = load i32*, i32** %19, align 8
  %193 = load i32, i32* %27, align 4
  %194 = load i32, i32* @MARGIN, align 4
  %195 = add nsw i32 %193, %194
  %196 = load i32, i32* %9, align 4
  %197 = sdiv i32 %196, 2
  %198 = sub nsw i32 %197, 2
  %199 = call i32 @wmove(i32* %192, i32 %195, i32 %198)
  %200 = load i32*, i32** %19, align 8
  %201 = load i32, i32* %10, align 4
  %202 = call i32 @wprintw(i32* %200, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 %201)
  %203 = load i32, i32* %10, align 4
  %204 = load i32, i32* %9, align 4
  %205 = load i32, i32* @MARGIN, align 4
  %206 = add nsw i32 3, %205
  %207 = mul nsw i32 2, %206
  %208 = sub nsw i32 %204, %207
  %209 = mul nsw i32 %203, %208
  %210 = load i32, i32* %18, align 4
  %211 = sdiv i32 %209, %210
  store i32 %211, i32* %14, align 4
  %212 = load i32, i32* @title_attr, align 4
  %213 = load i32, i32* @A_REVERSE, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %220

216:                                              ; preds = %191
  %217 = load i32*, i32** %19, align 8
  %218 = load i32, i32* @A_REVERSE, align 4
  %219 = call i32 @dlg_attroff(i32* %217, i32 %218)
  br label %224

220:                                              ; preds = %191
  %221 = load i32*, i32** %19, align 8
  %222 = load i32, i32* @A_REVERSE, align 4
  %223 = call i32 @dlg_attrset(i32* %221, i32 %222)
  br label %224

224:                                              ; preds = %220, %216
  %225 = load i32*, i32** %19, align 8
  %226 = load i32, i32* %27, align 4
  %227 = load i32, i32* @MARGIN, align 4
  %228 = add nsw i32 %226, %227
  %229 = call i32 @wmove(i32* %225, i32 %228, i32 4)
  store i32 0, i32* %13, align 4
  br label %230

230:                                              ; preds = %250, %224
  %231 = load i32, i32* %13, align 4
  %232 = load i32, i32* %14, align 4
  %233 = icmp slt i32 %231, %232
  br i1 %233, label %234, label %253

234:                                              ; preds = %230
  %235 = load i32*, i32** %19, align 8
  %236 = call i32 @winch(i32* %235)
  store i32 %236, i32* %30, align 4
  %237 = load i32, i32* @title_attr, align 4
  %238 = load i32, i32* @A_REVERSE, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %246

241:                                              ; preds = %234
  %242 = load i32, i32* @A_REVERSE, align 4
  %243 = xor i32 %242, -1
  %244 = load i32, i32* %30, align 4
  %245 = and i32 %244, %243
  store i32 %245, i32* %30, align 4
  br label %246

246:                                              ; preds = %241, %234
  %247 = load i32*, i32** %19, align 8
  %248 = load i32, i32* %30, align 4
  %249 = call i32 @waddch(i32* %247, i32 %248)
  br label %250

250:                                              ; preds = %246
  %251 = load i32, i32* %13, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %13, align 4
  br label %230

253:                                              ; preds = %230
  %254 = load i32, i32* %8, align 4
  %255 = sub nsw i32 %254, 2
  %256 = load i32, i32* %9, align 4
  %257 = sdiv i32 %256, 2
  %258 = sub nsw i32 %257, 4
  %259 = call i32 @mouse_mkbutton(i32 %255, i32 %258, i32 6, i8 signext 10)
  %260 = load i32, i32* %21, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %276

262:                                              ; preds = %253
  %263 = load i32*, i32** %19, align 8
  %264 = load i32, i32* @border_attr, align 4
  %265 = load i32, i32* @border2_attr, align 4
  %266 = load i32, i32* @dialog_attr, align 4
  %267 = call i32 @dlg_draw_bottom_box2(i32* %263, i32 %264, i32 %265, i32 %266)
  %268 = load i32*, i32** %19, align 8
  %269 = load i32, i32* %8, align 4
  %270 = sub nsw i32 %269, 2
  %271 = load i8**, i8*** %20, align 8
  %272 = load i32, i32* %17, align 4
  %273 = load i32, i32* @FALSE, align 4
  %274 = load i32, i32* %9, align 4
  %275 = call i32 @dlg_draw_buttons(i32* %268, i32 %270, i32 0, i8** %271, i32 %272, i32 %273, i32 %274)
  br label %276

276:                                              ; preds = %262, %253
  %277 = load i32, i32* %22, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %285

279:                                              ; preds = %276
  %280 = load i32*, i32** %19, align 8
  %281 = call i32 @wrefresh(i32* %280)
  %282 = load i32*, i32** %19, align 8
  %283 = call i32 @dlg_trace_win(i32* %282)
  %284 = load i32, i32* @FALSE, align 4
  store i32 %284, i32* %22, align 4
  br label %285

285:                                              ; preds = %279, %276
  store i32 0, i32* %16, align 4
  br label %286

286:                                              ; preds = %375, %285
  %287 = load i32, i32* %25, align 4
  %288 = load i32, i32* @DLG_EXIT_UNKNOWN, align 4
  %289 = icmp eq i32 %287, %288
  br i1 %289, label %290, label %293

290:                                              ; preds = %286
  %291 = load i32, i32* %16, align 4
  %292 = icmp slt i32 %291, 1000
  br label %293

293:                                              ; preds = %290, %286
  %294 = phi i1 [ false, %286 ], [ %292, %290 ]
  br i1 %294, label %295, label %381

295:                                              ; preds = %293
  %296 = load i64, i64* @MY_TIMEOUT, align 8
  %297 = call i32 @napms(i64 %296)
  %298 = load i32*, i32** %19, align 8
  %299 = call i32 @dlg_mouse_wgetch_nowait(i32* %298, i32* %24)
  store i32 %299, i32* %23, align 4
  %300 = load i32, i32* %23, align 4
  %301 = icmp eq i32 %300, 131
  br i1 %301, label %302, label %303

302:                                              ; preds = %295
  br label %310

303:                                              ; preds = %295
  %304 = load i32, i32* %23, align 4
  %305 = load i32, i32* %24, align 4
  %306 = call i64 @dlg_result_key(i32 %304, i32 %305, i32* %25)
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %309

308:                                              ; preds = %303
  br label %381

309:                                              ; preds = %303
  br label %310

310:                                              ; preds = %309, %302
  %311 = load i32, i32* %23, align 4
  switch i32 %311, label %359 [
    i32 129, label %312
    i32 135, label %323
    i32 134, label %339
    i32 136, label %355
    i32 131, label %358
  ]

312:                                              ; preds = %310
  %313 = load i32*, i32** %19, align 8
  %314 = call i32 @dlg_will_resize(i32* %313)
  %315 = call i32 (...) @dlg_clear()
  %316 = load i32*, i32** %19, align 8
  %317 = call i32 @dlg_del_window(i32* %316)
  %318 = load i32, i32* %11, align 4
  store i32 %318, i32* %8, align 4
  %319 = load i32, i32* %12, align 4
  store i32 %319, i32* %9, align 4
  %320 = load i8*, i8** %28, align 8
  %321 = call i32 @free(i8* %320)
  %322 = call i32 (...) @refresh()
  br label %68

323:                                              ; preds = %310
  %324 = load i8**, i8*** %20, align 8
  %325 = load i32, i32* %17, align 4
  %326 = call i32 @dlg_next_button(i8** %324, i32 %325)
  store i32 %326, i32* %17, align 4
  %327 = load i32, i32* %17, align 4
  %328 = icmp slt i32 %327, 0
  br i1 %328, label %329, label %330

329:                                              ; preds = %323
  store i32 0, i32* %17, align 4
  br label %330

330:                                              ; preds = %329, %323
  %331 = load i32*, i32** %19, align 8
  %332 = load i32, i32* %8, align 4
  %333 = sub nsw i32 %332, 2
  %334 = load i8**, i8*** %20, align 8
  %335 = load i32, i32* %17, align 4
  %336 = load i32, i32* @FALSE, align 4
  %337 = load i32, i32* %9, align 4
  %338 = call i32 @dlg_draw_buttons(i32* %331, i32 %333, i32 0, i8** %334, i32 %335, i32 %336, i32 %337)
  br label %374

339:                                              ; preds = %310
  %340 = load i8**, i8*** %20, align 8
  %341 = load i32, i32* %17, align 4
  %342 = call i32 @dlg_prev_button(i8** %340, i32 %341)
  store i32 %342, i32* %17, align 4
  %343 = load i32, i32* %17, align 4
  %344 = icmp slt i32 %343, 0
  br i1 %344, label %345, label %346

345:                                              ; preds = %339
  store i32 0, i32* %17, align 4
  br label %346

346:                                              ; preds = %345, %339
  %347 = load i32*, i32** %19, align 8
  %348 = load i32, i32* %8, align 4
  %349 = sub nsw i32 %348, 2
  %350 = load i8**, i8*** %20, align 8
  %351 = load i32, i32* %17, align 4
  %352 = load i32, i32* @FALSE, align 4
  %353 = load i32, i32* %9, align 4
  %354 = call i32 @dlg_draw_buttons(i32* %347, i32 %349, i32 0, i8** %350, i32 %351, i32 %352, i32 %353)
  br label %374

355:                                              ; preds = %310
  %356 = load i32, i32* %17, align 4
  %357 = call i32 @dlg_enter_buttoncode(i32 %356)
  store i32 %357, i32* %25, align 4
  br label %374

358:                                              ; preds = %310
  br label %374

359:                                              ; preds = %310
  %360 = load i32, i32* %23, align 4
  %361 = call i32 @is_DLGK_MOUSE(i32 %360)
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %373

363:                                              ; preds = %359
  %364 = load i32, i32* %23, align 4
  %365 = load i32, i32* @M_EVENT, align 4
  %366 = sub nsw i32 %364, %365
  %367 = call i32 @dlg_ok_buttoncode(i32 %366)
  store i32 %367, i32* %25, align 4
  %368 = load i32, i32* %25, align 4
  %369 = icmp slt i32 %368, 0
  br i1 %369, label %370, label %372

370:                                              ; preds = %363
  %371 = load i32, i32* @DLG_EXIT_OK, align 4
  store i32 %371, i32* %25, align 4
  br label %372

372:                                              ; preds = %370, %363
  br label %373

373:                                              ; preds = %372, %359
  br label %374

374:                                              ; preds = %373, %358, %355, %346, %330
  br label %375

375:                                              ; preds = %374
  %376 = load i64, i64* @MY_TIMEOUT, align 8
  %377 = load i32, i32* %16, align 4
  %378 = sext i32 %377 to i64
  %379 = add nsw i64 %378, %376
  %380 = trunc i64 %379 to i32
  store i32 %380, i32* %16, align 4
  br label %286

381:                                              ; preds = %308, %293
  br label %382

382:                                              ; preds = %381
  %383 = load i32, i32* %25, align 4
  %384 = load i32, i32* @DLG_EXIT_UNKNOWN, align 4
  %385 = icmp eq i32 %383, %384
  br i1 %385, label %386, label %390

386:                                              ; preds = %382
  %387 = load i32, i32* %10, align 4
  %388 = add nsw i32 %387, -1
  store i32 %388, i32* %10, align 4
  %389 = icmp sgt i32 %387, 0
  br label %390

390:                                              ; preds = %386, %382
  %391 = phi i1 [ false, %382 ], [ %389, %386 ]
  br i1 %391, label %130, label %392

392:                                              ; preds = %390
  %393 = call i32 @curs_set(i32 1)
  %394 = call i32 (...) @dlg_mouse_free_regions()
  %395 = load i32*, i32** %19, align 8
  %396 = call i32 @dlg_del_window(i32* %395)
  %397 = load i8*, i8** %28, align 8
  %398 = call i32 @free(i8* %397)
  %399 = load i32, i32* %29, align 4
  store i32 %399, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dialog_vars, i32 0, i32 0), align 4
  %400 = load i32, i32* %25, align 4
  %401 = load i32, i32* @DLG_EXIT_UNKNOWN, align 4
  %402 = icmp eq i32 %400, %401
  br i1 %402, label %403, label %405

403:                                              ; preds = %392
  %404 = load i32, i32* @DLG_EXIT_OK, align 4
  br label %407

405:                                              ; preds = %392
  %406 = load i32, i32* %25, align 4
  br label %407

407:                                              ; preds = %405, %403
  %408 = phi i32 [ %404, %403 ], [ %406, %405 ]
  ret i32 %408
}

declare dso_local i32 @dlg_default_button(...) #1

declare dso_local i8** @dlg_ok_labels(...) #1

declare dso_local i64 @dlg_button_count(i8**) #1

declare dso_local i32 @DLG_TRACE(i8*) #1

declare dso_local i32 @DLG_TRACE2S(i8*, i8*) #1

declare dso_local i32 @DLG_TRACE2N(i8*, i32) #1

declare dso_local i32 @curs_set(i32) #1

declare dso_local i8* @dlg_strclone(i8*) #1

declare dso_local i32 @dlg_tab_correct_str(i8*) #1

declare dso_local i32 @dlg_auto_size(i8*, i8*, i32*, i32*, i64, i32) #1

declare dso_local i32 @dlg_button_layout(i8**, i32*) #1

declare dso_local i32 @dlg_print_size(i32, i32) #1

declare dso_local i32 @dlg_ctl_size(i32, i32) #1

declare dso_local i32 @dlg_box_x_ordinate(i32) #1

declare dso_local i32 @dlg_box_y_ordinate(i32) #1

declare dso_local i32* @dlg_new_window(i32, i32, i32, i32) #1

declare dso_local i32 @dlg_register_window(i32*, i8*, i32*) #1

declare dso_local i32 @dlg_register_buttons(i32*, i8*, i8**) #1

declare dso_local i32 @dlg_mouse_setbase(i32, i32) #1

declare dso_local i32 @nodelay(i32*, i32) #1

declare dso_local i32 @werase(i32*) #1

declare dso_local i32 @dlg_draw_box2(i32*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dlg_draw_title(i32*, i8*) #1

declare dso_local i32 @dlg_draw_helpline(i32*, i32) #1

declare dso_local i32 @dlg_attrset(i32*, i32) #1

declare dso_local i32 @dlg_print_autowrap(i32*, i8*, i32, i32) #1

declare dso_local i32 @wmove(i32*, i32, i32) #1

declare dso_local i32 @waddch(i32*, i32) #1

declare dso_local i32 @wprintw(i32*, i8*, i32) #1

declare dso_local i32 @dlg_attroff(i32*, i32) #1

declare dso_local i32 @winch(i32*) #1

declare dso_local i32 @mouse_mkbutton(i32, i32, i32, i8 signext) #1

declare dso_local i32 @dlg_draw_bottom_box2(i32*, i32, i32, i32) #1

declare dso_local i32 @dlg_draw_buttons(i32*, i32, i32, i8**, i32, i32, i32) #1

declare dso_local i32 @wrefresh(i32*) #1

declare dso_local i32 @dlg_trace_win(i32*) #1

declare dso_local i32 @napms(i64) #1

declare dso_local i32 @dlg_mouse_wgetch_nowait(i32*, i32*) #1

declare dso_local i64 @dlg_result_key(i32, i32, i32*) #1

declare dso_local i32 @dlg_will_resize(i32*) #1

declare dso_local i32 @dlg_clear(...) #1

declare dso_local i32 @dlg_del_window(i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @refresh(...) #1

declare dso_local i32 @dlg_next_button(i8**, i32) #1

declare dso_local i32 @dlg_prev_button(i8**, i32) #1

declare dso_local i32 @dlg_enter_buttoncode(i32) #1

declare dso_local i32 @is_DLGK_MOUSE(i32) #1

declare dso_local i32 @dlg_ok_buttoncode(i32) #1

declare dso_local i32 @dlg_mouse_free_regions(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
