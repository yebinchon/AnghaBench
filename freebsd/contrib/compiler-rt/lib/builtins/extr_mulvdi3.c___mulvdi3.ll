; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/compiler-rt/lib/builtins/extr_mulvdi3.c___mulvdi3.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/compiler-rt/lib/builtins/extr_mulvdi3.c___mulvdi3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CHAR_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__mulvdi3(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %13 = load i32, i32* @CHAR_BIT, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 4, %14
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = sub nsw i32 %17, 1
  %19 = shl i32 1, %18
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = xor i32 %20, -1
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %5, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %35

31:                                               ; preds = %28, %25
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %5, align 4
  %34 = mul nsw i32 %32, %33
  store i32 %34, i32* %3, align 4
  br label %108

35:                                               ; preds = %28
  %36 = call i32 (...) @compilerrt_abort()
  br label %37

37:                                               ; preds = %35, %2
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %37
  %42 = load i32, i32* %4, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %4, align 4
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %51

47:                                               ; preds = %44, %41
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %5, align 4
  %50 = mul nsw i32 %48, %49
  store i32 %50, i32* %3, align 4
  br label %108

51:                                               ; preds = %44
  %52 = call i32 (...) @compilerrt_abort()
  br label %53

53:                                               ; preds = %51, %37
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* %6, align 4
  %56 = sub nsw i32 %55, 1
  %57 = ashr i32 %54, %56
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* %9, align 4
  %60 = xor i32 %58, %59
  %61 = load i32, i32* %9, align 4
  %62 = sub nsw i32 %60, %61
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* %6, align 4
  %65 = sub nsw i32 %64, 1
  %66 = ashr i32 %63, %65
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %11, align 4
  %69 = xor i32 %67, %68
  %70 = load i32, i32* %11, align 4
  %71 = sub nsw i32 %69, %70
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp slt i32 %72, 2
  br i1 %73, label %77, label %74

74:                                               ; preds = %53
  %75 = load i32, i32* %12, align 4
  %76 = icmp slt i32 %75, 2
  br i1 %76, label %77, label %81

77:                                               ; preds = %74, %53
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* %5, align 4
  %80 = mul nsw i32 %78, %79
  store i32 %80, i32* %3, align 4
  br label %108

81:                                               ; preds = %74
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %94

85:                                               ; preds = %81
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %12, align 4
  %89 = sdiv i32 %87, %88
  %90 = icmp sgt i32 %86, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = call i32 (...) @compilerrt_abort()
  br label %93

93:                                               ; preds = %91, %85
  br label %104

94:                                               ; preds = %81
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* %12, align 4
  %98 = sub nsw i32 0, %97
  %99 = sdiv i32 %96, %98
  %100 = icmp sgt i32 %95, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %94
  %102 = call i32 (...) @compilerrt_abort()
  br label %103

103:                                              ; preds = %101, %94
  br label %104

104:                                              ; preds = %103, %93
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* %5, align 4
  %107 = mul nsw i32 %105, %106
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %104, %77, %47, %31
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @compilerrt_abort(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
