; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_yesno.c_dialog_yesno.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_yesno.c_dialog_yesno.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dialog_yesno.binding = internal global [5 x i32] [i32 131, i32 132, i32 129, i32 128, i32 133], align 16
@DLG_EXIT_UNKNOWN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"# yesno args:\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"message\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"yesno\00", align 1
@dialog_attr = common dso_local global i32 0, align 4
@border_attr = common dso_local global i32 0, align 4
@border2_attr = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@MARGIN = common dso_local global i32 0, align 4
@M_EVENT = common dso_local global i32 0, align 4
@DLG_EXIT_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dialog_yesno(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
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
  %17 = alloca i8*, align 8
  %18 = alloca i8**, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %26 = call i32 (...) @dlg_default_button()
  store i32 %26, i32* %14, align 4
  store i32* null, i32** %15, align 8
  %27 = load i32, i32* @DLG_EXIT_UNKNOWN, align 4
  store i32 %27, i32* %16, align 4
  %28 = call i8** (...) @dlg_yes_labels()
  store i8** %28, i8*** %18, align 8
  store i32 25, i32* %19, align 4
  %29 = load i32, i32* @TRUE, align 4
  store i32 %29, i32* %20, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %24, align 4
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %25, align 4
  %32 = call i32 @DLG_TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @DLG_TRACE2S(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @DLG_TRACE2S(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %35)
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @DLG_TRACE2N(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @DLG_TRACE2N(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %193, %4
  %42 = load i8*, i8** %6, align 8
  %43 = call i8* @dlg_strclone(i8* %42)
  store i8* %43, i8** %17, align 8
  %44 = load i8*, i8** %17, align 8
  %45 = call i32 @dlg_tab_correct_str(i8* %44)
  %46 = load i8**, i8*** %18, align 8
  %47 = call i32 @dlg_button_layout(i8** %46, i32* %19)
  %48 = load i8*, i8** %5, align 8
  %49 = load i8*, i8** %17, align 8
  %50 = load i32, i32* %19, align 4
  %51 = call i32 @dlg_auto_size(i8* %48, i8* %49, i32* %7, i32* %8, i32 2, i32 %50)
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @dlg_print_size(i32 %52, i32 %53)
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @dlg_ctl_size(i32 %55, i32 %56)
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @dlg_box_x_ordinate(i32 %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @dlg_box_y_ordinate(i32 %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32*, i32** %15, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %71

64:                                               ; preds = %41
  %65 = load i32*, i32** %15, align 8
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @dlg_move_window(i32* %65, i32 %66, i32 %67, i32 %68, i32 %69)
  br label %82

71:                                               ; preds = %41
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %9, align 4
  %76 = call i32* @dlg_new_window(i32 %72, i32 %73, i32 %74, i32 %75)
  store i32* %76, i32** %15, align 8
  %77 = load i32*, i32** %15, align 8
  %78 = call i32 @dlg_register_window(i32* %77, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32* getelementptr inbounds ([5 x i32], [5 x i32]* @dialog_yesno.binding, i64 0, i64 0))
  %79 = load i32*, i32** %15, align 8
  %80 = load i8**, i8*** %18, align 8
  %81 = call i32 @dlg_register_buttons(i32* %79, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8** %80)
  br label %82

82:                                               ; preds = %71, %64
  %83 = load i32*, i32** %15, align 8
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* @dialog_attr, align 4
  %87 = load i32, i32* @border_attr, align 4
  %88 = load i32, i32* @border2_attr, align 4
  %89 = call i32 @dlg_draw_box2(i32* %83, i32 0, i32 0, i32 %84, i32 %85, i32 %86, i32 %87, i32 %88)
  %90 = load i32*, i32** %15, align 8
  %91 = load i32, i32* @border_attr, align 4
  %92 = load i32, i32* @border2_attr, align 4
  %93 = load i32, i32* @dialog_attr, align 4
  %94 = call i32 @dlg_draw_bottom_box2(i32* %90, i32 %91, i32 %92, i32 %93)
  %95 = load i32*, i32** %15, align 8
  %96 = load i8*, i8** %5, align 8
  %97 = call i32 @dlg_draw_title(i32* %95, i8* %96)
  %98 = load i32*, i32** %15, align 8
  %99 = load i32, i32* @FALSE, align 4
  %100 = call i32 @dlg_draw_helpline(i32* %98, i32 %99)
  %101 = load i32*, i32** %15, align 8
  %102 = load i32, i32* @dialog_attr, align 4
  %103 = call i32 @dlg_attrset(i32* %101, i32 %102)
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* @MARGIN, align 4
  %106 = mul nsw i32 3, %105
  %107 = add nsw i32 1, %106
  %108 = sub nsw i32 %104, %107
  store i32 %108, i32* %21, align 4
  %109 = load i32*, i32** %15, align 8
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* @MARGIN, align 4
  %112 = mul nsw i32 2, %111
  %113 = sub nsw i32 %110, %112
  %114 = load i8**, i8*** %18, align 8
  %115 = load i32, i32* %14, align 4
  %116 = load i32, i32* @FALSE, align 4
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @dlg_draw_buttons(i32* %109, i32 %113, i32 0, i8** %114, i32 %115, i32 %116, i32 %117)
  br label %119

119:                                              ; preds = %229, %82
  %120 = load i32, i32* %16, align 4
  %121 = load i32, i32* @DLG_EXIT_UNKNOWN, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %230

123:                                              ; preds = %119
  %124 = load i32, i32* %20, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %137

126:                                              ; preds = %123
  %127 = load i32*, i32** %15, align 8
  %128 = load i8*, i8** %17, align 8
  %129 = load i32, i32* %23, align 4
  %130 = load i32, i32* %21, align 4
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* @TRUE, align 4
  %133 = call i32 @dlg_print_scrolled(i32* %127, i8* %128, i32 %129, i32 %130, i32 %131, i32 %132)
  store i32 %133, i32* %22, align 4
  %134 = load i32*, i32** %15, align 8
  %135 = call i32 @dlg_trace_win(i32* %134)
  %136 = load i32, i32* @FALSE, align 4
  store i32 %136, i32* %20, align 4
  br label %137

137:                                              ; preds = %126, %123
  %138 = load i32*, i32** %15, align 8
  %139 = call i32 @dlg_mouse_wgetch(i32* %138, i32* %12)
  store i32 %139, i32* %11, align 4
  %140 = load i32, i32* %11, align 4
  %141 = load i32, i32* %12, align 4
  %142 = call i64 @dlg_result_key(i32 %140, i32 %141, i32* %16)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %137
  br label %230

145:                                              ; preds = %137
  %146 = load i32, i32* %11, align 4
  %147 = load i8**, i8*** %18, align 8
  %148 = call i32 @dlg_char_to_button(i32 %146, i8** %147)
  store i32 %148, i32* %13, align 4
  %149 = icmp sge i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %145
  %151 = load i32, i32* %13, align 4
  %152 = call i32 @dlg_ok_buttoncode(i32 %151)
  store i32 %152, i32* %16, align 4
  br label %230

153:                                              ; preds = %145
  %154 = load i32, i32* %12, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %227

156:                                              ; preds = %153
  %157 = load i32, i32* %11, align 4
  switch i32 %157, label %202 [
    i32 135, label %158
    i32 134, label %174
    i32 136, label %190
    i32 130, label %193
  ]

158:                                              ; preds = %156
  %159 = load i8**, i8*** %18, align 8
  %160 = load i32, i32* %14, align 4
  %161 = call i32 @dlg_next_button(i8** %159, i32 %160)
  store i32 %161, i32* %14, align 4
  %162 = load i32, i32* %14, align 4
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %158
  store i32 0, i32* %14, align 4
  br label %165

165:                                              ; preds = %164, %158
  %166 = load i32*, i32** %15, align 8
  %167 = load i32, i32* %7, align 4
  %168 = sub nsw i32 %167, 2
  %169 = load i8**, i8*** %18, align 8
  %170 = load i32, i32* %14, align 4
  %171 = load i32, i32* @FALSE, align 4
  %172 = load i32, i32* %8, align 4
  %173 = call i32 @dlg_draw_buttons(i32* %166, i32 %168, i32 0, i8** %169, i32 %170, i32 %171, i32 %172)
  br label %226

174:                                              ; preds = %156
  %175 = load i8**, i8*** %18, align 8
  %176 = load i32, i32* %14, align 4
  %177 = call i32 @dlg_prev_button(i8** %175, i32 %176)
  store i32 %177, i32* %14, align 4
  %178 = load i32, i32* %14, align 4
  %179 = icmp slt i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %174
  store i32 0, i32* %14, align 4
  br label %181

181:                                              ; preds = %180, %174
  %182 = load i32*, i32** %15, align 8
  %183 = load i32, i32* %7, align 4
  %184 = sub nsw i32 %183, 2
  %185 = load i8**, i8*** %18, align 8
  %186 = load i32, i32* %14, align 4
  %187 = load i32, i32* @FALSE, align 4
  %188 = load i32, i32* %8, align 4
  %189 = call i32 @dlg_draw_buttons(i32* %182, i32 %184, i32 0, i8** %185, i32 %186, i32 %187, i32 %188)
  br label %226

190:                                              ; preds = %156
  %191 = load i32, i32* %14, align 4
  %192 = call i32 @dlg_yes_buttoncode(i32 %191)
  store i32 %192, i32* %16, align 4
  br label %226

193:                                              ; preds = %156
  %194 = load i32*, i32** %15, align 8
  %195 = call i32 @dlg_will_resize(i32* %194)
  %196 = call i32 (...) @dlg_clear()
  %197 = load i8*, i8** %17, align 8
  %198 = call i32 @free(i8* %197)
  %199 = load i32, i32* %24, align 4
  store i32 %199, i32* %7, align 4
  %200 = load i32, i32* %25, align 4
  store i32 %200, i32* %8, align 4
  %201 = load i32, i32* @TRUE, align 4
  store i32 %201, i32* %20, align 4
  br label %41

202:                                              ; preds = %156
  %203 = load i32, i32* %11, align 4
  %204 = call i32 @is_DLGK_MOUSE(i32 %203)
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %216

206:                                              ; preds = %202
  %207 = load i32, i32* %11, align 4
  %208 = load i32, i32* @M_EVENT, align 4
  %209 = sub nsw i32 %207, %208
  %210 = call i32 @dlg_yes_buttoncode(i32 %209)
  store i32 %210, i32* %16, align 4
  %211 = load i32, i32* %16, align 4
  %212 = icmp slt i32 %211, 0
  br i1 %212, label %213, label %215

213:                                              ; preds = %206
  %214 = load i32, i32* @DLG_EXIT_OK, align 4
  store i32 %214, i32* %16, align 4
  br label %215

215:                                              ; preds = %213, %206
  br label %225

216:                                              ; preds = %202
  %217 = load i32, i32* %11, align 4
  %218 = load i32, i32* %22, align 4
  %219 = load i32, i32* %21, align 4
  %220 = call i32 @dlg_check_scrolled(i32 %217, i32 %218, i32 %219, i32* %20, i32* %23)
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %224

222:                                              ; preds = %216
  %223 = call i32 (...) @beep()
  br label %224

224:                                              ; preds = %222, %216
  br label %225

225:                                              ; preds = %224, %215
  br label %226

226:                                              ; preds = %225, %190, %181, %165
  br label %229

227:                                              ; preds = %153
  %228 = call i32 (...) @beep()
  br label %229

229:                                              ; preds = %227, %226
  br label %119

230:                                              ; preds = %150, %144, %119
  %231 = load i32*, i32** %15, align 8
  %232 = call i32 @dlg_del_window(i32* %231)
  %233 = call i32 (...) @dlg_mouse_free_regions()
  %234 = load i8*, i8** %17, align 8
  %235 = call i32 @free(i8* %234)
  %236 = load i32, i32* %16, align 4
  ret i32 %236
}

declare dso_local i32 @dlg_default_button(...) #1

declare dso_local i8** @dlg_yes_labels(...) #1

declare dso_local i32 @DLG_TRACE(i8*) #1

declare dso_local i32 @DLG_TRACE2S(i8*, i8*) #1

declare dso_local i32 @DLG_TRACE2N(i8*, i32) #1

declare dso_local i8* @dlg_strclone(i8*) #1

declare dso_local i32 @dlg_tab_correct_str(i8*) #1

declare dso_local i32 @dlg_button_layout(i8**, i32*) #1

declare dso_local i32 @dlg_auto_size(i8*, i8*, i32*, i32*, i32, i32) #1

declare dso_local i32 @dlg_print_size(i32, i32) #1

declare dso_local i32 @dlg_ctl_size(i32, i32) #1

declare dso_local i32 @dlg_box_x_ordinate(i32) #1

declare dso_local i32 @dlg_box_y_ordinate(i32) #1

declare dso_local i32 @dlg_move_window(i32*, i32, i32, i32, i32) #1

declare dso_local i32* @dlg_new_window(i32, i32, i32, i32) #1

declare dso_local i32 @dlg_register_window(i32*, i8*, i32*) #1

declare dso_local i32 @dlg_register_buttons(i32*, i8*, i8**) #1

declare dso_local i32 @dlg_draw_box2(i32*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dlg_draw_bottom_box2(i32*, i32, i32, i32) #1

declare dso_local i32 @dlg_draw_title(i32*, i8*) #1

declare dso_local i32 @dlg_draw_helpline(i32*, i32) #1

declare dso_local i32 @dlg_attrset(i32*, i32) #1

declare dso_local i32 @dlg_draw_buttons(i32*, i32, i32, i8**, i32, i32, i32) #1

declare dso_local i32 @dlg_print_scrolled(i32*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @dlg_trace_win(i32*) #1

declare dso_local i32 @dlg_mouse_wgetch(i32*, i32*) #1

declare dso_local i64 @dlg_result_key(i32, i32, i32*) #1

declare dso_local i32 @dlg_char_to_button(i32, i8**) #1

declare dso_local i32 @dlg_ok_buttoncode(i32) #1

declare dso_local i32 @dlg_next_button(i8**, i32) #1

declare dso_local i32 @dlg_prev_button(i8**, i32) #1

declare dso_local i32 @dlg_yes_buttoncode(i32) #1

declare dso_local i32 @dlg_will_resize(i32*) #1

declare dso_local i32 @dlg_clear(...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @is_DLGK_MOUSE(i32) #1

declare dso_local i32 @dlg_check_scrolled(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @beep(...) #1

declare dso_local i32 @dlg_del_window(i32*) #1

declare dso_local i32 @dlg_mouse_free_regions(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
