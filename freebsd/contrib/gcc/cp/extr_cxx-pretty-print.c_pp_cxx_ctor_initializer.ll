; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cxx-pretty-print.c_pp_cxx_ctor_initializer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cxx-pretty-print.c_pp_cxx_ctor_initializer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64)* @pp_cxx_ctor_initializer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pp_cxx_ctor_initializer(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = call i64 @TREE_OPERAND(i64 %5, i32 0)
  store i64 %6, i64* %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @pp_cxx_whitespace(i32* %7)
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @pp_colon(i32* %9)
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @pp_cxx_whitespace(i32* %11)
  br label %13

13:                                               ; preds = %32, %2
  %14 = load i64, i64* %4, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %13
  %17 = load i32*, i32** %3, align 8
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @TREE_PURPOSE(i64 %18)
  %20 = call i32 @pp_cxx_primary_expression(i32* %17, i32 %19)
  %21 = load i32*, i32** %3, align 8
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @TREE_VALUE(i64 %22)
  %24 = call i32 @pp_cxx_call_argument_list(i32* %21, i32 %23)
  %25 = load i64, i64* %4, align 8
  %26 = call i64 @TREE_CHAIN(i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %16
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @pp_cxx_separate_with(i32* %29, i8 signext 44)
  br label %31

31:                                               ; preds = %28, %16
  br label %32

32:                                               ; preds = %31
  %33 = load i64, i64* %4, align 8
  %34 = call i64 @TREE_CHAIN(i64 %33)
  store i64 %34, i64* %4, align 8
  br label %13

35:                                               ; preds = %13
  ret void
}

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i32 @pp_cxx_whitespace(i32*) #1

declare dso_local i32 @pp_colon(i32*) #1

declare dso_local i32 @pp_cxx_primary_expression(i32*, i32) #1

declare dso_local i32 @TREE_PURPOSE(i64) #1

declare dso_local i32 @pp_cxx_call_argument_list(i32*, i32) #1

declare dso_local i32 @TREE_VALUE(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i32 @pp_cxx_separate_with(i32*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
