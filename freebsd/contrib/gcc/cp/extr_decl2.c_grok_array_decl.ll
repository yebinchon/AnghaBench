; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl2.c_grok_array_decl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl2.c_grok_array_decl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@error_mark_node = common dso_local global i64 0, align 8
@processing_template_decl = common dso_local global i64 0, align 8
@ARRAY_REF = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@LOOKUP_NORMAL = common dso_local global i32 0, align 4
@ARRAY_TYPE = common dso_local global i64 0, align 8
@WANT_POINTER = common dso_local global i32 0, align 4
@WANT_INT = common dso_local global i32 0, align 4
@WANT_ENUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"ambiguous conversion for array subscript\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"invalid types %<%T[%T]%> for array subscript\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @grok_array_decl(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %14 = load i64, i64* %4, align 8
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %5, align 8
  store i64 %15, i64* %9, align 8
  %16 = load i64, i64* %4, align 8
  %17 = call i64 @error_operand_p(i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = load i64, i64* %5, align 8
  %21 = call i64 @error_operand_p(i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19, %2
  %24 = load i64, i64* @error_mark_node, align 8
  store i64 %24, i64* %3, align 8
  br label %176

25:                                               ; preds = %19
  %26 = load i64, i64* @processing_template_decl, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %48

28:                                               ; preds = %25
  %29 = load i64, i64* %4, align 8
  %30 = call i64 @type_dependent_expression_p(i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i64, i64* %5, align 8
  %34 = call i64 @type_dependent_expression_p(i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %32, %28
  %37 = load i32, i32* @ARRAY_REF, align 4
  %38 = load i64, i64* %4, align 8
  %39 = load i64, i64* %5, align 8
  %40 = load i32, i32* @NULL_TREE, align 4
  %41 = load i32, i32* @NULL_TREE, align 4
  %42 = call i64 @build_min_nt(i32 %37, i64 %38, i64 %39, i32 %40, i32 %41)
  store i64 %42, i64* %3, align 8
  br label %176

43:                                               ; preds = %32
  %44 = load i64, i64* %4, align 8
  %45 = call i64 @build_non_dependent_expr(i64 %44)
  store i64 %45, i64* %4, align 8
  %46 = load i64, i64* %5, align 8
  %47 = call i64 @build_non_dependent_expr(i64 %46)
  store i64 %47, i64* %5, align 8
  br label %48

48:                                               ; preds = %43, %25
  %49 = load i64, i64* %4, align 8
  %50 = call i8* @TREE_TYPE(i64 %49)
  %51 = ptrtoint i8* %50 to i64
  store i64 %51, i64* %6, align 8
  %52 = load i64, i64* %6, align 8
  %53 = call i32 @gcc_assert(i64 %52)
  %54 = load i64, i64* %6, align 8
  %55 = call i64 @non_reference(i64 %54)
  store i64 %55, i64* %6, align 8
  %56 = load i64, i64* %6, align 8
  %57 = inttoptr i64 %56 to i8*
  %58 = call i64 @IS_AGGR_TYPE(i8* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %48
  %61 = load i64, i64* %5, align 8
  %62 = call i8* @TREE_TYPE(i64 %61)
  %63 = call i64 @IS_AGGR_TYPE(i8* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %60, %48
  %66 = load i32, i32* @ARRAY_REF, align 4
  %67 = load i32, i32* @LOOKUP_NORMAL, align 4
  %68 = load i64, i64* %4, align 8
  %69 = load i64, i64* %5, align 8
  %70 = load i32, i32* @NULL_TREE, align 4
  %71 = call i64 @build_new_op(i32 %66, i32 %67, i64 %68, i64 %69, i32 %70, i32* null)
  store i64 %71, i64* %7, align 8
  br label %159

72:                                               ; preds = %60
  %73 = load i64, i64* %6, align 8
  %74 = inttoptr i64 %73 to i8*
  %75 = call i64 @TREE_CODE(i8* %74)
  %76 = load i64, i64* @ARRAY_TYPE, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = load i64, i64* %4, align 8
  store i64 %79, i64* %10, align 8
  br label %84

80:                                               ; preds = %72
  %81 = load i32, i32* @WANT_POINTER, align 4
  %82 = load i64, i64* %4, align 8
  %83 = call i64 @build_expr_type_conversion(i32 %81, i64 %82, i32 0)
  store i64 %83, i64* %10, align 8
  br label %84

84:                                               ; preds = %80, %78
  %85 = load i64, i64* %5, align 8
  %86 = call i8* @TREE_TYPE(i64 %85)
  %87 = call i64 @TREE_CODE(i8* %86)
  %88 = load i64, i64* @ARRAY_TYPE, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %84
  %91 = load i64, i64* %5, align 8
  store i64 %91, i64* %11, align 8
  br label %96

92:                                               ; preds = %84
  %93 = load i32, i32* @WANT_POINTER, align 4
  %94 = load i64, i64* %5, align 8
  %95 = call i64 @build_expr_type_conversion(i32 %93, i64 %94, i32 0)
  store i64 %95, i64* %11, align 8
  br label %96

96:                                               ; preds = %92, %90
  %97 = load i32, i32* @WANT_INT, align 4
  %98 = load i32, i32* @WANT_ENUM, align 4
  %99 = or i32 %97, %98
  %100 = load i64, i64* %4, align 8
  %101 = call i64 @build_expr_type_conversion(i32 %99, i64 %100, i32 0)
  store i64 %101, i64* %12, align 8
  %102 = load i32, i32* @WANT_INT, align 4
  %103 = load i32, i32* @WANT_ENUM, align 4
  %104 = or i32 %102, %103
  %105 = load i64, i64* %5, align 8
  %106 = call i64 @build_expr_type_conversion(i32 %104, i64 %105, i32 0)
  store i64 %106, i64* %13, align 8
  %107 = load i64, i64* %10, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %120

109:                                              ; preds = %96
  %110 = load i64, i64* %13, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %109
  %113 = load i64, i64* %12, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %112
  %116 = load i64, i64* %11, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %115
  %119 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %120

120:                                              ; preds = %118, %115, %112, %109, %96
  %121 = load i64, i64* %10, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %120
  %124 = load i64, i64* %13, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = load i64, i64* %10, align 8
  store i64 %127, i64* %4, align 8
  %128 = load i64, i64* %13, align 8
  store i64 %128, i64* %5, align 8
  br label %145

129:                                              ; preds = %123, %120
  %130 = load i64, i64* %12, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %129
  %133 = load i64, i64* %11, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %132
  %136 = load i64, i64* %11, align 8
  store i64 %136, i64* %4, align 8
  %137 = load i64, i64* %12, align 8
  store i64 %137, i64* %5, align 8
  br label %144

138:                                              ; preds = %132, %129
  %139 = load i64, i64* %6, align 8
  %140 = load i64, i64* %5, align 8
  %141 = call i8* @TREE_TYPE(i64 %140)
  %142 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %139, i8* %141)
  %143 = load i64, i64* @error_mark_node, align 8
  store i64 %143, i64* %3, align 8
  br label %176

144:                                              ; preds = %135
  br label %145

145:                                              ; preds = %144, %126
  %146 = load i64, i64* %4, align 8
  %147 = load i64, i64* @error_mark_node, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %153, label %149

149:                                              ; preds = %145
  %150 = load i64, i64* %5, align 8
  %151 = load i64, i64* @error_mark_node, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %155

153:                                              ; preds = %149, %145
  %154 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %155

155:                                              ; preds = %153, %149
  %156 = load i64, i64* %4, align 8
  %157 = load i64, i64* %5, align 8
  %158 = call i64 @build_array_ref(i64 %156, i64 %157)
  store i64 %158, i64* %7, align 8
  br label %159

159:                                              ; preds = %155, %65
  %160 = load i64, i64* @processing_template_decl, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %174

162:                                              ; preds = %159
  %163 = load i64, i64* %7, align 8
  %164 = load i64, i64* @error_mark_node, align 8
  %165 = icmp ne i64 %163, %164
  br i1 %165, label %166, label %174

166:                                              ; preds = %162
  %167 = load i32, i32* @ARRAY_REF, align 4
  %168 = load i64, i64* %7, align 8
  %169 = load i64, i64* %8, align 8
  %170 = load i64, i64* %9, align 8
  %171 = load i32, i32* @NULL_TREE, align 4
  %172 = load i32, i32* @NULL_TREE, align 4
  %173 = call i64 @build_min_non_dep(i32 %167, i64 %168, i64 %169, i64 %170, i32 %171, i32 %172)
  store i64 %173, i64* %3, align 8
  br label %176

174:                                              ; preds = %162, %159
  %175 = load i64, i64* %7, align 8
  store i64 %175, i64* %3, align 8
  br label %176

176:                                              ; preds = %174, %166, %138, %36, %23
  %177 = load i64, i64* %3, align 8
  ret i64 %177
}

declare dso_local i64 @error_operand_p(i64) #1

declare dso_local i64 @type_dependent_expression_p(i64) #1

declare dso_local i64 @build_min_nt(i32, i64, i64, i32, i32) #1

declare dso_local i64 @build_non_dependent_expr(i64) #1

declare dso_local i8* @TREE_TYPE(i64) #1

declare dso_local i32 @gcc_assert(i64) #1

declare dso_local i64 @non_reference(i64) #1

declare dso_local i64 @IS_AGGR_TYPE(i8*) #1

declare dso_local i64 @build_new_op(i32, i32, i64, i64, i32, i32*) #1

declare dso_local i64 @TREE_CODE(i8*) #1

declare dso_local i64 @build_expr_type_conversion(i32, i64, i32) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i64 @build_array_ref(i64, i64) #1

declare dso_local i64 @build_min_non_dep(i32, i64, i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
