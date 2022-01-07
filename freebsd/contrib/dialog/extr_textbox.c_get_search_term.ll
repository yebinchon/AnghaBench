; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_textbox.c_get_search_term.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_textbox.c_get_search_term.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_search_term.binding = internal global [4 x i32] [i32 129, i32 130, i32 131, i32 132], align 16
@TRUE = common dso_local global i32 0, align 4
@DLG_EXIT_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Search\00", align 1
@MARGIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"searchbox\00", align 1
@searchbox_attr = common dso_local global i32 0, align 4
@searchbox_border_attr = common dso_local global i32 0, align 4
@searchbox_border2_attr = common dso_local global i32 0, align 4
@searchbox_title_attr = common dso_local global i32 0, align 4
@DLG_EXIT_CANCEL = common dso_local global i32 0, align 4
@DLG_EXIT_OK = common dso_local global i32 0, align 4
@ESC = common dso_local global i32 0, align 4
@DLG_EXIT_ESC = common dso_local global i32 0, align 4
@ERR = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i32)* @get_search_term to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_search_term(i32* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
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
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %25 = load i32, i32* @TRUE, align 4
  store i32 %25, i32* %18, align 4
  %26 = load i32, i32* @DLG_EXIT_UNKNOWN, align 4
  store i32 %26, i32* %19, align 4
  %27 = call i8* @_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %27, i8** %20, align 8
  %28 = load i8*, i8** %20, align 8
  %29 = call i32 @dlg_count_columns(i8* %28)
  store i32 %29, i32* %21, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @getbegyx(i32* %30, i32 %31, i32 %32)
  %34 = load i32, i32* @MARGIN, align 4
  %35 = mul nsw i32 2, %34
  %36 = add nsw i32 1, %35
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %21, align 4
  %38 = load i32, i32* @MARGIN, align 4
  %39 = add nsw i32 %38, 2
  %40 = mul nsw i32 2, %39
  %41 = add nsw i32 %37, %40
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %14, align 4
  %43 = call i32 @MAX(i32 %42, i32 30)
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %14, align 4
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @getmaxx(i32* %45)
  %47 = load i32, i32* @MARGIN, align 4
  %48 = mul nsw i32 2, %47
  %49 = sub nsw i32 %46, %48
  %50 = call i32 @MIN(i32 %44, i32 %49)
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %21, align 4
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* @MARGIN, align 4
  %54 = add nsw i32 %53, 1
  %55 = mul nsw i32 2, %54
  %56 = sub nsw i32 %52, %55
  %57 = call i32 @MIN(i32 %51, i32 %56)
  store i32 %57, i32* %21, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %14, align 4
  %60 = sub nsw i32 %58, %59
  %61 = sdiv i32 %60, 2
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %13, align 4
  %64 = sub nsw i32 %62, %63
  %65 = sdiv i32 %64, 2
  store i32 %65, i32* %12, align 4
  %66 = load i32*, i32** %5, align 8
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %12, align 4
  %71 = add nsw i32 %69, %70
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %11, align 4
  %74 = add nsw i32 %72, %73
  %75 = call i32* @dlg_new_modal_window(i32* %66, i32 %67, i32 %68, i32 %71, i32 %74)
  store i32* %75, i32** %24, align 8
  %76 = load i32*, i32** %24, align 8
  %77 = load i32, i32* @TRUE, align 4
  %78 = call i32 @keypad(i32* %76, i32 %77)
  %79 = load i32*, i32** %24, align 8
  %80 = call i32 @dlg_register_window(i32* %79, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32* getelementptr inbounds ([4 x i32], [4 x i32]* @get_search_term.binding, i64 0, i64 0))
  %81 = load i32*, i32** %24, align 8
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* %14, align 4
  %84 = load i32, i32* @searchbox_attr, align 4
  %85 = load i32, i32* @searchbox_border_attr, align 4
  %86 = load i32, i32* @searchbox_border2_attr, align 4
  %87 = call i32 @dlg_draw_box2(i32* %81, i32 0, i32 0, i32 %82, i32 %83, i32 %84, i32 %85, i32 %86)
  %88 = load i32*, i32** %24, align 8
  %89 = load i32, i32* @searchbox_title_attr, align 4
  %90 = call i32 @dlg_attrset(i32* %88, i32 %89)
  %91 = load i32*, i32** %24, align 8
  %92 = load i32, i32* %14, align 4
  %93 = load i32, i32* %21, align 4
  %94 = sub nsw i32 %92, %93
  %95 = sdiv i32 %94, 2
  %96 = call i32 @wmove(i32* %91, i32 0, i32 %95)
  %97 = load i8*, i8** %20, align 8
  %98 = call i32* @dlg_index_wchars(i8* %97)
  store i32* %98, i32** %22, align 8
  %99 = load i8*, i8** %20, align 8
  %100 = load i32, i32* %21, align 4
  %101 = call i32 @dlg_limit_columns(i8* %99, i32 %100, i32 0)
  store i32 %101, i32* %23, align 4
  %102 = load i32*, i32** %24, align 8
  %103 = load i8*, i8** %20, align 8
  %104 = load i32*, i32** %22, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %103, i64 %107
  %109 = load i32*, i32** %22, align 8
  %110 = load i32, i32* %23, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load i32*, i32** %22, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 0
  %116 = load i32, i32* %115, align 4
  %117 = sub nsw i32 %113, %116
  %118 = call i32 @waddnstr(i32* %102, i8* %108, i32 %117)
  %119 = load i32, i32* %14, align 4
  %120 = sub nsw i32 %119, 2
  store i32 %120, i32* %14, align 4
  %121 = load i8*, i8** %6, align 8
  %122 = call i32 @dlg_count_columns(i8* %121)
  store i32 %122, i32* %15, align 4
  br label %123

123:                                              ; preds = %174, %152, %146, %139, %137, %4
  %124 = load i32, i32* %19, align 4
  %125 = load i32, i32* @DLG_EXIT_UNKNOWN, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %175

127:                                              ; preds = %123
  %128 = load i32, i32* %18, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %157, label %130

130:                                              ; preds = %127
  %131 = load i32*, i32** %24, align 8
  %132 = call i32 @dlg_getc(i32* %131, i32* %17)
  store i32 %132, i32* %16, align 4
  %133 = load i32, i32* %17, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %130
  %136 = load i32, i32* %17, align 4
  switch i32 %136, label %141 [
    i32 128, label %137
    i32 133, label %139
  ]

137:                                              ; preds = %135
  %138 = load i32, i32* @DLG_EXIT_CANCEL, align 4
  store i32 %138, i32* %19, align 4
  br label %123

139:                                              ; preds = %135
  %140 = load i32, i32* @DLG_EXIT_OK, align 4
  store i32 %140, i32* %19, align 4
  br label %123

141:                                              ; preds = %135
  br label %156

142:                                              ; preds = %130
  %143 = load i32, i32* %16, align 4
  %144 = load i32, i32* @ESC, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %142
  %147 = load i32, i32* @DLG_EXIT_ESC, align 4
  store i32 %147, i32* %19, align 4
  br label %123

148:                                              ; preds = %142
  %149 = load i32, i32* %16, align 4
  %150 = load i32, i32* @ERR, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %148
  %153 = call i32 @napms(i32 50)
  br label %123

154:                                              ; preds = %148
  br label %155

155:                                              ; preds = %154
  br label %156

156:                                              ; preds = %155, %141
  br label %157

157:                                              ; preds = %156, %127
  %158 = load i8*, i8** %6, align 8
  %159 = load i32, i32* %16, align 4
  %160 = load i32, i32* %17, align 4
  %161 = load i32, i32* %18, align 4
  %162 = call i64 @dlg_edit_string(i8* %158, i32* %15, i32 %159, i32 %160, i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %174

164:                                              ; preds = %157
  %165 = load i32*, i32** %24, align 8
  %166 = load i8*, i8** %6, align 8
  %167 = load i32, i32* %15, align 4
  %168 = load i32, i32* @searchbox_attr, align 4
  %169 = load i32, i32* %14, align 4
  %170 = load i32, i32* @FALSE, align 4
  %171 = load i32, i32* %18, align 4
  %172 = call i32 @dlg_show_string(i32* %165, i8* %166, i32 %167, i32 %168, i32 1, i32 1, i32 %169, i32 %170, i32 %171)
  %173 = load i32, i32* @FALSE, align 4
  store i32 %173, i32* %18, align 4
  br label %174

174:                                              ; preds = %164, %157
  br label %123

175:                                              ; preds = %123
  %176 = load i32*, i32** %24, align 8
  %177 = call i32 @dlg_del_window(i32* %176)
  %178 = load i32, i32* %19, align 4
  ret i32 %178
}

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @dlg_count_columns(i8*) #1

declare dso_local i32 @getbegyx(i32*, i32, i32) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @getmaxx(i32*) #1

declare dso_local i32* @dlg_new_modal_window(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @keypad(i32*, i32) #1

declare dso_local i32 @dlg_register_window(i32*, i8*, i32*) #1

declare dso_local i32 @dlg_draw_box2(i32*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dlg_attrset(i32*, i32) #1

declare dso_local i32 @wmove(i32*, i32, i32) #1

declare dso_local i32* @dlg_index_wchars(i8*) #1

declare dso_local i32 @dlg_limit_columns(i8*, i32, i32) #1

declare dso_local i32 @waddnstr(i32*, i8*, i32) #1

declare dso_local i32 @dlg_getc(i32*, i32*) #1

declare dso_local i32 @napms(i32) #1

declare dso_local i64 @dlg_edit_string(i8*, i32*, i32, i32, i32) #1

declare dso_local i32 @dlg_show_string(i32*, i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dlg_del_window(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
