; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_asm_string_literal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_asm_string_literal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@CPP_STRING = common dso_local global i32 0, align 4
@CPP_WSTRING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"wide string literal in %<asm%>\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"expected string literal\00", align 1
@NULL_TREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @c_parser_asm_string_literal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c_parser_asm_string_literal(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = load i32, i32* @CPP_STRING, align 4
  %6 = call i64 @c_parser_next_token_is(i32* %4, i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load i32*, i32** %2, align 8
  %10 = call %struct.TYPE_2__* @c_parser_peek_token(i32* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %3, align 4
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @c_parser_consume_token(i32* %13)
  br label %30

15:                                               ; preds = %1
  %16 = load i32*, i32** %2, align 8
  %17 = load i32, i32* @CPP_WSTRING, align 4
  %18 = call i64 @c_parser_next_token_is(i32* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = call i32 @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %22 = call i32 @build_string(i32 1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i32 %22, i32* %3, align 4
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @c_parser_consume_token(i32* %23)
  br label %29

25:                                               ; preds = %15
  %26 = load i32*, i32** %2, align 8
  %27 = call i32 @c_parser_error(i32* %26, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %28 = load i32, i32* @NULL_TREE, align 4
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %25, %20
  br label %30

30:                                               ; preds = %29, %8
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i64 @c_parser_next_token_is(i32*, i32) #1

declare dso_local %struct.TYPE_2__* @c_parser_peek_token(i32*) #1

declare dso_local i32 @c_parser_consume_token(i32*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @build_string(i32, i8*) #1

declare dso_local i32 @c_parser_error(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
