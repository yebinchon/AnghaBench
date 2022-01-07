; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_builtin_mathfn_code.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_builtin_mathfn_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CALL_EXPR = common dso_local global i64 0, align 8
@ADDR_EXPR = common dso_local global i64 0, align 8
@END_BUILTINS = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i64 0, align 8
@FUNCTION_DECL = common dso_local global i64 0, align 8
@BUILT_IN_MD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @builtin_mathfn_code(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = call i64 @TREE_CODE(i64 %9)
  %11 = load i64, i64* @CALL_EXPR, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load i64, i64* %3, align 8
  %15 = call i64 @TREE_OPERAND(i64 %14, i32 0)
  %16 = call i64 @TREE_CODE(i64 %15)
  %17 = load i64, i64* @ADDR_EXPR, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %13, %1
  %20 = load i32, i32* @END_BUILTINS, align 4
  store i32 %20, i32* %2, align 4
  br label %132

21:                                               ; preds = %13
  %22 = load i64, i64* %3, align 8
  %23 = call i64 @get_callee_fndecl(i64 %22)
  store i64 %23, i64* %4, align 8
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* @NULL_TREE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %41, label %27

27:                                               ; preds = %21
  %28 = load i64, i64* %4, align 8
  %29 = call i64 @TREE_CODE(i64 %28)
  %30 = load i64, i64* @FUNCTION_DECL, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %41, label %32

32:                                               ; preds = %27
  %33 = load i64, i64* %4, align 8
  %34 = call i32 @DECL_BUILT_IN(i64 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load i64, i64* %4, align 8
  %38 = call i64 @DECL_BUILT_IN_CLASS(i64 %37)
  %39 = load i64, i64* @BUILT_IN_MD, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %36, %32, %27, %21
  %42 = load i32, i32* @END_BUILTINS, align 4
  store i32 %42, i32* %2, align 4
  br label %132

43:                                               ; preds = %36
  %44 = load i64, i64* %3, align 8
  %45 = call i64 @TREE_OPERAND(i64 %44, i32 1)
  store i64 %45, i64* %5, align 8
  %46 = load i64, i64* %4, align 8
  %47 = call i64 @TREE_TYPE(i64 %46)
  %48 = call i64 @TYPE_ARG_TYPES(i64 %47)
  store i64 %48, i64* %6, align 8
  br label %49

49:                                               ; preds = %126, %43
  %50 = load i64, i64* %6, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %129

52:                                               ; preds = %49
  %53 = load i64, i64* %6, align 8
  %54 = call i64 @TREE_VALUE(i64 %53)
  store i64 %54, i64* %8, align 8
  %55 = load i64, i64* %8, align 8
  %56 = call i64 @VOID_TYPE_P(i64 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %52
  %59 = load i64, i64* %5, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load i32, i32* @END_BUILTINS, align 4
  store i32 %62, i32* %2, align 4
  br label %132

63:                                               ; preds = %58
  %64 = load i64, i64* %4, align 8
  %65 = call i32 @DECL_FUNCTION_CODE(i64 %64)
  store i32 %65, i32* %2, align 4
  br label %132

66:                                               ; preds = %52
  %67 = load i64, i64* %5, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* @END_BUILTINS, align 4
  store i32 %70, i32* %2, align 4
  br label %132

71:                                               ; preds = %66
  %72 = load i64, i64* %5, align 8
  %73 = call i64 @TREE_VALUE(i64 %72)
  %74 = call i64 @TREE_TYPE(i64 %73)
  store i64 %74, i64* %7, align 8
  %75 = load i64, i64* %8, align 8
  %76 = call i64 @SCALAR_FLOAT_TYPE_P(i64 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %71
  %79 = load i64, i64* %7, align 8
  %80 = call i64 @SCALAR_FLOAT_TYPE_P(i64 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %78
  %83 = load i32, i32* @END_BUILTINS, align 4
  store i32 %83, i32* %2, align 4
  br label %132

84:                                               ; preds = %78
  br label %123

85:                                               ; preds = %71
  %86 = load i64, i64* %8, align 8
  %87 = call i64 @COMPLEX_FLOAT_TYPE_P(i64 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %85
  %90 = load i64, i64* %7, align 8
  %91 = call i64 @COMPLEX_FLOAT_TYPE_P(i64 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %89
  %94 = load i32, i32* @END_BUILTINS, align 4
  store i32 %94, i32* %2, align 4
  br label %132

95:                                               ; preds = %89
  br label %122

96:                                               ; preds = %85
  %97 = load i64, i64* %8, align 8
  %98 = call i64 @POINTER_TYPE_P(i64 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %96
  %101 = load i64, i64* %7, align 8
  %102 = call i64 @POINTER_TYPE_P(i64 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %100
  %105 = load i32, i32* @END_BUILTINS, align 4
  store i32 %105, i32* %2, align 4
  br label %132

106:                                              ; preds = %100
  br label %121

107:                                              ; preds = %96
  %108 = load i64, i64* %8, align 8
  %109 = call i64 @INTEGRAL_TYPE_P(i64 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %107
  %112 = load i64, i64* %7, align 8
  %113 = call i64 @INTEGRAL_TYPE_P(i64 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %117, label %115

115:                                              ; preds = %111
  %116 = load i32, i32* @END_BUILTINS, align 4
  store i32 %116, i32* %2, align 4
  br label %132

117:                                              ; preds = %111
  br label %120

118:                                              ; preds = %107
  %119 = load i32, i32* @END_BUILTINS, align 4
  store i32 %119, i32* %2, align 4
  br label %132

120:                                              ; preds = %117
  br label %121

121:                                              ; preds = %120, %106
  br label %122

122:                                              ; preds = %121, %95
  br label %123

123:                                              ; preds = %122, %84
  %124 = load i64, i64* %5, align 8
  %125 = call i64 @TREE_CHAIN(i64 %124)
  store i64 %125, i64* %5, align 8
  br label %126

126:                                              ; preds = %123
  %127 = load i64, i64* %6, align 8
  %128 = call i64 @TREE_CHAIN(i64 %127)
  store i64 %128, i64* %6, align 8
  br label %49

129:                                              ; preds = %49
  %130 = load i64, i64* %4, align 8
  %131 = call i32 @DECL_FUNCTION_CODE(i64 %130)
  store i32 %131, i32* %2, align 4
  br label %132

132:                                              ; preds = %129, %118, %115, %104, %93, %82, %69, %63, %61, %41, %19
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i64 @get_callee_fndecl(i64) #1

declare dso_local i32 @DECL_BUILT_IN(i64) #1

declare dso_local i64 @DECL_BUILT_IN_CLASS(i64) #1

declare dso_local i64 @TYPE_ARG_TYPES(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i64 @VOID_TYPE_P(i64) #1

declare dso_local i32 @DECL_FUNCTION_CODE(i64) #1

declare dso_local i64 @SCALAR_FLOAT_TYPE_P(i64) #1

declare dso_local i64 @COMPLEX_FLOAT_TYPE_P(i64) #1

declare dso_local i64 @POINTER_TYPE_P(i64) #1

declare dso_local i64 @INTEGRAL_TYPE_P(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
