; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_comp_ptr_ttypes_const.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_comp_ptr_ttypes_const.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OFFSET_TYPE = common dso_local global i64 0, align 8
@POINTER_TYPE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @comp_ptr_ttypes_const(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  br label %6

6:                                                ; preds = %36, %2
  %7 = load i32, i32* %4, align 4
  %8 = call i64 @TREE_CODE(i32 %7)
  %9 = load i32, i32* %5, align 4
  %10 = call i64 @TREE_CODE(i32 %9)
  %11 = icmp ne i64 %8, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  store i32 0, i32* %3, align 4
  br label %41

13:                                               ; preds = %6
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @TREE_CODE(i32 %14)
  %16 = load i64, i64* @OFFSET_TYPE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @TYPE_OFFSET_BASETYPE(i32 %19)
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @TYPE_OFFSET_BASETYPE(i32 %21)
  %23 = call i64 @same_type_p(i32 %20, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %36

26:                                               ; preds = %18, %13
  %27 = load i32, i32* %4, align 4
  %28 = call i64 @TREE_CODE(i32 %27)
  %29 = load i64, i64* @POINTER_TYPE, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @same_type_ignoring_top_level_qualifiers_p(i32 %32, i32 %33)
  store i32 %34, i32* %3, align 4
  br label %41

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35, %25
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @TREE_TYPE(i32 %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @TREE_TYPE(i32 %39)
  store i32 %40, i32* %5, align 4
  br label %6

41:                                               ; preds = %31, %12
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i64 @same_type_p(i32, i32) #1

declare dso_local i32 @TYPE_OFFSET_BASETYPE(i32) #1

declare dso_local i32 @same_type_ignoring_top_level_qualifiers_p(i32, i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
