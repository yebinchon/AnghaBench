; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_delete_expression.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_delete_expression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@NULL_TREE = common dso_local global i64 0, align 8
@RID_DELETE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"`delete'\00", align 1
@CPP_OPEN_SQUARE = common dso_local global i32 0, align 4
@CPP_CLOSE_SQUARE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"`]'\00", align 1
@error_mark_node = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @cp_parser_delete_expression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp_parser_delete_expression(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %8 = call i64 @cp_parser_global_scope_opt(%struct.TYPE_8__* %7, i32 0)
  %9 = load i64, i64* @NULL_TREE, align 8
  %10 = icmp ne i64 %8, %9
  %11 = zext i1 %10 to i32
  store i32 %11, i32* %4, align 4
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %13 = load i32, i32* @RID_DELETE, align 4
  %14 = call i32 @cp_parser_require_keyword(%struct.TYPE_8__* %12, i32 %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @CPP_OPEN_SQUARE, align 4
  %19 = call i64 @cp_lexer_next_token_is(i32 %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %1
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @cp_lexer_consume_token(i32 %24)
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %27 = load i32, i32* @CPP_CLOSE_SQUARE, align 4
  %28 = call i32 @cp_parser_require(%struct.TYPE_8__* %26, i32 %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %30

29:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %29, %21
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %32 = call i32 @cp_parser_simple_cast_expression(%struct.TYPE_8__* %31)
  store i32 %32, i32* %6, align 4
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %34 = call i64 @cp_parser_non_integral_constant_expression(%struct.TYPE_8__* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* @error_mark_node, align 4
  store i32 %37, i32* %2, align 4
  br label %44

38:                                               ; preds = %30
  %39 = load i32, i32* %6, align 4
  %40 = load i64, i64* @NULL_TREE, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @delete_sanity(i32 %39, i64 %40, i32 %41, i32 %42)
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %38, %36
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i64 @cp_parser_global_scope_opt(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @cp_parser_require_keyword(%struct.TYPE_8__*, i32, i8*) #1

declare dso_local i64 @cp_lexer_next_token_is(i32, i32) #1

declare dso_local i32 @cp_lexer_consume_token(i32) #1

declare dso_local i32 @cp_parser_require(%struct.TYPE_8__*, i32, i8*) #1

declare dso_local i32 @cp_parser_simple_cast_expression(%struct.TYPE_8__*) #1

declare dso_local i64 @cp_parser_non_integral_constant_expression(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @delete_sanity(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
