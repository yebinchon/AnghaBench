; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_msgbox.c_dialog_msgbox.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_msgbox.c_dialog_msgbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@dialog_msgbox.binding = internal global [5 x i32] [i32 131, i32 132, i32 129, i32 128, i32 133], align 16
@DLG_EXIT_UNKNOWN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@dialog_vars = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [16 x i8] c"# msgbox args:\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"message\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"pauseopt\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"msgbox\00", align 1
@MARGIN = common dso_local global i32 0, align 4
@dialog_attr = common dso_local global i32 0, align 4
@border_attr = common dso_local global i32 0, align 4
@border2_attr = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@M_EVENT = common dso_local global i32 0, align 4
@DLG_EXIT_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dialog_msgbox(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
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
  %20 = alloca i8*, align 8
  %21 = alloca i8**, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %16, align 4
  %29 = load i32, i32* @DLG_EXIT_UNKNOWN, align 4
  store i32 %29, i32* %18, align 4
  store i32* null, i32** %19, align 8
  %30 = call i8** (...) @dlg_ok_label()
  store i8** %30, i8*** %21, align 8
  store i32 0, i32* %22, align 4
  %31 = load i8*, i8** @TRUE, align 8
  %32 = ptrtoint i8* %31 to i32
  store i32 %32, i32* %24, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp eq i32 %33, 1
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 12, i32 0
  store i32 %36, i32* %25, align 4
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dialog_vars, i32 0, i32 0), align 4
  store i32 %37, i32* %26, align 4
  %38 = call i32 @DLG_TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @DLG_TRACE2S(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %39)
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @DLG_TRACE2S(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %41)
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @DLG_TRACE2N(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @DLG_TRACE2N(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @DLG_TRACE2N(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %47)
  %49 = load i8*, i8** @TRUE, align 8
  %50 = ptrtoint i8* %49 to i32
  store i32 %50, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dialog_vars, i32 0, i32 0), align 4
  %51 = call i32 (...) @dlg_default_button()
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %27, align 4
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %28, align 4
  br label %54

54:                                               ; preds = %188, %5
  %55 = load i8**, i8*** %21, align 8
  %56 = call i32 @dlg_button_layout(i8** %55, i32* %25)
  %57 = load i8*, i8** %7, align 8
  %58 = call i8* @dlg_strclone(i8* %57)
  store i8* %58, i8** %20, align 8
  %59 = load i8*, i8** %20, align 8
  %60 = call i32 @dlg_tab_correct_str(i8* %59)
  %61 = load i8*, i8** %6, align 8
  %62 = load i8*, i8** %20, align 8
  %63 = load i32, i32* %10, align 4
  %64 = icmp eq i32 %63, 1
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 2, i32 0
  %67 = load i32, i32* %25, align 4
  %68 = call i32 @dlg_auto_size(i8* %61, i8* %62, i32* %8, i32* %9, i32 %66, i32 %67)
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @dlg_print_size(i32 %69, i32 %70)
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @dlg_ctl_size(i32 %72, i32 %73)
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @dlg_box_x_ordinate(i32 %75)
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @dlg_box_y_ordinate(i32 %77)
  store i32 %78, i32* %12, align 4
  %79 = load i32*, i32** %19, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %88

81:                                               ; preds = %54
  %82 = load i32*, i32** %19, align 8
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @dlg_move_window(i32* %82, i32 %83, i32 %84, i32 %85, i32 %86)
  br label %99

88:                                               ; preds = %54
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* %11, align 4
  %93 = call i32* @dlg_new_window(i32 %89, i32 %90, i32 %91, i32 %92)
  store i32* %93, i32** %19, align 8
  %94 = load i32*, i32** %19, align 8
  %95 = call i32 @dlg_register_window(i32* %94, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32* getelementptr inbounds ([5 x i32], [5 x i32]* @dialog_msgbox.binding, i64 0, i64 0))
  %96 = load i32*, i32** %19, align 8
  %97 = load i8**, i8*** %21, align 8
  %98 = call i32 @dlg_register_buttons(i32* %96, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8** %97)
  br label %99

99:                                               ; preds = %88, %81
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* @MARGIN, align 4
  %102 = mul nsw i32 3, %101
  %103 = add nsw i32 1, %102
  %104 = sub nsw i32 %100, %103
  store i32 %104, i32* %14, align 4
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* %12, align 4
  %107 = call i32 @dlg_mouse_setbase(i32 %105, i32 %106)
  %108 = load i32*, i32** %19, align 8
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* @dialog_attr, align 4
  %112 = load i32, i32* @border_attr, align 4
  %113 = load i32, i32* @border2_attr, align 4
  %114 = call i32 @dlg_draw_box2(i32* %108, i32 0, i32 0, i32 %109, i32 %110, i32 %111, i32 %112, i32 %113)
  %115 = load i32*, i32** %19, align 8
  %116 = load i8*, i8** %6, align 8
  %117 = call i32 @dlg_draw_title(i32* %115, i8* %116)
  %118 = load i32*, i32** %19, align 8
  %119 = load i32, i32* @dialog_attr, align 4
  %120 = call i32 @dlg_attrset(i32* %118, i32 %119)
  %121 = load i32, i32* %10, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %263

123:                                              ; preds = %99
  %124 = load i32*, i32** %19, align 8
  %125 = load i32, i32* @border_attr, align 4
  %126 = load i32, i32* @border2_attr, align 4
  %127 = load i32, i32* @dialog_attr, align 4
  %128 = call i32 @dlg_draw_bottom_box2(i32* %124, i32 %125, i32 %126, i32 %127)
  %129 = load i32, i32* %8, align 4
  %130 = sub nsw i32 %129, 2
  %131 = load i32, i32* %9, align 4
  %132 = sdiv i32 %131, 2
  %133 = sub nsw i32 %132, 4
  %134 = call i32 @mouse_mkbutton(i32 %130, i32 %133, i32 6, i8 signext 10)
  %135 = load i32*, i32** %19, align 8
  %136 = load i32, i32* %8, align 4
  %137 = sub nsw i32 %136, 2
  %138 = load i8**, i8*** %21, align 8
  %139 = load i32, i32* %15, align 4
  %140 = load i32, i32* @FALSE, align 4
  %141 = load i32, i32* %9, align 4
  %142 = call i32 @dlg_draw_buttons(i32* %135, i32 %137, i32 0, i8** %138, i32 %139, i32 %140, i32 %141)
  %143 = load i32*, i32** %19, align 8
  %144 = load i32, i32* @FALSE, align 4
  %145 = call i32 @dlg_draw_helpline(i32* %143, i32 %144)
  br label %146

146:                                              ; preds = %261, %123
  %147 = load i32, i32* %18, align 4
  %148 = load i32, i32* @DLG_EXIT_UNKNOWN, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %262

150:                                              ; preds = %146
  %151 = load i32, i32* %24, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %164

153:                                              ; preds = %150
  %154 = load i32*, i32** %19, align 8
  %155 = load i8*, i8** %20, align 8
  %156 = load i32, i32* %22, align 4
  %157 = load i32, i32* %14, align 4
  %158 = load i32, i32* %9, align 4
  %159 = load i32, i32* %10, align 4
  %160 = call i32 @dlg_print_scrolled(i32* %154, i8* %155, i32 %156, i32 %157, i32 %158, i32 %159)
  store i32 %160, i32* %13, align 4
  %161 = load i32*, i32** %19, align 8
  %162 = call i32 @dlg_trace_win(i32* %161)
  %163 = load i32, i32* @FALSE, align 4
  store i32 %163, i32* %24, align 4
  br label %164

164:                                              ; preds = %153, %150
  %165 = load i32*, i32** %19, align 8
  %166 = call i32 @dlg_mouse_wgetch(i32* %165, i32* %17)
  store i32 %166, i32* %16, align 4
  %167 = load i32, i32* %16, align 4
  %168 = load i32, i32* %17, align 4
  %169 = call i64 @dlg_result_key(i32 %167, i32 %168, i32* %18)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %164
  br label %262

172:                                              ; preds = %164
  %173 = load i32, i32* %17, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %183, label %175

175:                                              ; preds = %172
  %176 = load i32, i32* %16, align 4
  %177 = load i8**, i8*** %21, align 8
  %178 = call i32 @dlg_char_to_button(i32 %176, i8** %177)
  store i32 %178, i32* %23, align 4
  %179 = icmp sge i32 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %175
  %181 = load i32, i32* %23, align 4
  %182 = call i32 @dlg_ok_buttoncode(i32 %181)
  store i32 %182, i32* %18, align 4
  br label %262

183:                                              ; preds = %175, %172
  %184 = load i32, i32* %17, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %259

186:                                              ; preds = %183
  %187 = load i32, i32* %16, align 4
  switch i32 %187, label %233 [
    i32 130, label %188
    i32 135, label %198
    i32 134, label %214
    i32 136, label %230
  ]

188:                                              ; preds = %186
  %189 = load i32*, i32** %19, align 8
  %190 = call i32 @dlg_will_resize(i32* %189)
  %191 = call i32 (...) @dlg_clear()
  %192 = load i8*, i8** %20, align 8
  %193 = call i32 @free(i8* %192)
  %194 = load i32, i32* %27, align 4
  store i32 %194, i32* %8, align 4
  %195 = load i32, i32* %28, align 4
  store i32 %195, i32* %9, align 4
  %196 = load i8*, i8** @TRUE, align 8
  %197 = ptrtoint i8* %196 to i32
  store i32 %197, i32* %24, align 4
  br label %54

198:                                              ; preds = %186
  %199 = load i8**, i8*** %21, align 8
  %200 = load i32, i32* %15, align 4
  %201 = call i32 @dlg_next_button(i8** %199, i32 %200)
  store i32 %201, i32* %15, align 4
  %202 = load i32, i32* %15, align 4
  %203 = icmp slt i32 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %198
  store i32 0, i32* %15, align 4
  br label %205

205:                                              ; preds = %204, %198
  %206 = load i32*, i32** %19, align 8
  %207 = load i32, i32* %8, align 4
  %208 = sub nsw i32 %207, 2
  %209 = load i8**, i8*** %21, align 8
  %210 = load i32, i32* %15, align 4
  %211 = load i32, i32* @FALSE, align 4
  %212 = load i32, i32* %9, align 4
  %213 = call i32 @dlg_draw_buttons(i32* %206, i32 %208, i32 0, i8** %209, i32 %210, i32 %211, i32 %212)
  br label %258

214:                                              ; preds = %186
  %215 = load i8**, i8*** %21, align 8
  %216 = load i32, i32* %15, align 4
  %217 = call i32 @dlg_prev_button(i8** %215, i32 %216)
  store i32 %217, i32* %15, align 4
  %218 = load i32, i32* %15, align 4
  %219 = icmp slt i32 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %214
  store i32 0, i32* %15, align 4
  br label %221

221:                                              ; preds = %220, %214
  %222 = load i32*, i32** %19, align 8
  %223 = load i32, i32* %8, align 4
  %224 = sub nsw i32 %223, 2
  %225 = load i8**, i8*** %21, align 8
  %226 = load i32, i32* %15, align 4
  %227 = load i32, i32* @FALSE, align 4
  %228 = load i32, i32* %9, align 4
  %229 = call i32 @dlg_draw_buttons(i32* %222, i32 %224, i32 0, i8** %225, i32 %226, i32 %227, i32 %228)
  br label %258

230:                                              ; preds = %186
  %231 = load i32, i32* %15, align 4
  %232 = call i32 @dlg_ok_buttoncode(i32 %231)
  store i32 %232, i32* %18, align 4
  br label %258

233:                                              ; preds = %186
  %234 = load i32, i32* %16, align 4
  %235 = call i32 @is_DLGK_MOUSE(i32 %234)
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %247

237:                                              ; preds = %233
  %238 = load i32, i32* %16, align 4
  %239 = load i32, i32* @M_EVENT, align 4
  %240 = sub nsw i32 %238, %239
  %241 = call i32 @dlg_ok_buttoncode(i32 %240)
  store i32 %241, i32* %18, align 4
  %242 = load i32, i32* %18, align 4
  %243 = icmp slt i32 %242, 0
  br i1 %243, label %244, label %246

244:                                              ; preds = %237
  %245 = load i32, i32* @DLG_EXIT_OK, align 4
  store i32 %245, i32* %18, align 4
  br label %246

246:                                              ; preds = %244, %237
  br label %257

247:                                              ; preds = %233
  %248 = load i32, i32* %16, align 4
  %249 = load i32, i32* %13, align 4
  %250 = load i32, i32* %14, align 4
  %251 = call i32 @dlg_check_scrolled(i32 %248, i32 %249, i32 %250, i32* %24, i32* %22)
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %254

253:                                              ; preds = %247
  br label %256

254:                                              ; preds = %247
  %255 = call i32 (...) @beep()
  br label %256

256:                                              ; preds = %254, %253
  br label %257

257:                                              ; preds = %256, %246
  br label %258

258:                                              ; preds = %257, %230, %221, %205
  br label %261

259:                                              ; preds = %183
  %260 = call i32 (...) @beep()
  br label %261

261:                                              ; preds = %259, %258
  br label %146

262:                                              ; preds = %180, %171, %146
  br label %279

263:                                              ; preds = %99
  %264 = load i32*, i32** %19, align 8
  %265 = load i8*, i8** %20, align 8
  %266 = load i32, i32* %22, align 4
  %267 = load i32, i32* %14, align 4
  %268 = load i32, i32* %9, align 4
  %269 = load i32, i32* %10, align 4
  %270 = call i32 @dlg_print_scrolled(i32* %264, i8* %265, i32 %266, i32 %267, i32 %268, i32 %269)
  %271 = load i32*, i32** %19, align 8
  %272 = load i32, i32* @FALSE, align 4
  %273 = call i32 @dlg_draw_helpline(i32* %271, i32 %272)
  %274 = load i32*, i32** %19, align 8
  %275 = call i32 @wrefresh(i32* %274)
  %276 = load i32*, i32** %19, align 8
  %277 = call i32 @dlg_trace_win(i32* %276)
  %278 = load i32, i32* @DLG_EXIT_OK, align 4
  store i32 %278, i32* %18, align 4
  br label %279

279:                                              ; preds = %263, %262
  %280 = load i32*, i32** %19, align 8
  %281 = call i32 @dlg_del_window(i32* %280)
  %282 = call i32 (...) @dlg_mouse_free_regions()
  %283 = load i8*, i8** %20, align 8
  %284 = call i32 @free(i8* %283)
  %285 = load i32, i32* %26, align 4
  store i32 %285, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dialog_vars, i32 0, i32 0), align 4
  %286 = load i32, i32* %18, align 4
  ret i32 %286
}

