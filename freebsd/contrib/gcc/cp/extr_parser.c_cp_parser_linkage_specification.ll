; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_linkage_specification.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_linkage_specification.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }

@RID_EXTERN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"`extern'\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"invalid linkage-specification\00", align 1
@lang_name_cplusplus = common dso_local global i32 0, align 4
@CPP_OPEN_BRACE = common dso_local global i32 0, align 4
@CPP_CLOSE_BRACE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"`}'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @cp_parser_linkage_specification to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cp_parser_linkage_specification(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %6 = load i32, i32* @RID_EXTERN, align 4
  %7 = call i32 @cp_parser_require_keyword(%struct.TYPE_9__* %5, i32 %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %9 = call i32 @cp_parser_string_literal(%struct.TYPE_9__* %8, i32 0, i32 0)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @TREE_STRING_POINTER(i32 %10)
  %12 = call i64 @strlen(i32 %11)
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @TREE_STRING_LENGTH(i32 %13)
  %15 = sub nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = icmp ne i64 %12, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %20 = call i32 @cp_parser_error(%struct.TYPE_9__* %19, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* @lang_name_cplusplus, align 4
  store i32 %21, i32* %3, align 4
  br label %26

22:                                               ; preds = %1
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @TREE_STRING_POINTER(i32 %23)
  %25 = call i32 @get_identifier(i32 %24)
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %22, %18
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @push_lang_context(i32 %27)
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @CPP_OPEN_BRACE, align 4
  %33 = call i64 @cp_lexer_next_token_is(i32 %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %26
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @cp_lexer_consume_token(i32 %38)
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %41 = call i32 @cp_parser_declaration_seq_opt(%struct.TYPE_9__* %40)
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %43 = load i32, i32* @CPP_CLOSE_BRACE, align 4
  %44 = call i32 @cp_parser_require(%struct.TYPE_9__* %42, i32 %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %56

45:                                               ; preds = %26
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %4, align 4
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  store i32 1, i32* %50, align 4
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %52 = call i32 @cp_parser_declaration(%struct.TYPE_9__* %51)
  %53 = load i32, i32* %4, align 4
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  br label %56

56:                                               ; preds = %45, %35
  %57 = call i32 (...) @pop_lang_context()
  ret void
}

declare dso_local i32 @cp_parser_require_keyword(%struct.TYPE_9__*, i32, i8*) #1

declare dso_local i32 @cp_parser_string_literal(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @TREE_STRING_POINTER(i32) #1

declare dso_local i32 @TREE_STRING_LENGTH(i32) #1

declare dso_local i32 @cp_parser_error(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @get_identifier(i32) #1

declare dso_local i32 @push_lang_context(i32) #1

declare dso_local i64 @cp_lexer_next_token_is(i32, i32) #1

declare dso_local i32 @cp_lexer_consume_token(i32) #1

declare dso_local i32 @cp_parser_declaration_seq_opt(%struct.TYPE_9__*) #1

declare dso_local i32 @cp_parser_require(%struct.TYPE_9__*, i32, i8*) #1

declare dso_local i32 @cp_parser_declaration(%struct.TYPE_9__*) #1

declare dso_local i32 @pop_lang_context(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
