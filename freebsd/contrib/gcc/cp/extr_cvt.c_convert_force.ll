; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cvt.c_convert_force.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cvt.c_convert_force.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REFERENCE_TYPE = common dso_local global i32 0, align 4
@CONV_C_CAST = common dso_local global i32 0, align 4
@LOOKUP_COMPLAIN = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@POINTER_TYPE = common dso_local global i32 0, align 4
@ADDR_EXPR = common dso_local global i64 0, align 8
@METHOD_TYPE = common dso_local global i64 0, align 8
@LOOKUP_NORMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @convert_force(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @TREE_CODE(i32 %11)
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @REFERENCE_TYPE, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @CONV_C_CAST, align 4
  %21 = load i32, i32* @LOOKUP_COMPLAIN, align 4
  %22 = load i32, i32* @NULL_TREE, align 4
  %23 = call i32 @convert_to_reference(i32 %18, i32 %19, i32 %20, i32 %21, i32 %22)
  %24 = call i32 @fold_if_not_in_template(i32 %23)
  store i32 %24, i32* %4, align 4
  br label %86

25:                                               ; preds = %3
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @POINTER_TYPE, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @convert_to_pointer_force(i32 %30, i32 %31)
  %33 = call i32 @fold_if_not_in_template(i32 %32)
  store i32 %33, i32* %4, align 4
  br label %86

34:                                               ; preds = %25
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @TREE_TYPE(i32 %35)
  %37 = call i64 @TREE_CODE(i32 %36)
  %38 = load i32, i32* @POINTER_TYPE, align 4
  %39 = sext i32 %38 to i64
  %40 = icmp eq i64 %37, %39
  br i1 %40, label %41, label %60

41:                                               ; preds = %34
  %42 = load i32, i32* %8, align 4
  %43 = call i64 @TREE_CODE(i32 %42)
  %44 = load i64, i64* @ADDR_EXPR, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %60

46:                                               ; preds = %41
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @TREE_TYPE(i32 %47)
  %49 = call i64 @TREE_CODE(i32 %48)
  %50 = load i32, i32* @POINTER_TYPE, align 4
  %51 = sext i32 %50 to i64
  %52 = icmp eq i64 %49, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %46
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @TREE_TYPE(i32 %54)
  %56 = call i32 @TREE_TYPE(i32 %55)
  %57 = call i64 @TREE_CODE(i32 %56)
  %58 = load i64, i64* @METHOD_TYPE, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %69, label %60

60:                                               ; preds = %53, %46, %41, %34
  %61 = load i32, i32* %8, align 4
  %62 = call i64 @integer_zerop(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %60
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @TREE_TYPE(i32 %65)
  %67 = call i64 @TYPE_PTRMEMFUNC_P(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %64, %60, %53
  %70 = load i32, i32* %5, align 4
  %71 = call i64 @TYPE_PTRMEMFUNC_P(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @TYPE_PTRMEMFUNC_FN_TYPE(i32 %74)
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @build_ptrmemfunc(i32 %75, i32 %76, i32 1, i32 1)
  store i32 %77, i32* %4, align 4
  br label %86

78:                                               ; preds = %69, %64
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* @CONV_C_CAST, align 4
  %82 = load i32, i32* %7, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @LOOKUP_NORMAL, align 4
  %85 = call i32 @ocp_convert(i32 %79, i32 %80, i32 %83, i32 %84)
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %78, %73, %29, %17
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @fold_if_not_in_template(i32) #1

declare dso_local i32 @convert_to_reference(i32, i32, i32, i32, i32) #1

declare dso_local i32 @convert_to_pointer_force(i32, i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i64 @integer_zerop(i32) #1

declare dso_local i64 @TYPE_PTRMEMFUNC_P(i32) #1

declare dso_local i32 @build_ptrmemfunc(i32, i32, i32, i32) #1

declare dso_local i32 @TYPE_PTRMEMFUNC_FN_TYPE(i32) #1

declare dso_local i32 @ocp_convert(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
