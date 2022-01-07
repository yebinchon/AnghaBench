; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_method.c_do_build_assign_ref.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_method.c_do_build_assign_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@current_class_type = common dso_local global i64 0, align 8
@MODIFY_EXPR = common dso_local global i32 0, align 4
@void_type_node = common dso_local global i64 0, align 8
@current_class_ref = common dso_local global i64 0, align 8
@PLUS_EXPR = common dso_local global i32 0, align 4
@NOP_EXPR = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i64 0, align 8
@LOOKUP_NORMAL = common dso_local global i32 0, align 4
@LOOKUP_NONVIRTUAL = common dso_local global i32 0, align 4
@FIELD_DECL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [68 x i8] c"non-static const member %q#D, can't use default assignment operator\00", align 1
@REFERENCE_TYPE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [72 x i8] c"non-static reference member %q#D, can't use default assignment operator\00", align 1
@COMPONENT_REF = common dso_local global i32 0, align 4
@TYPE_QUAL_CONST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @do_build_assign_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_build_assign_ref(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %17 = load i64, i64* %2, align 8
  %18 = call i64 @DECL_ARGUMENTS(i64 %17)
  %19 = call i64 @TREE_CHAIN(i64 %18)
  store i64 %19, i64* %3, align 8
  %20 = call i64 @begin_compound_stmt(i32 0)
  store i64 %20, i64* %4, align 8
  %21 = load i64, i64* %3, align 8
  %22 = call i64 @convert_from_reference(i64 %21)
  store i64 %22, i64* %3, align 8
  %23 = load i64, i64* @current_class_type, align 8
  %24 = call i64 @TYPE_HAS_TRIVIAL_ASSIGN_REF(i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %1
  %27 = load i64, i64* @current_class_type, align 8
  %28 = call i64 @is_empty_class(i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %184

31:                                               ; preds = %26, %1
  %32 = load i64, i64* @current_class_type, align 8
  %33 = call i64 @TYPE_HAS_TRIVIAL_ASSIGN_REF(i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = load i32, i32* @MODIFY_EXPR, align 4
  %37 = load i64, i64* @void_type_node, align 8
  %38 = load i64, i64* @current_class_ref, align 8
  %39 = load i64, i64* %3, align 8
  %40 = call i64 @build2(i32 %36, i64 %37, i64 %38, i64 %39)
  store i64 %40, i64* %5, align 8
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @finish_expr_stmt(i64 %41)
  br label %183

43:                                               ; preds = %31
  %44 = load i64, i64* %3, align 8
  %45 = call i64 @TREE_TYPE(i64 %44)
  %46 = call i32 @cp_type_quals(i64 %45)
  store i32 %46, i32* %7, align 4
  %47 = load i64, i64* @current_class_type, align 8
  %48 = call i64 @TYPE_BINFO(i64 %47)
  store i64 %48, i64* %9, align 8
  store i32 0, i32* %8, align 4
  br label %49

49:                                               ; preds = %72, %43
  %50 = load i64, i64* %9, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load i64, i64* %10, align 8
  %53 = call i64 @BINFO_BASE_ITERATE(i64 %50, i32 %51, i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %75

55:                                               ; preds = %49
  %56 = load i32, i32* @PLUS_EXPR, align 4
  %57 = load i64, i64* %3, align 8
  %58 = load i64, i64* %10, align 8
  %59 = call i64 @build_base_path(i32 %56, i64 %57, i64 %58, i32 1)
  store i64 %59, i64* %11, align 8
  %60 = load i64, i64* @current_class_ref, align 8
  %61 = load i32, i32* @NOP_EXPR, align 4
  %62 = call i32 @ansi_assopname(i32 %61)
  %63 = load i64, i64* @NULL_TREE, align 8
  %64 = load i64, i64* %11, align 8
  %65 = call i32 @build_tree_list(i64 %63, i64 %64)
  %66 = load i64, i64* %10, align 8
  %67 = load i32, i32* @LOOKUP_NORMAL, align 4
  %68 = load i32, i32* @LOOKUP_NONVIRTUAL, align 4
  %69 = or i32 %67, %68
  %70 = call i64 @build_special_member_call(i64 %60, i32 %62, i32 %65, i64 %66, i32 %69)
  %71 = call i32 @finish_expr_stmt(i64 %70)
  br label %72

72:                                               ; preds = %55
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %8, align 4
  br label %49

75:                                               ; preds = %49
  %76 = load i64, i64* @current_class_type, align 8
  %77 = call i64 @TYPE_FIELDS(i64 %76)
  store i64 %77, i64* %6, align 8
  br label %78

78:                                               ; preds = %179, %75
  %79 = load i64, i64* %6, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %182

81:                                               ; preds = %78
  %82 = load i64, i64* @current_class_ref, align 8
  store i64 %82, i64* %12, align 8
  %83 = load i64, i64* %3, align 8
  store i64 %83, i64* %13, align 8
  %84 = load i64, i64* %6, align 8
  store i64 %84, i64* %14, align 8
  %85 = load i64, i64* %14, align 8
  %86 = call i64 @TREE_CODE(i64 %85)
  %87 = load i64, i64* @FIELD_DECL, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %93, label %89

89:                                               ; preds = %81
  %90 = load i64, i64* %14, align 8
  %91 = call i64 @DECL_ARTIFICIAL(i64 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %89, %81
  br label %179

94:                                               ; preds = %89
  %95 = load i64, i64* %14, align 8
  %96 = call i64 @TREE_TYPE(i64 %95)
  store i64 %96, i64* %15, align 8
  %97 = load i64, i64* %15, align 8
  %98 = call i64 @CP_TYPE_CONST_P(i64 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %94
  %101 = load i64, i64* %14, align 8
  %102 = call i32 @error(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i64 %101)
  br label %179

103:                                              ; preds = %94
  %104 = load i64, i64* %15, align 8
  %105 = call i64 @TREE_CODE(i64 %104)
  %106 = load i64, i64* @REFERENCE_TYPE, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load i64, i64* %14, align 8
  %110 = call i32 @error(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i64 %109)
  br label %179

111:                                              ; preds = %103
  br label %112

112:                                              ; preds = %111
  %113 = load i64, i64* %14, align 8
  %114 = call i64 @DECL_NAME(i64 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %112
  %117 = load i64, i64* %14, align 8
  %118 = call i64 @DECL_NAME(i64 %117)
  %119 = call i64 @VFIELD_NAME_P(i64 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  br label %179

122:                                              ; preds = %116
  br label %135

123:                                              ; preds = %112
  %124 = load i64, i64* %15, align 8
  %125 = call i64 @ANON_AGGR_TYPE_P(i64 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %123
  %128 = load i64, i64* %15, align 8
  %129 = call i64 @TYPE_FIELDS(i64 %128)
  %130 = load i64, i64* @NULL_TREE, align 8
  %131 = icmp ne i64 %129, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %127
  br label %134

133:                                              ; preds = %127, %123
  br label %179

134:                                              ; preds = %132
  br label %135

135:                                              ; preds = %134, %122
  %136 = load i32, i32* @COMPONENT_REF, align 4
  %137 = load i64, i64* %15, align 8
  %138 = load i64, i64* %12, align 8
  %139 = load i64, i64* %14, align 8
  %140 = load i64, i64* @NULL_TREE, align 8
  %141 = call i64 @build3(i32 %136, i64 %137, i64 %138, i64 %139, i64 %140)
  store i64 %141, i64* %12, align 8
  %142 = load i32, i32* %7, align 4
  store i32 %142, i32* %16, align 4
  %143 = load i64, i64* %14, align 8
  %144 = call i64 @DECL_MUTABLE_P(i64 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %135
  %147 = load i32, i32* @TYPE_QUAL_CONST, align 4
  %148 = xor i32 %147, -1
  %149 = load i32, i32* %16, align 4
  %150 = and i32 %149, %148
  store i32 %150, i32* %16, align 4
  br label %151

151:                                              ; preds = %146, %135
  %152 = load i64, i64* %15, align 8
  %153 = load i32, i32* %16, align 4
  %154 = call i64 @cp_build_qualified_type(i64 %152, i32 %153)
  store i64 %154, i64* %15, align 8
  %155 = load i32, i32* @COMPONENT_REF, align 4
  %156 = load i64, i64* %15, align 8
  %157 = load i64, i64* %13, align 8
  %158 = load i64, i64* %14, align 8
  %159 = load i64, i64* @NULL_TREE, align 8
  %160 = call i64 @build3(i32 %155, i64 %156, i64 %157, i64 %158, i64 %159)
  store i64 %160, i64* %13, align 8
  %161 = load i64, i64* %14, align 8
  %162 = call i64 @DECL_NAME(i64 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %151
  %165 = load i64, i64* %12, align 8
  %166 = load i32, i32* @NOP_EXPR, align 4
  %167 = load i64, i64* %13, align 8
  %168 = call i64 @build_modify_expr(i64 %165, i32 %166, i64 %167)
  store i64 %168, i64* %13, align 8
  br label %176

169:                                              ; preds = %151
  %170 = load i32, i32* @MODIFY_EXPR, align 4
  %171 = load i64, i64* %12, align 8
  %172 = call i64 @TREE_TYPE(i64 %171)
  %173 = load i64, i64* %12, align 8
  %174 = load i64, i64* %13, align 8
  %175 = call i64 @build2(i32 %170, i64 %172, i64 %173, i64 %174)
  store i64 %175, i64* %13, align 8
  br label %176

176:                                              ; preds = %169, %164
  %177 = load i64, i64* %13, align 8
  %178 = call i32 @finish_expr_stmt(i64 %177)
  br label %179

179:                                              ; preds = %176, %133, %121, %108, %100, %93
  %180 = load i64, i64* %6, align 8
  %181 = call i64 @TREE_CHAIN(i64 %180)
  store i64 %181, i64* %6, align 8
  br label %78

182:                                              ; preds = %78
  br label %183

183:                                              ; preds = %182, %35
  br label %184

184:                                              ; preds = %183, %30
  %185 = load i64, i64* @current_class_ref, align 8
  %186 = call i32 @finish_return_stmt(i64 %185)
  %187 = load i64, i64* %4, align 8
  %188 = call i32 @finish_compound_stmt(i64 %187)
  ret void
}

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i64 @DECL_ARGUMENTS(i64) #1

declare dso_local i64 @begin_compound_stmt(i32) #1

declare dso_local i64 @convert_from_reference(i64) #1

declare dso_local i64 @TYPE_HAS_TRIVIAL_ASSIGN_REF(i64) #1

declare dso_local i64 @is_empty_class(i64) #1

declare dso_local i64 @build2(i32, i64, i64, i64) #1

declare dso_local i32 @finish_expr_stmt(i64) #1

declare dso_local i32 @cp_type_quals(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @TYPE_BINFO(i64) #1

declare dso_local i64 @BINFO_BASE_ITERATE(i64, i32, i64) #1

declare dso_local i64 @build_base_path(i32, i64, i64, i32) #1

declare dso_local i64 @build_special_member_call(i64, i32, i32, i64, i32) #1

declare dso_local i32 @ansi_assopname(i32) #1

declare dso_local i32 @build_tree_list(i64, i64) #1

declare dso_local i64 @TYPE_FIELDS(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @DECL_ARTIFICIAL(i64) #1

declare dso_local i64 @CP_TYPE_CONST_P(i64) #1

declare dso_local i32 @error(i8*, i64) #1

declare dso_local i64 @DECL_NAME(i64) #1

declare dso_local i64 @VFIELD_NAME_P(i64) #1

declare dso_local i64 @ANON_AGGR_TYPE_P(i64) #1

declare dso_local i64 @build3(i32, i64, i64, i64, i64) #1

declare dso_local i64 @DECL_MUTABLE_P(i64) #1

declare dso_local i64 @cp_build_qualified_type(i64, i32) #1

declare dso_local i64 @build_modify_expr(i64, i32, i64) #1

declare dso_local i32 @finish_return_stmt(i64) #1

declare dso_local i32 @finish_compound_stmt(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
