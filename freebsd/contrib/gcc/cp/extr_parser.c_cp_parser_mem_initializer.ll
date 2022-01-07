; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_mem_initializer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_mem_initializer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@CPP_OPEN_PAREN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"anachronistic old-style base class initializer\00", align 1
@NULL_TREE = common dso_local global i64 0, align 8
@in_base_initializer = common dso_local global i32 0, align 4
@error_mark_node = common dso_local global i64 0, align 8
@void_type_node = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*)* @cp_parser_mem_initializer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cp_parser_mem_initializer(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @CPP_OPEN_PAREN, align 4
  %11 = call i64 @cp_lexer_next_token_is(i32 %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = call i32 @pedwarn(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %15 = load i64, i64* @NULL_TREE, align 8
  store i64 %15, i64* %4, align 8
  br label %19

16:                                               ; preds = %1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = call i64 @cp_parser_mem_initializer_id(%struct.TYPE_5__* %17)
  store i64 %18, i64* %4, align 8
  br label %19

19:                                               ; preds = %16, %13
  %20 = load i64, i64* %4, align 8
  %21 = call i64 @expand_member_init(i64 %20)
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %6, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @DECL_P(i64 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  store i32 1, i32* @in_base_initializer, align 4
  br label %29

29:                                               ; preds = %28, %24, %19
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %31 = call i64 @cp_parser_parenthesized_expression_list(%struct.TYPE_5__* %30, i32 0, i32 0, i32* null)
  store i64 %31, i64* %5, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* @error_mark_node, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i64, i64* @error_mark_node, align 8
  store i64 %36, i64* %2, align 8
  br label %53

37:                                               ; preds = %29
  %38 = load i64, i64* %5, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = load i64, i64* @void_type_node, align 8
  store i64 %41, i64* %5, align 8
  br label %42

42:                                               ; preds = %40, %37
  store i32 0, i32* @in_base_initializer, align 4
  %43 = load i64, i64* %6, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* %5, align 8
  %48 = call i64 @build_tree_list(i64 %46, i64 %47)
  br label %51

49:                                               ; preds = %42
  %50 = load i64, i64* @error_mark_node, align 8
  br label %51

51:                                               ; preds = %49, %45
  %52 = phi i64 [ %48, %45 ], [ %50, %49 ]
  store i64 %52, i64* %2, align 8
  br label %53

53:                                               ; preds = %51, %35
  %54 = load i64, i64* %2, align 8
  ret i64 %54
}

declare dso_local i64 @cp_lexer_next_token_is(i32, i32) #1

declare dso_local i32 @pedwarn(i8*) #1

declare dso_local i64 @cp_parser_mem_initializer_id(%struct.TYPE_5__*) #1

declare dso_local i64 @expand_member_init(i64) #1

declare dso_local i32 @DECL_P(i64) #1

declare dso_local i64 @cp_parser_parenthesized_expression_list(%struct.TYPE_5__*, i32, i32, i32*) #1

declare dso_local i64 @build_tree_list(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
