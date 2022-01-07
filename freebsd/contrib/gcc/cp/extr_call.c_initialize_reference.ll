; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_initialize_reference.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_initialize_reference.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, %struct.TYPE_6__, i64, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }

@error_mark_node = common dso_local global i64 0, align 8
@LOOKUP_NORMAL = common dso_local global i32 0, align 4
@TYPE_QUAL_CONST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [87 x i8] c"invalid initialization of non-const reference of type %qT from a temporary of type %qT\00", align 1
@.str.1 = private unnamed_addr constant [76 x i8] c"invalid initialization of reference of type %qT from expression of type %qT\00", align 1
@ck_ref_bind = common dso_local global i64 0, align 8
@ck_base = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i64 0, align 8
@TARGET_EXPR = common dso_local global i64 0, align 8
@INIT_EXPR = common dso_local global i32 0, align 4
@at_eof = common dso_local global i32 0, align 4
@static_aggregates = common dso_local global i32 0, align 4
@COMPOUND_EXPR = common dso_local global i32 0, align 4
@ADDR_EXPR = common dso_local global i32 0, align 4
@conversion_obstack = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @initialize_reference(i64 %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @error_mark_node, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %4
  %20 = load i64, i64* %7, align 8
  %21 = call i64 @error_operand_p(i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19, %4
  %24 = load i64, i64* @error_mark_node, align 8
  store i64 %24, i64* %5, align 8
  br label %201

25:                                               ; preds = %19
  %26 = call i8* @conversion_obstack_alloc(i32 0)
  store i8* %26, i8** %11, align 8
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* %7, align 8
  %29 = call i64 @TREE_TYPE(i64 %28)
  %30 = load i64, i64* %7, align 8
  %31 = load i32, i32* @LOOKUP_NORMAL, align 4
  %32 = call %struct.TYPE_7__* @reference_binding(i64 %27, i64 %29, i64 %30, i32 0, i32 %31)
  store %struct.TYPE_7__* %32, %struct.TYPE_7__** %10, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %34 = icmp ne %struct.TYPE_7__* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %25
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %63

40:                                               ; preds = %35, %25
  %41 = load i64, i64* %6, align 8
  %42 = call i64 @TREE_TYPE(i64 %41)
  %43 = call i32 @TYPE_QUALS(i64 %42)
  %44 = load i32, i32* @TYPE_QUAL_CONST, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %40
  %48 = load i64, i64* %7, align 8
  %49 = call i32 @real_lvalue_p(i64 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %47
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* %7, align 8
  %54 = call i64 @TREE_TYPE(i64 %53)
  %55 = call i32 @error(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0), i64 %52, i64 %54)
  br label %61

56:                                               ; preds = %47, %40
  %57 = load i64, i64* %6, align 8
  %58 = load i64, i64* %7, align 8
  %59 = call i64 @TREE_TYPE(i64 %58)
  %60 = call i32 @error(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i64 %57, i64 %59)
  br label %61

61:                                               ; preds = %56, %51
  %62 = load i64, i64* @error_mark_node, align 8
  store i64 %62, i64* %5, align 8
  br label %201

63:                                               ; preds = %35
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @ck_ref_bind, align 8
  %68 = icmp eq i64 %66, %67
  %69 = zext i1 %68 to i32
  %70 = call i32 @gcc_assert(i32 %69)
  %71 = load i64, i64* %8, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %193

73:                                               ; preds = %63
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  store %struct.TYPE_7__* %77, %struct.TYPE_7__** %10, align 8
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @ck_base, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %101

83:                                               ; preds = %73
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = load i64, i64* %7, align 8
  %90 = call i64 @TREE_TYPE(i64 %89)
  %91 = load i64, i64* %7, align 8
  %92 = call i32 @check_constructor_callable(i64 %90, i64 %91)
  br label %93

93:                                               ; preds = %88, %83
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %13, align 8
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  store %struct.TYPE_7__* %100, %struct.TYPE_7__** %10, align 8
  br label %103

101:                                              ; preds = %73
  %102 = load i64, i64* @NULL_TREE, align 8
  store i64 %102, i64* %13, align 8
  br label %103

103:                                              ; preds = %101, %93
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %105 = load i64, i64* %7, align 8
  %106 = load i64, i64* @NULL_TREE, align 8
  %107 = call i64 @convert_like_real(%struct.TYPE_7__* %104, i64 %105, i64 %106, i32 0, i32 -1, i32 1, i32 0)
  store i64 %107, i64* %7, align 8
  %108 = load i64, i64* %7, align 8
  %109 = call i64 @error_operand_p(i64 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %103
  %112 = load i64, i64* @error_mark_node, align 8
  store i64 %112, i64* %7, align 8
  br label %192

113:                                              ; preds = %103
  %114 = load i64, i64* %7, align 8
  %115 = call i32 @real_lvalue_p(i64 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %176, label %117

117:                                              ; preds = %113
  %118 = load i64, i64* %7, align 8
  %119 = call i64 @TREE_TYPE(i64 %118)
  store i64 %119, i64* %15, align 8
  %120 = load i64, i64* %8, align 8
  %121 = load i64, i64* %15, align 8
  %122 = call i64 @make_temporary_var_for_ref_to_temp(i64 %120, i64 %121)
  store i64 %122, i64* %12, align 8
  %123 = load i64, i64* %12, align 8
  %124 = call i32 @layout_decl(i64 %123, i32 0)
  %125 = load i64, i64* %7, align 8
  %126 = call i64 @TREE_CODE(i64 %125)
  %127 = load i64, i64* @TARGET_EXPR, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %117
  %130 = load i64, i64* %7, align 8
  %131 = call i64 @get_target_expr(i64 %130)
  store i64 %131, i64* %7, align 8
  br label %132

132:                                              ; preds = %129, %117
  %133 = load i32, i32* @INIT_EXPR, align 4
  %134 = load i64, i64* %15, align 8
  %135 = load i64, i64* %12, align 8
  %136 = load i64, i64* %7, align 8
  %137 = call i64 @build2(i32 %133, i64 %134, i64 %135, i64 %136)
  store i64 %137, i64* %14, align 8
  %138 = call i64 (...) @at_function_scope_p()
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %132
  %141 = load i64, i64* %12, align 8
  %142 = call i32 @add_decl_expr(i64 %141)
  %143 = load i64, i64* %12, align 8
  %144 = call i64 @cxx_maybe_build_cleanup(i64 %143)
  %145 = load i64*, i64** %9, align 8
  store i64 %144, i64* %145, align 8
  br label %159

146:                                              ; preds = %132
  %147 = load i64, i64* %12, align 8
  %148 = load i32, i32* @at_eof, align 4
  %149 = call i32 @rest_of_decl_compilation(i64 %147, i32 1, i32 %148)
  %150 = load i64, i64* %15, align 8
  %151 = call i64 @TYPE_HAS_NONTRIVIAL_DESTRUCTOR(i64 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %146
  %154 = load i64, i64* @NULL_TREE, align 8
  %155 = load i64, i64* %12, align 8
  %156 = load i32, i32* @static_aggregates, align 4
  %157 = call i32 @tree_cons(i64 %154, i64 %155, i32 %156)
  store i32 %157, i32* @static_aggregates, align 4
  br label %158

158:                                              ; preds = %153, %146
  br label %159

159:                                              ; preds = %158, %140
  %160 = load i64, i64* %12, align 8
  %161 = call i64 @build_address(i64 %160)
  store i64 %161, i64* %7, align 8
  %162 = load i64, i64* %13, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %159
  %165 = load i64, i64* %7, align 8
  %166 = load i64, i64* %13, align 8
  %167 = call i32 @build_pointer_type(i64 %166)
  %168 = call i64 @convert_to_base(i64 %165, i32 %167, i32 1, i32 1)
  store i64 %168, i64* %7, align 8
  br label %169

169:                                              ; preds = %164, %159
  %170 = load i32, i32* @COMPOUND_EXPR, align 4
  %171 = load i64, i64* %7, align 8
  %172 = call i64 @TREE_TYPE(i64 %171)
  %173 = load i64, i64* %14, align 8
  %174 = load i64, i64* %7, align 8
  %175 = call i64 @build2(i32 %170, i64 %172, i64 %173, i64 %174)
  store i64 %175, i64* %7, align 8
  br label %180

176:                                              ; preds = %113
  %177 = load i32, i32* @ADDR_EXPR, align 4
  %178 = load i64, i64* %7, align 8
  %179 = call i64 @build_unary_op(i32 %177, i64 %178, i32 0)
  store i64 %179, i64* %7, align 8
  br label %180

180:                                              ; preds = %176, %169
  %181 = load i64, i64* %13, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %188

183:                                              ; preds = %180
  %184 = load i64, i64* %13, align 8
  %185 = call i32 @build_pointer_type(i64 %184)
  %186 = load i64, i64* %7, align 8
  %187 = call i64 @perform_implicit_conversion(i32 %185, i64 %186)
  store i64 %187, i64* %7, align 8
  br label %188

188:                                              ; preds = %183, %180
  %189 = load i64, i64* %6, align 8
  %190 = load i64, i64* %7, align 8
  %191 = call i64 @build_nop(i64 %189, i64 %190)
  store i64 %191, i64* %7, align 8
  br label %192

192:                                              ; preds = %188, %111
  br label %197

193:                                              ; preds = %63
  %194 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %195 = load i64, i64* %7, align 8
  %196 = call i64 @convert_like(%struct.TYPE_7__* %194, i64 %195)
  store i64 %196, i64* %7, align 8
  br label %197

197:                                              ; preds = %193, %192
  %198 = load i8*, i8** %11, align 8
  %199 = call i32 @obstack_free(i32* @conversion_obstack, i8* %198)
  %200 = load i64, i64* %7, align 8
  store i64 %200, i64* %5, align 8
  br label %201

201:                                              ; preds = %197, %61, %23
  %202 = load i64, i64* %5, align 8
  ret i64 %202
}

declare dso_local i64 @error_operand_p(i64) #1

declare dso_local i8* @conversion_obstack_alloc(i32) #1

declare dso_local %struct.TYPE_7__* @reference_binding(i64, i64, i64, i32, i32) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i32 @TYPE_QUALS(i64) #1

declare dso_local i32 @real_lvalue_p(i64) #1

declare dso_local i32 @error(i8*, i64, i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @check_constructor_callable(i64, i64) #1

declare dso_local i64 @convert_like_real(%struct.TYPE_7__*, i64, i64, i32, i32, i32, i32) #1

declare dso_local i64 @make_temporary_var_for_ref_to_temp(i64, i64) #1

declare dso_local i32 @layout_decl(i64, i32) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @get_target_expr(i64) #1

declare dso_local i64 @build2(i32, i64, i64, i64) #1

declare dso_local i64 @at_function_scope_p(...) #1

declare dso_local i32 @add_decl_expr(i64) #1

declare dso_local i64 @cxx_maybe_build_cleanup(i64) #1

declare dso_local i32 @rest_of_decl_compilation(i64, i32, i32) #1

declare dso_local i64 @TYPE_HAS_NONTRIVIAL_DESTRUCTOR(i64) #1

declare dso_local i32 @tree_cons(i64, i64, i32) #1

declare dso_local i64 @build_address(i64) #1

declare dso_local i64 @convert_to_base(i64, i32, i32, i32) #1

declare dso_local i32 @build_pointer_type(i64) #1

declare dso_local i64 @build_unary_op(i32, i64, i32) #1

declare dso_local i64 @perform_implicit_conversion(i32, i64) #1

declare dso_local i64 @build_nop(i64, i64) #1

declare dso_local i64 @convert_like(%struct.TYPE_7__*, i64) #1

declare dso_local i32 @obstack_free(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
