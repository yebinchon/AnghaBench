; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_buttons.c_dlg_button_x_step.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_buttons.c_dlg_button_x_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlg_button_x_step(i8** %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8** %0, i8*** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %17 = load i8**, i8*** %6, align 8
  %18 = call i32 @dlg_button_count(i8** %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32*, i32** %9, align 8
  store i32 0, i32* %19, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %77

22:                                               ; preds = %5
  %23 = load i8**, i8*** %6, align 8
  %24 = load i32, i32* @FALSE, align 4
  %25 = call i32 @dlg_button_sizes(i8** %23, i32 %24, i32* %12, i32* %13)
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* %11, align 4
  %28 = mul nsw i32 %27, 2
  %29 = add nsw i32 %26, %28
  store i32 %29, i32* %15, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %15, align 4
  %32 = sub nsw i32 %30, %31
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* %11, align 4
  %35 = add nsw i32 %34, 3
  %36 = sdiv i32 %33, %35
  %37 = load i32*, i32** %8, align 8
  store i32 %36, i32* %37, align 4
  %38 = icmp sle i32 %36, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %22
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* %11, align 4
  %42 = add nsw i32 %41, 1
  %43 = sdiv i32 %40, %42
  %44 = load i32*, i32** %8, align 8
  store i32 %43, i32* %44, align 4
  %45 = icmp sle i32 %43, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i32*, i32** %8, align 8
  store i32 1, i32* %47, align 4
  br label %48

48:                                               ; preds = %46, %39
  %49 = load i32*, i32** %8, align 8
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %9, align 8
  store i32 %50, i32* %51, align 4
  br label %57

52:                                               ; preds = %22
  %53 = load i32*, i32** %8, align 8
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 %54, 2
  %56 = load i32*, i32** %9, align 8
  store i32 %55, i32* %56, align 4
  br label %57

57:                                               ; preds = %52, %48
  %58 = load i32*, i32** %8, align 8
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %15, align 4
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %60, %61
  %63 = sub nsw i32 %62, 1
  %64 = load i32, i32* %11, align 4
  %65 = sdiv i32 %63, %64
  %66 = add nsw i32 %59, %65
  %67 = load i32*, i32** %10, align 8
  store i32 %66, i32* %67, align 4
  %68 = load i32*, i32** %8, align 8
  %69 = load i32, i32* %68, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %57
  %72 = load i32, i32* %14, align 4
  %73 = icmp sge i32 %72, 0
  br label %74

74:                                               ; preds = %71, %57
  %75 = phi i1 [ false, %57 ], [ %73, %71 ]
  %76 = zext i1 %75 to i32
  store i32 %76, i32* %16, align 4
  br label %78

77:                                               ; preds = %5
  store i32 0, i32* %16, align 4
  br label %78

78:                                               ; preds = %77, %74
  %79 = load i32, i32* %16, align 4
  ret i32 %79
}

declare dso_local i32 @dlg_button_count(i8**) #1

declare dso_local i32 @dlg_button_sizes(i8**, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
