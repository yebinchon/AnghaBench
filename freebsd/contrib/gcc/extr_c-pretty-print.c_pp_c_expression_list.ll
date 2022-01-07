; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-pretty-print.c_pp_c_expression_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-pretty-print.c_pp_c_expression_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pp_c_expression_list(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  br label %5

5:                                                ; preds = %21, %2
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @NULL_TREE, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %24

9:                                                ; preds = %5
  %10 = load i32*, i32** %3, align 8
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @TREE_VALUE(i64 %11)
  %13 = call i32 @pp_expression(i32* %10, i32 %12)
  %14 = load i64, i64* %4, align 8
  %15 = call i64 @TREE_CHAIN(i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %9
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @pp_separate_with(i32* %18, i8 signext 44)
  br label %20

20:                                               ; preds = %17, %9
  br label %21

21:                                               ; preds = %20
  %22 = load i64, i64* %4, align 8
  %23 = call i64 @TREE_CHAIN(i64 %22)
  store i64 %23, i64* %4, align 8
  br label %5

24:                                               ; preds = %5
  ret void
}

declare dso_local i32 @pp_expression(i32*, i32) #1

declare dso_local i32 @TREE_VALUE(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i32 @pp_separate_with(i32*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
