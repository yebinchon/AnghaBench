; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_build_const_cast_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_build_const_cast_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@error_mark_node = common dso_local global i64 0, align 8
@processing_template_decl = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [110 x i8] c"invalid use of const_cast with type %qT, which is not a pointer, reference, nor a pointer-to-data-member type\00", align 1
@FUNCTION_TYPE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [92 x i8] c"invalid use of const_cast with type %qT, which is a pointer or reference to a function type\00", align 1
@REFERENCE_TYPE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [56 x i8] c"invalid const_cast of an rvalue of type %qT to type %qT\00", align 1
@NULL_TREE = common dso_local global i64 0, align 8
@warn_cast_qual = common dso_local global i64 0, align 8
@warning0 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"cast\00", align 1
@ADDR_EXPR = common dso_local global i32 0, align 4
@NOP_EXPR = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [45 x i8] c"invalid const_cast from type %qT to type %qT\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i32, i32*)* @build_const_cast_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @build_const_cast_1(i64 %0, i64 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @error_mark_node, align 8
  %14 = icmp ne i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @gcc_assert(i32 %15)
  %17 = load i32, i32* @processing_template_decl, align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @gcc_assert(i32 %20)
  %22 = load i32*, i32** %9, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32*, i32** %9, align 8
  store i32 0, i32* %25, align 4
  br label %26

26:                                               ; preds = %24, %4
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @POINTER_TYPE_P(i64 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %42, label %30

30:                                               ; preds = %26
  %31 = load i64, i64* %6, align 8
  %32 = call i64 @TYPE_PTRMEM_P(i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i64, i64* %6, align 8
  %39 = call i32 (i8*, i64, ...) @error(i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str, i64 0, i64 0), i64 %38)
  br label %40

40:                                               ; preds = %37, %34
  %41 = load i64, i64* @error_mark_node, align 8
  store i64 %41, i64* %5, align 8
  br label %171

42:                                               ; preds = %30, %26
  %43 = load i64, i64* %6, align 8
  %44 = call i64 @TREE_TYPE(i64 %43)
  %45 = call i64 @TREE_CODE(i64 %44)
  %46 = load i64, i64* @FUNCTION_TYPE, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %42
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i64, i64* %6, align 8
  %53 = call i32 (i8*, i64, ...) @error(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.1, i64 0, i64 0), i64 %52)
  br label %54

54:                                               ; preds = %51, %48
  %55 = load i64, i64* @error_mark_node, align 8
  store i64 %55, i64* %5, align 8
  br label %171

56:                                               ; preds = %42
  %57 = load i64, i64* %6, align 8
  %58 = call i32 @used_types_insert(i64 %57)
  %59 = load i64, i64* %7, align 8
  %60 = call i64 @TREE_TYPE(i64 %59)
  store i64 %60, i64* %10, align 8
  %61 = load i64, i64* %10, align 8
  %62 = call i64 @TREE_CODE(i64 %61)
  %63 = load i64, i64* @REFERENCE_TYPE, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %56
  %66 = load i64, i64* %10, align 8
  %67 = call i64 @TREE_TYPE(i64 %66)
  store i64 %67, i64* %10, align 8
  br label %68

68:                                               ; preds = %65, %56
  %69 = load i64, i64* %6, align 8
  %70 = call i64 @TREE_CODE(i64 %69)
  %71 = load i64, i64* @REFERENCE_TYPE, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %93

