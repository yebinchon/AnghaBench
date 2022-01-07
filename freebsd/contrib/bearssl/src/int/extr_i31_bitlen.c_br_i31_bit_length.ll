; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/int/extr_i31_bitlen.c_br_i31_bit_length.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/int/extr_i31_bitlen.c_br_i31_bit_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @br_i31_bit_length(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %13, %2
  %10 = load i64, i64* %4, align 8
  %11 = add i64 %10, -1
  store i64 %11, i64* %4, align 8
  %12 = icmp ugt i64 %10, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @EQ(i32 %14, i32 0)
  store i32 %15, i32* %8, align 4
  %16 = load i32*, i32** %3, align 8
  %17 = load i64, i64* %4, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @MUX(i32 %20, i32 %21, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i64, i64* %4, align 8
  %26 = trunc i64 %25 to i32
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @MUX(i32 %24, i32 %26, i32 %27)
  store i32 %28, i32* %6, align 4
  br label %9

29:                                               ; preds = %9
  %30 = load i32, i32* %6, align 4
  %31 = shl i32 %30, 5
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @BIT_LENGTH(i32 %32)
  %34 = add nsw i32 %31, %33
  ret i32 %34
}

declare dso_local i32 @EQ(i32, i32) #1

declare dso_local i32 @MUX(i32, i32, i32) #1

declare dso_local i32 @BIT_LENGTH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
