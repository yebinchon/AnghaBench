; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-pretty-print.c_pretty_print_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-pretty-print.c_pretty_print_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"\\b\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\\f\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\\n\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\\r\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\\t\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\\v\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"\\\\\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"\\\22\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"\\'\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"\\1\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"\\2\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"\\3\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"\\4\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"\\5\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"\\6\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"\\7\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @pretty_print_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pretty_print_string(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %75

8:                                                ; preds = %2
  br label %9

9:                                                ; preds = %72, %8
  %10 = load i8*, i8** %4, align 8
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  br i1 %12, label %13, label %75

13:                                               ; preds = %9
  %14 = load i8*, i8** %4, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  switch i32 %17, label %66 [
    i32 8, label %18
    i32 12, label %21
    i32 10, label %24
    i32 13, label %27
    i32 9, label %30
    i32 11, label %33
    i32 92, label %36
    i32 34, label %39
    i32 39, label %42
    i32 1, label %45
    i32 2, label %48
    i32 3, label %51
    i32 4, label %54
    i32 5, label %57
    i32 6, label %60
    i32 7, label %63
  ]

18:                                               ; preds = %13
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @pp_string(i32* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %72

21:                                               ; preds = %13
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @pp_string(i32* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %72

24:                                               ; preds = %13
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @pp_string(i32* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %72

27:                                               ; preds = %13
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @pp_string(i32* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %72

30:                                               ; preds = %13
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @pp_string(i32* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %72

33:                                               ; preds = %13
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @pp_string(i32* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %72

36:                                               ; preds = %13
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @pp_string(i32* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %72

39:                                               ; preds = %13
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @pp_string(i32* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  br label %72

42:                                               ; preds = %13
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @pp_string(i32* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  br label %72

45:                                               ; preds = %13
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @pp_string(i32* %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  br label %72

48:                                               ; preds = %13
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 @pp_string(i32* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  br label %72

51:                                               ; preds = %13
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 @pp_string(i32* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  br label %72

54:                                               ; preds = %13
  %55 = load i32*, i32** %3, align 8
  %56 = call i32 @pp_string(i32* %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  br label %72

57:                                               ; preds = %13
  %58 = load i32*, i32** %3, align 8
  %59 = call i32 @pp_string(i32* %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  br label %72

60:                                               ; preds = %13
  %61 = load i32*, i32** %3, align 8
  %62 = call i32 @pp_string(i32* %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  br label %72

63:                                               ; preds = %13
  %64 = load i32*, i32** %3, align 8
  %65 = call i32 @pp_string(i32* %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0))
  br label %72

66:                                               ; preds = %13
  %67 = load i32*, i32** %3, align 8
  %68 = load i8*, i8** %4, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 0
  %70 = load i8, i8* %69, align 1
  %71 = call i32 @pp_character(i32* %67, i8 signext %70)
  br label %72

72:                                               ; preds = %66, %63, %60, %57, %54, %51, %48, %45, %42, %39, %36, %33, %30, %27, %24, %21, %18
  %73 = load i8*, i8** %4, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %4, align 8
  br label %9

75:                                               ; preds = %7, %9
  ret void
}

declare dso_local i32 @pp_string(i32*, i8*) #1

declare dso_local i32 @pp_character(i32*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
