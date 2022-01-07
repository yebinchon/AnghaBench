; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-pretty-print.c_pp_c_enumeration_constant.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-pretty-print.c_pp_c_enumeration_constant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64)* @pp_c_enumeration_constant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pp_c_enumeration_constant(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 1, i32* %5, align 4
  %8 = load i64, i64* %4, align 8
  %9 = call i64 @TREE_TYPE(i64 %8)
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = call i64 @TYPE_VALUES(i64 %10)
  store i64 %11, i64* %7, align 8
  br label %12

12:                                               ; preds = %26, %2
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @NULL_TREE, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %12
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @TREE_VALUE(i64 %17)
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @tree_int_cst_equal(i32 %18, i64 %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  br label %23

23:                                               ; preds = %16, %12
  %24 = phi i1 [ false, %12 ], [ %22, %16 ]
  br i1 %24, label %25, label %29

25:                                               ; preds = %23
  br label %26

26:                                               ; preds = %25
  %27 = load i64, i64* %7, align 8
  %28 = call i64 @TREE_CHAIN(i64 %27)
  store i64 %28, i64* %7, align 8
  br label %12

29:                                               ; preds = %23
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* @NULL_TREE, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load i32*, i32** %3, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @TREE_PURPOSE(i64 %35)
  %37 = call i32 @pp_id_expression(i32* %34, i32 %36)
  br label %42

38:                                               ; preds = %29
  %39 = load i32*, i32** %3, align 8
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @pp_c_type_cast(i32* %39, i64 %40)
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %38, %33
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @TYPE_VALUES(i64) #1

declare dso_local i32 @tree_int_cst_equal(i32, i64) #1

declare dso_local i32 @TREE_VALUE(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i32 @pp_id_expression(i32*, i32) #1

declare dso_local i32 @TREE_PURPOSE(i64) #1

declare dso_local i32 @pp_c_type_cast(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
