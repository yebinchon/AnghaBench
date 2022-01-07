; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_util.c_init_dialog.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_util.c_init_dialog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i32, i32, i32*, i32*, i32, i32, i32* }
%struct.TYPE_3__ = type { i32 }

@LC_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@dialog_state = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@TAB_LEN = common dso_local global i32 0, align 4
@DEFAULT_ASPECT_RATIO = common dso_local global i32 0, align 4
@stdin = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"cannot open tty-input\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@stdout = common dso_local global i32* null, align 8
@O_WRONLY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"cannot initialize curses\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"cannot open tty-output\00", align 1
@stdscr = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@USE_COLORS = common dso_local global i64 0, align 8
@USE_SHADOW = common dso_local global i64 0, align 8
@clear_screen = common dso_local global i64 0, align 8
@dialog_vars = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@enter_ca_mode = common dso_local global i64 0, align 8
@exit_ca_mode = common dso_local global i64 0, align 8
@key_mouse = common dso_local global i64 0, align 8
@my_putc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_dialog(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i8* null, i8** %7, align 8
  %8 = load i32, i32* @LC_ALL, align 4
  %9 = call i32 @setlocale(i32 %8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %10 = load i32*, i32** %4, align 8
  store i32* %10, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dialog_state, i32 0, i32 8), align 8
  %11 = load i32, i32* @TAB_LEN, align 4
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dialog_state, i32 0, i32 7), align 4
  %12 = load i32, i32* @DEFAULT_ASPECT_RATIO, align 4
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dialog_state, i32 0, i32 6), align 8
  %13 = load i32*, i32** @stdin, align 8
  store i32* %13, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dialog_state, i32 0, i32 5), align 8
  %14 = load i32*, i32** %3, align 8
  %15 = call i64 @fileno(i32* %14)
  %16 = load i32*, i32** @stdin, align 8
  %17 = call i64 @fileno(i32* %16)
  %18 = icmp ne i64 %15, %17
  br i1 %18, label %19, label %51

19:                                               ; preds = %2
  %20 = load i32*, i32** %3, align 8
  %21 = call i64 @fileno(i32* %20)
  %22 = call i32 @dup(i64 %21)
  store i32 %22, i32* %5, align 4
  %23 = icmp sge i32 %22, 0
  br i1 %23, label %24, label %46

