; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_progressbox.c_pause_for_ok.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_progressbox.c_pause_for_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32, i64 }
%struct.TYPE_8__ = type { i32 }

@pause_for_ok.binding = internal global [4 x i32] [i32 130, i32 131, i32 128, i32 132], align 16
@DLG_EXIT_UNKNOWN = common dso_local global i32 0, align 4
@dialog_vars = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@TRUE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"progressbox\00", align 1
@border_attr = common dso_local global i32 0, align 4
@border2_attr = common dso_local global i32 0, align 4
@dialog_attr = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@M_EVENT = common dso_local global i32 0, align 4
@DLG_EXIT_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i8*, i8*)* @pause_for_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pause_for_ok(%struct.TYPE_9__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %8, align 4
  %15 = load i32, i32* @DLG_EXIT_UNKNOWN, align 4
  store i32 %15, i32* %10, align 4
  %16 = call i8** (...) @dlg_ok_label()
  store i8** %16, i8*** %11, align 8
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @dialog_vars, i32 0, i32 0), align 4
  store i32 %17, i32* %13, align 4
  %18 = load i8*, i8** @TRUE, align 8
  %19 = ptrtoint i8* %18 to i32
  store i32 %19, i32* %14, align 4
  %20 = load i8*, i8** @TRUE, align 8
  %21 = ptrtoint i8* %20 to i32
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @dialog_vars, i32 0, i32 0), align 4
  %22 = call i32 (...) @dlg_default_button()
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %113, %3
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @dlg_register_window(i32 %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* getelementptr inbounds ([4 x i32], [4 x i32]* @pause_for_ok.binding, i64 0, i64 0))
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i8**, i8*** %11, align 8
  %34 = call i32 @dlg_register_buttons(i32 %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %33)
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @border_attr, align 4
  %40 = load i32, i32* @border2_attr, align 4
  %41 = load i32, i32* @dialog_attr, align 4
  %42 = call i32 @dlg_draw_bottom_box2(i32 %38, i32 %39, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %150, %23
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @DLG_EXIT_UNKNOWN, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %151

47:                                               ; preds = %43
  %48 = load i32, i32* %14, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %71

50:                                               ; preds = %47
  %51 = load i32, i32* @FALSE, align 4
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i32 0, i32* %7, align 4
  br label %55

55:                                               ; preds = %54, %50
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = sub nsw i64 %62, 2
  %64 = load i8**, i8*** %11, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @FALSE, align 4
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @dlg_draw_buttons(i32 %59, i64 %63, i32 0, i8** %64, i32 %65, i32 %66, i32 %69)
  br label %71

71:                                               ; preds = %55, %47
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @dlg_mouse_wgetch(i32 %75, i32* %9)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %9, align 4
  %79 = call i64 @dlg_result_key(i32 %77, i32 %78, i32* %10)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %71
  br label %151

82:                                               ; preds = %71
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %93, label %85

85:                                               ; preds = %82
  %86 = load i32, i32* %8, align 4
  %87 = load i8**, i8*** %11, align 8
  %88 = call i32 @dlg_char_to_button(i32 %86, i8** %87)
  store i32 %88, i32* %12, align 4
  %89 = icmp sge i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load i32, i32* %12, align 4
  %92 = call i32 @dlg_ok_buttoncode(i32 %91)
  store i32 %92, i32* %10, align 4
  br label %151

93:                                               ; preds = %85, %82
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %148

96:                                               ; preds = %93
  %97 = load i32, i32* %8, align 4
  switch i32 %97, label %130 [
    i32 134, label %98
    i32 133, label %104
    i32 135, label %110
    i32 129, label %113
  ]

98:                                               ; preds = %96
  %99 = load i8**, i8*** %11, align 8
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @dlg_next_button(i8** %99, i32 %100)
  store i32 %101, i32* %7, align 4
  %102 = load i8*, i8** @TRUE, align 8
  %103 = ptrtoint i8* %102 to i32
  store i32 %103, i32* %14, align 4
  br label %147

104:                                              ; preds = %96
  %105 = load i8**, i8*** %11, align 8
  %106 = load i32, i32* %7, align 4
  %107 = call i32 @dlg_prev_button(i8** %105, i32 %106)
  store i32 %107, i32* %7, align 4
  %108 = load i8*, i8** @TRUE, align 8
  %109 = ptrtoint i8* %108 to i32
  store i32 %109, i32* %14, align 4
  br label %147

110:                                              ; preds = %96
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @dlg_ok_buttoncode(i32 %111)
  store i32 %112, i32* %10, align 4
  br label %147

113:                                              ; preds = %96
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @dlg_will_resize(i32 %117)
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %120 = call i32 @restart_obj(%struct.TYPE_9__* %119)
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %122 = load i8*, i8** %5, align 8
  %123 = load i8*, i8** %6, align 8
  %124 = call i32 @start_obj(%struct.TYPE_9__* %121, i8* %122, i8* %123)
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %126 = load i8*, i8** @TRUE, align 8
  %127 = call i32 @reprint_lines(%struct.TYPE_9__* %125, i8* %126)
  %128 = load i8*, i8** @TRUE, align 8
  %129 = ptrtoint i8* %128 to i32
  store i32 %129, i32* %14, align 4
  br label %23

130:                                              ; preds = %96
  %131 = load i32, i32* %8, align 4
  %132 = call i32 @is_DLGK_MOUSE(i32 %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %144

134:                                              ; preds = %130
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* @M_EVENT, align 4
  %137 = sub nsw i32 %135, %136
  %138 = call i32 @dlg_ok_buttoncode(i32 %137)
  store i32 %138, i32* %10, align 4
  %139 = load i32, i32* %10, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %134
  %142 = load i32, i32* @DLG_EXIT_OK, align 4
  store i32 %142, i32* %10, align 4
  br label %143

143:                                              ; preds = %141, %134
  br label %146

144:                                              ; preds = %130
  %145 = call i32 (...) @beep()
  br label %146

146:                                              ; preds = %144, %143
  br label %147

147:                                              ; preds = %146, %110, %104, %98
  br label %150

148:                                              ; preds = %93
  %149 = call i32 (...) @beep()
  br label %150

150:                                              ; preds = %148, %147
  br label %43

151:                                              ; preds = %90, %81, %43
  %152 = call i32 (...) @dlg_mouse_free_regions()
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @dlg_unregister_window(i32 %156)
  %158 = load i32, i32* %13, align 4
  store i32 %158, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @dialog_vars, i32 0, i32 0), align 4
  %159 = load i32, i32* %10, align 4
  ret i32 %159
}

