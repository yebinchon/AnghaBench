; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_mixedgauge.c_dialog_mixedgauge.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_mixedgauge.c_dialog_mixedgauge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"# mixedgauge args:\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"message\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"percent\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"llength\00", align 1
@DLG_EXIT_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dialog_mixedgauge(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i8** %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i8** %6, i8*** %14, align 8
  store i32 0, i32* %16, align 4
  %17 = call i32 @DLG_TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @DLG_TRACE2S(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  %20 = load i8*, i8** %9, align 8
  %21 = call i32 @DLG_TRACE2S(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %20)
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @DLG_TRACE2N(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @DLG_TRACE2N(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %12, align 4
  %27 = call i32 @DLG_TRACE2N(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %13, align 4
  %29 = call i32 @DLG_TRACE2N(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %28)
  %30 = load i8*, i8** %8, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %13, align 4
  %35 = load i8**, i8*** %14, align 8
  %36 = call i32 @dlg_begin_mixedgauge(i32* %15, i32* %16, i8* %30, i8* %31, i32 %32, i32 %33, i32 %34, i8** %35)
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @dlg_update_mixedgauge(i32* %15, i32 %37)
  %39 = load i32, i32* @DLG_EXIT_OK, align 4
  %40 = call i32 @dlg_finish_mixedgauge(i32* %15, i32 %39)
  ret i32 %40
}

declare dso_local i32 @DLG_TRACE(i8*) #1

declare dso_local i32 @DLG_TRACE2S(i8*, i8*) #1

declare dso_local i32 @DLG_TRACE2N(i8*, i32) #1

declare dso_local i32 @dlg_begin_mixedgauge(i32*, i32*, i8*, i8*, i32, i32, i32, i8**) #1

declare dso_local i32 @dlg_update_mixedgauge(i32*, i32) #1

declare dso_local i32 @dlg_finish_mixedgauge(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
