; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_rtl8180_len2duration.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_rtl8180_len2duration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl8180_len2duration(i32 %0, i16 signext %1, i16* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i16*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i16 %1, i16* %5, align 2
  store i16* %2, i16** %6, align 8
  %9 = load i16*, i16** %6, align 8
  store i16 0, i16* %9, align 2
  %10 = load i16, i16* %5, align 2
  %11 = sext i16 %10 to i32
  switch i32 %11, label %60 [
    i32 0, label %12
    i32 1, label %28
    i32 2, label %44
    i32 3, label %61
  ]

12:                                               ; preds = %3
  %13 = load i16*, i16** %6, align 8
  store i16 0, i16* %13, align 2
  %14 = load i32, i32* %4, align 4
  %15 = add nsw i32 %14, 4
  %16 = shl i32 %15, 4
  %17 = sdiv i32 %16, 2
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %4, align 4
  %19 = add nsw i32 %18, 4
  %20 = shl i32 %19, 4
  %21 = srem i32 %20, 2
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %12
  br label %82

25:                                               ; preds = %12
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %7, align 4
  br label %82

28:                                               ; preds = %3
  %29 = load i16*, i16** %6, align 8
  store i16 0, i16* %29, align 2
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 4
  %32 = shl i32 %31, 4
  %33 = sdiv i32 %32, 4
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 4
  %36 = shl i32 %35, 4
  %37 = srem i32 %36, 4
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %28
  br label %82

41:                                               ; preds = %28
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %82

44:                                               ; preds = %3
  %45 = load i16*, i16** %6, align 8
  store i16 0, i16* %45, align 2
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, 4
  %48 = shl i32 %47, 4
  %49 = sdiv i32 %48, 11
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 4
  %52 = shl i32 %51, 4
  %53 = srem i32 %52, 11
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %44
  br label %82

57:                                               ; preds = %44
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %82

60:                                               ; preds = %3
  br label %61

61:                                               ; preds = %3, %60
  %62 = load i16*, i16** %6, align 8
  store i16 0, i16* %62, align 2
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, 4
  %65 = shl i32 %64, 4
  %66 = sdiv i32 %65, 22
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %4, align 4
  %68 = add nsw i32 %67, 4
  %69 = shl i32 %68, 4
  %70 = srem i32 %69, 22
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %61
  br label %82

74:                                               ; preds = %61
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp sgt i32 %77, 6
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %82

80:                                               ; preds = %74
  %81 = load i16*, i16** %6, align 8
  store i16 1, i16* %81, align 2
  br label %82

82:                                               ; preds = %80, %79, %73, %57, %56, %41, %40, %25, %24
  %83 = load i32, i32* %7, align 4
  ret i32 %83
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