declare dso_local i8** @dlg_ok_label(...) #1

declare dso_local i32 @DLG_TRACE(i8*) #1

declare dso_local i32 @DLG_TRACE2S(i8*, i8*) #1

declare dso_local i32 @DLG_TRACE2N(i8*, i32) #1

declare dso_local i32 @dlg_default_button(...) #1

declare dso_local i32 @dlg_button_layout(i8**, i32*) #1

declare dso_local i8* @dlg_strclone(i8*) #1

declare dso_local i32 @dlg_tab_correct_str(i8*) #1

declare dso_local i32 @dlg_auto_size(i8*, i8*, i32*, i32*, i32, i32) #1

declare dso_local i32 @dlg_print_size(i32, i32) #1

declare dso_local i32 @dlg_ctl_size(i32, i32) #1

declare dso_local i32 @dlg_box_x_ordinate(i32) #1

declare dso_local i32 @dlg_box_y_ordinate(i32) #1

declare dso_local i32 @dlg_move_window(i32*, i32, i32, i32, i32) #1

declare dso_local i32* @dlg_new_window(i32, i32, i32, i32) #1

declare dso_local i32 @dlg_register_window(i32*, i8*, i32*) #1

declare dso_local i32 @dlg_register_buttons(i32*, i8*, i8**) #1

