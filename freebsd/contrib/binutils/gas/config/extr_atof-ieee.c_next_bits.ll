; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_atof-ieee.c_next_bits.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_atof-ieee.c_next_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@littlenums_left = common dso_local global i64 0, align 8
@bits_left_in_littlenum = common dso_local global i32 0, align 4
@mask = common dso_local global i32* null, align 8
@littlenum_pointer = common dso_local global i32* null, align 8
@LITTLENUM_NUMBER_OF_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @next_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @next_bits(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i64, i64* @littlenums_left, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %65

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @bits_left_in_littlenum, align 4
  %11 = icmp sge i32 %9, %10
  br i1 %11, label %12, label %49

12:                                               ; preds = %8
  %13 = load i32*, i32** @mask, align 8
  %14 = load i32, i32* @bits_left_in_littlenum, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** @littlenum_pointer, align 8
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %17, %19
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* @bits_left_in_littlenum, align 4
  %22 = load i32, i32* %3, align 4
  %23 = sub nsw i32 %22, %21
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* %4, align 4
  %26 = shl i32 %25, %24
  store i32 %26, i32* %4, align 4
  %27 = load i64, i64* @littlenums_left, align 8
  %28 = add nsw i64 %27, -1
  store i64 %28, i64* @littlenums_left, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %12
  %31 = load i32, i32* @LITTLENUM_NUMBER_OF_BITS, align 4
  %32 = load i32, i32* %3, align 4
  %33 = sub nsw i32 %31, %32
  store i32 %33, i32* @bits_left_in_littlenum, align 4
  %34 = load i32*, i32** @littlenum_pointer, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 -1
  store i32* %35, i32** @littlenum_pointer, align 8
  %36 = load i32*, i32** @littlenum_pointer, align 8
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @bits_left_in_littlenum, align 4
  %39 = ashr i32 %37, %38
  %40 = load i32*, i32** @mask, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %39, %44
  %46 = load i32, i32* %4, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %30, %12
  br label %63

49:                                               ; preds = %8
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @bits_left_in_littlenum, align 4
  %52 = sub nsw i32 %51, %50
  store i32 %52, i32* @bits_left_in_littlenum, align 4
  %53 = load i32*, i32** @mask, align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** @littlenum_pointer, align 8
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @bits_left_in_littlenum, align 4
  %61 = ashr i32 %59, %60
  %62 = and i32 %57, %61
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %49, %48
  %64 = load i32, i32* %4, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %63, %7
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
