; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_parser_build_binary_op.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_parser_build_binary_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c_expr = type { i32, i32 }

@ERROR_MARK = common dso_local global i64 0, align 8
@warn_parentheses = common dso_local global i64 0, align 8
@EQ_EXPR = common dso_local global i32 0, align 4
@NE_EXPR = common dso_local global i32 0, align 4
@STRING_CST = common dso_local global i32 0, align 4
@OPT_Waddress = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"comparison with string literal results in unspecified behaviour\00", align 1
@tcc_comparison = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @parser_build_binary_op(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.c_expr, align 4
  %5 = alloca %struct.c_expr, align 4
  %6 = alloca %struct.c_expr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = bitcast %struct.c_expr* %5 to i64*
  store i64 %1, i64* %10, align 4
  %11 = bitcast %struct.c_expr* %6 to i64*
  store i64 %2, i64* %11, align 4
  store i32 %0, i32* %7, align 4
  %12 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %5, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %8, align 4
  %14 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %6, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %7, align 4
  %17 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %5, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %6, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @build_binary_op(i32 %16, i32 %18, i32 %20, i32 1)
  %22 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %4, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* %7, align 4
  %24 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %4, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %4, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @TREE_CODE(i32 %26)
  %28 = load i64, i64* @ERROR_MARK, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  br label %106

31:                                               ; preds = %3
  %32 = load i64, i64* @warn_parentheses, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @warn_about_parentheses(i32 %35, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %34, %31
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @EQ_EXPR, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @NE_EXPR, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %69

47:                                               ; preds = %43, %39
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @STRING_CST, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %6, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @integer_zerop(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %51, %47
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @STRING_CST, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %5, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @integer_zerop(i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %60, %51
  %66 = load i32, i32* @OPT_Waddress, align 4
  %67 = call i32 @warning(i32 %66, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  br label %68

68:                                               ; preds = %65, %60, %56
  br label %86

69:                                               ; preds = %43
  %70 = load i32, i32* %7, align 4
  %71 = call i64 @TREE_CODE_CLASS(i32 %70)
  %72 = load i64, i64* @tcc_comparison, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %85

74:                                               ; preds = %69
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @STRING_CST, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @STRING_CST, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %78, %74
  %83 = load i32, i32* @OPT_Waddress, align 4
  %84 = call i32 @warning(i32 %83, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  br label %85

85:                                               ; preds = %82, %78, %69
  br label %86

86:                                               ; preds = %85, %68
  %87 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %4, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @TREE_OVERFLOW_P(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %105

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %5, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @TREE_OVERFLOW_P(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %105, label %96

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %6, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @TREE_OVERFLOW_P(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %4, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @overflow_warning(i32 %103)
  br label %105

105:                                              ; preds = %101, %96, %91, %86
  br label %106

106:                                              ; preds = %105, %30
  %107 = bitcast %struct.c_expr* %4 to i64*
  %108 = load i64, i64* %107, align 4
  ret i64 %108
}

declare dso_local i32 @build_binary_op(i32, i32, i32, i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @warn_about_parentheses(i32, i32, i32) #1

declare dso_local i32 @integer_zerop(i32) #1

declare dso_local i32 @warning(i32, i8*) #1

declare dso_local i64 @TREE_CODE_CLASS(i32) #1

declare dso_local i64 @TREE_OVERFLOW_P(i32) #1

declare dso_local i32 @overflow_warning(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
