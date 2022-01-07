; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_label_for_labeled_statement.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_label_for_labeled_statement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i64, i32 }

@CPP_NAME = common dso_local global i64 0, align 8
@CPP_KEYWORD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"expected labeled-statement\00", align 1
@CPP_ELLIPSIS = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"case label %qE not within a switch statement\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"case label not within a switch statement\00", align 1
@CPP_COLON = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"`:'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @cp_parser_label_for_labeled_statement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cp_parser_label_for_labeled_statement(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.TYPE_9__* @cp_lexer_peek_token(i32 %9)
  store %struct.TYPE_9__* %10, %struct.TYPE_9__** %3, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @CPP_NAME, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %1
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @CPP_KEYWORD, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %24 = call i32 @cp_parser_error(%struct.TYPE_10__* %23, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %91

25:                                               ; preds = %16, %1
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %83 [
    i32 129, label %29
    i32 128, label %67
  ]

29:                                               ; preds = %25
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @cp_lexer_consume_token(i32 %32)
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %35 = call i32 @cp_parser_constant_expression(%struct.TYPE_10__* %34, i32 0, i32* null)
  store i32 %35, i32* %4, align 4
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.TYPE_9__* @cp_lexer_peek_token(i32 %38)
  store %struct.TYPE_9__* %39, %struct.TYPE_9__** %6, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @CPP_ELLIPSIS, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %29
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @cp_lexer_consume_token(i32 %48)
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %51 = call i32 @cp_parser_constant_expression(%struct.TYPE_10__* %50, i32 0, i32* null)
  store i32 %51, i32* %5, align 4
  br label %54

52:                                               ; preds = %29
  %53 = load i32, i32* @NULL_TREE, align 4
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %52, %45
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @finish_case_label(i32 %60, i32 %61)
  br label %66

63:                                               ; preds = %54
  %64 = load i32, i32* %4, align 4
  %65 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %63, %59
  br label %87

67:                                               ; preds = %25
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @cp_lexer_consume_token(i32 %70)
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %67
  %77 = load i32, i32* @NULL_TREE, align 4
  %78 = load i32, i32* @NULL_TREE, align 4
  %79 = call i32 @finish_case_label(i32 %77, i32 %78)
  br label %82

80:                                               ; preds = %67
  %81 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %82

82:                                               ; preds = %80, %76
  br label %87

83:                                               ; preds = %25
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %85 = call i32 @cp_parser_identifier(%struct.TYPE_10__* %84)
  %86 = call i32 @finish_label_stmt(i32 %85)
  br label %87

87:                                               ; preds = %83, %82, %66
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %89 = load i32, i32* @CPP_COLON, align 4
  %90 = call i32 @cp_parser_require(%struct.TYPE_10__* %88, i32 %89, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %91

91:                                               ; preds = %87, %22
  ret void
}

declare dso_local %struct.TYPE_9__* @cp_lexer_peek_token(i32) #1

declare dso_local i32 @cp_parser_error(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @cp_lexer_consume_token(i32) #1

declare dso_local i32 @cp_parser_constant_expression(%struct.TYPE_10__*, i32, i32*) #1

declare dso_local i32 @finish_case_label(i32, i32) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32 @finish_label_stmt(i32) #1

declare dso_local i32 @cp_parser_identifier(%struct.TYPE_10__*) #1

declare dso_local i32 @cp_parser_require(%struct.TYPE_10__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
