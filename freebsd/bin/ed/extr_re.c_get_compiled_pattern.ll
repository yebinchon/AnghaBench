; ModuleID = '/home/carl/AnghaBench/freebsd/bin/ed/extr_re.c_get_compiled_pattern.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/ed/extr_re.c_get_compiled_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_compiled_pattern.expr = internal global i32* null, align 8
@get_compiled_pattern.error = internal global [1024 x i8] zeroinitializer, align 16
@ibufp = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [26 x i8] c"invalid pattern delimiter\00", align 1
@errmsg = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"no previous pattern\00", align 1
@patlock = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @get_compiled_pattern() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = load i8*, i8** @ibufp, align 8
  %6 = load i8, i8* %5, align 1
  store i8 %6, i8* %3, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp eq i32 %7, 32
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8** @errmsg, align 8
  store i32* null, i32** %1, align 8
  br label %72

10:                                               ; preds = %0
  %11 = load i8, i8* %3, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 10
  br i1 %13, label %27, label %14

14:                                               ; preds = %10
  %15 = load i8*, i8** @ibufp, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** @ibufp, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 10
  br i1 %19, label %27, label %20

20:                                               ; preds = %14
  %21 = load i8*, i8** @ibufp, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = load i8, i8* %3, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %20, %14, %10
  %28 = load i32*, i32** @get_compiled_pattern.expr, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8** @errmsg, align 8
  br label %31

31:                                               ; preds = %30, %27
  %32 = load i32*, i32** @get_compiled_pattern.expr, align 8
  store i32* %32, i32** %1, align 8
  br label %72

33:                                               ; preds = %20
  %34 = load i8, i8* %3, align 1
  %35 = call i8* @extract_pattern(i8 signext %34)
  store i8* %35, i8** %2, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32* null, i32** %1, align 8
  br label %72

38:                                               ; preds = %33
  br label %39

39:                                               ; preds = %38
  br label %40

40:                                               ; preds = %39
  %41 = load i32*, i32** @get_compiled_pattern.expr, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load i64, i64* @patlock, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = load i32*, i32** @get_compiled_pattern.expr, align 8
  %48 = call i32 @regfree(i32* %47)
  br label %59

49:                                               ; preds = %43, %40
  %50 = call i64 @malloc(i32 4)
  %51 = inttoptr i64 %50 to i32*
  store i32* %51, i32** @get_compiled_pattern.expr, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = load i32, i32* @stderr, align 4
  %55 = load i32, i32* @errno, align 4
  %56 = call i8* @strerror(i32 %55)
  %57 = call i32 @fprintf(i32 %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %56)
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8** @errmsg, align 8
  store i32* null, i32** %1, align 8
  br label %72

58:                                               ; preds = %49
  br label %59

59:                                               ; preds = %58, %46
  store i64 0, i64* @patlock, align 8
  %60 = load i32*, i32** @get_compiled_pattern.expr, align 8
  %61 = load i8*, i8** %2, align 8
  %62 = call i32 @regcomp(i32* %60, i8* %61, i32 0)
  store i32 %62, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load i32, i32* %4, align 4
  %66 = load i32*, i32** @get_compiled_pattern.expr, align 8
  %67 = call i32 @regerror(i32 %65, i32* %66, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @get_compiled_pattern.error, i64 0, i64 0), i32 1024)
  store i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @get_compiled_pattern.error, i64 0, i64 0), i8** @errmsg, align 8
  %68 = load i32*, i32** @get_compiled_pattern.expr, align 8
  %69 = call i32 @free(i32* %68)
  store i32* null, i32** @get_compiled_pattern.expr, align 8
  store i32* null, i32** %1, align 8
  br label %72

70:                                               ; preds = %59
  %71 = load i32*, i32** @get_compiled_pattern.expr, align 8
  store i32* %71, i32** %1, align 8
  br label %72

72:                                               ; preds = %70, %64, %53, %37, %31, %9
  %73 = load i32*, i32** %1, align 8
  ret i32* %73
}

declare dso_local i8* @extract_pattern(i8 signext) #1

declare dso_local i32 @regfree(i32*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @regcomp(i32*, i8*, i32) #1

declare dso_local i32 @regerror(i32, i32*, i8*, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
