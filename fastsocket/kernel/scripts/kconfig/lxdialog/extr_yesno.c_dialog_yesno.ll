; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/lxdialog/extr_yesno.c_dialog_yesno.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/lxdialog/extr_yesno.c_dialog_yesno.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@stdscr = common dso_local global i32 0, align 4
@ERRDISPLAYTOOSMALL = common dso_local global i32 0, align 4
@COLS = common dso_local global i32 0, align 4
@LINES = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@dlg = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@ACS_LTEE = common dso_local global i32 0, align 4
@ACS_HLINE = common dso_local global i32 0, align 4
@ACS_RTEE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dialog_yesno(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %16

16:                                               ; preds = %156, %4
  %17 = load i32, i32* @stdscr, align 4
  %18 = call i32 @getmaxy(i32 %17)
  %19 = load i32, i32* %8, align 4
  %20 = add nsw i32 %19, 4
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* @ERRDISPLAYTOOSMALL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %165

25:                                               ; preds = %16
  %26 = load i32, i32* @stdscr, align 4
  %27 = call i32 @getmaxx(i32 %26)
  %28 = load i32, i32* %9, align 4
  %29 = add nsw i32 %28, 4
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @ERRDISPLAYTOOSMALL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %165

34:                                               ; preds = %25
  %35 = load i32, i32* @COLS, align 4
  %36 = load i32, i32* %9, align 4
  %37 = sub nsw i32 %35, %36
  %38 = sdiv i32 %37, 2
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* @LINES, align 4
  %40 = load i32, i32* %8, align 4
  %41 = sub nsw i32 %39, %40
  %42 = sdiv i32 %41, 2
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* @stdscr, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @draw_shadow(i32 %43, i32 %44, i32 %45, i32 %46, i32 %47)
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %11, align 4
  %53 = call i32* @newwin(i32 %49, i32 %50, i32 %51, i32 %52)
  store i32* %53, i32** %15, align 8
  %54 = load i32*, i32** %15, align 8
  %55 = load i32, i32* @TRUE, align 4
  %56 = call i32 @keypad(i32* %54, i32 %55)
  %57 = load i32*, i32** %15, align 8
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dlg, i32 0, i32 0, i32 0), align 4
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dlg, i32 0, i32 1, i32 0), align 4
  %62 = call i32 @draw_box(i32* %57, i32 0, i32 0, i32 %58, i32 %59, i32 %60, i32 %61)
  %63 = load i32*, i32** %15, align 8
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dlg, i32 0, i32 1, i32 0), align 4
  %65 = call i32 @wattrset(i32* %63, i32 %64)
  %66 = load i32*, i32** %15, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sub nsw i32 %67, 3
  %69 = load i32, i32* @ACS_LTEE, align 4
  %70 = call i32 @mvwaddch(i32* %66, i32 %68, i32 0, i32 %69)
  store i32 0, i32* %10, align 4
  br label %71

71:                                               ; preds = %80, %34
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %9, align 4
  %74 = sub nsw i32 %73, 2
  %75 = icmp slt i32 %72, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %71
  %77 = load i32*, i32** %15, align 8
  %78 = load i32, i32* @ACS_HLINE, align 4
  %79 = call i32 @waddch(i32* %77, i32 %78)
  br label %80

80:                                               ; preds = %76
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %10, align 4
  br label %71

83:                                               ; preds = %71
  %84 = load i32*, i32** %15, align 8
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dlg, i32 0, i32 0, i32 0), align 4
  %86 = call i32 @wattrset(i32* %84, i32 %85)
  %87 = load i32*, i32** %15, align 8
  %88 = load i32, i32* @ACS_RTEE, align 4
  %89 = call i32 @waddch(i32* %87, i32 %88)
  %90 = load i32*, i32** %15, align 8
  %91 = load i8*, i8** %6, align 8
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @print_title(i32* %90, i8* %91, i32 %92)
  %94 = load i32*, i32** %15, align 8
  %95 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dlg, i32 0, i32 0, i32 0), align 4
  %96 = call i32 @wattrset(i32* %94, i32 %95)
  %97 = load i32*, i32** %15, align 8
  %98 = load i8*, i8** %7, align 8
  %99 = load i32, i32* %9, align 4
  %100 = sub nsw i32 %99, 2
  %101 = call i32 @print_autowrap(i32* %97, i8* %98, i32 %100, i32 1, i32 3)
  %102 = load i32*, i32** %15, align 8
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* %9, align 4
  %105 = call i32 @print_buttons(i32* %102, i32 %103, i32 %104, i32 0)
  br label %106

