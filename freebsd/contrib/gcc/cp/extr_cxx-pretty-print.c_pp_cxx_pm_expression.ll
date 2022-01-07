; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cxx-pretty-print.c_pp_cxx_pm_expression.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cxx-pretty-print.c_pp_cxx_pm_expression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @pp_cxx_pm_expression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pp_cxx_pm_expression(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @TREE_CODE(i32 %5)
  switch i32 %6, label %29 [
    i32 128, label %7
    i32 129, label %17
    i32 130, label %17
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @TREE_OPERAND(i32 %8, i32 0)
  %10 = call i32 @TYPE_P(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @pp_cxx_qualified_id(i32* %13, i32 %14)
  br label %33

16:                                               ; preds = %7
  br label %17

17:                                               ; preds = %2, %2, %16
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @TREE_OPERAND(i32 %19, i32 0)
  call void @pp_cxx_pm_expression(i32* %18, i32 %20)
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @pp_cxx_dot(i32* %21)
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @pp_star(i32* %23)
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @TREE_OPERAND(i32 %26, i32 1)
  %28 = call i32 @pp_cxx_cast_expression(i32* %25, i32 %27)
  br label %33

29:                                               ; preds = %2
  %30 = load i32*, i32** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @pp_cxx_cast_expression(i32* %30, i32 %31)
  br label %33

33:                                               ; preds = %29, %17, %12
  ret void
}

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @TYPE_P(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @pp_cxx_qualified_id(i32*, i32) #1

declare dso_local i32 @pp_cxx_dot(i32*) #1

declare dso_local i32 @pp_star(i32*) #1

declare dso_local i32 @pp_cxx_cast_expression(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
