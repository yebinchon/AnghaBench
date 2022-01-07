; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_maybe_register_incomplete_var.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_maybe_register_incomplete_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VAR_DECL = common dso_local global i64 0, align 8
@processing_template_decl = common dso_local global i32 0, align 4
@error_mark_node = common dso_local global i64 0, align 8
@ARRAY_TYPE = common dso_local global i64 0, align 8
@incomplete_vars = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @maybe_register_incomplete_var(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call i64 @TREE_CODE(i64 %4)
  %6 = load i64, i64* @VAR_DECL, align 8
  %7 = icmp eq i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = call i32 @gcc_assert(i32 %8)
  %10 = load i32, i32* @processing_template_decl, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %56, label %12

12:                                               ; preds = %1
  %13 = load i64, i64* %2, align 8
  %14 = call i64 @TREE_TYPE(i64 %13)
  %15 = load i64, i64* @error_mark_node, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %56

17:                                               ; preds = %12
  %18 = load i64, i64* %2, align 8
  %19 = call i64 @DECL_EXTERNAL(i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %56

21:                                               ; preds = %17
  %22 = load i64, i64* %2, align 8
  %23 = call i64 @TREE_TYPE(i64 %22)
  store i64 %23, i64* %3, align 8
  br label %24

24:                                               ; preds = %29, %21
  %25 = load i64, i64* %3, align 8
  %26 = call i64 @TREE_CODE(i64 %25)
  %27 = load i64, i64* @ARRAY_TYPE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i64, i64* %3, align 8
  %31 = call i64 @TREE_TYPE(i64 %30)
  store i64 %31, i64* %3, align 8
  br label %24

32:                                               ; preds = %24
  %33 = load i64, i64* %3, align 8
  %34 = call i64 @TYPE_MAIN_VARIANT(i64 %33)
  store i64 %34, i64* %3, align 8
  %35 = load i64, i64* %3, align 8
  %36 = call i32 @COMPLETE_TYPE_P(i64 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %32
  %39 = load i64, i64* %3, align 8
  %40 = call i64 @CLASS_TYPE_P(i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %38, %32
  %43 = load i64, i64* %3, align 8
  %44 = call i64 @TYPE_LANG_SPECIFIC(i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %42
  %47 = load i64, i64* %3, align 8
  %48 = call i64 @TYPE_BEING_DEFINED(i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %46, %38
  %51 = load i64, i64* %3, align 8
  %52 = load i64, i64* %2, align 8
  %53 = load i32, i32* @incomplete_vars, align 4
  %54 = call i32 @tree_cons(i64 %51, i64 %52, i32 %53)
  store i32 %54, i32* @incomplete_vars, align 4
  br label %55

55:                                               ; preds = %50, %46, %42
  br label %56

56:                                               ; preds = %55, %17, %12, %1
  ret void
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @DECL_EXTERNAL(i64) #1

declare dso_local i64 @TYPE_MAIN_VARIANT(i64) #1

declare dso_local i32 @COMPLETE_TYPE_P(i64) #1

declare dso_local i64 @CLASS_TYPE_P(i64) #1

declare dso_local i64 @TYPE_LANG_SPECIFIC(i64) #1

declare dso_local i64 @TYPE_BEING_DEFINED(i64) #1

declare dso_local i32 @tree_cons(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
