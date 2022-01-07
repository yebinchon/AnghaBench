; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/int/extr_i31_ninv31.c_br_i31_ninv31.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/int/extr_i31_ninv31.c_br_i31_ninv31.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @br_i31_ninv31(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = sub nsw i32 2, %4
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* %2, align 4
  %8 = mul nsw i32 %6, %7
  %9 = sub nsw i32 2, %8
  %10 = load i32, i32* %3, align 4
  %11 = mul nsw i32 %10, %9
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* %2, align 4
  %14 = mul nsw i32 %12, %13
  %15 = sub nsw i32 2, %14
  %16 = load i32, i32* %3, align 4
  %17 = mul nsw i32 %16, %15
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* %2, align 4
  %20 = mul nsw i32 %18, %19
  %21 = sub nsw i32 2, %20
  %22 = load i32, i32* %3, align 4
  %23 = mul nsw i32 %22, %21
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* %2, align 4
  %26 = mul nsw i32 %24, %25
  %27 = sub nsw i32 2, %26
  %28 = load i32, i32* %3, align 4
  %29 = mul nsw i32 %28, %27
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %2, align 4
  %31 = and i32 %30, 1
  %32 = load i32, i32* %3, align 4
  %33 = sub nsw i32 0, %32
  %34 = call i32 @MUX(i32 %31, i32 %33, i32 0)
  %35 = and i32 %34, 2147483647
  ret i32 %35
}

declare dso_local i32 @MUX(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
