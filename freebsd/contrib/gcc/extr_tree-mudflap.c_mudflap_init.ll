; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-mudflap.c_mudflap_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-mudflap.c_mudflap_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* (i32, i32)* }

@mudflap_init.done = internal global i32 0, align 4
@lang_hooks = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@ptr_mode = common dso_local global i32 0, align 4
@mf_uintptr_type = common dso_local global i8* null, align 8
@char_type_node = common dso_local global i32 0, align 4
@TYPE_QUAL_CONST = common dso_local global i32 0, align 4
@mf_cache_struct_type = common dso_local global i32 0, align 4
@mf_cache_structptr_type = common dso_local global i8* null, align 8
@void_type_node = common dso_local global i32 0, align 4
@ptr_type_node = common dso_local global i32 0, align 4
@size_type_node = common dso_local global i32 0, align 4
@integer_type_node = common dso_local global i32 0, align 4
@VAR_DECL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"__mf_lookup_cache\00", align 1
@mf_cache_array_decl = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"__mf_lc_shift\00", align 1
@unsigned_char_type_node = common dso_local global i8* null, align 8
@mf_cache_shift_decl = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"__mf_lc_mask\00", align 1
@mf_cache_mask_decl = common dso_local global i8* null, align 8
@FUNCTION_DECL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"__mf_check\00", align 1
@mf_check_fndecl = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [14 x i8] c"__mf_register\00", align 1
@mf_register_fndecl = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [16 x i8] c"__mf_unregister\00", align 1
@mf_unregister_fndecl = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [10 x i8] c"__mf_init\00", align 1
@mf_init_fndecl = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [17 x i8] c"__mf_set_options\00", align 1
@mf_set_options_fndecl = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mudflap_init() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = load i32, i32* @mudflap_init.done, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  br label %70

10:                                               ; preds = %0
  store i32 1, i32* @mudflap_init.done, align 4
  %11 = load i8* (i32, i32)*, i8* (i32, i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lang_hooks, i32 0, i32 0, i32 0), align 8
  %12 = load i32, i32* @ptr_mode, align 4
  %13 = call i8* %11(i32 %12, i32 1)
  store i8* %13, i8** @mf_uintptr_type, align 8
  %14 = load i32, i32* @char_type_node, align 4
  %15 = load i32, i32* @TYPE_QUAL_CONST, align 4
  %16 = call i32 @build_qualified_type(i32 %14, i32 %15)
  %17 = call i8* @build_pointer_type(i32 %16)
  store i8* %17, i8** %1, align 8
  %18 = load i8*, i8** @mf_uintptr_type, align 8
  %19 = call i32 @mf_make_mf_cache_struct_type(i8* %18)
  store i32 %19, i32* @mf_cache_struct_type, align 4
  %20 = load i32, i32* @mf_cache_struct_type, align 4
  %21 = call i8* @build_pointer_type(i32 %20)
  store i8* %21, i8** @mf_cache_structptr_type, align 8
  %22 = load i32, i32* @mf_cache_struct_type, align 4
  %23 = call i8* @build_array_type(i32 %22, i32 0)
  store i8* %23, i8** %2, align 8
  %24 = load i32, i32* @void_type_node, align 4
  %25 = load i32, i32* @ptr_type_node, align 4
  %26 = load i32, i32* @size_type_node, align 4
  %27 = load i32, i32* @integer_type_node, align 4
  %28 = load i8*, i8** %1, align 8
  %29 = call i8* @build_function_type_4(i32 %24, i32 %25, i32 %26, i32 %27, i8* %28)
  store i8* %29, i8** %3, align 8
  %30 = load i32, i32* @void_type_node, align 4
  %31 = load i32, i32* @ptr_type_node, align 4
  %32 = load i32, i32* @size_type_node, align 4
  %33 = load i32, i32* @integer_type_node, align 4
  %34 = call i8* @build_function_type_3(i32 %30, i32 %31, i32 %32, i32 %33)
  store i8* %34, i8** %4, align 8
  %35 = load i32, i32* @void_type_node, align 4
  %36 = call i8* @build_function_type_0(i32 %35)
  store i8* %36, i8** %5, align 8
  %37 = load i32, i32* @integer_type_node, align 4
  %38 = load i8*, i8** %1, align 8
  %39 = call i8* @build_function_type_1(i32 %37, i8* %38)
  store i8* %39, i8** %6, align 8
  %40 = load i32, i32* @VAR_DECL, align 4
  %41 = load i8*, i8** %2, align 8
  %42 = call i8* @mf_make_builtin(i32 %40, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %41)
  store i8* %42, i8** @mf_cache_array_decl, align 8
  %43 = load i32, i32* @VAR_DECL, align 4
  %44 = load i8*, i8** @unsigned_char_type_node, align 8
  %45 = call i8* @mf_make_builtin(i32 %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %44)
  store i8* %45, i8** @mf_cache_shift_decl, align 8
  %46 = load i32, i32* @VAR_DECL, align 4
  %47 = load i8*, i8** @mf_uintptr_type, align 8
  %48 = call i8* @mf_make_builtin(i32 %46, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %47)
  store i8* %48, i8** @mf_cache_mask_decl, align 8
  %49 = load i8*, i8** @mf_cache_array_decl, align 8
  %50 = call i32 @mf_mark(i8* %49)
  %51 = load i8*, i8** @mf_cache_shift_decl, align 8
  %52 = call i32 @mf_mark(i8* %51)
  %53 = load i8*, i8** @mf_cache_mask_decl, align 8
  %54 = call i32 @mf_mark(i8* %53)
  %55 = load i32, i32* @FUNCTION_DECL, align 4
  %56 = load i8*, i8** %3, align 8
  %57 = call i8* @mf_make_builtin(i32 %55, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %56)
  store i8* %57, i8** @mf_check_fndecl, align 8
  %58 = load i32, i32* @FUNCTION_DECL, align 4
  %59 = load i8*, i8** %3, align 8
  %60 = call i8* @mf_make_builtin(i32 %58, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* %59)
  store i8* %60, i8** @mf_register_fndecl, align 8
  %61 = load i32, i32* @FUNCTION_DECL, align 4
  %62 = load i8*, i8** %4, align 8
  %63 = call i8* @mf_make_builtin(i32 %61, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8* %62)
  store i8* %63, i8** @mf_unregister_fndecl, align 8
  %64 = load i32, i32* @FUNCTION_DECL, align 4
  %65 = load i8*, i8** %5, align 8
  %66 = call i8* @mf_make_builtin(i32 %64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* %65)
  store i8* %66, i8** @mf_init_fndecl, align 8
  %67 = load i32, i32* @FUNCTION_DECL, align 4
  %68 = load i8*, i8** %6, align 8
  %69 = call i8* @mf_make_builtin(i32 %67, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i8* %68)
  store i8* %69, i8** @mf_set_options_fndecl, align 8
  br label %70

70:                                               ; preds = %10, %9
  ret void
}

declare dso_local i8* @build_pointer_type(i32) #1

declare dso_local i32 @build_qualified_type(i32, i32) #1

declare dso_local i32 @mf_make_mf_cache_struct_type(i8*) #1

declare dso_local i8* @build_array_type(i32, i32) #1

declare dso_local i8* @build_function_type_4(i32, i32, i32, i32, i8*) #1

declare dso_local i8* @build_function_type_3(i32, i32, i32, i32) #1

declare dso_local i8* @build_function_type_0(i32) #1

declare dso_local i8* @build_function_type_1(i32, i8*) #1

declare dso_local i8* @mf_make_builtin(i32, i8*, i8*) #1

declare dso_local i32 @mf_mark(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
