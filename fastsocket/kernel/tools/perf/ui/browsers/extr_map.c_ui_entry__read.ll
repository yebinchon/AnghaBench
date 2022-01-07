; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/browsers/extr_map.c_ui_entry__read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/browsers/extr_map.c_ui_entry__read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.newtExitStruct = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@NEWT_FLAG_SCROLL = common dso_local global i32 0, align 4
@NEWT_KEY_ENTER = common dso_local global i32 0, align 4
@NEWT_KEY_ESCAPE = common dso_local global i32 0, align 4
@NEWT_KEY_LEFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64, i32)* @ui_entry__read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ui_entry__read(i8* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.newtExitStruct, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 -1, i32* %14, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @newtCenteredWindow(i32 %15, i32 1, i8* %16)
  %18 = call i32* @newtForm(i32* null, i32* null, i32 0)
  store i32* %18, i32** %11, align 8
  %19 = load i32*, i32** %11, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %60

22:                                               ; preds = %4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @NEWT_FLAG_SCROLL, align 4
  %25 = call i32* @newtEntry(i32 0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %23, i8** %13, i32 %24)
  store i32* %25, i32** %12, align 8
  %26 = load i32*, i32** %12, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %55

29:                                               ; preds = %22
  %30 = load i32*, i32** %11, align 8
  %31 = load i32*, i32** %12, align 8
  %32 = call i32 @newtFormAddComponent(i32* %30, i32* %31)
  %33 = load i32*, i32** %11, align 8
  %34 = load i32, i32* @NEWT_KEY_ENTER, align 4
  %35 = call i32 @newtFormAddHotKey(i32* %33, i32 %34)
  %36 = load i32*, i32** %11, align 8
  %37 = load i32, i32* @NEWT_KEY_ESCAPE, align 4
  %38 = call i32 @newtFormAddHotKey(i32* %36, i32 %37)
  %39 = load i32*, i32** %11, align 8
  %40 = load i32, i32* @NEWT_KEY_LEFT, align 4
  %41 = call i32 @newtFormAddHotKey(i32* %39, i32 %40)
  %42 = load i32*, i32** %11, align 8
  %43 = call i32 @CTRL(i8 signext 99)
  %44 = call i32 @newtFormAddHotKey(i32* %42, i32 %43)
  %45 = load i32*, i32** %11, align 8
  %46 = call i32 @newtFormRun(i32* %45, %struct.newtExitStruct* %10)
  %47 = load i8*, i8** %13, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %29
  %50 = load i8*, i8** %7, align 8
  %51 = load i8*, i8** %13, align 8
  %52 = load i64, i64* %8, align 8
  %53 = call i32 @strncpy(i8* %50, i8* %51, i64 %52)
  store i32 0, i32* %14, align 4
  br label %54

54:                                               ; preds = %49, %29
  br label %55

55:                                               ; preds = %54, %28
  %56 = call i32 (...) @newtPopWindow()
  %57 = load i32*, i32** %11, align 8
  %58 = call i32 @newtFormDestroy(i32* %57)
  %59 = load i32, i32* %14, align 4
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %55, %21
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32 @newtCenteredWindow(i32, i32, i8*) #1

declare dso_local i32* @newtForm(i32*, i32*, i32) #1

declare dso_local i32* @newtEntry(i32, i32, i8*, i32, i8**, i32) #1

declare dso_local i32 @newtFormAddComponent(i32*, i32*) #1

declare dso_local i32 @newtFormAddHotKey(i32*, i32) #1

declare dso_local i32 @CTRL(i8 signext) #1

declare dso_local i32 @newtFormRun(i32*, %struct.newtExitStruct*) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

declare dso_local i32 @newtPopWindow(...) #1

declare dso_local i32 @newtFormDestroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
