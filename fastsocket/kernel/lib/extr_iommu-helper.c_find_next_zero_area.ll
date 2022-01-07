; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_iommu-helper.c_find_next_zero_area.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_iommu-helper.c_find_next_zero_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, i64, i64, i32, i64)* @find_next_zero_area to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @find_next_zero_area(i64* %0, i64 %1, i64 %2, i32 %3, i64 %4) #0 {
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

15:                                               ; preds = %45, %5
  %16 = load i64*, i64** %7, align 8
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* %9, align 8
  %19 = call i64 @find_next_zero_bit(i64* %16, i64 %17, i64 %18)
  store i64 %19, i64* %12, align 8
  %20 = load i64, i64* %12, align 8
  %21 = load i64, i64* %11, align 8
  %22 = add i64 %20, %21
  %23 = load i64, i64* %11, align 8
  %24 = xor i64 %23, -1
  %25 = and i64 %22, %24
  store i64 %25, i64* %12, align 8
  %26 = load i64, i64* %12, align 8
  %27 = load i32, i32* %10, align 4
  %28 = zext i32 %27 to i64
  %29 = add i64 %26, %28
  store i64 %29, i64* %13, align 8
  %30 = load i64, i64* %13, align 8
  %31 = load i64, i64* %8, align 8
  %32 = icmp uge i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %15
  store i64 -1, i64* %6, align 8
  br label %54

34:                                               ; preds = %15
  %35 = load i64, i64* %12, align 8
  store i64 %35, i64* %14, align 8
  br label %36

36:                                               ; preds = %49, %34
  %37 = load i64, i64* %14, align 8
  %38 = load i64, i64* %13, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %36
  %41 = load i64, i64* %14, align 8
  %42 = load i64*, i64** %7, align 8
  %43 = call i64 @test_bit(i64 %41, i64* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i64, i64* %14, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %9, align 8
  br label %15

48:                                               ; preds = %40
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* %14, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %14, align 8
  br label %36

52:                                               ; preds = %36
  %53 = load i64, i64* %12, align 8
  store i64 %53, i64* %6, align 8
  br label %54

54:                                               ; preds = %52, %33
  %55 = load i64, i64* %6, align 8
  ret i64 %55
}

declare dso_local i64 @find_next_zero_bit(i64*, i64, i64) #1

declare dso_local i64 @test_bit(i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
