; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/compiler-rt/lib/builtins/extr_mulodi4.c___mulodi4.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/compiler-rt/lib/builtins/extr_mulodi4.c___mulodi4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CHAR_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__mulodi4(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %16 = load i32, i32* @CHAR_BIT, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 4, %17
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = sub nsw i32 %20, 1
  %22 = shl i32 1, %21
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = xor i32 %23, -1
  store i32 %24, i32* %10, align 4
  %25 = load i32*, i32** %7, align 8
  store i32 0, i32* %25, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %6, align 4
  %28 = mul nsw i32 %26, %27
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %3
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 1
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i32*, i32** %7, align 8
  store i32 1, i32* %39, align 4
  br label %40

40:                                               ; preds = %38, %35, %32
  %41 = load i32, i32* %11, align 4
  store i32 %41, i32* %4, align 4
  br label %107

42:                                               ; preds = %3
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %42
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 1
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i32*, i32** %7, align 8
  store i32 1, i32* %53, align 4
  br label %54

54:                                               ; preds = %52, %49, %46
  %55 = load i32, i32* %11, align 4
  store i32 %55, i32* %4, align 4
  br label %107

56:                                               ; preds = %42
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %8, align 4
  %59 = sub nsw i32 %58, 1
  %60 = ashr i32 %57, %59
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %12, align 4
  %63 = xor i32 %61, %62
  %64 = load i32, i32* %12, align 4
  %65 = sub nsw i32 %63, %64
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %8, align 4
  %68 = sub nsw i32 %67, 1
  %69 = ashr i32 %66, %68
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %14, align 4
  %72 = xor i32 %70, %71
  %73 = load i32, i32* %14, align 4
  %74 = sub nsw i32 %72, %73
  store i32 %74, i32* %15, align 4
  %75 = load i32, i32* %13, align 4
  %76 = icmp slt i32 %75, 2
  br i1 %76, label %80, label %77

77:                                               ; preds = %56
  %78 = load i32, i32* %15, align 4
  %79 = icmp slt i32 %78, 2
  br i1 %79, label %80, label %82

80:                                               ; preds = %77, %56
  %81 = load i32, i32* %11, align 4
  store i32 %81, i32* %4, align 4
  br label %107

82:                                               ; preds = %77
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* %14, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %95

86:                                               ; preds = %82
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %15, align 4
  %90 = sdiv i32 %88, %89
  %91 = icmp sgt i32 %87, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %86
  %93 = load i32*, i32** %7, align 8
  store i32 1, i32* %93, align 4
  br label %94

94:                                               ; preds = %92, %86
  br label %105

95:                                               ; preds = %82
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %15, align 4
  %99 = sub nsw i32 0, %98
  %100 = sdiv i32 %97, %99
  %101 = icmp sgt i32 %96, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %95
  %103 = load i32*, i32** %7, align 8
  store i32 1, i32* %103, align 4
  br label %104

104:                                              ; preds = %102, %95
  br label %105

105:                                              ; preds = %104, %94
  %106 = load i32, i32* %11, align 4
  store i32 %106, i32* %4, align 4
  br label %107

107:                                              ; preds = %105, %80, %54, %40
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
