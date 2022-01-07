; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_util.c_dlg_check_scrolled.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_util.c_dlg_check_scrolled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlg_check_scrolled(i32 %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* @FALSE, align 4
  %13 = load i32*, i32** %9, align 8
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %97 [
    i32 131, label %15
    i32 130, label %24
    i32 132, label %35
    i32 133, label %46
    i32 128, label %58
    i32 129, label %76
  ]

15:                                               ; preds = %5
  %16 = load i32*, i32** %10, align 8
  %17 = load i32, i32* %16, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load i32*, i32** %10, align 8
  store i32 0, i32* %20, align 4
  %21 = load i32, i32* @TRUE, align 4
  %22 = load i32*, i32** %9, align 8
  store i32 %21, i32* %22, align 4
  br label %23

23:                                               ; preds = %19, %15
  br label %98

24:                                               ; preds = %5
  %25 = load i32*, i32** %10, align 8
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load i32, i32* %7, align 4
  %31 = load i32*, i32** %10, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* @TRUE, align 4
  %33 = load i32*, i32** %9, align 8
  store i32 %32, i32* %33, align 4
  br label %34

34:                                               ; preds = %29, %24
  br label %98

35:                                               ; preds = %5
  %36 = load i32*, i32** %10, align 8
  %37 = load i32, i32* %36, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = load i32*, i32** %10, align 8
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %40, align 4
  %43 = load i32, i32* @TRUE, align 4
  %44 = load i32*, i32** %9, align 8
  store i32 %43, i32* %44, align 4
  br label %45

45:                                               ; preds = %39, %35
  br label %98

46:                                               ; preds = %5
  %47 = load i32*, i32** %10, align 8
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load i32*, i32** %10, align 8
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  %55 = load i32, i32* @TRUE, align 4
  %56 = load i32*, i32** %9, align 8
  store i32 %55, i32* %56, align 4
  br label %57

57:                                               ; preds = %51, %46
  br label %98

58:                                               ; preds = %5
  %59 = load i32*, i32** %10, align 8
  %60 = load i32, i32* %59, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %58
  %63 = load i32, i32* %8, align 4
  %64 = load i32*, i32** %10, align 8
  %65 = load i32, i32* %64, align 4
  %66 = sub nsw i32 %65, %63
  store i32 %66, i32* %64, align 4
  %67 = load i32*, i32** %10, align 8
  %68 = load i32, i32* %67, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %62
  %71 = load i32*, i32** %10, align 8
  store i32 0, i32* %71, align 4
  br label %72

72:                                               ; preds = %70, %62
  %73 = load i32, i32* @TRUE, align 4
  %74 = load i32*, i32** %9, align 8
  store i32 %73, i32* %74, align 4
  br label %75

75:                                               ; preds = %72, %58
  br label %98

76:                                               ; preds = %5
  %77 = load i32*, i32** %10, align 8
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %96

81:                                               ; preds = %76
  %82 = load i32, i32* %8, align 4
  %83 = load i32*, i32** %10, align 8
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, %82
  store i32 %85, i32* %83, align 4
  %86 = load i32*, i32** %10, align 8
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp sgt i32 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %81
  %91 = load i32, i32* %7, align 4
  %92 = load i32*, i32** %10, align 8
  store i32 %91, i32* %92, align 4
  br label %93

93:                                               ; preds = %90, %81
  %94 = load i32, i32* @TRUE, align 4
  %95 = load i32*, i32** %9, align 8
  store i32 %94, i32* %95, align 4
  br label %96

96:                                               ; preds = %93, %76
  br label %98

97:                                               ; preds = %5
  store i32 -1, i32* %11, align 4
  br label %98

98:                                               ; preds = %97, %96, %75, %57, %45, %34, %23
  %99 = load i32, i32* %11, align 4
  ret i32 %99
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
