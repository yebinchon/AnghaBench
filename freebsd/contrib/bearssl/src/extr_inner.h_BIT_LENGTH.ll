; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/extr_inner.h_BIT_LENGTH.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/extr_inner.h_BIT_LENGTH.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @BIT_LENGTH to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @BIT_LENGTH(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @NEQ(i32 %5, i32 0)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @GT(i32 %7, i32 65535)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* %2, align 4
  %11 = ashr i32 %10, 16
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @MUX(i32 %9, i32 %11, i32 %12)
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* %4, align 4
  %15 = shl i32 %14, 4
  %16 = load i32, i32* %3, align 4
  %17 = add nsw i32 %16, %15
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @GT(i32 %18, i32 255)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %2, align 4
  %22 = ashr i32 %21, 8
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @MUX(i32 %20, i32 %22, i32 %23)
  store i32 %24, i32* %2, align 4
  %25 = load i32, i32* %4, align 4
  %26 = shl i32 %25, 3
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, %26
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %2, align 4
  %30 = call i32 @GT(i32 %29, i32 15)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %2, align 4
  %33 = ashr i32 %32, 4
  %34 = load i32, i32* %2, align 4
  %35 = call i32 @MUX(i32 %31, i32 %33, i32 %34)
  store i32 %35, i32* %2, align 4
  %36 = load i32, i32* %4, align 4
  %37 = shl i32 %36, 2
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, %37
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* %2, align 4
  %41 = call i32 @GT(i32 %40, i32 3)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* %2, align 4
  %44 = ashr i32 %43, 2
  %45 = load i32, i32* %2, align 4
  %46 = call i32 @MUX(i32 %42, i32 %44, i32 %45)
  store i32 %46, i32* %2, align 4
  %47 = load i32, i32* %4, align 4
  %48 = shl i32 %47, 1
  %49 = load i32, i32* %3, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* %2, align 4
  %52 = call i32 @GT(i32 %51, i32 1)
  %53 = load i32, i32* %3, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* %3, align 4
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @NEQ(i32, i32) #1

declare dso_local i32 @GT(i32, i32) #1

declare dso_local i32 @MUX(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
