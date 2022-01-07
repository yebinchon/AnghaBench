; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_pointer_diff.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_pointer_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ptrdiff_type_node = common dso_local global i32 0, align 4
@pedantic = common dso_local global i64 0, align 8
@warn_pointer_arith = common dso_local global i64 0, align 8
@VOID_TYPE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"pointer of type %<void *%> used in subtraction\00", align 1
@FUNCTION_TYPE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"pointer to a function used in subtraction\00", align 1
@NOP_EXPR = common dso_local global i64 0, align 8
@CONVERT_EXPR = common dso_local global i64 0, align 8
@PLUS_EXPR = common dso_local global i64 0, align 8
@integer_zero_node = common dso_local global i32 0, align 4
@MINUS_EXPR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"arithmetic on pointer to an incomplete type\00", align 1
@EXACT_DIV_EXPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @pointer_diff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pointer_diff(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %12 = load i32, i32* @ptrdiff_type_node, align 4
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @TREE_TYPE(i32 %13)
  %15 = call i32 @TREE_TYPE(i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %11, align 4
  %17 = load i64, i64* @pedantic, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i64, i64* @warn_pointer_arith, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %19, %2
  %23 = load i32, i32* %6, align 4
  %24 = call i64 @TREE_CODE(i32 %23)
  %25 = load i64, i64* @VOID_TYPE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = call i32 @pedwarn(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %22
  %30 = load i32, i32* %6, align 4
  %31 = call i64 @TREE_CODE(i32 %30)
  %32 = load i64, i64* @FUNCTION_TYPE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = call i32 @pedwarn(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %29
  br label %37

37:                                               ; preds = %36, %19
  %38 = load i32, i32* %3, align 4
  %39 = call i64 @TREE_CODE(i32 %38)
  %40 = load i64, i64* @NOP_EXPR, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* %3, align 4
  %44 = call i64 @TREE_CODE(i32 %43)
  %45 = load i64, i64* @CONVERT_EXPR, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %42, %37
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @TREE_TYPE(i32 %48)
  %50 = call i64 @TYPE_PRECISION(i32 %49)
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @TREE_OPERAND(i32 %51, i32 0)
  %53 = call i32 @TREE_TYPE(i32 %52)
  %54 = call i64 @TYPE_PRECISION(i32 %53)
  %55 = icmp eq i64 %50, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %47
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @TREE_OPERAND(i32 %57, i32 0)
  store i32 %58, i32* %7, align 4
  br label %61

59:                                               ; preds = %47, %42
  %60 = load i32, i32* %3, align 4
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %59, %56
  %62 = load i32, i32* %4, align 4
  %63 = call i64 @TREE_CODE(i32 %62)
  %64 = load i64, i64* @NOP_EXPR, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %71, label %66

66:                                               ; preds = %61
  %67 = load i32, i32* %4, align 4
  %68 = call i64 @TREE_CODE(i32 %67)
  %69 = load i64, i64* @CONVERT_EXPR, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %83

71:                                               ; preds = %66, %61
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @TREE_TYPE(i32 %72)
  %74 = call i64 @TYPE_PRECISION(i32 %73)
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @TREE_OPERAND(i32 %75, i32 0)
  %77 = call i32 @TREE_TYPE(i32 %76)
  %78 = call i64 @TYPE_PRECISION(i32 %77)
  %79 = icmp eq i64 %74, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %71
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @TREE_OPERAND(i32 %81, i32 0)
  store i32 %82, i32* %8, align 4
  br label %85

83:                                               ; preds = %71, %66
  %84 = load i32, i32* %4, align 4
  store i32 %84, i32* %8, align 4
  br label %85

85:                                               ; preds = %83, %80
  %86 = load i32, i32* %7, align 4
  %87 = call i64 @TREE_CODE(i32 %86)
  %88 = load i64, i64* @PLUS_EXPR, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %85
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @TREE_OPERAND(i32 %91, i32 1)
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @TREE_OPERAND(i32 %93, i32 0)
  store i32 %94, i32* %7, align 4
  br label %97

95:                                               ; preds = %85
  %96 = load i32, i32* @integer_zero_node, align 4
  store i32 %96, i32* %9, align 4
  br label %97

97:                                               ; preds = %95, %90
  %98 = load i32, i32* %8, align 4
  %99 = call i64 @TREE_CODE(i32 %98)
  %100 = load i64, i64* @PLUS_EXPR, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %97
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @TREE_OPERAND(i32 %103, i32 1)
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %8, align 4
  %106 = call i32 @TREE_OPERAND(i32 %105, i32 0)
  store i32 %106, i32* %8, align 4
  br label %109

107:                                              ; preds = %97
  %108 = load i32, i32* @integer_zero_node, align 4
  store i32 %108, i32* %10, align 4
  br label %109

109:                                              ; preds = %107, %102
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* %8, align 4
  %112 = call i64 @operand_equal_p(i32 %110, i32 %111, i32 0)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %109
  %115 = load i32, i32* %9, align 4
  store i32 %115, i32* %3, align 4
  %116 = load i32, i32* %10, align 4
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %114, %109
  %118 = load i32, i32* @MINUS_EXPR, align 4
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* %3, align 4
  %121 = call i32 @convert(i32 %119, i32 %120)
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* %4, align 4
  %124 = call i32 @convert(i32 %122, i32 %123)
  %125 = call i32 @build_binary_op(i32 %118, i32 %121, i32 %124, i32 0)
  store i32 %125, i32* %3, align 4
  %126 = load i32, i32* %11, align 4
  %127 = call i32 @TREE_TYPE(i32 %126)
  %128 = call i32 @TREE_TYPE(i32 %127)
  %129 = call i32 @COMPLETE_OR_VOID_TYPE_P(i32 %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %133, label %131

131:                                              ; preds = %117
  %132 = call i32 @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %133

133:                                              ; preds = %131, %117
  %134 = load i32, i32* %6, align 4
  %135 = call i32 @c_size_in_bytes(i32 %134)
  store i32 %135, i32* %4, align 4
  %136 = load i32, i32* @EXACT_DIV_EXPR, align 4
  %137 = load i32, i32* %5, align 4
  %138 = load i32, i32* %3, align 4
  %139 = load i32, i32* %5, align 4
  %140 = load i32, i32* %4, align 4
  %141 = call i32 @convert(i32 %139, i32 %140)
  %142 = call i32 @fold_build2(i32 %136, i32 %137, i32 %138, i32 %141)
  ret i32 %142
}

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @pedwarn(i8*) #1

declare dso_local i64 @TYPE_PRECISION(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i64 @operand_equal_p(i32, i32, i32) #1

declare dso_local i32 @build_binary_op(i32, i32, i32, i32) #1

declare dso_local i32 @convert(i32, i32) #1

declare dso_local i32 @COMPLETE_OR_VOID_TYPE_P(i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @c_size_in_bytes(i32) #1

declare dso_local i32 @fold_build2(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
