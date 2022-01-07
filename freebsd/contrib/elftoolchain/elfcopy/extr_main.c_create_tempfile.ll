; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_main.c_create_tempfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_main.c_create_tempfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"TMPDIR\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"ecp.XXXXXXXX\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"/tmp/ecp.XXXXXXXX\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"strdup failed\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"mkstemp %s failed\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"fchmod %s failed\00", align 1
@_TEMPFILE = common dso_local global i8* null, align 8
@_TEMPFILEPATH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @create_tempfile(i8** %0, i32* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i8** %0, i8*** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i8**, i8*** %3, align 8
  %11 = icmp eq i8** %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32*, i32** %4, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %2
  br label %91

16:                                               ; preds = %12
  %17 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %17, i8** %5, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %62

20:                                               ; preds = %16
  %21 = load i8*, i8** %5, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %62

25:                                               ; preds = %20
  %26 = load i8*, i8** %5, align 8
  %27 = call i64 @strlen(i8* %26)
  store i64 %27, i64* %8, align 8
  store i64 12, i64* %9, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* %9, align 8
  %30 = add i64 %28, %29
  %31 = add i64 %30, 2
  %32 = call i8* @malloc(i64 %31)
  store i8* %32, i8** %7, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %25
  %36 = load i32, i32* @EXIT_FAILURE, align 4
  %37 = call i32 (i32, i8*, ...) @err(i32 %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %25
  %39 = load i8*, i8** %7, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @strncpy(i8* %39, i8* %40, i64 %41)
  %43 = load i8*, i8** %7, align 8
  %44 = load i64, i64* %8, align 8
  %45 = sub i64 %44, 1
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  store i8* %46, i8** %6, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %6, align 8
  %49 = load i8, i8* %47, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 47
  br i1 %51, label %52, label %55

52:                                               ; preds = %38
  %53 = load i8*, i8** %6, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %6, align 8
  store i8 47, i8* %53, align 1
  br label %55

55:                                               ; preds = %52, %38
  %56 = load i8*, i8** %6, align 8
  %57 = load i64, i64* %9, align 8
  %58 = call i32 @strncpy(i8* %56, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i64 %57)
  %59 = load i8*, i8** %6, align 8
  %60 = load i64, i64* %9, align 8
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  store i8 0, i8* %61, align 1
  br label %70

62:                                               ; preds = %20, %16
  %63 = call i8* @strdup(i32 ptrtoint ([18 x i8]* @.str.3 to i32))
  store i8* %63, i8** %7, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = icmp eq i8* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i32, i32* @EXIT_FAILURE, align 4
  %68 = call i32 (i32, i8*, ...) @err(i32 %67, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %69

69:                                               ; preds = %66, %62
  br label %70

70:                                               ; preds = %69, %55
  %71 = load i8*, i8** %7, align 8
  %72 = call i32 @mkstemp(i8* %71)
  %73 = load i32*, i32** %4, align 8
  store i32 %72, i32* %73, align 4
  %74 = icmp eq i32 %72, -1
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load i32, i32* @EXIT_FAILURE, align 4
  %77 = load i8*, i8** %7, align 8
  %78 = call i32 (i32, i8*, ...) @err(i32 %76, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* %77)
  br label %79

79:                                               ; preds = %75, %70
  %80 = load i32*, i32** %4, align 8
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @fchmod(i32 %81, i32 420)
  %83 = icmp eq i32 %82, -1
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load i32, i32* @EXIT_FAILURE, align 4
  %86 = load i8*, i8** %7, align 8
  %87 = call i32 (i32, i8*, ...) @err(i32 %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* %86)
  br label %88

88:                                               ; preds = %84, %79
  %89 = load i8*, i8** %7, align 8
  %90 = load i8**, i8*** %3, align 8
  store i8* %89, i8** %90, align 8
  br label %91

91:                                               ; preds = %88, %15
  ret void
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i32 @mkstemp(i8*) #1

declare dso_local i32 @fchmod(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