73:                                               ; preds = %68
  %74 = load i64, i64* %6, align 8
  store i64 %74, i64* %11, align 8
  %75 = load i64, i64* %7, align 8
  %76 = call i32 @real_lvalue_p(i64 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %87, label %78

78:                                               ; preds = %73
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load i64, i64* %10, align 8
  %83 = load i64, i64* %6, align 8
  %84 = call i32 (i8*, i64, ...) @error(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i64 %82, i64 %83)
  br label %85

85:                                               ; preds = %81, %78
  %86 = load i64, i64* @error_mark_node, align 8
  store i64 %86, i64* %5, align 8
  br label %171

87:                                               ; preds = %73
  %88 = load i64, i64* %6, align 8
  %89 = call i64 @TREE_TYPE(i64 %88)
  %90 = call i64 @build_pointer_type(i64 %89)
  store i64 %90, i64* %6, align 8
  %91 = load i64, i64* %10, align 8
  %92 = call i64 @build_pointer_type(i64 %91)
  store i64 %92, i64* %10, align 8
  br label %103

93:                                               ; preds = %68
  %94 = load i64, i64* @NULL_TREE, align 8
  store i64 %94, i64* %11, align 8
  %95 = load i64, i64* %10, align 8
  %96 = call i64 @type_decays_to(i64 %95)
  store i64 %96, i64* %10, align 8
  %97 = load i64, i64* %10, align 8
  %98 = load i64, i64* @error_mark_node, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %93
  %101 = load i64, i64* @error_mark_node, align 8
  store i64 %101, i64* %5, align 8
  br label %171

102:                                              ; preds = %93
  br label %103

103:                                              ; preds = %102, %87
  %104 = load i64, i64* %10, align 8
  %105 = call i64 @TYPE_PTR_P(i64 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %103
  %108 = load i64, i64* %10, align 8
  %109 = call i64 @TYPE_PTRMEM_P(i64 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %162

111:                                              ; preds = %107, %103
  %112 = load i64, i64* %6, align 8
  %113 = load i64, i64* %10, align 8
  %114 = call i64 @comp_ptr_ttypes_const(i64 %112, i64 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %162

116:                                              ; preds = %111
  %117 = load i32*, i32** %9, align 8
  %118 = icmp ne i32* %117, null
  br i1 %118, label %119, label %129

119:                                              ; preds = %116
  %120 = load i32*, i32** %9, align 8
  store i32 1, i32* %120, align 4
  %121 = load i64, i64* @warn_cast_qual, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %119
  %124 = load i64, i64* %10, align 8
  %125 = load i64, i64* %6, align 8
  %126 = load i32, i32* @warning0, align 4
  %127 = call i32 @check_for_casting_away_constness(i64 %124, i64 %125, i32 %126, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %128

128:                                              ; preds = %123, %119
  br label %129

129:                                              ; preds = %128, %116
  %130 = load i64, i64* %11, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %129
  %133 = load i32, i32* @ADDR_EXPR, align 4
  %134 = load i64, i64* %7, align 8
  %135 = call i64 @build_unary_op(i32 %133, i64 %134, i32 0)
  store i64 %135, i64* %7, align 8
  %136 = load i64, i64* %11, align 8
  %137 = load i64, i64* %7, align 8
  %138 = call i64 @build_nop(i64 %136, i64 %137)
  store i64 %138, i64* %7, align 8
  %139 = load i64, i64* %7, align 8
  %140 = call i64 @convert_from_reference(i64 %139)
  store i64 %140, i64* %5, align 8
  br label %171

141:                                              ; preds = %129
  %142 = load i64, i64* %7, align 8
  %143 = call i64 @decay_conversion(i64 %142)
  store i64 %143, i64* %7, align 8
  %144 = load i64, i64* %7, align 8
  %145 = call i64 @TREE_CODE(i64 %144)
  %146 = load i64, i64* @NOP_EXPR, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %158

148:                                              ; preds = %141
  %149 = load i64, i64* %7, align 8
  %150 = call i64 @TREE_TYPE(i64 %149)
  %151 = load i64, i64* %7, align 8
  %152 = call i64 @TREE_OPERAND(i64 %151, i32 0)
  %153 = call i64 @TREE_TYPE(i64 %152)
  %154 = icmp eq i64 %150, %153
  br i1 %154, label %155, label %158

155:                                              ; preds = %148
  %156 = load i64, i64* %7, align 8
  %157 = call i64 @TREE_OPERAND(i64 %156, i32 0)
  store i64 %157, i64* %7, align 8
  br label %158

158:                                              ; preds = %155, %148, %141
  %159 = load i64, i64* %6, align 8
  %160 = load i64, i64* %7, align 8
  %161 = call i64 @build_nop(i64 %159, i64 %160)
  store i64 %161, i64* %5, align 8
  br label %171

162:                                              ; preds = %111, %107
  %163 = load i32, i32* %8, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %162
  %166 = load i64, i64* %10, align 8
  %167 = load i64, i64* %6, align 8
  %168 = call i32 (i8*, i64, ...) @error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i64 %166, i64 %167)
  br label %169

169:                                              ; preds = %165, %162
  %170 = load i64, i64* @error_mark_node, align 8
  store i64 %170, i64* %5, align 8
  br label %171

171:                                              ; preds = %169, %158, %132, %100, %85, %54, %40
  %172 = load i64, i64* %5, align 8
  ret i64 %172
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @POINTER_TYPE_P(i64) #1

declare dso_local i64 @TYPE_PTRMEM_P(i64) #1

declare dso_local i32 @error(i8*, i64, ...) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i32 @used_types_insert(i64) #1

declare dso_local i32 @real_lvalue_p(i64) #1

declare dso_local i64 @build_pointer_type(i64) #1

declare dso_local i64 @type_decays_to(i64) #1

declare dso_local i64 @TYPE_PTR_P(i64) #1

declare dso_local i64 @comp_ptr_ttypes_const(i64, i64) #1

declare dso_local i32 @check_for_casting_away_constness(i64, i64, i32, i8*) #1

declare dso_local i64 @build_unary_op(i32, i64, i32) #1

declare dso_local i64 @build_nop(i64, i64) #1

declare dso_local i64 @convert_from_reference(i64) #1

declare dso_local i64 @decay_conversion(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
