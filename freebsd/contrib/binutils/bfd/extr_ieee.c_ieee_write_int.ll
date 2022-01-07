; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ieee.c_ieee_write_int.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ieee.c_ieee_write_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@ieee_number_repeat_start_enum = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @ieee_write_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee_write_int(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp sle i32 %7, 127
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @ieee_write_byte(i32* %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* %3, align 4
  br label %85

16:                                               ; preds = %9
  br label %83

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, -16777216
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 4, i32* %6, align 4
  br label %35

22:                                               ; preds = %17
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, 16711680
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 3, i32* %6, align 4
  br label %34

27:                                               ; preds = %22
  %28 = load i32, i32* %5, align 4
  %29 = and i32 %28, 65280
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 2, i32* %6, align 4
  br label %33

32:                                               ; preds = %27
  store i32 1, i32* %6, align 4
  br label %33

33:                                               ; preds = %32, %31
  br label %34

34:                                               ; preds = %33, %26
  br label %35

35:                                               ; preds = %34, %21
  %36 = load i32*, i32** %4, align 8
  %37 = load i64, i64* @ieee_number_repeat_start_enum, align 8
  %38 = trunc i64 %37 to i32
  %39 = load i32, i32* %6, align 4
  %40 = add i32 %38, %39
  %41 = call i32 @ieee_write_byte(i32* %36, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %35
  %44 = load i32, i32* @FALSE, align 4
  store i32 %44, i32* %3, align 4
  br label %85

45:                                               ; preds = %35
  %46 = load i32, i32* %6, align 4
  switch i32 %46, label %82 [
    i32 4, label %47
    i32 3, label %56
    i32 2, label %65
    i32 1, label %74
  ]

47:                                               ; preds = %45
  %48 = load i32*, i32** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = ashr i32 %49, 24
  %51 = call i32 @ieee_write_byte(i32* %48, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %47
  %54 = load i32, i32* @FALSE, align 4
  store i32 %54, i32* %3, align 4
  br label %85

55:                                               ; preds = %47
  br label %56

56:                                               ; preds = %45, %55
  %57 = load i32*, i32** %4, align 8
  %58 = load i32, i32* %5, align 4
  %59 = ashr i32 %58, 16
  %60 = call i32 @ieee_write_byte(i32* %57, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %56
  %63 = load i32, i32* @FALSE, align 4
  store i32 %63, i32* %3, align 4
  br label %85

64:                                               ; preds = %56
  br label %65

65:                                               ; preds = %45, %64
  %66 = load i32*, i32** %4, align 8
  %67 = load i32, i32* %5, align 4
  %68 = ashr i32 %67, 8
  %69 = call i32 @ieee_write_byte(i32* %66, i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %65
  %72 = load i32, i32* @FALSE, align 4
  store i32 %72, i32* %3, align 4
  br label %85

73:                                               ; preds = %65
  br label %74

74:                                               ; preds = %45, %73
  %75 = load i32*, i32** %4, align 8
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @ieee_write_byte(i32* %75, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %74
  %80 = load i32, i32* @FALSE, align 4
  store i32 %80, i32* %3, align 4
  br label %85

81:                                               ; preds = %74
  br label %82

82:                                               ; preds = %81, %45
  br label %83

83:                                               ; preds = %82, %16
  %84 = load i32, i32* @TRUE, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %83, %79, %71, %62, %53, %43, %14
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @ieee_write_byte(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
