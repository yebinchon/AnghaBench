; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_explicit_instantiation.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_explicit_instantiation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@NULL_TREE = common dso_local global i64 0, align 8
@RID_TEMPLATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"`template'\00", align 1
@dk_no_check = common dso_local global i32 0, align 4
@CP_PARSER_FLAGS_OPTIONAL = common dso_local global i32 0, align 4
@tf_error = common dso_local global i32 0, align 4
@CP_PARSER_DECLARATOR_NAMED = common dso_local global i32 0, align 4
@cp_error_declarator = common dso_local global i32* null, align 8
@NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @cp_parser_explicit_instantiation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cp_parser_explicit_instantiation(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %9 = load i64, i64* @NULL_TREE, align 8
  store i64 %9, i64* %5, align 8
  %10 = load i32*, i32** %2, align 8
  %11 = call i64 @cp_parser_allow_gnu_extensions_p(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = load i32*, i32** %2, align 8
  %15 = call i64 @cp_parser_storage_class_specifier_opt(i32* %14)
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %5, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = load i32*, i32** %2, align 8
  %20 = call i64 @cp_parser_function_specifier_opt(i32* %19, i32* null)
  store i64 %20, i64* %5, align 8
  br label %21

21:                                               ; preds = %18, %13
  br label %22

22:                                               ; preds = %21, %1
  %23 = load i32*, i32** %2, align 8
  %24 = load i32, i32* @RID_TEMPLATE, align 4
  %25 = call i32 @cp_parser_require_keyword(i32* %23, i32 %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %26 = call i32 (...) @begin_explicit_instantiation()
  %27 = load i32, i32* @dk_no_check, align 4
  %28 = call i32 @push_deferring_access_checks(i32 %27)
  %29 = load i32*, i32** %2, align 8
  %30 = load i32, i32* @CP_PARSER_FLAGS_OPTIONAL, align 4
  %31 = call i32 @cp_parser_decl_specifier_seq(i32* %29, i32 %30, %struct.TYPE_5__* %4, i32* %3)
  %32 = load i32, i32* %3, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %22
  %35 = load i32*, i32** %2, align 8
  %36 = call i64 @cp_parser_declares_only_class_p(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %34
  %39 = call i64 @check_tag_decl(%struct.TYPE_5__* %4)
  store i64 %39, i64* %6, align 8
  %40 = call i32 (...) @pop_deferring_access_checks()
  %41 = load i64, i64* %6, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* %5, align 8
  %46 = load i32, i32* @tf_error, align 4
  %47 = call i32 @do_type_instantiation(i64 %44, i64 %45, i32 %46)
  br label %48

48:                                               ; preds = %43, %38
  br label %79

49:                                               ; preds = %34, %22
  %50 = load i32*, i32** %2, align 8
  %51 = load i32, i32* @CP_PARSER_DECLARATOR_NAMED, align 4
  %52 = call i32* @cp_parser_declarator(i32* %50, i32 %51, i32* null, i32* null, i32 0)
  store i32* %52, i32** %7, align 8
  %53 = load i32, i32* %3, align 4
  %54 = and i32 %53, 2
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %49
  %57 = load i32*, i32** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @cp_parser_check_for_definition_in_return_type(i32* %57, i32 %59)
  br label %61

61:                                               ; preds = %56, %49
  %62 = load i32*, i32** %7, align 8
  %63 = load i32*, i32** @cp_error_declarator, align 8
  %64 = icmp ne i32* %62, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %61
  %66 = load i32*, i32** %7, align 8
  %67 = load i32, i32* @NORMAL, align 4
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %69 = call i64 @grokdeclarator(i32* %66, %struct.TYPE_5__* %4, i32 %67, i32 0, i32* %68)
  store i64 %69, i64* %8, align 8
  %70 = call i32 (...) @pop_deferring_access_checks()
  %71 = load i64, i64* %8, align 8
  %72 = load i64, i64* %5, align 8
  %73 = call i32 @do_decl_instantiation(i64 %71, i64 %72)
  br label %78

74:                                               ; preds = %61
  %75 = call i32 (...) @pop_deferring_access_checks()
  %76 = load i32*, i32** %2, align 8
  %77 = call i32 @cp_parser_skip_to_end_of_statement(i32* %76)
  br label %78

78:                                               ; preds = %74, %65
  br label %79

79:                                               ; preds = %78, %48
  %80 = call i32 (...) @end_explicit_instantiation()
  %81 = load i32*, i32** %2, align 8
  %82 = call i32 @cp_parser_consume_semicolon_at_end_of_statement(i32* %81)
  ret void
}

declare dso_local i64 @cp_parser_allow_gnu_extensions_p(i32*) #1

declare dso_local i64 @cp_parser_storage_class_specifier_opt(i32*) #1

declare dso_local i64 @cp_parser_function_specifier_opt(i32*, i32*) #1

declare dso_local i32 @cp_parser_require_keyword(i32*, i32, i8*) #1

declare dso_local i32 @begin_explicit_instantiation(...) #1

declare dso_local i32 @push_deferring_access_checks(i32) #1

declare dso_local i32 @cp_parser_decl_specifier_seq(i32*, i32, %struct.TYPE_5__*, i32*) #1

declare dso_local i64 @cp_parser_declares_only_class_p(i32*) #1

declare dso_local i64 @check_tag_decl(%struct.TYPE_5__*) #1

declare dso_local i32 @pop_deferring_access_checks(...) #1

declare dso_local i32 @do_type_instantiation(i64, i64, i32) #1

declare dso_local i32* @cp_parser_declarator(i32*, i32, i32*, i32*, i32) #1

declare dso_local i32 @cp_parser_check_for_definition_in_return_type(i32*, i32) #1

declare dso_local i64 @grokdeclarator(i32*, %struct.TYPE_5__*, i32, i32, i32*) #1

declare dso_local i32 @do_decl_instantiation(i64, i64) #1

declare dso_local i32 @cp_parser_skip_to_end_of_statement(i32*) #1

declare dso_local i32 @end_explicit_instantiation(...) #1

declare dso_local i32 @cp_parser_consume_semicolon_at_end_of_statement(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
