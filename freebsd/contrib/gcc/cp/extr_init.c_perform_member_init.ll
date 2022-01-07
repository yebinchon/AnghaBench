; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_init.c_perform_member_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_init.c_perform_member_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i64 0, align 8
@warn_ecpp = common dso_local global i64 0, align 8
@ARRAY_TYPE = common dso_local global i64 0, align 8
@OPT_Weffc__ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"%J%qD should be initialized in the member initialization list\00", align 1
@current_function_decl = common dso_local global i32 0, align 4
@void_type_node = common dso_local global i64 0, align 8
@current_class_ref = common dso_local global i32 0, align 4
@error_mark_node = common dso_local global i64 0, align 8
@INIT_EXPR = common dso_local global i32 0, align 4
@REFERENCE_TYPE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [59 x i8] c"%Jdefault-initialization of %q#D, which has reference type\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"%Juninitialized reference member %qD\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"%Juninitialized member %qD with %<const%> type %qT\00", align 1
@TREE_LIST = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"member initializer\00", align 1
@sfk_complete_destructor = common dso_local global i32 0, align 4
@LOOKUP_NONVIRTUAL = common dso_local global i32 0, align 4
@LOOKUP_DESTRUCTOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @perform_member_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perform_member_init(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i64, i64* %3, align 8
  %10 = call i64 @TREE_TYPE(i64 %9)
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @NULL_TREE, align 8
  %13 = icmp ne i64 %11, %12
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %7, align 4
  %15 = load i64, i64* @warn_ecpp, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %17
  %21 = load i64, i64* %6, align 8
  %22 = call i64 @TREE_CODE(i64 %21)
  %23 = load i64, i64* @ARRAY_TYPE, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load i32, i32* @OPT_Weffc__, align 4
  %27 = load i32, i32* @current_function_decl, align 4
  %28 = load i64, i64* %3, align 8
  %29 = call i32 @warning(i32 %26, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %27, i64 %28)
  br label %30

30:                                               ; preds = %25, %20, %17, %2
  %31 = load i64, i64* %4, align 8
  %32 = load i64, i64* @void_type_node, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i64, i64* @NULL_TREE, align 8
  store i64 %35, i64* %4, align 8
  br label %36

36:                                               ; preds = %34, %30
  %37 = load i32, i32* @current_class_ref, align 4
  %38 = load i64, i64* %3, align 8
  %39 = load i64, i64* @NULL_TREE, align 8
  %40 = call i64 @build_class_member_access_expr(i32 %37, i64 %38, i64 %39, i32 1)
  store i64 %40, i64* %5, align 8
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* @error_mark_node, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %187

45:                                               ; preds = %36
  %46 = load i64, i64* %6, align 8
  %47 = call i64 @ANON_AGGR_TYPE_P(i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %45
  %50 = load i64, i64* %4, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %49
  %53 = load i32, i32* @INIT_EXPR, align 4
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* %5, align 8
  %56 = load i64, i64* %4, align 8
  %57 = call i64 @TREE_VALUE(i64 %56)
  %58 = call i64 @build2(i32 %53, i64 %54, i64 %55, i64 %57)
  store i64 %58, i64* %4, align 8
  %59 = load i64, i64* %4, align 8
  %60 = call i32 @finish_expr_stmt(i64 %59)
  br label %61

61:                                               ; preds = %52, %49
  br label %164

62:                                               ; preds = %45
  %63 = load i64, i64* %6, align 8
  %64 = call i64 @TYPE_NEEDS_CONSTRUCTING(i64 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %103

66:                                               ; preds = %62
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %97

69:                                               ; preds = %66
  %70 = load i64, i64* %6, align 8
  %71 = call i64 @TREE_CODE(i64 %70)
  %72 = load i64, i64* @ARRAY_TYPE, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %97

74:                                               ; preds = %69
  %75 = load i64, i64* %4, align 8
  %76 = load i64, i64* @NULL_TREE, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %97

78:                                               ; preds = %74
  %79 = load i64, i64* %4, align 8
  %80 = call i64 @TREE_CHAIN(i64 %79)
  %81 = load i64, i64* @NULL_TREE, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %97

83:                                               ; preds = %78
  %84 = load i64, i64* %4, align 8
  %85 = call i64 @TREE_VALUE(i64 %84)
  %86 = call i64 @TREE_TYPE(i64 %85)
  %87 = call i64 @TREE_CODE(i64 %86)
  %88 = load i64, i64* @ARRAY_TYPE, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %83
  %91 = load i64, i64* %5, align 8
  %92 = load i64, i64* @NULL_TREE, align 8
  %93 = load i64, i64* %4, align 8
  %94 = call i64 @TREE_VALUE(i64 %93)
  %95 = call i64 @build_vec_init(i64 %91, i64 %92, i64 %94, i32 0, i32 1)
  %96 = call i32 @finish_expr_stmt(i64 %95)
  br label %102

97:                                               ; preds = %83, %78, %74, %69, %66
  %98 = load i64, i64* %5, align 8
  %99 = load i64, i64* %4, align 8
  %100 = call i64 @build_aggr_init(i64 %98, i64 %99, i32 0)
  %101 = call i32 @finish_expr_stmt(i64 %100)
  br label %102

102:                                              ; preds = %97, %90
  br label %163

103:                                              ; preds = %62
  %104 = load i64, i64* %4, align 8
  %105 = load i64, i64* @NULL_TREE, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %144

107:                                              ; preds = %103
  %108 = load i32, i32* %7, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %123

110:                                              ; preds = %107
  %111 = load i64, i64* %6, align 8
  %112 = load i64, i64* @NULL_TREE, align 8
  %113 = call i64 @build_default_init(i64 %111, i64 %112)
  store i64 %113, i64* %4, align 8
  %114 = load i64, i64* %6, align 8
  %115 = call i64 @TREE_CODE(i64 %114)
  %116 = load i64, i64* @REFERENCE_TYPE, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %110
  %119 = load i32, i32* @current_function_decl, align 4
  %120 = load i64, i64* %3, align 8
  %121 = call i32 @warning(i32 0, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %119, i64 %120)
  br label %122

122:                                              ; preds = %118, %110
  br label %143

123:                                              ; preds = %107
  %124 = load i64, i64* %6, align 8
  %125 = call i64 @TREE_CODE(i64 %124)
  %126 = load i64, i64* @REFERENCE_TYPE, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %123
  %129 = load i32, i32* @current_function_decl, align 4
  %130 = load i64, i64* %3, align 8
  %131 = call i32 (i8*, i32, i64, ...) @pedwarn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %129, i64 %130)
  br label %142

132:                                              ; preds = %123
  %133 = load i64, i64* %6, align 8
  %134 = call i64 @CP_TYPE_CONST_P(i64 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %132
  %137 = load i32, i32* @current_function_decl, align 4
  %138 = load i64, i64* %3, align 8
  %139 = load i64, i64* %6, align 8
  %140 = call i32 (i8*, i32, i64, ...) @pedwarn(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %137, i64 %138, i64 %139)
  br label %141

141:                                              ; preds = %136, %132
  br label %142

142:                                              ; preds = %141, %128
  br label %143

143:                                              ; preds = %142, %122
  br label %153

144:                                              ; preds = %103
  %145 = load i64, i64* %4, align 8
  %146 = call i64 @TREE_CODE(i64 %145)
  %147 = load i64, i64* @TREE_LIST, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %144
  %150 = load i64, i64* %4, align 8
  %151 = call i64 @build_x_compound_expr_from_list(i64 %150, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  store i64 %151, i64* %4, align 8
  br label %152

152:                                              ; preds = %149, %144
  br label %153

153:                                              ; preds = %152, %143
  %154 = load i64, i64* %4, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %153
  %157 = load i64, i64* %5, align 8
  %158 = load i32, i32* @INIT_EXPR, align 4
  %159 = load i64, i64* %4, align 8
  %160 = call i64 @build_modify_expr(i64 %157, i32 %158, i64 %159)
  %161 = call i32 @finish_expr_stmt(i64 %160)
  br label %162

162:                                              ; preds = %156, %153
  br label %163

163:                                              ; preds = %162, %102
  br label %164

164:                                              ; preds = %163, %61
  %165 = load i64, i64* %6, align 8
  %166 = call i64 @TYPE_HAS_NONTRIVIAL_DESTRUCTOR(i64 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %187

168:                                              ; preds = %164
  %169 = load i32, i32* @current_class_ref, align 4
  %170 = load i64, i64* %3, align 8
  %171 = load i64, i64* @NULL_TREE, align 8
  %172 = call i64 @build_class_member_access_expr(i32 %169, i64 %170, i64 %171, i32 0)
  store i64 %172, i64* %8, align 8
  %173 = load i64, i64* %6, align 8
  %174 = load i64, i64* %8, align 8
  %175 = load i32, i32* @sfk_complete_destructor, align 4
  %176 = load i32, i32* @LOOKUP_NONVIRTUAL, align 4
  %177 = load i32, i32* @LOOKUP_DESTRUCTOR, align 4
  %178 = or i32 %176, %177
  %179 = call i64 @build_delete(i64 %173, i64 %174, i32 %175, i32 %178, i32 0)
  store i64 %179, i64* %8, align 8
  %180 = load i64, i64* %8, align 8
  %181 = load i64, i64* @error_mark_node, align 8
  %182 = icmp ne i64 %180, %181
  br i1 %182, label %183, label %186

183:                                              ; preds = %168
  %184 = load i64, i64* %8, align 8
  %185 = call i32 @finish_eh_cleanup(i64 %184)
  br label %186

186:                                              ; preds = %183, %168
  br label %187

187:                                              ; preds = %44, %186, %164
  ret void
}

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @warning(i32, i8*, i32, i64) #1

declare dso_local i64 @build_class_member_access_expr(i32, i64, i64, i32) #1

declare dso_local i64 @ANON_AGGR_TYPE_P(i64) #1

declare dso_local i64 @build2(i32, i64, i64, i64) #1

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i32 @finish_expr_stmt(i64) #1

declare dso_local i64 @TYPE_NEEDS_CONSTRUCTING(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i64 @build_vec_init(i64, i64, i64, i32, i32) #1

declare dso_local i64 @build_aggr_init(i64, i64, i32) #1

declare dso_local i64 @build_default_init(i64, i64) #1

declare dso_local i32 @pedwarn(i8*, i32, i64, ...) #1

declare dso_local i64 @CP_TYPE_CONST_P(i64) #1

declare dso_local i64 @build_x_compound_expr_from_list(i64, i8*) #1

declare dso_local i64 @build_modify_expr(i64, i32, i64) #1

declare dso_local i64 @TYPE_HAS_NONTRIVIAL_DESTRUCTOR(i64) #1

declare dso_local i64 @build_delete(i64, i64, i32, i32, i32) #1

declare dso_local i32 @finish_eh_cleanup(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
