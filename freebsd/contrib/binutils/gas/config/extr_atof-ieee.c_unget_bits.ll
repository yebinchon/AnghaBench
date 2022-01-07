; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_atof-ieee.c_unget_bits.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_atof-ieee.c_unget_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@littlenums_left = common dso_local global i32 0, align 4
@littlenum_pointer = common dso_local global i32 0, align 4
@bits_left_in_littlenum = common dso_local global i32 0, align 4
@LITTLENUM_NUMBER_OF_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @unget_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unget_bits(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @littlenums_left, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = load i32, i32* @littlenum_pointer, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* @littlenum_pointer, align 4
  %8 = load i32, i32* @littlenums_left, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* @littlenums_left, align 4
  %10 = load i32, i32* %2, align 4
  store i32 %10, i32* @bits_left_in_littlenum, align 4
  br label %32

11:                                               ; preds = %1
  %12 = load i32, i32* @bits_left_in_littlenum, align 4
  %13 = load i32, i32* %2, align 4
  %14 = add nsw i32 %12, %13
  %15 = load i32, i32* @LITTLENUM_NUMBER_OF_BITS, align 4
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %11
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @LITTLENUM_NUMBER_OF_BITS, align 4
  %20 = load i32, i32* @bits_left_in_littlenum, align 4
  %21 = sub nsw i32 %19, %20
  %22 = sub nsw i32 %18, %21
  store i32 %22, i32* @bits_left_in_littlenum, align 4
  %23 = load i32, i32* @littlenum_pointer, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* @littlenum_pointer, align 4
  %25 = load i32, i32* @littlenums_left, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* @littlenums_left, align 4
  br label %31

27:                                               ; preds = %11
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* @bits_left_in_littlenum, align 4
  %30 = add nsw i32 %29, %28
  store i32 %30, i32* @bits_left_in_littlenum, align 4
  br label %31

31:                                               ; preds = %27, %17
  br label %32

32:                                               ; preds = %31, %5
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