106:                                              ; preds = %160, %83
  %107 = load i32, i32* %13, align 4
  %108 = icmp ne i32 %107, 132
  br i1 %108, label %109, label %161

109:                                              ; preds = %106
  %110 = load i32*, i32** %15, align 8
  %111 = call i32 @wgetch(i32* %110)
  store i32 %111, i32* %13, align 4
  %112 = load i32, i32* %13, align 4
  switch i32 %112, label %160 [
    i32 89, label %113
    i32 121, label %113
    i32 78, label %116
    i32 110, label %116
    i32 128, label %119
    i32 131, label %119
    i32 129, label %119
    i32 32, label %149
    i32 10, label %149
    i32 132, label %153
    i32 130, label %156
  ]

113:                                              ; preds = %109, %109
  %114 = load i32*, i32** %15, align 8
  %115 = call i32 @delwin(i32* %114)
  store i32 0, i32* %5, align 4
  br label %165

116:                                              ; preds = %109, %109
  %117 = load i32*, i32** %15, align 8
  %118 = call i32 @delwin(i32* %117)
  store i32 1, i32* %5, align 4
  br label %165

119:                                              ; preds = %109, %109, %109
  %120 = load i32, i32* %13, align 4
  %121 = icmp eq i32 %120, 131
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = load i32, i32* %14, align 4
  %124 = add nsw i32 %123, -1
  store i32 %124, i32* %14, align 4
  br label %128

125:                                              ; preds = %119
  %126 = load i32, i32* %14, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %14, align 4
  br label %128

128:                                              ; preds = %125, %122
  %129 = phi i32 [ %124, %122 ], [ %127, %125 ]
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %128
  br label %140

132:                                              ; preds = %128
  %133 = load i32, i32* %14, align 4
  %134 = icmp sgt i32 %133, 1
  br i1 %134, label %135, label %136

135:                                              ; preds = %132
  br label %138

136:                                              ; preds = %132
  %137 = load i32, i32* %14, align 4
  br label %138

138:                                              ; preds = %136, %135
  %139 = phi i32 [ 0, %135 ], [ %137, %136 ]
  br label %140

140:                                              ; preds = %138, %131
  %141 = phi i32 [ 1, %131 ], [ %139, %138 ]
  store i32 %141, i32* %14, align 4
  %142 = load i32*, i32** %15, align 8
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* %14, align 4
  %146 = call i32 @print_buttons(i32* %142, i32 %143, i32 %144, i32 %145)
  %147 = load i32*, i32** %15, align 8
  %148 = call i32 @wrefresh(i32* %147)
  br label %160

149:                                              ; preds = %109, %109
  %150 = load i32*, i32** %15, align 8
  %151 = call i32 @delwin(i32* %150)
  %152 = load i32, i32* %14, align 4
  store i32 %152, i32* %5, align 4
  br label %165

153:                                              ; preds = %109
  %154 = load i32*, i32** %15, align 8
  %155 = call i32 @on_key_esc(i32* %154)
  store i32 %155, i32* %13, align 4
  br label %160

156:                                              ; preds = %109
  %157 = load i32*, i32** %15, align 8
  %158 = call i32 @delwin(i32* %157)
  %159 = call i32 (...) @on_key_resize()
  br label %16

160:                                              ; preds = %109, %153, %140
  br label %106

161:                                              ; preds = %106
  %162 = load i32*, i32** %15, align 8
  %163 = call i32 @delwin(i32* %162)
  %164 = load i32, i32* %13, align 4
  store i32 %164, i32* %5, align 4
  br label %165

165:                                              ; preds = %161, %149, %116, %113, %31, %22
  %166 = load i32, i32* %5, align 4
  ret i32 %166
}

declare dso_local i32 @getmaxy(i32) #1

declare dso_local i32 @getmaxx(i32) #1

declare dso_local i32 @draw_shadow(i32, i32, i32, i32, i32) #1

declare dso_local i32* @newwin(i32, i32, i32, i32) #1

declare dso_local i32 @keypad(i32*, i32) #1

declare dso_local i32 @draw_box(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @wattrset(i32*, i32) #1

declare dso_local i32 @mvwaddch(i32*, i32, i32, i32) #1

declare dso_local i32 @waddch(i32*, i32) #1

declare dso_local i32 @print_title(i32*, i8*, i32) #1

declare dso_local i32 @print_autowrap(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @print_buttons(i32*, i32, i32, i32) #1

declare dso_local i32 @wgetch(i32*) #1

declare dso_local i32 @delwin(i32*) #1

declare dso_local i32 @wrefresh(i32*) #1

declare dso_local i32 @on_key_esc(i32*) #1

declare dso_local i32 @on_key_resize(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
