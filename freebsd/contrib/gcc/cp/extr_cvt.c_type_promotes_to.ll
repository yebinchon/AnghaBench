; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cvt.c_type_promotes_to.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cvt.c_type_promotes_to.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@error_mark_node = common dso_local global i64 0, align 8
@boolean_type_node = common dso_local global i64 0, align 8
@integer_type_node = common dso_local global i64 0, align 8
@ENUMERAL_TYPE = common dso_local global i64 0, align 8
@wchar_type_node = common dso_local global i64 0, align 8
@unsigned_type_node = common dso_local global i64 0, align 8
@float_type_node = common dso_local global i64 0, align 8
@double_type_node = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @type_promotes_to(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* @error_mark_node, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i64, i64* @error_mark_node, align 8
  store i64 %10, i64* %2, align 8
  br label %81

11:                                               ; preds = %1
  %12 = load i64, i64* %3, align 8
  %13 = call i64 @TYPE_MAIN_VARIANT(i64 %12)
  store i64 %13, i64* %3, align 8
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* @boolean_type_node, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load i64, i64* @integer_type_node, align 8
  store i64 %18, i64* %3, align 8
  br label %79

19:                                               ; preds = %11
  %20 = load i64, i64* %3, align 8
  %21 = call i64 @TREE_CODE(i64 %20)
  %22 = load i64, i64* @ENUMERAL_TYPE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = load i64, i64* %3, align 8
  %26 = load i64, i64* @wchar_type_node, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %51

28:                                               ; preds = %24, %19
  %29 = load i64, i64* %3, align 8
  %30 = call i64 @TYPE_PRECISION(i64 %29)
  %31 = load i64, i64* @integer_type_node, align 8
  %32 = call i64 @TYPE_PRECISION(i64 %31)
  %33 = call i32 @MAX(i64 %30, i64 %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i64 @c_common_type_for_size(i32 %34, i32 0)
  store i64 %35, i64* %5, align 8
  %36 = load i64, i64* %3, align 8
  %37 = call i64 @TYPE_UNSIGNED(i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %28
  %40 = load i64, i64* %3, align 8
  %41 = call i32 @TYPE_MAX_VALUE(i64 %40)
  %42 = load i64, i64* %5, align 8
  %43 = call i32 @int_fits_type_p(i32 %41, i64 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* %4, align 4
  %47 = call i64 @c_common_type_for_size(i32 %46, i32 1)
  store i64 %47, i64* %3, align 8
  br label %50

48:                                               ; preds = %39, %28
  %49 = load i64, i64* %5, align 8
  store i64 %49, i64* %3, align 8
  br label %50

50:                                               ; preds = %48, %45
  br label %78

51:                                               ; preds = %24
  %52 = load i64, i64* %3, align 8
  %53 = call i64 @c_promoting_integer_type_p(i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %70

55:                                               ; preds = %51
  %56 = load i64, i64* %3, align 8
  %57 = call i64 @TYPE_UNSIGNED(i64 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %55
  %60 = load i64, i64* %3, align 8
  %61 = call i64 @TYPE_PRECISION(i64 %60)
  %62 = load i64, i64* @integer_type_node, align 8
  %63 = call i64 @TYPE_PRECISION(i64 %62)
  %64 = icmp eq i64 %61, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i64, i64* @unsigned_type_node, align 8
  store i64 %66, i64* %3, align 8
  br label %69

67:                                               ; preds = %59, %55
  %68 = load i64, i64* @integer_type_node, align 8
  store i64 %68, i64* %3, align 8
  br label %69

69:                                               ; preds = %67, %65
  br label %77

70:                                               ; preds = %51
  %71 = load i64, i64* %3, align 8
  %72 = load i64, i64* @float_type_node, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load i64, i64* @double_type_node, align 8
  store i64 %75, i64* %3, align 8
  br label %76

76:                                               ; preds = %74, %70
  br label %77

77:                                               ; preds = %76, %69
  br label %78

78:                                               ; preds = %77, %50
  br label %79

79:                                               ; preds = %78, %17
  %80 = load i64, i64* %3, align 8
  store i64 %80, i64* %2, align 8
  br label %81

81:                                               ; preds = %79, %9
  %82 = load i64, i64* %2, align 8
  ret i64 %82
}

declare dso_local i64 @TYPE_MAIN_VARIANT(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @MAX(i64, i64) #1

declare dso_local i64 @TYPE_PRECISION(i64) #1

declare dso_local i64 @c_common_type_for_size(i32, i32) #1

declare dso_local i64 @TYPE_UNSIGNED(i64) #1

declare dso_local i32 @int_fits_type_p(i32, i64) #1

declare dso_local i32 @TYPE_MAX_VALUE(i64) #1

declare dso_local i64 @c_promoting_integer_type_p(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
