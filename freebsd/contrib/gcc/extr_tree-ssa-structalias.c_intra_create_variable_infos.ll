; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-structalias.c_intra_create_variable_infos.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-structalias.c_intra_create_variable_infos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.constraint_expr = type { i32, i64, i8* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, %struct.TYPE_5__* }

@current_function_decl = common dso_local global i32 0, align 4
@flag_argument_noalias = common dso_local global i32 0, align 4
@SCALAR = common dso_local global i8* null, align 8
@NULL_TREE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"PARM_NOALIAS\00", align 1
@referenced_vars = common dso_local global i64 0, align 8
@ADDRESSOF = common dso_local global i8* null, align 8
@nonlocal_all = common dso_local global i64 0, align 8
@void_type_node = common dso_local global i32 0, align 4
@nonlocal_vars_id = common dso_local global i32 0, align 4
@escaped_vars_id = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @intra_create_variable_infos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intra_create_variable_infos() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.constraint_expr, align 8
  %3 = alloca %struct.constraint_expr, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.constraint_expr, align 8
  %11 = load i32, i32* @current_function_decl, align 4
  %12 = call i64 @DECL_ARGUMENTS(i32 %11)
  store i64 %12, i64* %1, align 8
  br label %13

13:                                               ; preds = %110, %0
  %14 = load i64, i64* %1, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %113

