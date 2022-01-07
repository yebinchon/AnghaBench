; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck2.c_add_exception_specifier.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck2.c_add_exception_specifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@error_mark_node = common dso_local global i64 0, align 8
@POINTER_TYPE = common dso_local global i64 0, align 8
@REFERENCE_TYPE = common dso_local global i64 0, align 8
@TEMPLATE_TYPE_PARM = common dso_local global i64 0, align 8
@processing_template_decl = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @add_exception_specifier(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i64, i64* %6, align 8
  store i64 %13, i64* %9, align 8
  store i32 -1, i32* %11, align 4
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @error_mark_node, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i64, i64* %5, align 8
  store i64 %18, i64* %4, align 8
  br label %122

19:                                               ; preds = %3
  %20 = load i64, i64* %6, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = load i64, i64* %5, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i64, i64* %5, align 8
  %27 = call i64 @TREE_VALUE(i64 %26)
  %28 = icmp ne i64 %27, 0
  br label %29

29:                                               ; preds = %25, %22
  %30 = phi i1 [ true, %22 ], [ %28, %25 ]
  br label %31

31:                                               ; preds = %29, %19
  %32 = phi i1 [ false, %19 ], [ %30, %29 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @gcc_assert(i32 %33)
  %35 = load i64, i64* %9, align 8
  %36 = call i64 @TREE_CODE(i64 %35)
  %37 = load i64, i64* @POINTER_TYPE, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %31
  %43 = load i64, i64* %9, align 8
  %44 = call i64 @TREE_CODE(i64 %43)
  %45 = load i64, i64* @REFERENCE_TYPE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %42, %31
  %48 = load i64, i64* %9, align 8
  %49 = call i64 @TREE_TYPE(i64 %48)
  store i64 %49, i64* %9, align 8
  br label %50

50:                                               ; preds = %47, %42
  %51 = load i32, i32* %7, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 1, i32* %8, align 4
  br label %80

54:                                               ; preds = %50
  %55 = load i64, i64* %9, align 8
  %56 = call i64 @VOID_TYPE_P(i64 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32, i32* %10, align 4
  store i32 %59, i32* %8, align 4
  br label %79

60:                                               ; preds = %54
  %61 = load i64, i64* %9, align 8
  %62 = call i64 @TREE_CODE(i64 %61)
  %63 = load i64, i64* @TEMPLATE_TYPE_PARM, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  store i32 1, i32* %8, align 4
  br label %78

66:                                               ; preds = %60
  %67 = load i64, i64* @processing_template_decl, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  store i32 1, i32* %8, align 4
  br label %77

70:                                               ; preds = %66
  store i32 1, i32* %8, align 4
  %71 = load i64, i64* %9, align 8
  %72 = call i32 @complete_type(i64 %71)
  %73 = call i32 @COMPLETE_TYPE_P(i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %70
  store i32 2, i32* %11, align 4
  br label %76

76:                                               ; preds = %75, %70
  br label %77

77:                                               ; preds = %76, %69
  br label %78

78:                                               ; preds = %77, %65
  br label %79

79:                                               ; preds = %78, %58
  br label %80

80:                                               ; preds = %79, %53
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %108

83:                                               ; preds = %80
  %84 = load i64, i64* %5, align 8
  store i64 %84, i64* %12, align 8
  br label %85

85:                                               ; preds = %96, %83
  %86 = load i64, i64* %12, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %85
  %89 = load i64, i64* %12, align 8
  %90 = call i64 @TREE_VALUE(i64 %89)
  %91 = load i64, i64* %6, align 8
  %92 = call i64 @same_type_p(i64 %90, i64 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  br label %99

95:                                               ; preds = %88
  br label %96

96:                                               ; preds = %95
  %97 = load i64, i64* %12, align 8
  %98 = call i64 @TREE_CHAIN(i64 %97)
  store i64 %98, i64* %12, align 8
  br label %85

99:                                               ; preds = %94, %85
  %100 = load i64, i64* %12, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %107, label %102

102:                                              ; preds = %99
  %103 = load i32, i32* @NULL_TREE, align 4
  %104 = load i64, i64* %6, align 8
  %105 = load i64, i64* %5, align 8
  %106 = call i64 @tree_cons(i32 %103, i64 %104, i64 %105)
  store i64 %106, i64* %5, align 8
  br label %107

107:                                              ; preds = %102, %99
  br label %109

108:                                              ; preds = %80
  store i32 0, i32* %11, align 4
  br label %109

109:                                              ; preds = %108, %107
  %110 = load i32, i32* %11, align 4
  %111 = icmp sge i32 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %109
  %113 = load i32, i32* %7, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %112
  %116 = load i32, i32* @NULL_TREE, align 4
  %117 = load i64, i64* %9, align 8
  %118 = load i32, i32* %11, align 4
  %119 = call i32 @cxx_incomplete_type_diagnostic(i32 %116, i64 %117, i32 %118)
  br label %120

120:                                              ; preds = %115, %112, %109
  %121 = load i64, i64* %5, align 8
  store i64 %121, i64* %4, align 8
  br label %122

122:                                              ; preds = %120, %17
  %123 = load i64, i64* %4, align 8
  ret i64 %123
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @VOID_TYPE_P(i64) #1

declare dso_local i32 @COMPLETE_TYPE_P(i32) #1

declare dso_local i32 @complete_type(i64) #1

declare dso_local i64 @same_type_p(i64, i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i64 @tree_cons(i32, i64, i64) #1

declare dso_local i32 @cxx_incomplete_type_diagnostic(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
