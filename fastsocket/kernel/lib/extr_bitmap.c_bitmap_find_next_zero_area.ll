; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_bitmap.c_bitmap_find_next_zero_area.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_bitmap.c_bitmap_find_next_zero_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @bitmap_find_next_zero_area(i64* %0, i64 %1, i64 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i64* %0, i64** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  br label %15

15:                                               ; preds = %40, %5
  %16 = load i64*, i64** %7, align 8
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* %9, align 8
  %19 = call i64 @find_next_zero_bit(i64* %16, i64 %17, i64 %18)
  store i64 %19, i64* %12, align 8
  %20 = load i64, i64* %12, align 8
  %21 = load i64, i64* %11, align 8
  %22 = call i64 @__ALIGN_MASK(i64 %20, i64 %21)
  store i64 %22, i64* %12, align 8
  %23 = load i64, i64* %12, align 8
  %24 = load i32, i32* %10, align 4
  %25 = zext i32 %24 to i64
  %26 = add i64 %23, %25
  store i64 %26, i64* %13, align 8
  %27 = load i64, i64* %13, align 8
  %28 = load i64, i64* %8, align 8
  %29 = icmp ugt i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %15
  %31 = load i64, i64* %13, align 8
  store i64 %31, i64* %6, align 8
  br label %45

32:                                               ; preds = %15
  %33 = load i64*, i64** %7, align 8
  %34 = load i64, i64* %13, align 8
  %35 = load i64, i64* %12, align 8
  %36 = call i64 @find_next_bit(i64* %33, i64 %34, i64 %35)
  store i64 %36, i64* %14, align 8
  %37 = load i64, i64* %14, align 8
  %38 = load i64, i64* %13, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load i64, i64* %14, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %9, align 8
  br label %15

43:                                               ; preds = %32
  %44 = load i64, i64* %12, align 8
  store i64 %44, i64* %6, align 8
  br label %45

45:                                               ; preds = %43, %30
  %46 = load i64, i64* %6, align 8
  ret i64 %46
}

declare dso_local i64 @find_next_zero_bit(i64*, i64, i64) #1

declare dso_local i64 @__ALIGN_MASK(i64, i64) #1

declare dso_local i64 @find_next_bit(i64*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
