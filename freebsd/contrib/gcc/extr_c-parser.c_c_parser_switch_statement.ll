; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_switch_statement.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_switch_statement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@RID_SWITCH = common dso_local global i32 0, align 4
@flag_isoc99 = common dso_local global i32 0, align 4
@CPP_OPEN_PAREN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"expected %<(%>\00", align 1
@CPP_CLOSE_PAREN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"expected %<)%>\00", align 1
@error_mark_node = common dso_local global i64 0, align 8
@c_break_label = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i64 0, align 8
@LABEL_EXPR = common dso_local global i32 0, align 4
@void_type_node = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @c_parser_switch_statement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @c_parser_switch_statement(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_2__, align 8
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = load i32, i32* @RID_SWITCH, align 4
  %10 = call i32 @c_parser_next_token_is_keyword(i32* %8, i32 %9)
  %11 = call i32 @gcc_assert(i32 %10)
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @c_parser_consume_token(i32* %12)
  %14 = load i32, i32* @flag_isoc99, align 4
  %15 = call i64 @c_begin_compound_stmt(i32 %14)
  store i64 %15, i64* %3, align 8
  %16 = load i32*, i32** %2, align 8
  %17 = load i32, i32* @CPP_OPEN_PAREN, align 4
  %18 = call i64 @c_parser_require(i32* %16, i32 %17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %1
  %21 = load i32*, i32** %2, align 8
  %22 = call i64 @c_parser_expression(i32* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store i64 %22, i64* %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %4, align 8
  %26 = load i32*, i32** %2, align 8
  %27 = load i32, i32* @CPP_CLOSE_PAREN, align 4
  %28 = call i32 @c_parser_skip_until_found(i32* %26, i32 %27, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %31

29:                                               ; preds = %1
  %30 = load i64, i64* @error_mark_node, align 8
  store i64 %30, i64* %4, align 8
  br label %31

31:                                               ; preds = %29, %20
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @c_start_case(i64 %32)
  %34 = load i64, i64* @c_break_label, align 8
  store i64 %34, i64* %6, align 8
  %35 = load i64, i64* @NULL_TREE, align 8
  store i64 %35, i64* @c_break_label, align 8
  %36 = load i32*, i32** %2, align 8
  %37 = call i64 @c_parser_c99_block_statement(i32* %36)
  store i64 %37, i64* %5, align 8
  %38 = load i64, i64* %5, align 8
  %39 = call i32 @c_finish_case(i64 %38)
  %40 = load i64, i64* @c_break_label, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %31
  %43 = load i32, i32* @LABEL_EXPR, align 4
  %44 = load i32, i32* @void_type_node, align 4
  %45 = load i64, i64* @c_break_label, align 8
  %46 = call i32 @build1(i32 %43, i32 %44, i64 %45)
  %47 = call i32 @add_stmt(i32 %46)
  br label %48

48:                                               ; preds = %42, %31
  %49 = load i64, i64* %6, align 8
  store i64 %49, i64* @c_break_label, align 8
  %50 = load i64, i64* %3, align 8
  %51 = load i32, i32* @flag_isoc99, align 4
  %52 = call i32 @c_end_compound_stmt(i64 %50, i32 %51)
  %53 = call i32 @add_stmt(i32 %52)
  ret void
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @c_parser_next_token_is_keyword(i32*, i32) #1

declare dso_local i32 @c_parser_consume_token(i32*) #1

declare dso_local i64 @c_begin_compound_stmt(i32) #1

declare dso_local i64 @c_parser_require(i32*, i32, i8*) #1

declare dso_local i64 @c_parser_expression(i32*) #1

declare dso_local i32 @c_parser_skip_until_found(i32*, i32, i8*) #1

declare dso_local i32 @c_start_case(i64) #1

declare dso_local i64 @c_parser_c99_block_statement(i32*) #1

declare dso_local i32 @c_finish_case(i64) #1

declare dso_local i32 @add_stmt(i32) #1

declare dso_local i32 @build1(i32, i32, i64) #1

declare dso_local i32 @c_end_compound_stmt(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
