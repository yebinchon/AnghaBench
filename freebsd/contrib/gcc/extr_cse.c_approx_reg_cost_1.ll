; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cse.c_approx_reg_cost_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cse.c_approx_reg_cost_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FIRST_PSEUDO_REGISTER = common dso_local global i32 0, align 4
@SMALL_REGISTER_CLASSES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i8*)* @approx_reg_cost_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @approx_reg_cost_1(i64* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i64*, i64** %4, align 8
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %7, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %43

15:                                               ; preds = %2
  %16 = load i64, i64* %6, align 8
  %17 = call i64 @REG_P(i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %43

19:                                               ; preds = %15
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @REGNO(i64 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @CHEAP_REGNO(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %42, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = load i64, i64* @SMALL_REGISTER_CLASSES, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 1, i32* %3, align 4
  br label %44

33:                                               ; preds = %29
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 2
  store i32 %36, i32* %34, align 4
  br label %41

37:                                               ; preds = %25
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %37, %33
  br label %42

42:                                               ; preds = %41, %19
  br label %43

43:                                               ; preds = %42, %15, %2
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %32
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i64 @REG_P(i64) #1

declare dso_local i32 @REGNO(i64) #1

declare dso_local i32 @CHEAP_REGNO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
