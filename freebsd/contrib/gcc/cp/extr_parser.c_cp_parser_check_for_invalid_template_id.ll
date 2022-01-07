; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_check_for_invalid_template_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_check_for_invalid_template_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@CPP_LESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"%qT is not a template\00", align 1
@IDENTIFIER_NODE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"%qE is not a template\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"invalid template-id\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32)* @cp_parser_check_for_invalid_template_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cp_parser_check_for_invalid_template_id(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %5, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @CPP_LESS, align 4
  %10 = call i64 @cp_lexer_next_token_is(i32 %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %55

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = call i64 @TYPE_P(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i32, i32* %4, align 4
  %18 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %30

19:                                               ; preds = %12
  %20 = load i32, i32* %4, align 4
  %21 = call i64 @TREE_CODE(i32 %20)
  %22 = load i64, i64* @IDENTIFIER_NODE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* %4, align 4
  %26 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  br label %29

27:                                               ; preds = %19
  %28 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %24
  br label %30

30:                                               ; preds = %29, %16
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %32 = call i64 @cp_parser_uncommitted_to_tentative_parse_p(%struct.TYPE_5__* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @cp_lexer_token_position(i32 %37, i32 1)
  store i64 %38, i64* %5, align 8
  br label %39

39:                                               ; preds = %34, %30
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @cp_lexer_consume_token(i32 %42)
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %45 = call i32 @cp_parser_enclosed_template_argument_list(%struct.TYPE_5__* %44)
  %46 = load i64, i64* %5, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %39
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i64, i64* %5, align 8
  %53 = call i32 @cp_lexer_purge_tokens_after(i32 %51, i64 %52)
  br label %54

54:                                               ; preds = %48, %39
  br label %55

55:                                               ; preds = %54, %2
  ret void
}

declare dso_local i64 @cp_lexer_next_token_is(i32, i32) #1

declare dso_local i64 @TYPE_P(i32) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i64 @cp_parser_uncommitted_to_tentative_parse_p(%struct.TYPE_5__*) #1

declare dso_local i64 @cp_lexer_token_position(i32, i32) #1

declare dso_local i32 @cp_lexer_consume_token(i32) #1

declare dso_local i32 @cp_parser_enclosed_template_argument_list(%struct.TYPE_5__*) #1

declare dso_local i32 @cp_lexer_purge_tokens_after(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
