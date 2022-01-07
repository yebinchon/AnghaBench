; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_tsubst_aggr_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_tsubst_aggr_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i64 0, align 8
@skip_evaluation = common dso_local global i32 0, align 4
@error_mark_node = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i32, i64, i32)* @tsubst_aggr_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tsubst_aggr_type(i64 %0, i64 %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @NULL_TREE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i64, i64* @NULL_TREE, align 8
  store i64 %20, i64* %6, align 8
  br label %88

21:                                               ; preds = %5
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @TREE_CODE(i64 %22)
  switch i32 %23, label %82 [
    i32 129, label %24
    i32 130, label %36
    i32 128, label %36
  ]

24:                                               ; preds = %21
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @TYPE_PTRMEMFUNC_P(i64 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load i64, i64* %7, align 8
  %30 = call i64 @TYPE_PTRMEMFUNC_FN_TYPE(i64 %29)
  %31 = load i64, i64* %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load i64, i64* %10, align 8
  %34 = call i64 @tsubst(i64 %30, i64 %31, i32 %32, i64 %33)
  store i64 %34, i64* %6, align 8
  br label %88

35:                                               ; preds = %24
  br label %36

36:                                               ; preds = %21, %21, %35
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @TYPE_TEMPLATE_INFO(i64 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %80

40:                                               ; preds = %36
  %41 = load i32, i32* @skip_evaluation, align 4
  store i32 %41, i32* %15, align 4
  store i32 0, i32* @skip_evaluation, align 4
  %42 = load i64, i64* %7, align 8
  %43 = call i64 @TYPE_CONTEXT(i64 %42)
  store i64 %43, i64* %13, align 8
  %44 = load i64, i64* %13, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load i64, i64* %13, align 8
  %48 = load i64, i64* %8, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load i64, i64* %10, align 8
  %51 = call i64 @tsubst_aggr_type(i64 %47, i64 %48, i32 %49, i64 %50, i32 1)
  store i64 %51, i64* %13, align 8
  br label %52

52:                                               ; preds = %46, %40
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @TYPE_TI_ARGS(i64 %53)
  %55 = load i64, i64* %8, align 8
  %56 = load i32, i32* %9, align 4
  %57 = load i64, i64* %10, align 8
  %58 = call i64 @tsubst_template_args(i32 %54, i64 %55, i32 %56, i64 %57)
  store i64 %58, i64* %12, align 8
  %59 = load i64, i64* %12, align 8
  %60 = load i64, i64* @error_mark_node, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %52
  %63 = load i64, i64* @error_mark_node, align 8
  store i64 %63, i64* %14, align 8
  br label %77

64:                                               ; preds = %52
  %65 = load i64, i64* %7, align 8
  %66 = load i64, i64* %12, align 8
  %67 = load i64, i64* %10, align 8
  %68 = load i64, i64* %13, align 8
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i64 @lookup_template_class(i64 %65, i64 %66, i64 %67, i64 %68, i32 %69, i32 %70)
  store i64 %71, i64* %14, align 8
  %72 = load i64, i64* %14, align 8
  %73 = load i64, i64* %7, align 8
  %74 = call i32 @TYPE_QUALS(i64 %73)
  %75 = load i32, i32* %9, align 4
  %76 = call i64 @cp_build_qualified_type_real(i64 %72, i32 %74, i32 %75)
  store i64 %76, i64* %14, align 8
  br label %77

77:                                               ; preds = %64, %62
  %78 = load i32, i32* %15, align 4
  store i32 %78, i32* @skip_evaluation, align 4
  %79 = load i64, i64* %14, align 8
  store i64 %79, i64* %6, align 8
  br label %88

80:                                               ; preds = %36
  %81 = load i64, i64* %7, align 8
  store i64 %81, i64* %6, align 8
  br label %88

82:                                               ; preds = %21
  %83 = load i64, i64* %7, align 8
  %84 = load i64, i64* %8, align 8
  %85 = load i32, i32* %9, align 4
  %86 = load i64, i64* %10, align 8
  %87 = call i64 @tsubst(i64 %83, i64 %84, i32 %85, i64 %86)
  store i64 %87, i64* %6, align 8
  br label %88

88:                                               ; preds = %82, %80, %77, %28, %19
  %89 = load i64, i64* %6, align 8
  ret i64 %89
}

declare dso_local i32 @TREE_CODE(i64) #1

declare dso_local i32 @TYPE_PTRMEMFUNC_P(i64) #1

declare dso_local i64 @tsubst(i64, i64, i32, i64) #1

declare dso_local i64 @TYPE_PTRMEMFUNC_FN_TYPE(i64) #1

declare dso_local i32 @TYPE_TEMPLATE_INFO(i64) #1

declare dso_local i64 @TYPE_CONTEXT(i64) #1

declare dso_local i64 @tsubst_template_args(i32, i64, i32, i64) #1

declare dso_local i32 @TYPE_TI_ARGS(i64) #1

declare dso_local i64 @lookup_template_class(i64, i64, i64, i64, i32, i32) #1

declare dso_local i64 @cp_build_qualified_type_real(i64, i32, i32) #1

declare dso_local i32 @TYPE_QUALS(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
