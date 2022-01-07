; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/compiler-rt/lib/builtins/extr_ctzsi2.c___ctzsi2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/compiler-rt/lib/builtins/extr_ctzsi2.c___ctzsi2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__ctzsi2(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 0
  %10 = zext i1 %9 to i32
  %11 = shl i32 %10, 4
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %3, align 4
  %14 = ashr i32 %13, %12
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %3, align 4
  %17 = and i32 %16, 255
  %18 = icmp eq i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = shl i32 %19, 3
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %3, align 4
  %23 = ashr i32 %22, %21
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, %24
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %3, align 4
  %28 = and i32 %27, 15
  %29 = icmp eq i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = shl i32 %30, 2
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %3, align 4
  %34 = ashr i32 %33, %32
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, %35
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %3, align 4
  %39 = and i32 %38, 3
  %40 = icmp eq i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = shl i32 %41, 1
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %3, align 4
  %45 = ashr i32 %44, %43
  store i32 %45, i32* %3, align 4
  %46 = load i32, i32* %3, align 4
  %47 = and i32 %46, 3
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %3, align 4
  %53 = ashr i32 %52, 1
  %54 = sub nsw i32 2, %53
  %55 = load i32, i32* %3, align 4
  %56 = and i32 %55, 1
  %57 = icmp eq i32 %56, 0
  %58 = zext i1 %57 to i32
  %59 = sub nsw i32 0, %58
  %60 = and i32 %54, %59
  %61 = add nsw i32 %51, %60
  ret i32 %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
