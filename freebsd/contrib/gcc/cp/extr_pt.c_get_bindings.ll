; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_get_bindings.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_get_bindings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i64 0, align 8
@tf_none = common dso_local global i32 0, align 4
@error_mark_node = common dso_local global i64 0, align 8
@DEDUCE_EXACT = common dso_local global i32 0, align 4
@LOOKUP_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i64, i32)* @get_bindings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_bindings(i64 %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @DECL_NTPARMS(i64 %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = call i64 @make_tree_vec(i32 %18)
  store i64 %19, i64* %11, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call i64 @TREE_TYPE(i64 %20)
  store i64 %21, i64* %12, align 8
  %22 = load i64, i64* %8, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %61

24:                                               ; preds = %4
  %25 = load i64, i64* %12, align 8
  %26 = call i64 @uses_template_parms(i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %61

28:                                               ; preds = %24
  %29 = load i64, i64* %7, align 8
  %30 = call i64 @DECL_TEMPLATE_INFO(i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i64, i64* %7, align 8
  %34 = call i64 @DECL_TI_TEMPLATE(i64 %33)
  store i64 %34, i64* %14, align 8
  br label %37

35:                                               ; preds = %28
  %36 = load i64, i64* @NULL_TREE, align 8
  store i64 %36, i64* %5, align 8
  br label %91

37:                                               ; preds = %32
  %38 = load i64, i64* %14, align 8
  %39 = call i32 @DECL_INNERMOST_TEMPLATE_PARMS(i64 %38)
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* @NULL_TREE, align 8
  %42 = load i32, i32* @tf_none, align 4
  %43 = call i64 @coerce_template_parms(i32 %39, i64 %40, i64 %41, i32 %42, i32 0, i32 0)
  store i64 %43, i64* %15, align 8
  %44 = load i64, i64* %15, align 8
  %45 = load i64, i64* @error_mark_node, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %37
  %48 = load i64, i64* @NULL_TREE, align 8
  store i64 %48, i64* %5, align 8
  br label %91

49:                                               ; preds = %37
  %50 = load i64, i64* %12, align 8
  %51 = load i64, i64* %15, align 8
  %52 = load i32, i32* @tf_none, align 4
  %53 = load i64, i64* @NULL_TREE, align 8
  %54 = call i64 @tsubst(i64 %50, i64 %51, i32 %52, i64 %53)
  store i64 %54, i64* %12, align 8
  %55 = load i64, i64* %12, align 8
  %56 = load i64, i64* @error_mark_node, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %49
  %59 = load i64, i64* @NULL_TREE, align 8
  store i64 %59, i64* %5, align 8
  br label %91

60:                                               ; preds = %49
  br label %61

61:                                               ; preds = %60, %24, %4
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* %12, align 8
  %64 = call i32 @TYPE_ARG_TYPES(i64 %63)
  %65 = call i64 @skip_artificial_parms_for(i64 %62, i32 %64)
  store i64 %65, i64* %13, align 8
  %66 = load i64, i64* %6, align 8
  %67 = load i64, i64* %8, align 8
  %68 = load i64, i64* %11, align 8
  %69 = load i64, i64* %13, align 8
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %61
  %73 = load i64, i64* %6, align 8
  %74 = call i64 @DECL_CONV_FN_P(i64 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %72, %61
  %77 = load i64, i64* %12, align 8
  %78 = call i64 @TREE_TYPE(i64 %77)
  br label %81

79:                                               ; preds = %72
  %80 = load i64, i64* @NULL_TREE, align 8
  br label %81

81:                                               ; preds = %79, %76
  %82 = phi i64 [ %78, %76 ], [ %80, %79 ]
  %83 = load i32, i32* @DEDUCE_EXACT, align 4
  %84 = load i32, i32* @LOOKUP_NORMAL, align 4
  %85 = call i64 @fn_type_unification(i64 %66, i64 %67, i64 %68, i64 %69, i64 %82, i32 %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %81
  %88 = load i64, i64* @NULL_TREE, align 8
  store i64 %88, i64* %5, align 8
  br label %91

89:                                               ; preds = %81
  %90 = load i64, i64* %11, align 8
  store i64 %90, i64* %5, align 8
  br label %91

91:                                               ; preds = %89, %87, %58, %47, %35
  %92 = load i64, i64* %5, align 8
  ret i64 %92
}

declare dso_local i32 @DECL_NTPARMS(i64) #1

declare dso_local i64 @make_tree_vec(i32) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @uses_template_parms(i64) #1

declare dso_local i64 @DECL_TEMPLATE_INFO(i64) #1

declare dso_local i64 @DECL_TI_TEMPLATE(i64) #1

declare dso_local i64 @coerce_template_parms(i32, i64, i64, i32, i32, i32) #1

declare dso_local i32 @DECL_INNERMOST_TEMPLATE_PARMS(i64) #1

declare dso_local i64 @tsubst(i64, i64, i32, i64) #1

declare dso_local i64 @skip_artificial_parms_for(i64, i32) #1

declare dso_local i32 @TYPE_ARG_TYPES(i64) #1

declare dso_local i64 @fn_type_unification(i64, i64, i64, i64, i64, i32, i32) #1

declare dso_local i64 @DECL_CONV_FN_P(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
