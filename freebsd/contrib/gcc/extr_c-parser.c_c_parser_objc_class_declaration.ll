; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_objc_class_declaration.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_objc_class_declaration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@NULL_TREE = common dso_local global i32 0, align 4
@RID_AT_CLASS = common dso_local global i32 0, align 4
@CPP_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"expected identifier\00", align 1
@CPP_COMMA = common dso_local global i32 0, align 4
@CPP_SEMICOLON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"expected %<;%>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @c_parser_objc_class_declaration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @c_parser_objc_class_declaration(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = load i32, i32* @NULL_TREE, align 4
  store i32 %5, i32* %3, align 4
  %6 = load i32*, i32** %2, align 8
  %7 = load i32, i32* @RID_AT_CLASS, align 4
  %8 = call i32 @c_parser_next_token_is_keyword(i32* %6, i32 %7)
  %9 = call i32 @gcc_assert(i32 %8)
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @c_parser_consume_token(i32* %10)
  br label %12

12:                                               ; preds = %1, %40
  %13 = load i32*, i32** %2, align 8
  %14 = load i32, i32* @CPP_NAME, align 4
  %15 = call i64 @c_parser_next_token_is_not(i32* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @c_parser_error(i32* %18, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %41

20:                                               ; preds = %12
  %21 = load i32*, i32** %2, align 8
  %22 = call %struct.TYPE_2__* @c_parser_peek_token(i32* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @NULL_TREE, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @build_tree_list(i32 %26, i32 %27)
  %29 = call i32 @chainon(i32 %25, i32 %28)
  store i32 %29, i32* %3, align 4
  %30 = load i32*, i32** %2, align 8
  %31 = call i32 @c_parser_consume_token(i32* %30)
  %32 = load i32*, i32** %2, align 8
  %33 = load i32, i32* @CPP_COMMA, align 4
  %34 = call i64 @c_parser_next_token_is(i32* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %20
  %37 = load i32*, i32** %2, align 8
  %38 = call i32 @c_parser_consume_token(i32* %37)
  br label %40

39:                                               ; preds = %20
  br label %41

40:                                               ; preds = %36
  br label %12

41:                                               ; preds = %39, %17
  %42 = load i32*, i32** %2, align 8
  %43 = load i32, i32* @CPP_SEMICOLON, align 4
  %44 = call i32 @c_parser_skip_until_found(i32* %42, i32 %43, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @objc_declare_class(i32 %45)
  ret void
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @c_parser_next_token_is_keyword(i32*, i32) #1

declare dso_local i32 @c_parser_consume_token(i32*) #1

declare dso_local i64 @c_parser_next_token_is_not(i32*, i32) #1

declare dso_local i32 @c_parser_error(i32*, i8*) #1

declare dso_local %struct.TYPE_2__* @c_parser_peek_token(i32*) #1

declare dso_local i32 @chainon(i32, i32) #1

declare dso_local i32 @build_tree_list(i32, i32) #1

declare dso_local i64 @c_parser_next_token_is(i32*, i32) #1

declare dso_local i32 @c_parser_skip_until_found(i32*, i32, i8*) #1

declare dso_local i32 @objc_declare_class(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
