; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_objc_alias_declaration.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_objc_alias_declaration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@RID_AT_ALIAS = common dso_local global i32 0, align 4
@CPP_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"expected identifier\00", align 1
@CPP_SEMICOLON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"expected %<;%>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @c_parser_objc_alias_declaration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @c_parser_objc_alias_declaration(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = load i32, i32* @RID_AT_ALIAS, align 4
  %7 = call i32 @c_parser_next_token_is_keyword(i32* %5, i32 %6)
  %8 = call i32 @gcc_assert(i32 %7)
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @c_parser_consume_token(i32* %9)
  %11 = load i32*, i32** %2, align 8
  %12 = load i32, i32* @CPP_NAME, align 4
  %13 = call i64 @c_parser_next_token_is_not(i32* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @c_parser_error(i32* %16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %18 = load i32*, i32** %2, align 8
  %19 = load i32, i32* @CPP_SEMICOLON, align 4
  %20 = call i32 @c_parser_skip_until_found(i32* %18, i32 %19, i8* null)
  br label %51

21:                                               ; preds = %1
  %22 = load i32*, i32** %2, align 8
  %23 = call %struct.TYPE_2__* @c_parser_peek_token(i32* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %3, align 4
  %26 = load i32*, i32** %2, align 8
  %27 = call i32 @c_parser_consume_token(i32* %26)
  %28 = load i32*, i32** %2, align 8
  %29 = load i32, i32* @CPP_NAME, align 4
  %30 = call i64 @c_parser_next_token_is_not(i32* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %21
  %33 = load i32*, i32** %2, align 8
  %34 = call i32 @c_parser_error(i32* %33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %35 = load i32*, i32** %2, align 8
  %36 = load i32, i32* @CPP_SEMICOLON, align 4
  %37 = call i32 @c_parser_skip_until_found(i32* %35, i32 %36, i8* null)
  br label %51

38:                                               ; preds = %21
  %39 = load i32*, i32** %2, align 8
  %40 = call %struct.TYPE_2__* @c_parser_peek_token(i32* %39)
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %4, align 4
  %43 = load i32*, i32** %2, align 8
  %44 = call i32 @c_parser_consume_token(i32* %43)
  %45 = load i32*, i32** %2, align 8
  %46 = load i32, i32* @CPP_SEMICOLON, align 4
  %47 = call i32 @c_parser_skip_until_found(i32* %45, i32 %46, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @objc_declare_alias(i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %38, %32, %15
  ret void
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @c_parser_next_token_is_keyword(i32*, i32) #1

declare dso_local i32 @c_parser_consume_token(i32*) #1

declare dso_local i64 @c_parser_next_token_is_not(i32*, i32) #1

declare dso_local i32 @c_parser_error(i32*, i8*) #1

declare dso_local i32 @c_parser_skip_until_found(i32*, i32, i8*) #1

declare dso_local %struct.TYPE_2__* @c_parser_peek_token(i32*) #1

declare dso_local i32 @objc_declare_alias(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
