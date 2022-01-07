; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/hash/extr_ghash_ctmul32.c_rev32.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/hash/extr_ghash_ctmul32.c_rev32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @rev32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rev32(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  br label %3

3:                                                ; preds = %1
  %4 = load i32, i32* %2, align 4
  %5 = and i32 %4, 1431655765
  %6 = shl i32 %5, 1
  %7 = load i32, i32* %2, align 4
  %8 = ashr i32 %7, 1
  %9 = and i32 %8, 1431655765
  %10 = or i32 %6, %9
  store i32 %10, i32* %2, align 4
  br label %11

11:                                               ; preds = %3
  br label %12

12:                                               ; preds = %11
  %13 = load i32, i32* %2, align 4
  %14 = and i32 %13, 858993459
  %15 = shl i32 %14, 2
  %16 = load i32, i32* %2, align 4
  %17 = ashr i32 %16, 2
  %18 = and i32 %17, 858993459
  %19 = or i32 %15, %18
  store i32 %19, i32* %2, align 4
  br label %20

20:                                               ; preds = %12
  br label %21

21:                                               ; preds = %20
  %22 = load i32, i32* %2, align 4
  %23 = and i32 %22, 252645135
  %24 = shl i32 %23, 4
  %25 = load i32, i32* %2, align 4
  %26 = ashr i32 %25, 4
  %27 = and i32 %26, 252645135
  %28 = or i32 %24, %27
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %2, align 4
  %32 = and i32 %31, 16711935
  %33 = shl i32 %32, 8
  %34 = load i32, i32* %2, align 4
  %35 = ashr i32 %34, 8
  %36 = and i32 %35, 16711935
  %37 = or i32 %33, %36
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %30
  %39 = load i32, i32* %2, align 4
  %40 = shl i32 %39, 16
  %41 = load i32, i32* %2, align 4
  %42 = ashr i32 %41, 16
  %43 = or i32 %40, %42
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
