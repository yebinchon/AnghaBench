; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_var.c_bltinsetlocale.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_var.c_bltinsetlocale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32* }

@cmdenviron = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"LC_ALL\00", align 1
@INTOFF = common dso_local global i32 0, align 4
@LC_ALL = common dso_local global i32 0, align 4
@INTON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"LANG\00", align 1
@locale_names = common dso_local global i8** null, align 8
@locale_categories = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bltinsetlocale() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cmdenviron, align 8
  %6 = icmp ne %struct.TYPE_2__* %5, null
  br i1 %6, label %7, label %30

7:                                                ; preds = %0
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %26, %7
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cmdenviron, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cmdenviron, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @localevar(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %14
  store i32 1, i32* %1, align 4
  br label %29

25:                                               ; preds = %14
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %8

29:                                               ; preds = %24, %8
  br label %30

30:                                               ; preds = %29, %0
  %31 = load i32, i32* %1, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  br label %83

34:                                               ; preds = %30
  %35 = call i8* @bltinlookup(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0)
  store i8* %35, i8** %2, align 8
  %36 = load i32, i32* @INTOFF, align 4
  %37 = load i8*, i8** %2, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load i32, i32* @LC_ALL, align 4
  %41 = load i8*, i8** %2, align 8
  %42 = call i32 @setlocale(i32 %40, i8* %41)
  %43 = load i32, i32* @INTON, align 4
  %44 = call i32 (...) @updatecharset()
  br label %83

45:                                               ; preds = %34
  %46 = call i8* @bltinlookup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store i8* %46, i8** %3, align 8
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %77, %45
  %48 = load i8**, i8*** @locale_names, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %48, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %80

54:                                               ; preds = %47
  %55 = load i8**, i8*** @locale_names, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %55, i64 %57
  %59 = load i8*, i8** %58, align 8
  %60 = call i8* @bltinlookup(i8* %59, i32 0)
  store i8* %60, i8** %2, align 8
  %61 = load i8*, i8** %2, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %54
  %64 = load i8*, i8** %3, align 8
  store i8* %64, i8** %2, align 8
  br label %65

65:                                               ; preds = %63, %54
  %66 = load i8*, i8** %2, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %76

68:                                               ; preds = %65
  %69 = load i32*, i32** @locale_categories, align 8
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i8*, i8** %2, align 8
  %75 = call i32 @setlocale(i32 %73, i8* %74)
  br label %76

76:                                               ; preds = %68, %65
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %4, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %4, align 4
  br label %47

80:                                               ; preds = %47
  %81 = load i32, i32* @INTON, align 4
  %82 = call i32 (...) @updatecharset()
  br label %83

83:                                               ; preds = %80, %39, %33
  ret void
}

declare dso_local i64 @localevar(i32) #1

declare dso_local i8* @bltinlookup(i8*, i32) #1

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i32 @updatecharset(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
