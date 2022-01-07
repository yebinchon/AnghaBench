; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_omp_critical.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_omp_critical.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@CPP_OPEN_PAREN = common dso_local global i32 0, align 4
@CPP_NAME = common dso_local global i32 0, align 4
@CPP_CLOSE_PAREN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"expected %<)%>\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"expected identifier\00", align 1
@CPP_PRAGMA_EOL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"expected %<(%> or end of line\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @c_parser_omp_critical to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @c_parser_omp_critical(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  store i32* null, i32** %4, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = load i32, i32* @CPP_OPEN_PAREN, align 4
  %7 = call i64 @c_parser_next_token_is(i32* %5, i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %30

9:                                                ; preds = %1
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @c_parser_consume_token(i32* %10)
  %12 = load i32*, i32** %2, align 8
  %13 = load i32, i32* @CPP_NAME, align 4
  %14 = call i64 @c_parser_next_token_is(i32* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %9
  %17 = load i32*, i32** %2, align 8
  %18 = call %struct.TYPE_2__* @c_parser_peek_token(i32* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %4, align 8
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @c_parser_consume_token(i32* %21)
  %23 = load i32*, i32** %2, align 8
  %24 = load i32, i32* @CPP_CLOSE_PAREN, align 4
  %25 = call i32 @c_parser_require(i32* %23, i32 %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %29

26:                                               ; preds = %9
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @c_parser_error(i32* %27, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %16
  br label %39

30:                                               ; preds = %1
  %31 = load i32*, i32** %2, align 8
  %32 = load i32, i32* @CPP_PRAGMA_EOL, align 4
  %33 = call i64 @c_parser_next_token_is_not(i32* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32*, i32** %2, align 8
  %37 = call i32 @c_parser_error(i32* %36, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %30
  br label %39

39:                                               ; preds = %38, %29
  %40 = load i32*, i32** %2, align 8
  %41 = call i32 @c_parser_skip_to_pragma_eol(i32* %40)
  %42 = load i32*, i32** %2, align 8
  %43 = call i32* @c_parser_omp_structured_block(i32* %42)
  store i32* %43, i32** %3, align 8
  %44 = load i32*, i32** %3, align 8
  %45 = load i32*, i32** %4, align 8
  %46 = call i32* @c_finish_omp_critical(i32* %44, i32* %45)
  ret i32* %46
}

declare dso_local i64 @c_parser_next_token_is(i32*, i32) #1

declare dso_local i32 @c_parser_consume_token(i32*) #1

declare dso_local %struct.TYPE_2__* @c_parser_peek_token(i32*) #1

declare dso_local i32 @c_parser_require(i32*, i32, i8*) #1

declare dso_local i32 @c_parser_error(i32*, i8*) #1

declare dso_local i64 @c_parser_next_token_is_not(i32*, i32) #1

declare dso_local i32 @c_parser_skip_to_pragma_eol(i32*) #1

declare dso_local i32* @c_parser_omp_structured_block(i32*) #1

declare dso_local i32* @c_finish_omp_critical(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
