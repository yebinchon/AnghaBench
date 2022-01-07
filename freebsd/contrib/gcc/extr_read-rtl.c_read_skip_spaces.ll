; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_read-rtl.c_read_skip_spaces.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_read-rtl.c_read_skip_spaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@read_rtx_lineno = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_skip_spaces(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  br label %5

5:                                                ; preds = %1, %68
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 @getc(i32* %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  switch i32 %8, label %66 [
    i32 10, label %9
    i32 32, label %12
    i32 9, label %12
    i32 12, label %12
    i32 13, label %12
    i32 59, label %13
    i32 47, label %29
  ]

9:                                                ; preds = %5
  %10 = load i32, i32* @read_rtx_lineno, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* @read_rtx_lineno, align 4
  br label %68

12:                                               ; preds = %5, %5, %5, %5
  br label %68

13:                                               ; preds = %5
  br label %14

14:                                               ; preds = %24, %13
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @getc(i32* %15)
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %14
  %18 = load i32, i32* %3, align 4
  %19 = icmp ne i32 %18, 10
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @EOF, align 4
  %23 = icmp ne i32 %21, %22
  br label %24

24:                                               ; preds = %20, %17
  %25 = phi i1 [ false, %17 ], [ %23, %20 ]
  br i1 %25, label %14, label %26

26:                                               ; preds = %24
  %27 = load i32, i32* @read_rtx_lineno, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* @read_rtx_lineno, align 4
  br label %68

29:                                               ; preds = %5
  %30 = load i32*, i32** %2, align 8
  %31 = call i32 @getc(i32* %30)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = icmp ne i32 %32, 42
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32*, i32** %2, align 8
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @fatal_expected_char(i32* %35, i8 signext 42, i32 %36)
  br label %38

38:                                               ; preds = %34, %29
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %63, %38
  %40 = load i32*, i32** %2, align 8
  %41 = call i32 @getc(i32* %40)
  store i32 %41, i32* %3, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @EOF, align 4
  %46 = icmp ne i32 %44, %45
  br label %47

47:                                               ; preds = %43, %39
  %48 = phi i1 [ false, %39 ], [ %46, %43 ]
  br i1 %48, label %49, label %65

49:                                               ; preds = %47
  %50 = load i32, i32* %3, align 4
  %51 = icmp eq i32 %50, 10
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* @read_rtx_lineno, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* @read_rtx_lineno, align 4
  br label %63

55:                                               ; preds = %49
  %56 = load i32, i32* %4, align 4
  %57 = icmp eq i32 %56, 42
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i32, i32* %3, align 4
  %60 = icmp eq i32 %59, 47
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  br label %65

62:                                               ; preds = %58, %55
  br label %63

63:                                               ; preds = %62, %52
  %64 = load i32, i32* %3, align 4
  store i32 %64, i32* %4, align 4
  br label %39

65:                                               ; preds = %61, %47
  br label %68

66:                                               ; preds = %5
  %67 = load i32, i32* %3, align 4
  ret i32 %67

68:                                               ; preds = %65, %26, %12, %9
  br label %5
}

declare dso_local i32 @getc(i32*) #1

declare dso_local i32 @fatal_expected_char(i32*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