24:                                               ; preds = %19
  %25 = load i32*, i32** @stdin, align 8
  %26 = call i64 @fileno(i32* %25)
  %27 = call i32 @dup(i64 %26)
  store i32 %27, i32* %6, align 4
  %28 = icmp sge i32 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %24
  %30 = load i32*, i32** %3, align 8
  %31 = call i64 @fileno(i32* %30)
  %32 = load i32*, i32** @stdin, align 8
  %33 = call i64 @fileno(i32* %32)
  %34 = call i32 @dup2(i64 %31, i64 %33)
  %35 = load i32, i32* %6, align 4
  %36 = call i8* @fdopen(i32 %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %37 = bitcast i8* %36 to i32*
  store i32* %37, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dialog_state, i32 0, i32 5), align 8
  %38 = load i32*, i32** @stdin, align 8
  %39 = call i64 @fileno(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %29
  %42 = load i32*, i32** @stdin, align 8
  %43 = call i64 @fileno(i32* %42)
  %44 = call i32 @dup2(i64 %43, i64 0)
  br label %45

45:                                               ; preds = %41, %29
  br label %48

46:                                               ; preds = %24, %19
  %47 = call i32 @dlg_exiterr(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %45
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @close(i32 %49)
  br label %91

51:                                               ; preds = %2
  %52 = load i32*, i32** @stdin, align 8
  %53 = call i64 @fileno(i32* %52)
  %54 = call i64 @isatty(i64 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %90, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* @O_RDONLY, align 4
  %58 = call i32 @open_terminal(i8** %7, i32 %57)
  store i32 %58, i32* %5, align 4
  %59 = icmp sge i32 %58, 0
  br i1 %59, label %60, label %87

60:                                               ; preds = %56
  %61 = load i32*, i32** @stdin, align 8
  %62 = call i64 @fileno(i32* %61)
  %63 = call i32 @dup(i64 %62)
  store i32 %63, i32* %6, align 4
  %64 = icmp sge i32 %63, 0
  br i1 %64, label %65, label %84

65:                                               ; preds = %60
  %66 = load i32, i32* %6, align 4
  %67 = call i8* @fdopen(i32 %66, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %68 = bitcast i8* %67 to i32*
  store i32* %68, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dialog_state, i32 0, i32 5), align 8
  %69 = load i8*, i8** %7, align 8
  %70 = load i32*, i32** @stdin, align 8
  %71 = call i64 @freopen(i8* %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* %70)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %65
  %74 = call i32 @dlg_exiterr(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %75

75:                                               ; preds = %73, %65
  %76 = load i32*, i32** @stdin, align 8
  %77 = call i64 @fileno(i32* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load i32*, i32** @stdin, align 8
  %81 = call i64 @fileno(i32* %80)
  %82 = call i32 @dup2(i64 %81, i64 0)
  br label %83

83:                                               ; preds = %79, %75
  br label %84

84:                                               ; preds = %83, %60
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @close(i32 %85)
  br label %87

87:                                               ; preds = %84, %56
  %88 = load i8*, i8** %7, align 8
  %89 = call i32 @free(i8* %88)
  br label %90

90:                                               ; preds = %87, %51
  br label %91

91:                                               ; preds = %90, %48
  %92 = load i32*, i32** @stdout, align 8
  %93 = call i64 @fileno(i32* %92)
  %94 = call i64 @isatty(i64 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %127, label %96

96:                                               ; preds = %91
  %97 = load i32*, i32** @stdout, align 8
  %98 = call i64 @fileno(i32* %97)
  %99 = load i32*, i32** %4, align 8
  %100 = call i64 @fileno(i32* %99)
  %101 = icmp eq i64 %98, %100
  br i1 %101, label %105, label %102

102:                                              ; preds = %96
  %103 = call i64 (...) @dialog_tty()
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %127

105:                                              ; preds = %102, %96
  %106 = load i32, i32* @O_WRONLY, align 4
  %107 = call i32 @open_terminal(i8** %7, i32 %106)
  store i32 %107, i32* %5, align 4
  %108 = icmp sge i32 %107, 0
  br i1 %108, label %109, label %124

109:                                              ; preds = %105
  %110 = load i32, i32* %5, align 4
  %111 = call i8* @fdopen(i32 %110, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %112 = bitcast i8* %111 to i32*
  store i32* %112, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dialog_state, i32 0, i32 4), align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %124

114:                                              ; preds = %109
  %115 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dialog_state, i32 0, i32 4), align 8
  %116 = load i32*, i32** @stdin, align 8
  %117 = call i64 @newterm(i32* null, i32* %115, i32* %116)
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %114
  %120 = call i32 @dlg_exiterr(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %121

121:                                              ; preds = %119, %114
  %122 = load i8*, i8** %7, align 8
  %123 = call i32 @free(i8* %122)
  br label %126

124:                                              ; preds = %109, %105
  %125 = call i32 @dlg_exiterr(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %126

126:                                              ; preds = %124, %121
  br label %130

127:                                              ; preds = %102, %91
  %128 = load i32*, i32** @stdout, align 8
  store i32* %128, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dialog_state, i32 0, i32 4), align 8
  %129 = call i32 (...) @initscr()
  br label %130

130:                                              ; preds = %127, %126
  %131 = load i32, i32* @stdscr, align 4
  %132 = load i32, i32* @TRUE, align 4
  %133 = call i32 @keypad(i32 %131, i32 %132)
  %134 = call i32 (...) @cbreak()
  %135 = call i32 (...) @noecho()
  %136 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dialog_state, i32 0, i32 3), align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %140, label %138

138:                                              ; preds = %130
  %139 = call i32 (...) @mouse_open()
  br label %140

140:                                              ; preds = %138, %130
  %141 = load i32, i32* @TRUE, align 4
  store i32 %141, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dialog_state, i32 0, i32 2), align 8
  %142 = call i32 (...) @dlg_clear()
  ret void
}

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i64 @fileno(i32*) #1

declare dso_local i32 @dup(i64) #1

declare dso_local i32 @dup2(i64, i64) #1

declare dso_local i8* @fdopen(i32, i8*) #1

declare dso_local i32 @dlg_exiterr(i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @isatty(i64) #1

declare dso_local i32 @open_terminal(i8**, i32) #1

declare dso_local i64 @freopen(i8*, i8*, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @dialog_tty(...) #1

declare dso_local i64 @newterm(i32*, i32*, i32*) #1

declare dso_local i32 @initscr(...) #1

declare dso_local i32 @keypad(i32, i32) #1

declare dso_local i32 @cbreak(...) #1

declare dso_local i32 @noecho(...) #1

declare dso_local i32 @mouse_open(...) #1

declare dso_local i32 @dlg_clear(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
