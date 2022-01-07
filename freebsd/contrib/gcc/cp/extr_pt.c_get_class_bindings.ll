; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_get_class_bindings.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_get_class_bindings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UNIFY_ALLOW_NONE = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i64 0, align 8
@tf_none = common dso_local global i32 0, align 4
@error_mark_node = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i64)* @get_class_bindings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_class_bindings(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @TREE_VEC_LENGTH(i64 %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = call i64 @make_tree_vec(i32 %14)
  store i64 %15, i64* %11, align 8
  %16 = load i64, i64* %7, align 8
  %17 = call i64 @TMPL_ARGS_HAVE_MULTIPLE_LEVELS(i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %3
  %20 = load i64, i64* %7, align 8
  %21 = call i64 @copy_node(i64 %20)
  store i64 %21, i64* %10, align 8
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* %10, align 8
  %24 = call i32 @TMPL_ARGS_DEPTH(i64 %23)
  %25 = load i64, i64* %11, align 8
  %26 = call i32 @SET_TMPL_ARGS_LEVEL(i64 %22, i32 %24, i64 %25)
  br label %29

27:                                               ; preds = %3
  %28 = load i64, i64* %11, align 8
  store i64 %28, i64* %10, align 8
  br label %29

29:                                               ; preds = %27, %19
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @INNERMOST_TEMPLATE_ARGS(i64 %32)
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @INNERMOST_TEMPLATE_ARGS(i64 %34)
  %36 = load i32, i32* @UNIFY_ALLOW_NONE, align 4
  %37 = call i64 @unify(i64 %30, i64 %31, i32 %33, i32 %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %29
  %40 = load i64, i64* @NULL_TREE, align 8
  store i64 %40, i64* %4, align 8
  br label %77

41:                                               ; preds = %29
  store i32 0, i32* %8, align 4
  br label %42

42:                                               ; preds = %54, %41
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %57

46:                                               ; preds = %42
  %47 = load i64, i64* %11, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @TREE_VEC_ELT(i64 %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %46
  %52 = load i64, i64* @NULL_TREE, align 8
  store i64 %52, i64* %4, align 8
  br label %77

53:                                               ; preds = %46
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %8, align 4
  br label %42

57:                                               ; preds = %42
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* %10, align 8
  %60 = load i32, i32* @tf_none, align 4
  %61 = load i64, i64* @NULL_TREE, align 8
  %62 = call i64 @tsubst(i64 %58, i64 %59, i32 %60, i64 %61)
  store i64 %62, i64* %6, align 8
  %63 = load i64, i64* %6, align 8
  %64 = load i64, i64* @error_mark_node, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %73, label %66

66:                                               ; preds = %57
  %67 = load i64, i64* %6, align 8
  %68 = call i32 @INNERMOST_TEMPLATE_ARGS(i64 %67)
  %69 = load i64, i64* %7, align 8
  %70 = call i32 @INNERMOST_TEMPLATE_ARGS(i64 %69)
  %71 = call i32 @comp_template_args(i32 %68, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %66, %57
  %74 = load i64, i64* @NULL_TREE, align 8
  store i64 %74, i64* %4, align 8
  br label %77

75:                                               ; preds = %66
  %76 = load i64, i64* %10, align 8
  store i64 %76, i64* %4, align 8
  br label %77

77:                                               ; preds = %75, %73, %51, %39
  %78 = load i64, i64* %4, align 8
  ret i64 %78
}

declare dso_local i32 @TREE_VEC_LENGTH(i64) #1

declare dso_local i64 @make_tree_vec(i32) #1

declare dso_local i64 @TMPL_ARGS_HAVE_MULTIPLE_LEVELS(i64) #1

declare dso_local i64 @copy_node(i64) #1

declare dso_local i32 @SET_TMPL_ARGS_LEVEL(i64, i32, i64) #1

declare dso_local i32 @TMPL_ARGS_DEPTH(i64) #1

declare dso_local i64 @unify(i64, i64, i32, i32, i32) #1

declare dso_local i32 @INNERMOST_TEMPLATE_ARGS(i64) #1

declare dso_local i32 @TREE_VEC_ELT(i64, i32) #1

declare dso_local i64 @tsubst(i64, i64, i32, i64) #1

declare dso_local i32 @comp_template_args(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
