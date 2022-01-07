; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-structalias.c_init_base_vars.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-structalias.c_init_base_vars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32*, i64, i32, i32 }
%struct.constraint_expr = type { i32, i64, i8* }

@void_type_node = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@nothing_tree = common dso_local global i32 0, align 4
@var_nothing = common dso_local global %struct.TYPE_11__* null, align 8
@nothing_id = common dso_local global i64 0, align 8
@varinfo_t = common dso_local global i32 0, align 4
@heap = common dso_local global i32 0, align 4
@varmap = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"ANYTHING\00", align 1
@anything_tree = common dso_local global i32 0, align 4
@var_anything = common dso_local global %struct.TYPE_11__* null, align 8
@anything_id = common dso_local global i8* null, align 8
@SCALAR = common dso_local global i8* null, align 8
@ADDRESSOF = common dso_local global i8* null, align 8
@constraint_t = common dso_local global i32 0, align 4
@constraints = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"READONLY\00", align 1
@readonly_tree = common dso_local global i32 0, align 4
@var_readonly = common dso_local global %struct.TYPE_11__* null, align 8
@readonly_id = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"INTEGER\00", align 1
@integer_tree = common dso_local global i32 0, align 4
@var_integer = common dso_local global %struct.TYPE_11__* null, align 8
@integer_id = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"ESCAPED_VARS\00", align 1
@escaped_vars_tree = common dso_local global i32 0, align 4
@var_escaped_vars = common dso_local global %struct.TYPE_11__* null, align 8
@escaped_vars_id = common dso_local global i8* null, align 8
@DEREF = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_base_vars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_base_vars() #0 {
  %1 = alloca %struct.constraint_expr, align 8
  %2 = alloca %struct.constraint_expr, align 8
  %3 = load i32, i32* @void_type_node, align 4
  %4 = call i32 @create_tmp_var_raw(i32 %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %4, i32* @nothing_tree, align 4
  %5 = load i32, i32* @nothing_tree, align 4
  %6 = call %struct.TYPE_11__* @new_var_info(i32 %5, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_11__* %6, %struct.TYPE_11__** @var_nothing, align 8
  %7 = load i32, i32* @nothing_tree, align 4
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** @var_nothing, align 8
  %9 = call i32 @insert_vi_for_tree(i32 %7, %struct.TYPE_11__* %8)
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** @var_nothing, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** @var_nothing, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 3
  store i64 0, i64* %13, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** @var_nothing, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 5
  store i32 -1, i32* %15, align 4
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** @var_nothing, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 4
  store i32 -1, i32* %17, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** @var_nothing, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 1
  store i32 1, i32* %19, align 4
  store i64 0, i64* @nothing_id, align 8
  %20 = load i32, i32* @varinfo_t, align 4
  %21 = load i32, i32* @heap, align 4
  %22 = load i32, i32* @varmap, align 4
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** @var_nothing, align 8
  %24 = call i32 @VEC_safe_push(i32 %20, i32 %21, i32 %22, %struct.TYPE_11__* %23)
  %25 = load i32, i32* @void_type_node, align 4
  %26 = call i32 @create_tmp_var_raw(i32 %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 %26, i32* @anything_tree, align 4
  %27 = load i32, i32* @anything_tree, align 4
  %28 = call %struct.TYPE_11__* @new_var_info(i32 %27, i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_11__* %28, %struct.TYPE_11__** @var_anything, align 8
  %29 = load i32, i32* @anything_tree, align 4
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** @var_anything, align 8
  %31 = call i32 @insert_vi_for_tree(i32 %29, %struct.TYPE_11__* %30)
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** @var_anything, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** @var_anything, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 5
  store i32 -1, i32* %35, align 4
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** @var_anything, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 3
  store i64 0, i64* %37, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** @var_anything, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 2
  store i32* null, i32** %39, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** @var_anything, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 4
  store i32 -1, i32* %41, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** @var_anything, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 1
  store i32 1, i32* %43, align 4
  store i8* inttoptr (i64 1 to i8*), i8** @anything_id, align 8
  %44 = load i32, i32* @varinfo_t, align 4
  %45 = load i32, i32* @heap, align 4
  %46 = load i32, i32* @varmap, align 4
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** @var_anything, align 8
  %48 = call i32 @VEC_safe_push(i32 %44, i32 %45, i32 %46, %struct.TYPE_11__* %47)
  %49 = load i8*, i8** @SCALAR, align 8
  %50 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %1, i32 0, i32 2
  store i8* %49, i8** %50, align 8
  %51 = load i8*, i8** @anything_id, align 8
  %52 = ptrtoint i8* %51 to i32
  %53 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %1, i32 0, i32 0
  store i32 %52, i32* %53, align 8
  %54 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %1, i32 0, i32 1
  store i64 0, i64* %54, align 8
  %55 = load i8*, i8** @ADDRESSOF, align 8
  %56 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %2, i32 0, i32 2
  store i8* %55, i8** %56, align 8
  %57 = load i8*, i8** @anything_id, align 8
  %58 = ptrtoint i8* %57 to i32
  %59 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %2, i32 0, i32 0
  store i32 %58, i32* %59, align 8
  %60 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %2, i32 0, i32 1
  store i64 0, i64* %60, align 8
  %61 = load i32, i32* @constraint_t, align 4
  %62 = load i32, i32* @heap, align 4
  %63 = load i32, i32* @constraints, align 4
  %64 = call %struct.TYPE_11__* @new_constraint(%struct.constraint_expr* byval(%struct.constraint_expr) align 8 %1, %struct.constraint_expr* byval(%struct.constraint_expr) align 8 %2)
  %65 = call i32 @VEC_safe_push(i32 %61, i32 %62, i32 %63, %struct.TYPE_11__* %64)
  %66 = load i32, i32* @void_type_node, align 4
  %67 = call i32 @create_tmp_var_raw(i32 %66, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i32 %67, i32* @readonly_tree, align 4
  %68 = load i32, i32* @readonly_tree, align 4
  %69 = call %struct.TYPE_11__* @new_var_info(i32 %68, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_11__* %69, %struct.TYPE_11__** @var_readonly, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** @var_readonly, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  store i32 1, i32* %71, align 8
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** @var_readonly, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 3
  store i64 0, i64* %73, align 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** @var_readonly, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 5
  store i32 -1, i32* %75, align 4
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** @var_readonly, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 4
  store i32 -1, i32* %77, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** @var_readonly, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 2
  store i32* null, i32** %79, align 8
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** @var_readonly, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 1
  store i32 1, i32* %81, align 4
  %82 = load i32, i32* @readonly_tree, align 4
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** @var_readonly, align 8
  %84 = call i32 @insert_vi_for_tree(i32 %82, %struct.TYPE_11__* %83)
  store i32 2, i32* @readonly_id, align 4
  %85 = load i32, i32* @varinfo_t, align 4
  %86 = load i32, i32* @heap, align 4
  %87 = load i32, i32* @varmap, align 4
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** @var_readonly, align 8
  %89 = call i32 @VEC_safe_push(i32 %85, i32 %86, i32 %87, %struct.TYPE_11__* %88)
  %90 = load i8*, i8** @SCALAR, align 8
  %91 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %1, i32 0, i32 2
  store i8* %90, i8** %91, align 8
  %92 = load i32, i32* @readonly_id, align 4
  %93 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %1, i32 0, i32 0
  store i32 %92, i32* %93, align 8
  %94 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %1, i32 0, i32 1
  store i64 0, i64* %94, align 8
  %95 = load i8*, i8** @ADDRESSOF, align 8
  %96 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %2, i32 0, i32 2
  store i8* %95, i8** %96, align 8
  %97 = load i8*, i8** @anything_id, align 8
  %98 = ptrtoint i8* %97 to i32
  %99 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %2, i32 0, i32 0
  store i32 %98, i32* %99, align 8
  %100 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %2, i32 0, i32 1
  store i64 0, i64* %100, align 8
  %101 = call %struct.TYPE_11__* @new_constraint(%struct.constraint_expr* byval(%struct.constraint_expr) align 8 %1, %struct.constraint_expr* byval(%struct.constraint_expr) align 8 %2)
  %102 = call i32 @process_constraint(%struct.TYPE_11__* %101)
  %103 = load i32, i32* @void_type_node, align 4
  %104 = call i32 @create_tmp_var_raw(i32 %103, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i32 %104, i32* @integer_tree, align 4
  %105 = load i32, i32* @integer_tree, align 4
  %106 = call %struct.TYPE_11__* @new_var_info(i32 %105, i32 3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store %struct.TYPE_11__* %106, %struct.TYPE_11__** @var_integer, align 8
  %107 = load i32, i32* @integer_tree, align 4
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** @var_integer, align 8
  %109 = call i32 @insert_vi_for_tree(i32 %107, %struct.TYPE_11__* %108)
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** @var_integer, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  store i32 1, i32* %111, align 8
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** @var_integer, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 5
  store i32 -1, i32* %113, align 4
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** @var_integer, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 4
  store i32 -1, i32* %115, align 8
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** @var_integer, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 3
  store i64 0, i64* %117, align 8
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** @var_integer, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 2
  store i32* null, i32** %119, align 8
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** @var_integer, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 1
  store i32 1, i32* %121, align 4
  store i32 3, i32* @integer_id, align 4
  %122 = load i32, i32* @varinfo_t, align 4
  %123 = load i32, i32* @heap, align 4
  %124 = load i32, i32* @varmap, align 4
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** @var_integer, align 8
  %126 = call i32 @VEC_safe_push(i32 %122, i32 %123, i32 %124, %struct.TYPE_11__* %125)
  %127 = load i8*, i8** @SCALAR, align 8
  %128 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %1, i32 0, i32 2
  store i8* %127, i8** %128, align 8
  %129 = load i32, i32* @integer_id, align 4
  %130 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %1, i32 0, i32 0
  store i32 %129, i32* %130, align 8
  %131 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %1, i32 0, i32 1
  store i64 0, i64* %131, align 8
  %132 = load i8*, i8** @ADDRESSOF, align 8
  %133 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %2, i32 0, i32 2
  store i8* %132, i8** %133, align 8
  %134 = load i8*, i8** @anything_id, align 8
  %135 = ptrtoint i8* %134 to i32
  %136 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %2, i32 0, i32 0
  store i32 %135, i32* %136, align 8
  %137 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %2, i32 0, i32 1
  store i64 0, i64* %137, align 8
  %138 = call %struct.TYPE_11__* @new_constraint(%struct.constraint_expr* byval(%struct.constraint_expr) align 8 %1, %struct.constraint_expr* byval(%struct.constraint_expr) align 8 %2)
  %139 = call i32 @process_constraint(%struct.TYPE_11__* %138)
  %140 = load i32, i32* @void_type_node, align 4
  %141 = call i32 @create_tmp_var_raw(i32 %140, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  store i32 %141, i32* @escaped_vars_tree, align 4
  %142 = load i32, i32* @escaped_vars_tree, align 4
  %143 = call %struct.TYPE_11__* @new_var_info(i32 %142, i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  store %struct.TYPE_11__* %143, %struct.TYPE_11__** @var_escaped_vars, align 8
  %144 = load i32, i32* @escaped_vars_tree, align 4
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** @var_escaped_vars, align 8
  %146 = call i32 @insert_vi_for_tree(i32 %144, %struct.TYPE_11__* %145)
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** @var_escaped_vars, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 0
  store i32 1, i32* %148, align 8
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** @var_escaped_vars, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 5
  store i32 -1, i32* %150, align 4
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** @var_escaped_vars, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 4
  store i32 -1, i32* %152, align 8
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** @var_escaped_vars, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 3
  store i64 0, i64* %154, align 8
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** @var_escaped_vars, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 2
  store i32* null, i32** %156, align 8
  store i8* inttoptr (i64 4 to i8*), i8** @escaped_vars_id, align 8
  %157 = load i32, i32* @varinfo_t, align 4
  %158 = load i32, i32* @heap, align 4
  %159 = load i32, i32* @varmap, align 4
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** @var_escaped_vars, align 8
  %161 = call i32 @VEC_safe_push(i32 %157, i32 %158, i32 %159, %struct.TYPE_11__* %160)
  %162 = load i8*, i8** @SCALAR, align 8
  %163 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %1, i32 0, i32 2
  store i8* %162, i8** %163, align 8
  %164 = load i8*, i8** @escaped_vars_id, align 8
  %165 = ptrtoint i8* %164 to i32
  %166 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %1, i32 0, i32 0
  store i32 %165, i32* %166, align 8
  %167 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %1, i32 0, i32 1
  store i64 0, i64* %167, align 8
  %168 = load i8*, i8** @DEREF, align 8
  %169 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %2, i32 0, i32 2
  store i8* %168, i8** %169, align 8
  %170 = load i8*, i8** @escaped_vars_id, align 8
  %171 = ptrtoint i8* %170 to i32
  %172 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %2, i32 0, i32 0
  store i32 %171, i32* %172, align 8
  %173 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %2, i32 0, i32 1
  store i64 0, i64* %173, align 8
  %174 = call %struct.TYPE_11__* @new_constraint(%struct.constraint_expr* byval(%struct.constraint_expr) align 8 %1, %struct.constraint_expr* byval(%struct.constraint_expr) align 8 %2)
  %175 = call i32 @process_constraint(%struct.TYPE_11__* %174)
  ret void
}

declare dso_local i32 @create_tmp_var_raw(i32, i8*) #1

declare dso_local %struct.TYPE_11__* @new_var_info(i32, i32, i8*) #1

declare dso_local i32 @insert_vi_for_tree(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @VEC_safe_push(i32, i32, i32, %struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_11__* @new_constraint(%struct.constraint_expr* byval(%struct.constraint_expr) align 8, %struct.constraint_expr* byval(%struct.constraint_expr) align 8) #1

declare dso_local i32 @process_constraint(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
