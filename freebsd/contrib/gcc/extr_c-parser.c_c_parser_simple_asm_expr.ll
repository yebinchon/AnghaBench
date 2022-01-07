; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_simple_asm_expr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_simple_asm_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RID_ASM = common dso_local global i32 0, align 4
@c_lex_string_translate = common dso_local global i32 0, align 4
@CPP_OPEN_PAREN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"expected %<(%>\00", align 1
@NULL_TREE = common dso_local global i32 0, align 4
@CPP_CLOSE_PAREN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"expected %<)%>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @c_parser_simple_asm_expr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c_parser_simple_asm_expr(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = load i32, i32* @RID_ASM, align 4
  %7 = call i32 @c_parser_next_token_is_keyword(i32* %5, i32 %6)
  %8 = call i32 @gcc_assert(i32 %7)
  store i32 0, i32* @c_lex_string_translate, align 4
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @c_parser_consume_token(i32* %9)
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* @CPP_OPEN_PAREN, align 4
  %13 = call i32 @c_parser_require(i32* %11, i32 %12, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  store i32 1, i32* @c_lex_string_translate, align 4
  %16 = load i32, i32* @NULL_TREE, align 4
  store i32 %16, i32* %2, align 4
  br label %31

17:                                               ; preds = %1
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @c_parser_asm_string_literal(i32* %18)
  store i32 %19, i32* %4, align 4
  store i32 1, i32* @c_lex_string_translate, align 4
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* @CPP_CLOSE_PAREN, align 4
  %22 = call i32 @c_parser_require(i32* %20, i32 %21, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %17
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* @CPP_CLOSE_PAREN, align 4
  %27 = call i32 @c_parser_skip_until_found(i32* %25, i32 %26, i32* null)
  %28 = load i32, i32* @NULL_TREE, align 4
  store i32 %28, i32* %2, align 4
  br label %31

29:                                               ; preds = %17
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %29, %24, %15
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @c_parser_next_token_is_keyword(i32*, i32) #1

declare dso_local i32 @c_parser_consume_token(i32*) #1

declare dso_local i32 @c_parser_require(i32*, i32, i8*) #1

declare dso_local i32 @c_parser_asm_string_literal(i32*) #1

declare dso_local i32 @c_parser_skip_until_found(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
