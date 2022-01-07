; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_scan.c_skip_spaces.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_scan.c_skip_spaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EOF = common dso_local global i32 0, align 4
@source_lineno = common dso_local global i32 0, align 4
@lineno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @skip_spaces(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  br label %6

6:                                                ; preds = %61, %2
  %7 = load i32, i32* %5, align 4
  %8 = icmp eq i32 %7, 32
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %10, 9
  br i1 %11, label %12, label %15

12:                                               ; preds = %9, %6
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @getc(i32* %13)
  store i32 %14, i32* %5, align 4
  br label %61

15:                                               ; preds = %9
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %16, 47
  br i1 %17, label %18, label %60

18:                                               ; preds = %15
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @getc(i32* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 42
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load i32, i32* %5, align 4
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @ungetc(i32 %24, i32* %25)
  store i32 47, i32* %3, align 4
  br label %64

27:                                               ; preds = %18
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @getc(i32* %28)
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %59, %27
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @EOF, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @EOF, align 4
  store i32 %35, i32* %3, align 4
  br label %64

36:                                               ; preds = %30
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 42
  br i1 %38, label %39, label %50

39:                                               ; preds = %36
  %40 = load i32, i32* %5, align 4
  %41 = icmp eq i32 %40, 10
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load i32, i32* @source_lineno, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* @source_lineno, align 4
  %45 = load i32, i32* @lineno, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* @lineno, align 4
  br label %47

47:                                               ; preds = %42, %39
  %48 = load i32*, i32** %4, align 8
  %49 = call i32 @getc(i32* %48)
  store i32 %49, i32* %5, align 4
  br label %58

50:                                               ; preds = %36
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @getc(i32* %51)
  store i32 %52, i32* %5, align 4
  %53 = icmp eq i32 %52, 47
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @getc(i32* %55)
  store i32 %56, i32* %3, align 4
  br label %64

57:                                               ; preds = %50
  br label %58

58:                                               ; preds = %57, %47
  br label %59

59:                                               ; preds = %58
  br label %30

60:                                               ; preds = %15
  br label %62

61:                                               ; preds = %12
  br label %6

62:                                               ; preds = %60
  %63 = load i32, i32* %5, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %62, %54, %34, %23
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @getc(i32*) #1

declare dso_local i32 @ungetc(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
