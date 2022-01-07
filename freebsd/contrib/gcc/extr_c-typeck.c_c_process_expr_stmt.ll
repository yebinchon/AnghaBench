; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_c_process_expr_stmt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_c_process_expr_stmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i64 0, align 8
@warn_sequence_point = common dso_local global i64 0, align 8
@error_mark_node = common dso_local global i64 0, align 8
@ARRAY_TYPE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"expression statement has incomplete type\00", align 1
@cur_stmt_list = common dso_local global i32 0, align 4
@extra_warnings = common dso_local global i64 0, align 8
@warn_unused_value = common dso_local global i64 0, align 8
@NOP_EXPR = common dso_local global i32 0, align 4
@input_location = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @c_process_expr_stmt(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = load i64, i64* @NULL_TREE, align 8
  store i64 %7, i64* %2, align 8
  br label %69

8:                                                ; preds = %1
  %9 = load i64, i64* @warn_sequence_point, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load i64, i64* %3, align 8
  %13 = call i32 @verify_sequence_points(i64 %12)
  br label %14

14:                                               ; preds = %11, %8
  %15 = load i64, i64* %3, align 8
  %16 = call i64 @TREE_TYPE(i64 %15)
  %17 = load i64, i64* @error_mark_node, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %14
  %20 = load i64, i64* %3, align 8
  %21 = call i64 @TREE_TYPE(i64 %20)
  %22 = call i32 @COMPLETE_OR_VOID_TYPE_P(i64 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %19
  %25 = load i64, i64* %3, align 8
  %26 = call i64 @TREE_TYPE(i64 %25)
  %27 = call i64 @TREE_CODE(i64 %26)
  %28 = load i64, i64* @ARRAY_TYPE, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = call i32 @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %24, %19, %14
  %33 = load i32, i32* @cur_stmt_list, align 4
  %34 = call i32 @STATEMENT_LIST_STMT_EXPR(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %32
  %37 = load i64, i64* @extra_warnings, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load i64, i64* @warn_unused_value, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39, %36
  %43 = load i64, i64* %3, align 8
  %44 = call i32 @emit_side_effect_warnings(i64 %43)
  br label %45

45:                                               ; preds = %42, %39, %32
  %46 = load i64, i64* %3, align 8
  %47 = call i64 @DECL_P(i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load i64, i64* %3, align 8
  %51 = call i64 @CONSTANT_CLASS_P(i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %49, %45
  %54 = load i32, i32* @NOP_EXPR, align 4
  %55 = load i64, i64* %3, align 8
  %56 = call i64 @TREE_TYPE(i64 %55)
  %57 = load i64, i64* %3, align 8
  %58 = call i64 @build1(i32 %54, i64 %56, i64 %57)
  store i64 %58, i64* %3, align 8
  br label %59

59:                                               ; preds = %53, %49
  %60 = load i64, i64* %3, align 8
  %61 = call i64 @EXPR_P(i64 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load i64, i64* %3, align 8
  %65 = load i32, i32* @input_location, align 4
  %66 = call i32 @SET_EXPR_LOCATION(i64 %64, i32 %65)
  br label %67

67:                                               ; preds = %63, %59
  %68 = load i64, i64* %3, align 8
  store i64 %68, i64* %2, align 8
  br label %69

69:                                               ; preds = %67, %6
  %70 = load i64, i64* %2, align 8
  ret i64 %70
}

declare dso_local i32 @verify_sequence_points(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i32 @COMPLETE_OR_VOID_TYPE_P(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @STATEMENT_LIST_STMT_EXPR(i32) #1

declare dso_local i32 @emit_side_effect_warnings(i64) #1

declare dso_local i64 @DECL_P(i64) #1

declare dso_local i64 @CONSTANT_CLASS_P(i64) #1

declare dso_local i64 @build1(i32, i64, i64) #1

declare dso_local i64 @EXPR_P(i64) #1

declare dso_local i32 @SET_EXPR_LOCATION(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