declare dso_local i32 @dlg_mouse_setbase(i32, i32) #1

declare dso_local i32 @dlg_draw_box2(i32*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dlg_draw_title(i32*, i8*) #1

declare dso_local i32 @dlg_attrset(i32*, i32) #1

declare dso_local i32 @dlg_draw_bottom_box2(i32*, i32, i32, i32) #1

declare dso_local i32 @mouse_mkbutton(i32, i32, i32, i8 signext) #1

declare dso_local i32 @dlg_draw_buttons(i32*, i32, i32, i8**, i32, i32, i32) #1

declare dso_local i32 @dlg_draw_helpline(i32*, i32) #1

declare dso_local i32 @dlg_print_scrolled(i32*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @dlg_trace_win(i32*) #1

declare dso_local i32 @dlg_mouse_wgetch(i32*, i32*) #1

declare dso_local i64 @dlg_result_key(i32, i32, i32*) #1

declare dso_local i32 @dlg_char_to_button(i32, i8**) #1

declare dso_local i32 @dlg_ok_buttoncode(i32) #1

declare dso_local i32 @dlg_will_resize(i32*) #1

declare dso_local i32 @dlg_clear(...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @dlg_next_button(i8**, i32) #1

declare dso_local i32 @dlg_prev_button(i8**, i32) #1

declare dso_local i32 @is_DLGK_MOUSE(i32) #1

declare dso_local i32 @dlg_check_scrolled(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @beep(...) #1

declare dso_local i32 @wrefresh(i32*) #1

declare dso_local i32 @dlg_del_window(i32*) #1

declare dso_local i32 @dlg_mouse_free_regions(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
