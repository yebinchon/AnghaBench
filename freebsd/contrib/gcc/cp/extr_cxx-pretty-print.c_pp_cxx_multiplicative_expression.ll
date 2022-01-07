; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cxx-pretty-print.c_pp_cxx_multiplicative_expression.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cxx-pretty-print.c_pp_cxx_multiplicative_expression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @pp_cxx_multiplicative_expression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pp_cxx_multiplicative_expression(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @TREE_CODE(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %37 [
    i32 130, label %9
    i32 129, label %9
    i32 128, label %9
  ]

9:                                                ; preds = %2, %2, %2
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @TREE_OPERAND(i32 %11, i32 0)
  call void @pp_cxx_multiplicative_expression(i32* %10, i32 %12)
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @pp_space(i32* %13)
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %15, 130
  br i1 %16, label %17, label %20

17:                                               ; preds = %9
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @pp_star(i32* %18)
  br label %30

20:                                               ; preds = %9
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %21, 129
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @pp_slash(i32* %24)
  br label %29

26:                                               ; preds = %20
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @pp_modulo(i32* %27)
  br label %29

29:                                               ; preds = %26, %23
  br label %30

30:                                               ; preds = %29, %17
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @pp_space(i32* %31)
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @TREE_OPERAND(i32 %34, i32 1)
  %36 = call i32 @pp_cxx_pm_expression(i32* %33, i32 %35)
  br label %41

37:                                               ; preds = %2
  %38 = load i32*, i32** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @pp_cxx_pm_expression(i32* %38, i32 %39)
  br label %41

41:                                               ; preds = %37, %30
  ret void
}

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @pp_space(i32*) #1

declare dso_local i32 @pp_star(i32*) #1

declare dso_local i32 @pp_slash(i32*) #1

declare dso_local i32 @pp_modulo(i32*) #1

declare dso_local i32 @pp_cxx_pm_expression(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
