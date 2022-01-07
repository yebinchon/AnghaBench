; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_direct_new_declarator.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_direct_new_declarator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@CPP_OPEN_SQUARE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"`['\00", align 1
@processing_template_decl = common dso_local global i32 0, align 4
@WANT_INT = common dso_local global i32 0, align 4
@WANT_ENUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [68 x i8] c"expression in new-declarator must have integral or enumeration type\00", align 1
@error_mark_node = common dso_local global i64 0, align 8
@CPP_CLOSE_SQUARE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"`]'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_6__*)* @cp_parser_direct_new_declarator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @cp_parser_direct_new_declarator(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  store i32* null, i32** %3, align 8
  br label %5

5:                                                ; preds = %1, %46
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %7 = load i32, i32* @CPP_OPEN_SQUARE, align 4
  %8 = call i32 @cp_parser_require(%struct.TYPE_6__* %6, i32 %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %9 = load i32*, i32** %3, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %29, label %11

11:                                               ; preds = %5
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %13 = call i64 @cp_parser_expression(%struct.TYPE_6__* %12, i32 0)
  store i64 %13, i64* %4, align 8
  %14 = load i32, i32* @processing_template_decl, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %28, label %16

16:                                               ; preds = %11
  %17 = load i32, i32* @WANT_INT, align 4
  %18 = load i32, i32* @WANT_ENUM, align 4
  %19 = or i32 %17, %18
  %20 = load i64, i64* %4, align 8
  %21 = call i64 @build_expr_type_conversion(i32 %19, i64 %20, i32 1)
  store i64 %21, i64* %4, align 8
  %22 = load i64, i64* %4, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %16
  %25 = call i32 @error(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i64, i64* @error_mark_node, align 8
  store i64 %26, i64* %4, align 8
  br label %27

27:                                               ; preds = %24, %16
  br label %28

28:                                               ; preds = %27, %11
  br label %32

29:                                               ; preds = %5
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %31 = call i64 @cp_parser_constant_expression(%struct.TYPE_6__* %30, i32 0, i32* null)
  store i64 %31, i64* %4, align 8
  br label %32

32:                                               ; preds = %29, %28
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %34 = load i32, i32* @CPP_CLOSE_SQUARE, align 4
  %35 = call i32 @cp_parser_require(%struct.TYPE_6__* %33, i32 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i32*, i32** %3, align 8
  %37 = load i64, i64* %4, align 8
  %38 = call i32* @make_array_declarator(i32* %36, i64 %37)
  store i32* %38, i32** %3, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @CPP_OPEN_SQUARE, align 4
  %43 = call i64 @cp_lexer_next_token_is_not(i32 %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %32
  br label %47

46:                                               ; preds = %32
  br label %5

47:                                               ; preds = %45
  %48 = load i32*, i32** %3, align 8
  ret i32* %48
}

declare dso_local i32 @cp_parser_require(%struct.TYPE_6__*, i32, i8*) #1

declare dso_local i64 @cp_parser_expression(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @build_expr_type_conversion(i32, i64, i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i64 @cp_parser_constant_expression(%struct.TYPE_6__*, i32, i32*) #1

declare dso_local i32* @make_array_declarator(i32*, i64) #1

declare dso_local i64 @cp_lexer_next_token_is_not(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
