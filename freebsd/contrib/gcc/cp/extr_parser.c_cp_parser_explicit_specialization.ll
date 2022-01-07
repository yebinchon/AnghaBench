; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_explicit_specialization.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_explicit_specialization.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i64 }

@RID_TEMPLATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"`template'\00", align 1
@CPP_LESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"`<'\00", align 1
@CPP_GREATER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"`>'\00", align 1
@current_lang_name = common dso_local global i64 0, align 8
@lang_name_c = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [39 x i8] c"template specialization with C linkage\00", align 1
@lang_name_cplusplus = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @cp_parser_explicit_specialization to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cp_parser_explicit_specialization(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %4 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %5 = load i32, i32* @RID_TEMPLATE, align 4
  %6 = call i32 @cp_parser_require_keyword(%struct.TYPE_9__* %4, i32 %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %8 = load i64, i64* @CPP_LESS, align 8
  %9 = call i32 @cp_parser_require(%struct.TYPE_9__* %7, i64 %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %11 = load i64, i64* @CPP_GREATER, align 8
  %12 = call i32 @cp_parser_require(%struct.TYPE_9__* %10, i64 %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 4
  %17 = load i64, i64* @current_lang_name, align 8
  %18 = load i64, i64* @lang_name_c, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = call i32 @error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %22 = load i32, i32* @lang_name_cplusplus, align 4
  %23 = call i32 @push_lang_context(i32 %22)
  store i32 1, i32* %3, align 4
  br label %25

24:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %24, %20
  %26 = call i32 (...) @begin_specialization()
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = call i32 (...) @end_specialization()
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %31 = call i32 @cp_parser_skip_to_end_of_block_or_statement(%struct.TYPE_9__* %30)
  br label %77

32:                                               ; preds = %25
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @RID_TEMPLATE, align 4
  %37 = call i64 @cp_lexer_next_token_is_keyword(i32 %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %63

39:                                               ; preds = %32
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.TYPE_10__* @cp_lexer_peek_nth_token(i32 %42, i32 2)
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @CPP_LESS, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %60

48:                                               ; preds = %39
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call %struct.TYPE_10__* @cp_lexer_peek_nth_token(i32 %51, i32 3)
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @CPP_GREATER, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %48
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %59 = call i32 @cp_parser_template_declaration_after_export(%struct.TYPE_9__* %58, i32 0)
  br label %62

60:                                               ; preds = %48, %39
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  call void @cp_parser_explicit_specialization(%struct.TYPE_9__* %61)
  br label %62

62:                                               ; preds = %60, %57
  br label %66

63:                                               ; preds = %32
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %65 = call i32 @cp_parser_single_declaration(%struct.TYPE_9__* %64, i32* null, i32 0, i32* null)
  br label %66

66:                                               ; preds = %63, %62
  %67 = call i32 (...) @end_specialization()
  %68 = load i32, i32* %3, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = call i32 (...) @pop_lang_context()
  br label %72

72:                                               ; preds = %70, %66
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %72, %28
  ret void
}

declare dso_local i32 @cp_parser_require_keyword(%struct.TYPE_9__*, i32, i8*) #1

declare dso_local i32 @cp_parser_require(%struct.TYPE_9__*, i64, i8*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @push_lang_context(i32) #1

declare dso_local i32 @begin_specialization(...) #1

declare dso_local i32 @end_specialization(...) #1

declare dso_local i32 @cp_parser_skip_to_end_of_block_or_statement(%struct.TYPE_9__*) #1

declare dso_local i64 @cp_lexer_next_token_is_keyword(i32, i32) #1

declare dso_local %struct.TYPE_10__* @cp_lexer_peek_nth_token(i32, i32) #1

declare dso_local i32 @cp_parser_template_declaration_after_export(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @cp_parser_single_declaration(%struct.TYPE_9__*, i32*, i32, i32*) #1

declare dso_local i32 @pop_lang_context(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
