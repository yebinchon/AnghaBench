; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_jump_statement.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_jump_statement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }

@error_mark_node = common dso_local global i32 0, align 4
@CPP_KEYWORD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"jump-statement\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"break statement not within loop or switch\00", align 1
@IN_SWITCH_STMT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"invalid exit from OpenMP structured block\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"break statement used with OpenMP for loop\00", align 1
@CPP_SEMICOLON = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"%<;%>\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"continue statement not within a loop\00", align 1
@NULL_TREE = common dso_local global i32 0, align 4
@cur_block = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"goto not allowed in block literal\00", align 1
@CPP_MULT = common dso_local global i32 0, align 4
@pedantic = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"ISO C++ forbids computed gotos\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"expected jump-statement\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @cp_parser_jump_statement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp_parser_jump_statement(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %8 = load i32, i32* @error_mark_node, align 4
  store i32 %8, i32* %4, align 4
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %10 = load i32, i32* @CPP_KEYWORD, align 4
  %11 = call %struct.TYPE_9__* @cp_parser_require(%struct.TYPE_10__* %9, i32 %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_9__* %11, %struct.TYPE_9__** %5, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %13 = icmp ne %struct.TYPE_9__* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @error_mark_node, align 4
  store i32 %15, i32* %2, align 4
  br label %127

16:                                               ; preds = %1
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  switch i32 %20, label %122 [
    i32 131, label %21
    i32 130, label %52
    i32 128, label %71
    i32 129, label %89
  ]

21:                                               ; preds = %16
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %27 [
    i32 0, label %25
    i32 133, label %44
    i32 132, label %46
  ]

25:                                               ; preds = %21
  %26 = call i32 @error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %48

27:                                               ; preds = %21
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @IN_SWITCH_STMT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %27
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 134
  br label %39

39:                                               ; preds = %34, %27
  %40 = phi i1 [ true, %27 ], [ %38, %34 ]
  %41 = zext i1 %40 to i32
  %42 = call i32 @gcc_assert(i32 %41)
  %43 = call i32 (...) @finish_break_stmt()
  store i32 %43, i32* %4, align 4
  br label %48

44:                                               ; preds = %21
  %45 = call i32 @error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %48

46:                                               ; preds = %21
  %47 = call i32 @error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %44, %39, %25
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %50 = load i32, i32* @CPP_SEMICOLON, align 4
  %51 = call %struct.TYPE_9__* @cp_parser_require(%struct.TYPE_10__* %49, i32 %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %125

52:                                               ; preds = %16
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @IN_SWITCH_STMT, align 4
  %57 = xor i32 %56, -1
  %58 = and i32 %55, %57
  switch i32 %58, label %65 [
    i32 0, label %59
    i32 134, label %61
    i32 132, label %61
    i32 133, label %63
  ]

59:                                               ; preds = %52
  %60 = call i32 @error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  br label %67

61:                                               ; preds = %52, %52
  %62 = call i32 (...) @finish_continue_stmt()
  store i32 %62, i32* %4, align 4
  br label %67

63:                                               ; preds = %52
  %64 = call i32 @error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %67

65:                                               ; preds = %52
  %66 = call i32 (...) @gcc_unreachable()
  br label %67

67:                                               ; preds = %65, %63, %61, %59
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %69 = load i32, i32* @CPP_SEMICOLON, align 4
  %70 = call %struct.TYPE_9__* @cp_parser_require(%struct.TYPE_10__* %68, i32 %69, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %125

71:                                               ; preds = %16
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @CPP_SEMICOLON, align 4
  %76 = call i32 @cp_lexer_next_token_is_not(i32 %74, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %71
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %80 = call i32 @cp_parser_expression(%struct.TYPE_10__* %79, i32 0)
  store i32 %80, i32* %7, align 4
  br label %83

81:                                               ; preds = %71
  %82 = load i32, i32* @NULL_TREE, align 4
  store i32 %82, i32* %7, align 4
  br label %83

83:                                               ; preds = %81, %78
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @finish_return_stmt(i32 %84)
  store i32 %85, i32* %4, align 4
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %87 = load i32, i32* @CPP_SEMICOLON, align 4
  %88 = call %struct.TYPE_9__* @cp_parser_require(%struct.TYPE_10__* %86, i32 %87, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %125

89:                                               ; preds = %16
  %90 = load i32, i32* @cur_block, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = call i32 @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  br label %94

94:                                               ; preds = %92, %89
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @CPP_MULT, align 4
  %99 = call i32 @cp_lexer_next_token_is(i32 %97, i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %114

101:                                              ; preds = %94
  %102 = load i32, i32* @pedantic, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  %105 = call i32 @pedwarn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  br label %106

106:                                              ; preds = %104, %101
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @cp_lexer_consume_token(i32 %109)
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %112 = call i32 @cp_parser_expression(%struct.TYPE_10__* %111, i32 0)
  %113 = call i32 @finish_goto_stmt(i32 %112)
  br label %118

114:                                              ; preds = %94
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %116 = call i32 @cp_parser_identifier(%struct.TYPE_10__* %115)
  %117 = call i32 @finish_goto_stmt(i32 %116)
  br label %118

118:                                              ; preds = %114, %106
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %120 = load i32, i32* @CPP_SEMICOLON, align 4
  %121 = call %struct.TYPE_9__* @cp_parser_require(%struct.TYPE_10__* %119, i32 %120, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %125

122:                                              ; preds = %16
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %124 = call i32 @cp_parser_error(%struct.TYPE_10__* %123, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  br label %125

125:                                              ; preds = %122, %118, %83, %67, %48
  %126 = load i32, i32* %4, align 4
  store i32 %126, i32* %2, align 4
  br label %127

127:                                              ; preds = %125, %14
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local %struct.TYPE_9__* @cp_parser_require(%struct.TYPE_10__*, i32, i8*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @finish_break_stmt(...) #1

declare dso_local i32 @finish_continue_stmt(...) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @cp_lexer_next_token_is_not(i32, i32) #1

declare dso_local i32 @cp_parser_expression(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @finish_return_stmt(i32) #1

declare dso_local i32 @cp_lexer_next_token_is(i32, i32) #1

declare dso_local i32 @pedwarn(i8*) #1

declare dso_local i32 @cp_lexer_consume_token(i32) #1

declare dso_local i32 @finish_goto_stmt(i32) #1

declare dso_local i32 @cp_parser_identifier(%struct.TYPE_10__*) #1

declare dso_local i32 @cp_parser_error(%struct.TYPE_10__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
