; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_dialog.c_PrintTextOnly.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_dialog.c_PrintTextOnly.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@LINES = common dso_local global i64 0, align 8
@COLS = common dso_local global i64 0, align 8
@dialog_state = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@TRUE = common dso_local global i32 0, align 4
@stdscr = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i32*, i32)* @PrintTextOnly to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PrintTextOnly(i8** %0, i32* %1, i32 %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %13 = load i8**, i8*** %4, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8*, i8** %13, i64 %16
  %18 = call i32 @arg_rest(i8** %17)
  store i32 %18, i32* %12, align 4
  %19 = load i64, i64* @LINES, align 8
  %20 = icmp sle i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %3
  %22 = load i64, i64* @COLS, align 8
  %23 = icmp sle i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dialog_state, i32 0, i32 4), align 4
  %26 = call i32 @fileno(i32 %25)
  %27 = call i32 @dlg_ttysize(i32 %26, i64* @LINES, i64* @COLS)
  br label %28

28:                                               ; preds = %24, %21, %3
  %29 = load i8**, i8*** %4, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @optionString(i8** %29, i32* %30)
  %32 = call i8* @strdup(i32 %31)
  store i8* %32, i8** %7, align 8
  %33 = load i8**, i8*** %4, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @IgnoreNonScreen(i8** %33, i32 %35)
  %37 = load i32, i32* %12, align 4
  %38 = icmp sge i32 %37, 1
  br i1 %38, label %39, label %61

39:                                               ; preds = %28
  %40 = load i32, i32* %12, align 4
  %41 = call i32 @MIN(i32 %40, i32 3)
  store i32 %41, i32* %12, align 4
  %42 = load i8**, i8*** %4, align 8
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  %46 = call i32 @numeric_arg(i8** %42, i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp sge i32 %47, 2
  br i1 %48, label %49, label %55

49:                                               ; preds = %39
  %50 = load i8**, i8*** %4, align 8
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 2
  %54 = call i32 @numeric_arg(i8** %50, i32 %53)
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %49, %39
  %56 = load i32, i32* %12, align 4
  %57 = sub nsw i32 %56, 1
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, %57
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %55, %28
  %62 = load i8*, i8** %7, align 8
  %63 = call i32 @dlg_trim_string(i8* %62)
  %64 = load i8*, i8** %7, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @dlg_auto_size(i32* null, i8* %64, i32* %10, i32* %11, i32 %65, i32 %66)
  %68 = load i32, i32* %6, align 4
  switch i32 %68, label %82 [
    i32 129, label %69
    i32 128, label %77
  ]

69:                                               ; preds = %61
  %70 = load i32, i32* @TRUE, align 4
  store i32 %70, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dialog_state, i32 0, i32 3), align 4
  %71 = load i32, i32* @stdscr, align 4
  %72 = load i8*, i8** %7, align 8
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @dlg_print_autowrap(i32 %71, i8* %72, i32 %73, i32 %74)
  %76 = load i32, i32* @FALSE, align 4
  store i32 %76, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dialog_state, i32 0, i32 3), align 4
  br label %83

77:                                               ; preds = %61
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dialog_state, i32 0, i32 2), align 4
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dialog_state, i32 0, i32 0), align 4
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dialog_state, i32 0, i32 1), align 4
  %81 = call i32 @fprintf(i32 %78, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %79, i32 %80)
  br label %83

82:                                               ; preds = %61
  br label %83

83:                                               ; preds = %82, %77, %69
  ret void
}

declare dso_local i32 @arg_rest(i8**) #1

declare dso_local i32 @dlg_ttysize(i32, i64*, i64*) #1

declare dso_local i32 @fileno(i32) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i32 @optionString(i8**, i32*) #1

declare dso_local i32 @IgnoreNonScreen(i8**, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @numeric_arg(i8**, i32) #1

declare dso_local i32 @dlg_trim_string(i8*) #1

declare dso_local i32 @dlg_auto_size(i32*, i8*, i32*, i32*, i32, i32) #1

declare dso_local i32 @dlg_print_autowrap(i32, i8*, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
