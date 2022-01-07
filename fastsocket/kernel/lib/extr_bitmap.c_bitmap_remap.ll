; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_bitmap.c_bitmap_remap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_bitmap.c_bitmap_remap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bitmap_remap(i64* %0, i64* %1, i64* %2, i64* %3, i32 %4) #0 {
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i64* %0, i64** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load i64*, i64** %6, align 8
  %15 = load i64*, i64** %7, align 8
  %16 = icmp eq i64* %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  br label %62

18:                                               ; preds = %5
  %19 = load i64*, i64** %6, align 8
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @bitmap_zero(i64* %19, i32 %20)
  %22 = load i64*, i64** %9, align 8
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @bitmap_weight(i64* %22, i32 %23)
  store i32 %24, i32* %12, align 4
  %25 = load i64*, i64** %7, align 8
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @find_first_bit(i64* %25, i32 %26)
  store i32 %27, i32* %11, align 4
  br label %28

28:                                               ; preds = %56, %18
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %62

32:                                               ; preds = %28
  %33 = load i64*, i64** %8, align 8
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @bitmap_pos_to_ord(i64* %33, i32 %34, i32 %35)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* %12, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39, %32
  %43 = load i32, i32* %11, align 4
  %44 = load i64*, i64** %6, align 8
  %45 = call i32 @set_bit(i32 %43, i64* %44)
  br label %55

46:                                               ; preds = %39
  %47 = load i64*, i64** %9, align 8
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %12, align 4
  %50 = srem i32 %48, %49
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @bitmap_ord_to_pos(i64* %47, i32 %50, i32 %51)
  %53 = load i64*, i64** %6, align 8
  %54 = call i32 @set_bit(i32 %52, i64* %53)
  br label %55

55:                                               ; preds = %46, %42
  br label %56

56:                                               ; preds = %55
  %57 = load i64*, i64** %7, align 8
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %11, align 4
  %60 = add nsw i32 %59, 1
  %61 = call i32 @find_next_bit(i64* %57, i32 %58, i32 %60)
  store i32 %61, i32* %11, align 4
  br label %28

62:                                               ; preds = %17, %28
  ret void
}

declare dso_local i32 @bitmap_zero(i64*, i32) #1

declare dso_local i32 @bitmap_weight(i64*, i32) #1

declare dso_local i32 @find_first_bit(i64*, i32) #1

declare dso_local i32 @bitmap_pos_to_ord(i64*, i32, i32) #1

declare dso_local i32 @set_bit(i32, i64*) #1

declare dso_local i32 @bitmap_ord_to_pos(i64*, i32, i32) #1

declare dso_local i32 @find_next_bit(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
