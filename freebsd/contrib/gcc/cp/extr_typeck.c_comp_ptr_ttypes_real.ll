; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_comp_ptr_ttypes_real.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_comp_ptr_ttypes_real.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OFFSET_TYPE = common dso_local global i64 0, align 8
@FUNCTION_TYPE = common dso_local global i64 0, align 8
@METHOD_TYPE = common dso_local global i64 0, align 8
@POINTER_TYPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @comp_ptr_ttypes_real to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @comp_ptr_ttypes_real(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %98, %3
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @TREE_CODE(i32 %11)
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @TREE_CODE(i32 %13)
  %15 = icmp ne i64 %12, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %103

17:                                               ; preds = %10
  %18 = load i32, i32* %6, align 4
  %19 = call i64 @TREE_CODE(i32 %18)
  %20 = load i64, i64* @OFFSET_TYPE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @TYPE_OFFSET_BASETYPE(i32 %23)
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @TYPE_OFFSET_BASETYPE(i32 %25)
  %27 = call i32 @same_type_p(i32 %24, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %103

30:                                               ; preds = %22, %17
  %31 = load i32, i32* %5, align 4
  %32 = call i64 @TREE_CODE(i32 %31)
  %33 = load i64, i64* @FUNCTION_TYPE, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %74

35:                                               ; preds = %30
  %36 = load i32, i32* %5, align 4
  %37 = call i64 @TREE_CODE(i32 %36)
  %38 = load i64, i64* @METHOD_TYPE, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %74

40:                                               ; preds = %35
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @objc_type_quals_match(i32 %41, i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @at_least_as_qualified_p(i32 %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %40
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %48
  store i32 0, i32* %4, align 4
  br label %103

52:                                               ; preds = %48, %40
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @at_least_as_qualified_p(i32 %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* %7, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  store i32 0, i32* %4, align 4
  br label %103

64:                                               ; preds = %60
  store i32 1, i32* %8, align 4
  br label %65

65:                                               ; preds = %64, %57, %52
  %66 = load i32, i32* %7, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @TYPE_READONLY(i32 %69)
  %71 = load i32, i32* %7, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %7, align 4
  br label %73

73:                                               ; preds = %68, %65
  br label %74

74:                                               ; preds = %73, %35, %30
  %75 = load i32, i32* %5, align 4
  %76 = call i64 @TREE_CODE(i32 %75)
  %77 = load i64, i64* @POINTER_TYPE, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %97

79:                                               ; preds = %74
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @TYPE_PTRMEM_P(i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %97, label %83

83:                                               ; preds = %79
  %84 = load i32, i32* %7, align 4
  %85 = icmp sge i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %83
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %86, %83
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* %6, align 4
  %92 = call i64 @same_type_ignoring_top_level_qualifiers_p(i32 %90, i32 %91)
  %93 = icmp ne i64 %92, 0
  br label %94

94:                                               ; preds = %89, %86
  %95 = phi i1 [ false, %86 ], [ %93, %89 ]
  %96 = zext i1 %95 to i32
  store i32 %96, i32* %4, align 4
  br label %103

97:                                               ; preds = %79, %74
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %5, align 4
  %100 = call i32 @TREE_TYPE(i32 %99)
  store i32 %100, i32* %5, align 4
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @TREE_TYPE(i32 %101)
  store i32 %102, i32* %6, align 4
  br label %10

103:                                              ; preds = %94, %63, %51, %29, %16
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @same_type_p(i32, i32) #1

declare dso_local i32 @TYPE_OFFSET_BASETYPE(i32) #1

declare dso_local i32 @objc_type_quals_match(i32, i32) #1

declare dso_local i32 @at_least_as_qualified_p(i32, i32) #1

declare dso_local i32 @TYPE_READONLY(i32) #1

declare dso_local i32 @TYPE_PTRMEM_P(i32) #1

declare dso_local i64 @same_type_ignoring_top_level_qualifiers_p(i32, i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
