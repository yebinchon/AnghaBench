; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/compiler-rt/lib/builtins/extr_popcountsi2.c___popcountsi2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/compiler-rt/lib/builtins/extr_popcountsi2.c___popcountsi2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__popcountsi2(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = ashr i32 %6, 1
  %8 = and i32 %7, 1431655765
  %9 = sub nsw i32 %5, %8
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = ashr i32 %10, 2
  %12 = and i32 %11, 858993459
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %13, 858993459
  %15 = add nsw i32 %12, %14
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = ashr i32 %17, 4
  %19 = add nsw i32 %16, %18
  %20 = and i32 %19, 252645135
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = ashr i32 %22, 16
  %24 = add nsw i32 %21, %23
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = ashr i32 %26, 8
  %28 = add nsw i32 %25, %27
  %29 = and i32 %28, 63
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
