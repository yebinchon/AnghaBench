; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/compiler-rt/lib/builtins/arm/extr_..fp_lib.h_wideRightShiftWithSticky.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/compiler-rt/lib/builtins/arm/extr_..fp_lib.h_wideRightShiftWithSticky.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@typeWidth = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @wideRightShiftWithSticky to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wideRightShiftWithSticky(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @typeWidth, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %39

13:                                               ; preds = %3
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @typeWidth, align 4
  %17 = load i32, i32* %6, align 4
  %18 = sub i32 %16, %17
  %19 = shl i32 %15, %18
  store i32 %19, i32* %7, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @typeWidth, align 4
  %23 = load i32, i32* %6, align 4
  %24 = sub i32 %22, %23
  %25 = shl i32 %21, %24
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = lshr i32 %27, %28
  %30 = or i32 %25, %29
  %31 = load i32, i32* %7, align 4
  %32 = or i32 %30, %31
  %33 = load i32*, i32** %5, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %6, align 4
  %37 = lshr i32 %35, %36
  %38 = load i32*, i32** %4, align 8
  store i32 %37, i32* %38, align 4
  br label %75

39:                                               ; preds = %3
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @typeWidth, align 4
  %42 = mul i32 2, %41
  %43 = icmp ult i32 %40, %42
  br i1 %43, label %44, label %65

44:                                               ; preds = %39
  %45 = load i32*, i32** %4, align 8
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @typeWidth, align 4
  %48 = mul i32 2, %47
  %49 = load i32, i32* %6, align 4
  %50 = sub i32 %48, %49
  %51 = shl i32 %46, %50
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %51, %53
  store i32 %54, i32* %8, align 4
  %55 = load i32*, i32** %4, align 8
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @typeWidth, align 4
  %59 = sub i32 %57, %58
  %60 = lshr i32 %56, %59
  %61 = load i32, i32* %8, align 4
  %62 = or i32 %60, %61
  %63 = load i32*, i32** %5, align 8
  store i32 %62, i32* %63, align 4
  %64 = load i32*, i32** %4, align 8
  store i32 0, i32* %64, align 4
  br label %74

65:                                               ; preds = %39
  %66 = load i32*, i32** %4, align 8
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %5, align 8
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %67, %69
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = load i32*, i32** %5, align 8
  store i32 %71, i32* %72, align 4
  %73 = load i32*, i32** %4, align 8
  store i32 0, i32* %73, align 4
  br label %74

74:                                               ; preds = %65, %44
  br label %75

75:                                               ; preds = %74, %13
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
