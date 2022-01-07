; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/compiler-rt/lib/builtins/extr_clzsi2.c___clzsi2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/compiler-rt/lib/builtins/extr_clzsi2.c___clzsi2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__clzsi2(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = and i32 %7, -65536
  %9 = icmp eq i32 %8, 0
  %10 = zext i1 %9 to i32
  %11 = shl i32 %10, 4
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = sub nsw i32 16, %12
  %14 = load i32, i32* %3, align 4
  %15 = ashr i32 %14, %13
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %3, align 4
  %18 = and i32 %17, 65280
  %19 = icmp eq i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = shl i32 %20, 3
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = sub nsw i32 8, %22
  %24 = load i32, i32* %3, align 4
  %25 = ashr i32 %24, %23
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, %26
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %3, align 4
  %30 = and i32 %29, 240
  %31 = icmp eq i32 %30, 0
  %32 = zext i1 %31 to i32
  %33 = shl i32 %32, 2
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = sub nsw i32 4, %34
  %36 = load i32, i32* %3, align 4
  %37 = ashr i32 %36, %35
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, %38
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %3, align 4
  %42 = and i32 %41, 12
  %43 = icmp eq i32 %42, 0
  %44 = zext i1 %43 to i32
  %45 = shl i32 %44, 1
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = sub nsw i32 2, %46
  %48 = load i32, i32* %3, align 4
  %49 = ashr i32 %48, %47
  store i32 %49, i32* %3, align 4
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %3, align 4
  %55 = sub nsw i32 2, %54
  %56 = load i32, i32* %3, align 4
  %57 = and i32 %56, 2
  %58 = icmp eq i32 %57, 0
  %59 = zext i1 %58 to i32
  %60 = sub nsw i32 0, %59
  %61 = and i32 %55, %60
  %62 = add nsw i32 %53, %61
  ret i32 %62
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
