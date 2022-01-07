; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-data-ref.c_siv_subscript_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-data-ref.c_siv_subscript_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @siv_subscript_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siv_subscript_p(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i64 @evolution_function_is_constant_p(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @evolution_function_is_univariate_p(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %9, %2
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @evolution_function_is_constant_p(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = load i32, i32* %4, align 4
  %19 = call i64 @evolution_function_is_univariate_p(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %9
  store i32 1, i32* %3, align 4
  br label %47

22:                                               ; preds = %17, %13
  %23 = load i32, i32* %4, align 4
  %24 = call i64 @evolution_function_is_univariate_p(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %22
  %27 = load i32, i32* %5, align 4
  %28 = call i64 @evolution_function_is_univariate_p(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %26
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @TREE_CODE(i32 %31)
  switch i32 %32, label %45 [
    i32 128, label %33
  ]

33:                                               ; preds = %30
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @TREE_CODE(i32 %34)
  switch i32 %35, label %44 [
    i32 128, label %36
  ]

36:                                               ; preds = %33
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @CHREC_VARIABLE(i32 %37)
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @CHREC_VARIABLE(i32 %39)
  %41 = icmp ne i32 %38, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %47

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %33, %43
  store i32 1, i32* %3, align 4
  br label %47

45:                                               ; preds = %30
  store i32 1, i32* %3, align 4
  br label %47

46:                                               ; preds = %26, %22
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %45, %44, %42, %21
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i64 @evolution_function_is_constant_p(i32) #1

declare dso_local i64 @evolution_function_is_univariate_p(i32) #1

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @CHREC_VARIABLE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
