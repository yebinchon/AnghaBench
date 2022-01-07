; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-decl.c_c_init_decl_processing.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-decl.c_c_init_decl_processing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i64 }

@input_location = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@current_function_decl = common dso_local global i64 0, align 8
@parser_obstack = common dso_local global i32 0, align 4
@current_scope = common dso_local global i32 0, align 4
@external_scope = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"<built-in>\00", align 1
@flag_signed_char = common dso_local global i32 0, align 4
@integer_type_node = common dso_local global i32 0, align 4
@truthvalue_type_node = common dso_local global i32 0, align 4
@integer_one_node = common dso_local global i32 0, align 4
@truthvalue_true_node = common dso_local global i32 0, align 4
@integer_zero_node = common dso_local global i32 0, align 4
@truthvalue_false_node = common dso_local global i32 0, align 4
@TYPE_DECL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"_Bool\00", align 1
@boolean_type_node = common dso_local global i32 0, align 4
@pedantic_lvalues = common dso_local global i32 0, align 4
@c_make_fname_decl = common dso_local global i32 0, align 4
@make_fname_decl = common dso_local global i32 0, align 4
@BUILTINS_LOCATION = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @c_init_decl_processing() #0 {
  %1 = alloca %struct.TYPE_4__, align 8
  %2 = bitcast %struct.TYPE_4__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 8 bitcast (%struct.TYPE_4__* @input_location to i8*), i64 16, i1 false)
  %3 = call i32 (...) @c_parse_init()
  store i64 0, i64* @current_function_decl, align 8
  %4 = call i32 @gcc_obstack_init(i32* @parser_obstack)
  %5 = call i32 (...) @push_scope()
  %6 = load i32, i32* @current_scope, align 4
  store i32 %6, i32* @external_scope, align 4
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @input_location, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @input_location, i32 0, i32 1), align 8
  %7 = load i32, i32* @flag_signed_char, align 4
  %8 = call i32 @build_common_tree_nodes(i32 %7, i32 0)
  %9 = call i32 (...) @c_common_nodes_and_builtins()
  %10 = load i32, i32* @integer_type_node, align 4
  store i32 %10, i32* @truthvalue_type_node, align 4
  %11 = load i32, i32* @integer_one_node, align 4
  store i32 %11, i32* @truthvalue_true_node, align 4
  %12 = load i32, i32* @integer_zero_node, align 4
  store i32 %12, i32* @truthvalue_false_node, align 4
  %13 = load i32, i32* @TYPE_DECL, align 4
  %14 = call i32 @get_identifier(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i32, i32* @boolean_type_node, align 4
  %16 = call i32 @build_decl(i32 %13, i32 %14, i32 %15)
  %17 = call i32 @pushdecl(i32 %16)
  %18 = bitcast %struct.TYPE_4__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_4__* @input_location to i8*), i8* align 8 %18, i64 16, i1 false)
  store i32 1, i32* @pedantic_lvalues, align 4
  %19 = load i32, i32* @c_make_fname_decl, align 4
  store i32 %19, i32* @make_fname_decl, align 4
  %20 = call i32 (...) @start_fname_decls()
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @c_parse_init(...) #2

declare dso_local i32 @gcc_obstack_init(i32*) #2

declare dso_local i32 @push_scope(...) #2

declare dso_local i32 @build_common_tree_nodes(i32, i32) #2

declare dso_local i32 @c_common_nodes_and_builtins(...) #2

declare dso_local i32 @pushdecl(i32) #2

declare dso_local i32 @build_decl(i32, i32, i32) #2

declare dso_local i32 @get_identifier(i8*) #2

declare dso_local i32 @start_fname_decls(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
