; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_editbox.c_scroll_to.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_editbox.c_scroll_to.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32*, i32)* @scroll_to to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scroll_to(i32 %0, i32 %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* @FALSE, align 4
  store i32 %12, i32* %11, align 4
  %13 = load i32, i32* %10, align 4
  %14 = load i32*, i32** %8, align 8
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %42

17:                                               ; preds = %5
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %17
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load i32*, i32** %9, align 8
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = call i32 (...) @beep()
  br label %34

30:                                               ; preds = %24, %20
  %31 = load i32*, i32** %9, align 8
  store i32 0, i32* %31, align 4
  %32 = load i32*, i32** %8, align 8
  store i32 0, i32* %32, align 4
  %33 = load i32, i32* @TRUE, align 4
  store i32 %33, i32* %11, align 4
  br label %34

34:                                               ; preds = %30, %28
  br label %41

35:                                               ; preds = %17
  %36 = load i32, i32* %10, align 4
  %37 = load i32*, i32** %9, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32*, i32** %8, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* @TRUE, align 4
  store i32 %40, i32* %11, align 4
  br label %41

41:                                               ; preds = %35, %34
  br label %82

42:                                               ; preds = %5
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp sge i32 %43, %44
  br i1 %45, label %46, label %63

46:                                               ; preds = %42
  %47 = load i32*, i32** %9, align 8
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %7, align 4
  %50 = sub nsw i32 %49, 1
  %51 = icmp slt i32 %48, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %46
  %53 = load i32, i32* %7, align 4
  %54 = sub nsw i32 %53, 1
  %55 = load i32*, i32** %9, align 8
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* %7, align 4
  %57 = sub nsw i32 %56, 1
  %58 = load i32*, i32** %8, align 8
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* @TRUE, align 4
  store i32 %59, i32* %11, align 4
  br label %62

60:                                               ; preds = %46
  %61 = call i32 (...) @beep()
  br label %62

62:                                               ; preds = %60, %52
  br label %81

63:                                               ; preds = %42
  %64 = load i32, i32* %10, align 4
  %65 = load i32*, i32** %8, align 8
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %66, %67
  %69 = icmp sge i32 %64, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %63
  %71 = load i32, i32* %10, align 4
  %72 = load i32*, i32** %9, align 8
  store i32 %71, i32* %72, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load i32*, i32** %8, align 8
  store i32 %73, i32* %74, align 4
  %75 = load i32, i32* @TRUE, align 4
  store i32 %75, i32* %11, align 4
  br label %80

76:                                               ; preds = %63
  %77 = load i32, i32* %10, align 4
  %78 = load i32*, i32** %9, align 8
  store i32 %77, i32* %78, align 4
  %79 = load i32, i32* @FALSE, align 4
  store i32 %79, i32* %11, align 4
  br label %80

80:                                               ; preds = %76, %70
  br label %81

81:                                               ; preds = %80, %62
  br label %82

82:                                               ; preds = %81, %41
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %99

86:                                               ; preds = %82
  %87 = load i32*, i32** %8, align 8
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %88, %89
  %91 = load i32, i32* %7, align 4
  %92 = icmp sge i32 %90, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %86
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* %6, align 4
  %96 = sub nsw i32 %94, %95
  %97 = load i32*, i32** %8, align 8
  store i32 %96, i32* %97, align 4
  br label %98

98:                                               ; preds = %93, %86
  br label %101

99:                                               ; preds = %82
  %100 = load i32*, i32** %8, align 8
  store i32 0, i32* %100, align 4
  br label %101

101:                                              ; preds = %99, %98
  %102 = load i32, i32* %11, align 4
  ret i32 %102
}

declare dso_local i32 @beep(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
