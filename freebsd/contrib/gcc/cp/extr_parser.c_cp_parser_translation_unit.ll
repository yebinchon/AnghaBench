; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_translation_unit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_translation_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32* }

@cp_parser_translation_unit.declarator_obstack_base = internal global i8* null, align 8
@cp_error_declarator = common dso_local global i64 0, align 8
@declarator_obstack = common dso_local global i32 0, align 4
@cdk_error = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@no_parameters = common dso_local global i32 0, align 4
@CPP_EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"expected declaration\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @cp_parser_translation_unit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp_parser_translation_unit(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %4 = load i64, i64* @cp_error_declarator, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = call i32 @gcc_obstack_init(i32* @declarator_obstack)
  %8 = load i32, i32* @cdk_error, align 4
  %9 = call i64 @make_declarator(i32 %8)
  store i64 %9, i64* @cp_error_declarator, align 8
  %10 = load i32, i32* @NULL_TREE, align 4
  %11 = call i32 @make_parameter_declarator(i32* null, i32* null, i32 %10)
  store i32 %11, i32* @no_parameters, align 4
  %12 = call i8* @obstack_next_free(i32* @declarator_obstack)
  store i8* %12, i8** @cp_parser_translation_unit.declarator_obstack_base, align 8
  br label %13

13:                                               ; preds = %6, %1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %15 = call i32 @cp_parser_declaration_seq_opt(%struct.TYPE_5__* %14)
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* @CPP_EOF, align 4
  %20 = call i64 @cp_lexer_next_token_is(i32* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %13
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @cp_lexer_destroy(i32* %25)
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  store i32* null, i32** %28, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %22
  %34 = call i32 (...) @pop_lang_context()
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  br label %37

37:                                               ; preds = %33, %22
  %38 = call i32 (...) @finish_translation_unit()
  store i32 1, i32* %3, align 4
  br label %42

39:                                               ; preds = %13
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %41 = call i32 @cp_parser_error(%struct.TYPE_5__* %40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %39, %37
  %43 = call i8* @obstack_next_free(i32* @declarator_obstack)
  %44 = load i8*, i8** @cp_parser_translation_unit.declarator_obstack_base, align 8
  %45 = icmp eq i8* %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @gcc_assert(i32 %46)
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @gcc_obstack_init(i32*) #1

declare dso_local i64 @make_declarator(i32) #1

declare dso_local i32 @make_parameter_declarator(i32*, i32*, i32) #1

declare dso_local i8* @obstack_next_free(i32*) #1

declare dso_local i32 @cp_parser_declaration_seq_opt(%struct.TYPE_5__*) #1

declare dso_local i64 @cp_lexer_next_token_is(i32*, i32) #1

declare dso_local i32 @cp_lexer_destroy(i32*) #1

declare dso_local i32 @pop_lang_context(...) #1

declare dso_local i32 @finish_translation_unit(...) #1

declare dso_local i32 @cp_parser_error(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @gcc_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