16:                                               ; preds = %13
  %17 = load i64, i64* %1, align 8
  %18 = call i32 @could_have_pointers(i64 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  br label %110

21:                                               ; preds = %16
  %22 = load i64, i64* %1, align 8
  %23 = call %struct.TYPE_5__* @get_vi_for_tree(i64 %22)
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %6, align 4
  %26 = load i64, i64* %1, align 8
  %27 = call i64 @TREE_TYPE(i64 %26)
  %28 = call i64 @POINTER_TYPE_P(i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %95

30:                                               ; preds = %21
  %31 = load i32, i32* @flag_argument_noalias, align 4
  %32 = icmp sgt i32 %31, 2
  br i1 %32, label %33, label %95

33:                                               ; preds = %30
  %34 = load i64, i64* %1, align 8
  %35 = call i64 @heapvar_lookup(i64 %34)
  store i64 %35, i64* %8, align 8
  %36 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %2, i32 0, i32 1
  store i64 0, i64* %36, align 8
  %37 = load i8*, i8** @SCALAR, align 8
  %38 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %2, i32 0, i32 2
  store i8* %37, i8** %38, align 8
  %39 = load i64, i64* %1, align 8
  %40 = call %struct.TYPE_5__* @get_vi_for_tree(i64 %39)
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %2, i32 0, i32 0
  store i32 %42, i32* %43, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* @NULL_TREE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %61

47:                                               ; preds = %33
  %48 = load i64, i64* %1, align 8
  %49 = call i64 @TREE_TYPE(i64 %48)
  %50 = call i64 @TREE_TYPE(i64 %49)
  %51 = call i64 @create_tmp_var_raw(i64 %50, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i64 %51, i64* %8, align 8
  store i32 1, i32* %9, align 4
  %52 = load i64, i64* @referenced_vars, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @add_referenced_var(i32 %55)
  br label %57

57:                                               ; preds = %54, %47
  %58 = load i64, i64* %1, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @heapvar_insert(i64 %58, i32 %59)
  br label %61

61:                                               ; preds = %57, %33
  %62 = load i64, i64* %8, align 8
  %63 = call %struct.TYPE_5__* @get_vi_for_tree(i64 %62)
  store %struct.TYPE_5__* %63, %struct.TYPE_5__** %7, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  store i32 1, i32* %65, align 4
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 2
  store i32 1, i32* %67, align 8
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %3, i32 0, i32 0
  store i32 %70, i32* %71, align 8
  %72 = load i8*, i8** @ADDRESSOF, align 8
  %73 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %3, i32 0, i32 2
  store i8* %72, i8** %73, align 8
  %74 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %3, i32 0, i32 1
  store i64 0, i64* %74, align 8
  %75 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %2, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call %struct.TYPE_5__* @get_varinfo(i32 %76)
  store %struct.TYPE_5__* %77, %struct.TYPE_5__** %5, align 8
  br label %78

78:                                               ; preds = %90, %61
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %80 = icmp ne %struct.TYPE_5__* %79, null
  br i1 %80, label %81, label %94

81:                                               ; preds = %78
  %82 = bitcast %struct.constraint_expr* %10 to i8*
  %83 = bitcast %struct.constraint_expr* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %82, i8* align 8 %83, i64 24, i1 false)
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %10, i32 0, i32 0
  store i32 %86, i32* %87, align 8
  %88 = call i32 @new_constraint(%struct.constraint_expr* byval(%struct.constraint_expr) align 8 %10, %struct.constraint_expr* byval(%struct.constraint_expr) align 8 %3)
  %89 = call i32 @process_constraint(i32 %88)
  br label %90

90:                                               ; preds = %81
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 5
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  store %struct.TYPE_5__* %93, %struct.TYPE_5__** %5, align 8
  br label %78

94:                                               ; preds = %78
  br label %109

95:                                               ; preds = %30, %21
  %96 = load i32, i32* %6, align 4
  %97 = call %struct.TYPE_5__* @get_varinfo(i32 %96)
  store %struct.TYPE_5__* %97, %struct.TYPE_5__** %5, align 8
  br label %98

98:                                               ; preds = %104, %95
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %100 = icmp ne %struct.TYPE_5__* %99, null
  br i1 %100, label %101, label %108

101:                                              ; preds = %98
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %103 = call i32 @make_constraint_from_escaped(%struct.TYPE_5__* %102)
  br label %104

104:                                              ; preds = %101
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 5
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %106, align 8
  store %struct.TYPE_5__* %107, %struct.TYPE_5__** %5, align 8
  br label %98

108:                                              ; preds = %98
  br label %109

109:                                              ; preds = %108, %94
  br label %110

110:                                              ; preds = %109, %20
  %111 = load i64, i64* %1, align 8
  %112 = call i64 @TREE_CHAIN(i64 %111)
  store i64 %112, i64* %1, align 8
  br label %13

113:                                              ; preds = %13
  %114 = load i64, i64* @nonlocal_all, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %113
  %117 = load i32, i32* @void_type_node, align 4
  %118 = call i64 @create_nonlocal_var(i32 %117)
  store i64 %118, i64* @nonlocal_all, align 8
  br label %119

119:                                              ; preds = %116, %113
  %120 = load i64, i64* @nonlocal_all, align 8
  %121 = load i64, i64* @nonlocal_all, align 8
  %122 = call i32 @get_name(i64 %121)
  %123 = call i32 @create_variable_info_for(i64 %120, i32 %122)
  store i32 %123, i32* @nonlocal_vars_id, align 4
  %124 = load i32, i32* @nonlocal_vars_id, align 4
  %125 = call %struct.TYPE_5__* @get_varinfo(i32 %124)
  store %struct.TYPE_5__* %125, %struct.TYPE_5__** %4, align 8
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 1
  store i32 1, i32* %127, align 4
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 2
  store i32 1, i32* %129, align 8
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 3
  store i32 1, i32* %131, align 4
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 4
  store i32 1, i32* %133, align 8
  %134 = load i32, i32* @nonlocal_vars_id, align 4
  %135 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %3, i32 0, i32 0
  store i32 %134, i32* %135, align 8
  %136 = load i8*, i8** @ADDRESSOF, align 8
  %137 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %3, i32 0, i32 2
  store i8* %136, i8** %137, align 8
  %138 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %3, i32 0, i32 1
  store i64 0, i64* %138, align 8
  %139 = load i32, i32* @escaped_vars_id, align 4
  %140 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %2, i32 0, i32 0
  store i32 %139, i32* %140, align 8
  %141 = load i8*, i8** @SCALAR, align 8
  %142 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %2, i32 0, i32 2
  store i8* %141, i8** %142, align 8
  %143 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %2, i32 0, i32 1
  store i64 0, i64* %143, align 8
  %144 = call i32 @new_constraint(%struct.constraint_expr* byval(%struct.constraint_expr) align 8 %2, %struct.constraint_expr* byval(%struct.constraint_expr) align 8 %3)
  %145 = call i32 @process_constraint(i32 %144)
  ret void
}

declare dso_local i64 @DECL_ARGUMENTS(i32) #1

declare dso_local i32 @could_have_pointers(i64) #1

declare dso_local %struct.TYPE_5__* @get_vi_for_tree(i64) #1

declare dso_local i64 @POINTER_TYPE_P(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @heapvar_lookup(i64) #1

declare dso_local i64 @create_tmp_var_raw(i64, i8*) #1

declare dso_local i32 @add_referenced_var(i32) #1

declare dso_local i32 @heapvar_insert(i64, i32) #1

declare dso_local %struct.TYPE_5__* @get_varinfo(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @process_constraint(i32) #1

declare dso_local i32 @new_constraint(%struct.constraint_expr* byval(%struct.constraint_expr) align 8, %struct.constraint_expr* byval(%struct.constraint_expr) align 8) #1

declare dso_local i32 @make_constraint_from_escaped(%struct.TYPE_5__*) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i64 @create_nonlocal_var(i32) #1

declare dso_local i32 @create_variable_info_for(i64, i32) #1

declare dso_local i32 @get_name(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
