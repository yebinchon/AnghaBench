; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_objc_method_definition.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_objc_method_definition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@objc_pq_context = common dso_local global i32 0, align 4
@CPP_SEMICOLON = common dso_local global i32 0, align 4
@pedantic = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"extra semicolon in method definition specified\00", align 1
@CPP_OPEN_BRACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"expected %<{%>\00", align 1
@objc_method_attributes = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@current_function_decl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @c_parser_objc_method_definition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @c_parser_objc_method_definition(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call i32 @c_parser_objc_method_type(i32* %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @objc_set_method_type(i32 %7)
  store i32 1, i32* @objc_pq_context, align 4
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @c_parser_objc_method_decl(i32* %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32*, i32** %2, align 8
  %12 = load i32, i32* @CPP_SEMICOLON, align 4
  %13 = call i64 @c_parser_next_token_is(i32* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @c_parser_consume_token(i32* %16)
  %18 = load i64, i64* @pedantic, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = call i32 @pedwarn(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %15
  br label %23

23:                                               ; preds = %22, %1
  %24 = load i32*, i32** %2, align 8
  %25 = load i32, i32* @CPP_OPEN_BRACE, align 4
  %26 = call i64 @c_parser_next_token_is(i32* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 @c_parser_error(i32* %29, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %41

31:                                               ; preds = %23
  store i32 0, i32* @objc_pq_context, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @objc_method_attributes, align 4
  %34 = call i32 @objc_start_method_definition(i32 %32, i32 %33)
  %35 = load i32, i32* @NULL_TREE, align 4
  store i32 %35, i32* @objc_method_attributes, align 4
  %36 = load i32*, i32** %2, align 8
  %37 = call i32 @c_parser_compound_statement(i32* %36)
  %38 = call i32 @add_stmt(i32 %37)
  %39 = load i32, i32* @current_function_decl, align 4
  %40 = call i32 @objc_finish_method_definition(i32 %39)
  br label %41

41:                                               ; preds = %31, %28
  ret void
}

declare dso_local i32 @c_parser_objc_method_type(i32*) #1

declare dso_local i32 @objc_set_method_type(i32) #1

declare dso_local i32 @c_parser_objc_method_decl(i32*) #1

declare dso_local i64 @c_parser_next_token_is(i32*, i32) #1

declare dso_local i32 @c_parser_consume_token(i32*) #1

declare dso_local i32 @pedwarn(i8*) #1

declare dso_local i32 @c_parser_error(i32*, i8*) #1

declare dso_local i32 @objc_start_method_definition(i32, i32) #1

declare dso_local i32 @add_stmt(i32) #1

declare dso_local i32 @c_parser_compound_statement(i32*) #1

declare dso_local i32 @objc_finish_method_definition(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
