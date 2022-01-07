; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_atof-vax.c_next_bits.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_atof-vax.c_next_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@littlenum_pointer = common dso_local global i32* null, align 8
@littlenum_end = common dso_local global i32* null, align 8
@bits_left_in_littlenum = common dso_local global i32 0, align 4
@mask = common dso_local global i32* null, align 8
@LITTLENUM_NUMBER_OF_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @next_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @next_bits(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32*, i32** @littlenum_pointer, align 8
  %6 = load i32*, i32** @littlenum_end, align 8
  %7 = icmp ult i32* %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %66

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @bits_left_in_littlenum, align 4
  %12 = icmp sge i32 %10, %11
  br i1 %12, label %13, label %50

13:                                               ; preds = %9
  %14 = load i32*, i32** @mask, align 8
  %15 = load i32, i32* @bits_left_in_littlenum, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** @littlenum_pointer, align 8
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %18, %20
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* @bits_left_in_littlenum, align 4
  %23 = load i32, i32* %3, align 4
  %24 = sub nsw i32 %23, %22
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* %4, align 4
  %27 = shl i32 %26, %25
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* @LITTLENUM_NUMBER_OF_BITS, align 4
  %29 = load i32, i32* %3, align 4
  %30 = sub nsw i32 %28, %29
  store i32 %30, i32* @bits_left_in_littlenum, align 4
  %31 = load i32*, i32** @littlenum_pointer, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 -1
  store i32* %32, i32** @littlenum_pointer, align 8
  %33 = load i32*, i32** @littlenum_pointer, align 8
  %34 = load i32*, i32** @littlenum_end, align 8
  %35 = icmp uge i32* %33, %34
  br i1 %35, label %36, label %49

36:                                               ; preds = %13
  %37 = load i32*, i32** @littlenum_pointer, align 8
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @bits_left_in_littlenum, align 4
  %40 = ashr i32 %38, %39
  %41 = load i32*, i32** @mask, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %40, %45
  %47 = load i32, i32* %4, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %36, %13
  br label %64

50:                                               ; preds = %9
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @bits_left_in_littlenum, align 4
  %53 = sub nsw i32 %52, %51
  store i32 %53, i32* @bits_left_in_littlenum, align 4
  %54 = load i32*, i32** @mask, align 8
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** @littlenum_pointer, align 8
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @bits_left_in_littlenum, align 4
  %62 = ashr i32 %60, %61
  %63 = and i32 %58, %62
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %50, %49
  %65 = load i32, i32* %4, align 4
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %64, %8
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
