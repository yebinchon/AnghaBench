; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_decay_conversion.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_decay_conversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@error_mark_node = common dso_local global i64 0, align 8
@VOID_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"void value not ignored as it ought to be\00", align 1
@FUNCTION_TYPE = common dso_local global i32 0, align 4
@ADDR_EXPR = common dso_local global i32 0, align 4
@ARRAY_TYPE = common dso_local global i32 0, align 4
@INDIRECT_REF = common dso_local global i32 0, align 4
@COMPOUND_EXPR = common dso_local global i32 0, align 4
@CONSTRUCTOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"invalid use of non-lvalue array\00", align 1
@VAR_DECL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decay_conversion(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = call i64 @TREE_TYPE(i64 %9)
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @error_mark_node, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i64, i64* @error_mark_node, align 8
  store i64 %15, i64* %2, align 8
  br label %155

16:                                               ; preds = %1
  %17 = load i64, i64* %3, align 8
  %18 = call i64 @type_unknown_p(i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = load i64, i64* %3, align 8
  %22 = load i64, i64* %3, align 8
  %23 = call i64 @TREE_TYPE(i64 %22)
  %24 = call i32 @cxx_incomplete_type_error(i64 %21, i64 %23)
  %25 = load i64, i64* @error_mark_node, align 8
  store i64 %25, i64* %2, align 8
  br label %155

26:                                               ; preds = %16
  %27 = load i64, i64* %3, align 8
  %28 = call i64 @decl_constant_value(i64 %27)
  store i64 %28, i64* %3, align 8
  %29 = load i64, i64* %3, align 8
  %30 = call i64 @error_operand_p(i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i64, i64* @error_mark_node, align 8
  store i64 %33, i64* %2, align 8
  br label %155

34:                                               ; preds = %26
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @TREE_CODE(i64 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @VOID_TYPE, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = call i32 @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %42 = load i64, i64* @error_mark_node, align 8
  store i64 %42, i64* %2, align 8
  br label %155

43:                                               ; preds = %34
  %44 = load i64, i64* %3, align 8
  %45 = call i64 @invalid_nonstatic_memfn_p(i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i64, i64* @error_mark_node, align 8
  store i64 %48, i64* %2, align 8
  br label %155

49:                                               ; preds = %43
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @FUNCTION_TYPE, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = load i64, i64* %3, align 8
  %55 = call i64 @is_overloaded_fn(i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %53, %49
  %58 = load i32, i32* @ADDR_EXPR, align 4
  %59 = load i64, i64* %3, align 8
  %60 = call i64 @build_unary_op(i32 %58, i64 %59, i32 0)
  store i64 %60, i64* %2, align 8
  br label %155

61:                                               ; preds = %53
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @ARRAY_TYPE, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %136

65:                                               ; preds = %61
  %66 = load i64, i64* %3, align 8
  %67 = call i32 @TREE_CODE(i64 %66)
  %68 = load i32, i32* @INDIRECT_REF, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %65
  %71 = load i64, i64* %4, align 8
  %72 = call i64 @TREE_TYPE(i64 %71)
  %73 = call i64 @build_pointer_type(i64 %72)
  %74 = load i64, i64* %3, align 8
  %75 = call i64 @TREE_OPERAND(i64 %74, i32 0)
  %76 = call i64 @build_nop(i64 %73, i64 %75)
  store i64 %76, i64* %2, align 8
  br label %155

77:                                               ; preds = %65
  %78 = load i64, i64* %3, align 8
  %79 = call i32 @TREE_CODE(i64 %78)
  %80 = load i32, i32* @COMPOUND_EXPR, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %93

82:                                               ; preds = %77
  %83 = load i64, i64* %3, align 8
  %84 = call i64 @TREE_OPERAND(i64 %83, i32 1)
  %85 = call i64 @decay_conversion(i64 %84)
  store i64 %85, i64* %8, align 8
  %86 = load i32, i32* @COMPOUND_EXPR, align 4
  %87 = load i64, i64* %8, align 8
  %88 = call i64 @TREE_TYPE(i64 %87)
  %89 = load i64, i64* %3, align 8
  %90 = call i64 @TREE_OPERAND(i64 %89, i32 0)
  %91 = load i64, i64* %8, align 8
  %92 = call i64 @build2(i32 %86, i64 %88, i64 %90, i64 %91)
  store i64 %92, i64* %2, align 8
  br label %155

93:                                               ; preds = %77
  %94 = load i64, i64* %3, align 8
  %95 = call i32 @lvalue_p(i64 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %109, label %97

97:                                               ; preds = %93
  %98 = load i64, i64* %3, align 8
  %99 = call i32 @TREE_CODE(i64 %98)
  %100 = load i32, i32* @CONSTRUCTOR, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = load i64, i64* %3, align 8
  %104 = call i64 @TREE_STATIC(i64 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %102, %97
  %107 = call i32 @error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %108 = load i64, i64* @error_mark_node, align 8
  store i64 %108, i64* %2, align 8
  br label %155

109:                                              ; preds = %102, %93
  %110 = load i64, i64* %4, align 8
  %111 = call i64 @TREE_TYPE(i64 %110)
  %112 = call i64 @build_pointer_type(i64 %111)
  store i64 %112, i64* %7, align 8
  %113 = load i64, i64* %3, align 8
  %114 = call i32 @TREE_CODE(i64 %113)
  %115 = load i32, i32* @VAR_DECL, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %129

117:                                              ; preds = %109
  %118 = load i64, i64* %3, align 8
  %119 = call i32 @cxx_mark_addressable(i64 %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %123, label %121

121:                                              ; preds = %117
  %122 = load i64, i64* @error_mark_node, align 8
  store i64 %122, i64* %2, align 8
  br label %155

123:                                              ; preds = %117
  %124 = load i64, i64* %7, align 8
  %125 = load i64, i64* %3, align 8
  %126 = call i64 @build_address(i64 %125)
  %127 = call i64 @build_nop(i64 %124, i64 %126)
  store i64 %127, i64* %6, align 8
  %128 = load i64, i64* %6, align 8
  store i64 %128, i64* %2, align 8
  br label %155

129:                                              ; preds = %109
  %130 = load i32, i32* @ADDR_EXPR, align 4
  %131 = load i64, i64* %3, align 8
  %132 = call i64 @build_unary_op(i32 %130, i64 %131, i32 1)
  store i64 %132, i64* %6, align 8
  %133 = load i64, i64* %7, align 8
  %134 = load i64, i64* %6, align 8
  %135 = call i64 @cp_convert(i64 %133, i64 %134)
  store i64 %135, i64* %2, align 8
  br label %155

136:                                              ; preds = %61
  %137 = load i64, i64* %3, align 8
  %138 = call i64 @convert_bitfield_to_declared_type(i64 %137)
  store i64 %138, i64* %3, align 8
  %139 = load i64, i64* %3, align 8
  %140 = call i64 @TREE_TYPE(i64 %139)
  store i64 %140, i64* %4, align 8
  %141 = load i64, i64* %4, align 8
  %142 = call i32 @CLASS_TYPE_P(i64 %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %153, label %144

144:                                              ; preds = %136
  %145 = load i64, i64* %4, align 8
  %146 = call i64 @cp_type_quals(i64 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %144
  %149 = load i64, i64* %4, align 8
  %150 = call i64 @TYPE_MAIN_VARIANT(i64 %149)
  %151 = load i64, i64* %3, align 8
  %152 = call i64 @build_nop(i64 %150, i64 %151)
  store i64 %152, i64* %3, align 8
  br label %153

153:                                              ; preds = %148, %144, %136
  %154 = load i64, i64* %3, align 8
  store i64 %154, i64* %2, align 8
  br label %155

155:                                              ; preds = %153, %129, %123, %121, %106, %82, %70, %57, %47, %40, %32, %20, %14
  %156 = load i64, i64* %2, align 8
  ret i64 %156
}

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @type_unknown_p(i64) #1

declare dso_local i32 @cxx_incomplete_type_error(i64, i64) #1

declare dso_local i64 @decl_constant_value(i64) #1

declare dso_local i64 @error_operand_p(i64) #1

declare dso_local i32 @TREE_CODE(i64) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i64 @invalid_nonstatic_memfn_p(i64) #1

declare dso_local i64 @is_overloaded_fn(i64) #1

declare dso_local i64 @build_unary_op(i32, i64, i32) #1

declare dso_local i64 @build_nop(i64, i64) #1

declare dso_local i64 @build_pointer_type(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i64 @build2(i32, i64, i64, i64) #1

declare dso_local i32 @lvalue_p(i64) #1

declare dso_local i64 @TREE_STATIC(i64) #1

declare dso_local i32 @cxx_mark_addressable(i64) #1

declare dso_local i64 @build_address(i64) #1

declare dso_local i64 @cp_convert(i64, i64) #1

declare dso_local i64 @convert_bitfield_to_declared_type(i64) #1

declare dso_local i32 @CLASS_TYPE_P(i64) #1

declare dso_local i64 @cp_type_quals(i64) #1

declare dso_local i64 @TYPE_MAIN_VARIANT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
