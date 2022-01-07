; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_check_cv_quals_for_unify.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_check_cv_quals_for_unify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TEMPLATE_TYPE_PARM = common dso_local global i64 0, align 8
@UNIFY_ALLOW_OUTER_MORE_CV_QUAL = common dso_local global i32 0, align 4
@REFERENCE_TYPE = common dso_local global i64 0, align 8
@FUNCTION_TYPE = common dso_local global i64 0, align 8
@METHOD_TYPE = common dso_local global i64 0, align 8
@TYPE_QUAL_CONST = common dso_local global i32 0, align 4
@TYPE_QUAL_VOLATILE = common dso_local global i32 0, align 4
@TYPE_QUAL_RESTRICT = common dso_local global i32 0, align 4
@UNIFY_ALLOW_MORE_CV_QUAL = common dso_local global i32 0, align 4
@UNIFY_ALLOW_LESS_CV_QUAL = common dso_local global i32 0, align 4
@UNIFY_ALLOW_OUTER_LESS_CV_QUAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @check_cv_quals_for_unify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_cv_quals_for_unify(i32 %0, i32 %1, i32 %2) #0 {
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
  %11 = call i32 @cp_type_quals(i32 %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @cp_type_quals(i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i64 @TREE_CODE(i32 %14)
  %16 = load i64, i64* @TEMPLATE_TYPE_PARM, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %62

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @UNIFY_ALLOW_OUTER_MORE_CV_QUAL, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %62, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* %6, align 4
  %25 = call i64 @TREE_CODE(i32 %24)
  %26 = load i64, i64* @REFERENCE_TYPE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %38, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* %6, align 4
  %30 = call i64 @TREE_CODE(i32 %29)
  %31 = load i64, i64* @FUNCTION_TYPE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* %6, align 4
  %35 = call i64 @TREE_CODE(i32 %34)
  %36 = load i64, i64* @METHOD_TYPE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %33, %28, %23
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @TYPE_QUAL_CONST, align 4
  %41 = load i32, i32* @TYPE_QUAL_VOLATILE, align 4
  %42 = or i32 %40, %41
  %43 = and i32 %39, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %91

46:                                               ; preds = %38, %33
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @POINTER_TYPE_P(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %61, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* %6, align 4
  %52 = call i64 @TREE_CODE(i32 %51)
  %53 = load i64, i64* @TEMPLATE_TYPE_PARM, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @TYPE_QUAL_RESTRICT, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store i32 0, i32* %4, align 4
  br label %91

61:                                               ; preds = %55, %50, %46
  br label %62

62:                                               ; preds = %61, %18, %3
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @UNIFY_ALLOW_MORE_CV_QUAL, align 4
  %65 = load i32, i32* @UNIFY_ALLOW_OUTER_MORE_CV_QUAL, align 4
  %66 = or i32 %64, %65
  %67 = and i32 %63, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %62
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %9, align 4
  %72 = and i32 %70, %71
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  store i32 0, i32* %4, align 4
  br label %91

76:                                               ; preds = %69, %62
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @UNIFY_ALLOW_LESS_CV_QUAL, align 4
  %79 = load i32, i32* @UNIFY_ALLOW_OUTER_LESS_CV_QUAL, align 4
  %80 = or i32 %78, %79
  %81 = and i32 %77, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %90, label %83

83:                                               ; preds = %76
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %8, align 4
  %86 = and i32 %84, %85
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  store i32 0, i32* %4, align 4
  br label %91

90:                                               ; preds = %83, %76
  store i32 1, i32* %4, align 4
  br label %91

91:                                               ; preds = %90, %89, %75, %60, %45
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @cp_type_quals(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @POINTER_TYPE_P(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
