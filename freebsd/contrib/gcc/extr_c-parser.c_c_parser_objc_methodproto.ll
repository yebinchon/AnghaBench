; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_objc_methodproto.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_objc_methodproto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RID_AT_REQUIRED = common dso_local global i32 0, align 4
@RID_AT_OPTIONAL = common dso_local global i32 0, align 4
@objc_pq_context = common dso_local global i32 0, align 4
@objc_method_attributes = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@CPP_SEMICOLON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"expected %<;%>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @c_parser_objc_methodproto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @c_parser_objc_methodproto(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = load i32, i32* @RID_AT_REQUIRED, align 4
  %7 = call i64 @c_parser_next_token_is_keyword(i32* %5, i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = call i32 @objc_set_method_opt(i32 0)
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @c_parser_consume_token(i32* %11)
  br label %36

13:                                               ; preds = %1
  %14 = load i32*, i32** %2, align 8
  %15 = load i32, i32* @RID_AT_OPTIONAL, align 4
  %16 = call i64 @c_parser_next_token_is_keyword(i32* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = call i32 @objc_set_method_opt(i32 1)
  %20 = load i32*, i32** %2, align 8
  %21 = call i32 @c_parser_consume_token(i32* %20)
  br label %36

22:                                               ; preds = %13
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @c_parser_objc_method_type(i32* %23)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @objc_set_method_type(i32 %25)
  store i32 1, i32* @objc_pq_context, align 4
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @c_parser_objc_method_decl(i32* %27)
  store i32 %28, i32* %4, align 4
  store i32 0, i32* @objc_pq_context, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @objc_method_attributes, align 4
  %31 = call i32 @objc_add_method_declaration(i32 %29, i32 %30)
  %32 = load i32, i32* @NULL_TREE, align 4
  store i32 %32, i32* @objc_method_attributes, align 4
  %33 = load i32*, i32** %2, align 8
  %34 = load i32, i32* @CPP_SEMICOLON, align 4
  %35 = call i32 @c_parser_skip_until_found(i32* %33, i32 %34, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %22, %18, %9
  ret void
}

declare dso_local i64 @c_parser_next_token_is_keyword(i32*, i32) #1

declare dso_local i32 @objc_set_method_opt(i32) #1

declare dso_local i32 @c_parser_consume_token(i32*) #1

declare dso_local i32 @c_parser_objc_method_type(i32*) #1

declare dso_local i32 @objc_set_method_type(i32) #1

declare dso_local i32 @c_parser_objc_method_decl(i32*) #1

declare dso_local i32 @objc_add_method_declaration(i32, i32) #1

declare dso_local i32 @c_parser_skip_until_found(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
