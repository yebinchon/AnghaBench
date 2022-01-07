; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_build_ptrmemfunc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_build_ptrmemfunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@error_mark_node = common dso_local global i8* null, align 8
@NULL_TREE = common dso_local global i8* null, align 8
@LOOKUP_NORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"invalid conversion to type %qT from type %qT\00", align 1
@PTRMEM_CST = common dso_local global i64 0, align 8
@pfn_identifier = common dso_local global i32 0, align 4
@delta_identifier = common dso_local global i32 0, align 4
@ptrdiff_type_node = common dso_local global i32 0, align 4
@TARGET_PTRMEMFUNC_VBIT_LOCATION = common dso_local global i64 0, align 8
@ptrmemfunc_vbit_in_delta = common dso_local global i64 0, align 8
@LSHIFT_EXPR = common dso_local global i32 0, align 4
@integer_one_node = common dso_local global i8* null, align 8
@PLUS_EXPR = common dso_local global i32 0, align 4
@integer_zero_node = common dso_local global i8* null, align 8
@tf_warning_or_error = common dso_local global i32 0, align 4
@FUNCTION_DECL = common dso_local global i64 0, align 8
@processing_template_decl = common dso_local global i64 0, align 8
@OFFSET_REF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @build_ptrmemfunc(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i8*, i8** %7, align 8
  %17 = call i64 @error_operand_p(i8* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i8*, i8** @error_mark_node, align 8
  store i8* %20, i8** %5, align 8
  br label %165

21:                                               ; preds = %4
  %22 = load i8*, i8** %7, align 8
  %23 = call i8* @TREE_TYPE(i8* %22)
  store i8* %23, i8** %11, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i8* @build_ptrmemfunc_type(i8* %24)
  store i8* %25, i8** %12, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = call i64 @TYPE_PTRMEMFUNC_P(i8* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %120

29:                                               ; preds = %21
  %30 = load i8*, i8** @NULL_TREE, align 8
  store i8* %30, i8** %13, align 8
  %31 = load i8*, i8** @NULL_TREE, align 8
  store i8* %31, i8** %14, align 8
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %29
  %35 = load i8*, i8** %12, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = call i8* @TREE_TYPE(i8* %36)
  %38 = load i8*, i8** %7, align 8
  %39 = load i32, i32* @LOOKUP_NORMAL, align 4
  %40 = call i32 @can_convert_arg(i8* %35, i8* %37, i8* %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %34
  %43 = load i8*, i8** %12, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = call i32 @error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %43, i8* %44)
  br label %46

46:                                               ; preds = %42, %34, %29
  %47 = load i8*, i8** %11, align 8
  %48 = call i32 @TYPE_PTRMEMFUNC_OBJECT_TYPE(i8* %47)
  %49 = load i8*, i8** %12, align 8
  %50 = call i32 @TYPE_PTRMEMFUNC_OBJECT_TYPE(i8* %49)
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i8* @get_delta_difference(i32 %48, i32 %50, i32 %51, i32 %52)
  store i8* %53, i8** %15, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = call i64 @TREE_CODE(i8* %54)
  %56 = load i64, i64* @PTRMEM_CST, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %75

58:                                               ; preds = %46
  %59 = load i8*, i8** %12, align 8
  %60 = load i8*, i8** %11, align 8
  %61 = call i64 @same_type_p(i8* %59, i8* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load i8*, i8** %7, align 8
  store i8* %64, i8** %5, align 8
  br label %165

65:                                               ; preds = %58
  %66 = load i8*, i8** %15, align 8
  %67 = call i64 @integer_zerop(i8* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = load i8*, i8** %12, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = call i8* @build_reinterpret_cast(i8* %70, i8* %71)
  store i8* %72, i8** %5, align 8
  br label %165

73:                                               ; preds = %65
  br label %74

74:                                               ; preds = %73
  br label %75

75:                                               ; preds = %74, %46
  %76 = load i8*, i8** %7, align 8
  %77 = call i64 @TREE_SIDE_EFFECTS(i8* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load i8*, i8** %7, align 8
  %81 = call i8* @save_expr(i8* %80)
  store i8* %81, i8** %7, align 8
  br label %82

82:                                               ; preds = %79, %75
  %83 = load i8*, i8** %7, align 8
  %84 = call i64 @TREE_CODE(i8* %83)
  %85 = load i64, i64* @PTRMEM_CST, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load i8*, i8** %7, align 8
  %89 = call i32 @expand_ptrmemfunc_cst(i8* %88, i8** %13, i8** %14)
  br label %97

90:                                               ; preds = %82
  %91 = load i8*, i8** %7, align 8
  %92 = load i32, i32* @pfn_identifier, align 4
  %93 = call i8* @build_ptrmemfunc_access_expr(i8* %91, i32 %92)
  store i8* %93, i8** %14, align 8
  %94 = load i8*, i8** %7, align 8
  %95 = load i32, i32* @delta_identifier, align 4
  %96 = call i8* @build_ptrmemfunc_access_expr(i8* %94, i32 %95)
  store i8* %96, i8** %13, align 8
  br label %97

97:                                               ; preds = %90, %87
  %98 = load i8*, i8** %13, align 8
  %99 = call i8* @TREE_TYPE(i8* %98)
  %100 = load i32, i32* @ptrdiff_type_node, align 4
  %101 = call i32 @same_type_ignoring_top_level_qualifiers_p(i8* %99, i32 %100)
  %102 = call i32 @gcc_assert(i32 %101)
  %103 = load i64, i64* @TARGET_PTRMEMFUNC_VBIT_LOCATION, align 8
  %104 = load i64, i64* @ptrmemfunc_vbit_in_delta, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %97
  %107 = load i32, i32* @LSHIFT_EXPR, align 4
  %108 = load i8*, i8** %15, align 8
  %109 = load i8*, i8** @integer_one_node, align 8
  %110 = call i8* @cp_build_binary_op(i32 %107, i8* %108, i8* %109)
  store i8* %110, i8** %15, align 8
  br label %111

111:                                              ; preds = %106, %97
  %112 = load i32, i32* @PLUS_EXPR, align 4
  %113 = load i8*, i8** %13, align 8
  %114 = load i8*, i8** %15, align 8
  %115 = call i8* @cp_build_binary_op(i32 %112, i8* %113, i8* %114)
  store i8* %115, i8** %13, align 8
  %116 = load i8*, i8** %12, align 8
  %117 = load i8*, i8** %13, align 8
  %118 = load i8*, i8** %14, align 8
  %119 = call i8* @build_ptrmemfunc1(i8* %116, i8* %117, i8* %118)
  store i8* %119, i8** %5, align 8
  br label %165

120:                                              ; preds = %21
  %121 = load i8*, i8** %7, align 8
  %122 = call i64 @integer_zerop(i8* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %120
  %125 = load i8*, i8** %6, align 8
  %126 = load i8*, i8** @integer_zero_node, align 8
  %127 = call i8* @build_c_cast(i8* %125, i8* %126)
  store i8* %127, i8** %7, align 8
  %128 = load i8*, i8** %12, align 8
  %129 = load i8*, i8** @integer_zero_node, align 8
  %130 = load i8*, i8** %7, align 8
  %131 = call i8* @build_ptrmemfunc1(i8* %128, i8* %129, i8* %130)
  store i8* %131, i8** %5, align 8
  br label %165

132:                                              ; preds = %120
  %133 = load i8*, i8** %7, align 8
  %134 = call i64 @type_unknown_p(i8* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %132
  %137 = load i8*, i8** %6, align 8
  %138 = load i8*, i8** %7, align 8
  %139 = load i32, i32* @tf_warning_or_error, align 4
  %140 = call i8* @instantiate_type(i8* %137, i8* %138, i32 %139)
  store i8* %140, i8** %5, align 8
  br label %165

141:                                              ; preds = %132
  %142 = load i8*, i8** %7, align 8
  %143 = call i8* @TREE_OPERAND(i8* %142, i32 0)
  store i8* %143, i8** %10, align 8
  %144 = load i8*, i8** %10, align 8
  %145 = call i64 @TREE_CODE(i8* %144)
  %146 = load i64, i64* @FUNCTION_DECL, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %158, label %148

148:                                              ; preds = %141
  %149 = load i64, i64* @processing_template_decl, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %148
  %152 = load i8*, i8** %10, align 8
  %153 = call i64 @TREE_CODE(i8* %152)
  %154 = load i64, i64* @OFFSET_REF, align 8
  %155 = icmp eq i64 %153, %154
  br label %156

156:                                              ; preds = %151, %148
  %157 = phi i1 [ false, %148 ], [ %155, %151 ]
  br label %158

158:                                              ; preds = %156, %141
  %159 = phi i1 [ true, %141 ], [ %157, %156 ]
  %160 = zext i1 %159 to i32
  %161 = call i32 @gcc_assert(i32 %160)
  %162 = load i8*, i8** %12, align 8
  %163 = load i8*, i8** %10, align 8
  %164 = call i8* @make_ptrmem_cst(i8* %162, i8* %163)
  store i8* %164, i8** %5, align 8
  br label %165

165:                                              ; preds = %158, %136, %124, %111, %69, %63, %19
  %166 = load i8*, i8** %5, align 8
  ret i8* %166
}

declare dso_local i64 @error_operand_p(i8*) #1

declare dso_local i8* @TREE_TYPE(i8*) #1

declare dso_local i8* @build_ptrmemfunc_type(i8*) #1

declare dso_local i64 @TYPE_PTRMEMFUNC_P(i8*) #1

declare dso_local i32 @can_convert_arg(i8*, i8*, i8*, i32) #1

declare dso_local i32 @error(i8*, i8*, i8*) #1

declare dso_local i8* @get_delta_difference(i32, i32, i32, i32) #1

declare dso_local i32 @TYPE_PTRMEMFUNC_OBJECT_TYPE(i8*) #1

declare dso_local i64 @TREE_CODE(i8*) #1

declare dso_local i64 @same_type_p(i8*, i8*) #1

declare dso_local i64 @integer_zerop(i8*) #1

declare dso_local i8* @build_reinterpret_cast(i8*, i8*) #1

declare dso_local i64 @TREE_SIDE_EFFECTS(i8*) #1

declare dso_local i8* @save_expr(i8*) #1

declare dso_local i32 @expand_ptrmemfunc_cst(i8*, i8**, i8**) #1

declare dso_local i8* @build_ptrmemfunc_access_expr(i8*, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @same_type_ignoring_top_level_qualifiers_p(i8*, i32) #1

declare dso_local i8* @cp_build_binary_op(i32, i8*, i8*) #1

declare dso_local i8* @build_ptrmemfunc1(i8*, i8*, i8*) #1

declare dso_local i8* @build_c_cast(i8*, i8*) #1

declare dso_local i64 @type_unknown_p(i8*) #1

declare dso_local i8* @instantiate_type(i8*, i8*, i32) #1

declare dso_local i8* @TREE_OPERAND(i8*, i32) #1

declare dso_local i8* @make_ptrmem_cst(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
