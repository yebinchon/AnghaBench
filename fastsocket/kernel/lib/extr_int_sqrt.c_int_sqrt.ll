; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_int_sqrt.c_int_sqrt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_int_sqrt.c_int_sqrt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BITS_PER_LONG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @int_sqrt(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  store i64 %6, i64* %3, align 8
  store i64 0, i64* %4, align 8
  %7 = load i32, i32* @BITS_PER_LONG, align 4
  %8 = sub nsw i32 %7, 2
  %9 = zext i32 %8 to i64
  %10 = shl i64 1, %9
  store i64 %10, i64* %5, align 8
  br label %11

11:                                               ; preds = %15, %1
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* %3, align 8
  %14 = icmp ugt i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load i64, i64* %5, align 8
  %17 = lshr i64 %16, 2
  store i64 %17, i64* %5, align 8
  br label %11

18:                                               ; preds = %11
  br label %19

19:                                               ; preds = %38, %18
  %20 = load i64, i64* %5, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %43

22:                                               ; preds = %19
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* %5, align 8
  %26 = add i64 %24, %25
  %27 = icmp uge i64 %23, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %22
  %29 = load i64, i64* %3, align 8
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* %5, align 8
  %32 = add i64 %30, %31
  %33 = sub i64 %29, %32
  store i64 %33, i64* %3, align 8
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* %5, align 8
  %36 = mul i64 2, %35
  %37 = add i64 %34, %36
  store i64 %37, i64* %4, align 8
  br label %38

38:                                               ; preds = %28, %22
  %39 = load i64, i64* %4, align 8
  %40 = udiv i64 %39, 2
  store i64 %40, i64* %4, align 8
  %41 = load i64, i64* %5, align 8
  %42 = udiv i64 %41, 4
  store i64 %42, i64* %5, align 8
  br label %19

43:                                               ; preds = %19
  %44 = load i64, i64* %4, align 8
  ret i64 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
