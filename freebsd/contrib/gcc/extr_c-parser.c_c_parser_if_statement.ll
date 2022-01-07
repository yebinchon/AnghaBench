; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_if_statement.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_if_statement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@RID_IF = common dso_local global i32 0, align 4
@flag_isoc99 = common dso_local global i32 0, align 4
@RID_ELSE = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @c_parser_if_statement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @c_parser_if_statement(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load i32*, i32** %2, align 8
  %11 = load i32, i32* @RID_IF, align 4
  %12 = call i64 @c_parser_next_token_is_keyword(i32* %10, i32 %11)
  %13 = call i32 @gcc_assert(i64 %12)
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @c_parser_consume_token(i32* %14)
  %16 = load i32, i32* @flag_isoc99, align 4
  %17 = call i32 @c_begin_compound_stmt(i32 %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32*, i32** %2, align 8
  %19 = call %struct.TYPE_2__* @c_parser_peek_token(i32* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %4, align 4
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @c_parser_paren_condition(i32* %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32*, i32** %2, align 8
  %25 = call i32 @c_parser_if_body(i32* %24, i32* %6)
  store i32 %25, i32* %8, align 4
  %26 = load i32*, i32** %2, align 8
  %27 = load i32, i32* @RID_ELSE, align 4
  %28 = call i64 @c_parser_next_token_is_keyword(i32* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %1
  %31 = load i32*, i32** %2, align 8
  %32 = call i32 @c_parser_consume_token(i32* %31)
  %33 = load i32*, i32** %2, align 8
  %34 = call i32 @c_parser_if_body(i32* %33, i32* %7)
  store i32 %34, i32* %9, align 4
  br label %37

35:                                               ; preds = %1
  %36 = load i32, i32* @NULL_TREE, align 4
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %35, %30
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @c_finish_if_stmt(i32 %38, i32 %39, i32 %40, i32 %41, i32 %42)
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @flag_isoc99, align 4
  %46 = call i32 @c_end_compound_stmt(i32 %44, i32 %45)
  %47 = call i32 @add_stmt(i32 %46)
  ret void
}

declare dso_local i32 @gcc_assert(i64) #1

declare dso_local i64 @c_parser_next_token_is_keyword(i32*, i32) #1

declare dso_local i32 @c_parser_consume_token(i32*) #1

declare dso_local i32 @c_begin_compound_stmt(i32) #1

declare dso_local %struct.TYPE_2__* @c_parser_peek_token(i32*) #1

declare dso_local i32 @c_parser_paren_condition(i32*) #1

declare dso_local i32 @c_parser_if_body(i32*, i32*) #1

declare dso_local i32 @c_finish_if_stmt(i32, i32, i32, i32, i32) #1

declare dso_local i32 @add_stmt(i32) #1

declare dso_local i32 @c_end_compound_stmt(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