declare dso_local i8** @dlg_ok_label(...) #1

declare dso_local i32 @dlg_default_button(...) #1

declare dso_local i32 @dlg_register_window(i32, i8*, i32*) #1

declare dso_local i32 @dlg_register_buttons(i32, i8*, i8**) #1

declare dso_local i32 @dlg_draw_bottom_box2(i32, i32, i32, i32) #1

declare dso_local i32 @dlg_draw_buttons(i32, i64, i32, i8**, i32, i32, i32) #1

declare dso_local i32 @dlg_mouse_wgetch(i32, i32*) #1

declare dso_local i64 @dlg_result_key(i32, i32, i32*) #1

declare dso_local i32 @dlg_char_to_button(i32, i8**) #1

declare dso_local i32 @dlg_ok_buttoncode(i32) #1

declare dso_local i32 @dlg_next_button(i8**, i32) #1

declare dso_local i32 @dlg_prev_button(i8**, i32) #1

declare dso_local i32 @dlg_will_resize(i32) #1

declare dso_local i32 @restart_obj(%struct.TYPE_9__*) #1

declare dso_local i32 @start_obj(%struct.TYPE_9__*, i8*, i8*) #1

declare dso_local i32 @reprint_lines(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @is_DLGK_MOUSE(i32) #1

declare dso_local i32 @beep(...) #1

declare dso_local i32 @dlg_mouse_free_regions(...) #1

declare dso_local i32 @dlg_unregister_window(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
