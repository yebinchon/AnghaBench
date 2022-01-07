; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-cfg.c_remove_useless_stmts_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-cfg.c_remove_useless_stmts_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rus_data = type { i32, i32, i32* }

@TSI_SAME_STMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.rus_data*)* @remove_useless_stmts_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_useless_stmts_1(i32* %0, %struct.rus_data* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.rus_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.rus_data* %1, %struct.rus_data** %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @TREE_CODE(i32 %10)
  switch i32 %11, label %120 [
    i32 135, label %12
    i32 128, label %16
    i32 129, label %20
    i32 137, label %24
    i32 134, label %28
    i32 133, label %32
    i32 131, label %36
    i32 136, label %43
    i32 132, label %59
    i32 130, label %81
    i32 138, label %115
  ]

12:                                               ; preds = %2
  %13 = load i32*, i32** %3, align 8
  %14 = load %struct.rus_data*, %struct.rus_data** %4, align 8
  %15 = call i32 @remove_useless_stmts_cond(i32* %13, %struct.rus_data* %14)
  br label %123

16:                                               ; preds = %2
  %17 = load i32*, i32** %3, align 8
  %18 = load %struct.rus_data*, %struct.rus_data** %4, align 8
  %19 = call i32 @remove_useless_stmts_tf(i32* %17, %struct.rus_data* %18)
  br label %123

20:                                               ; preds = %2
  %21 = load i32*, i32** %3, align 8
  %22 = load %struct.rus_data*, %struct.rus_data** %4, align 8
  %23 = call i32 @remove_useless_stmts_tc(i32* %21, %struct.rus_data* %22)
  br label %123

24:                                               ; preds = %2
  %25 = load i32*, i32** %3, align 8
  %26 = load %struct.rus_data*, %struct.rus_data** %4, align 8
  %27 = call i32 @remove_useless_stmts_bind(i32* %25, %struct.rus_data* %26)
  br label %123

28:                                               ; preds = %2
  %29 = load i32*, i32** %3, align 8
  %30 = load %struct.rus_data*, %struct.rus_data** %4, align 8
  %31 = call i32 @remove_useless_stmts_goto(i32* %29, %struct.rus_data* %30)
  br label %123

32:                                               ; preds = %2
  %33 = load i32*, i32** %3, align 8
  %34 = load %struct.rus_data*, %struct.rus_data** %4, align 8
  %35 = call i32 @remove_useless_stmts_label(i32* %33, %struct.rus_data* %34)
  br label %123

36:                                               ; preds = %2
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @fold_stmt(i32* %37)
  %39 = load %struct.rus_data*, %struct.rus_data** %4, align 8
  %40 = getelementptr inbounds %struct.rus_data, %struct.rus_data* %39, i32 0, i32 2
  store i32* null, i32** %40, align 8
  %41 = load %struct.rus_data*, %struct.rus_data** %4, align 8
  %42 = getelementptr inbounds %struct.rus_data, %struct.rus_data* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  br label %123

43:                                               ; preds = %2
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @fold_stmt(i32* %44)
  %46 = load %struct.rus_data*, %struct.rus_data** %4, align 8
  %47 = getelementptr inbounds %struct.rus_data, %struct.rus_data* %46, i32 0, i32 2
  store i32* null, i32** %47, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @notice_special_calls(i32 %48)
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @update_call_expr_flags(i32 %50)
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @tree_could_throw_p(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %43
  %56 = load %struct.rus_data*, %struct.rus_data** %4, align 8
  %57 = getelementptr inbounds %struct.rus_data, %struct.rus_data* %56, i32 0, i32 1
  store i32 1, i32* %57, align 4
  br label %58

58:                                               ; preds = %55, %43
  br label %123

59:                                               ; preds = %2
  %60 = load %struct.rus_data*, %struct.rus_data** %4, align 8
  %61 = getelementptr inbounds %struct.rus_data, %struct.rus_data* %60, i32 0, i32 2
  store i32* null, i32** %61, align 8
  %62 = load i32*, i32** %3, align 8
  %63 = call i32 @fold_stmt(i32* %62)
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @get_call_expr_in(i32 %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %59
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @update_call_expr_flags(i32 %69)
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @notice_special_calls(i32 %71)
  br label %73

73:                                               ; preds = %68, %59
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @tree_could_throw_p(i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load %struct.rus_data*, %struct.rus_data** %4, align 8
  %79 = getelementptr inbounds %struct.rus_data, %struct.rus_data* %78, i32 0, i32 1
  store i32 1, i32* %79, align 4
  br label %80

80:                                               ; preds = %77, %73
  br label %123

81:                                               ; preds = %2
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @tsi_start(i32 %82)
  store i32 %83, i32* %7, align 4
  br label %84

84:                                               ; preds = %113, %95, %81
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @tsi_end_p(i32 %85)
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  br i1 %88, label %89, label %114

89:                                               ; preds = %84
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @tsi_stmt(i32 %90)
  store i32 %91, i32* %5, align 4
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @IS_EMPTY_STMT(i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %89
  %96 = call i32 @tsi_delink(i32* %7)
  br label %84

97:                                               ; preds = %89
  %98 = load i32, i32* %7, align 4
  %99 = call i32* @tsi_stmt_ptr(i32 %98)
  %100 = load %struct.rus_data*, %struct.rus_data** %4, align 8
  call void @remove_useless_stmts_1(i32* %99, %struct.rus_data* %100)
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @tsi_stmt(i32 %101)
  store i32 %102, i32* %5, align 4
  %103 = load i32, i32* %5, align 4
  %104 = call i32 @TREE_CODE(i32 %103)
  %105 = icmp eq i32 %104, 130
  br i1 %105, label %106, label %111

106:                                              ; preds = %97
  %107 = load i32, i32* %5, align 4
  %108 = load i32, i32* @TSI_SAME_STMT, align 4
  %109 = call i32 @tsi_link_before(i32* %7, i32 %107, i32 %108)
  %110 = call i32 @tsi_delink(i32* %7)
  br label %113

111:                                              ; preds = %97
  %112 = call i32 @tsi_next(i32* %7)
  br label %113

113:                                              ; preds = %111, %106
  br label %84

114:                                              ; preds = %84
  br label %123

115:                                              ; preds = %2
  %116 = load i32*, i32** %3, align 8
  %117 = call i32 @fold_stmt(i32* %116)
  %118 = load %struct.rus_data*, %struct.rus_data** %4, align 8
  %119 = getelementptr inbounds %struct.rus_data, %struct.rus_data* %118, i32 0, i32 2
  store i32* null, i32** %119, align 8
  br label %123

120:                                              ; preds = %2
  %121 = load %struct.rus_data*, %struct.rus_data** %4, align 8
  %122 = getelementptr inbounds %struct.rus_data, %struct.rus_data* %121, i32 0, i32 2
  store i32* null, i32** %122, align 8
  br label %123

123:                                              ; preds = %120, %115, %114, %80, %58, %36, %32, %28, %24, %20, %16, %12
  ret void
}

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @remove_useless_stmts_cond(i32*, %struct.rus_data*) #1

declare dso_local i32 @remove_useless_stmts_tf(i32*, %struct.rus_data*) #1

declare dso_local i32 @remove_useless_stmts_tc(i32*, %struct.rus_data*) #1

declare dso_local i32 @remove_useless_stmts_bind(i32*, %struct.rus_data*) #1

declare dso_local i32 @remove_useless_stmts_goto(i32*, %struct.rus_data*) #1

declare dso_local i32 @remove_useless_stmts_label(i32*, %struct.rus_data*) #1

declare dso_local i32 @fold_stmt(i32*) #1

declare dso_local i32 @notice_special_calls(i32) #1

declare dso_local i32 @update_call_expr_flags(i32) #1

declare dso_local i32 @tree_could_throw_p(i32) #1

declare dso_local i32 @get_call_expr_in(i32) #1

declare dso_local i32 @tsi_start(i32) #1

declare dso_local i32 @tsi_end_p(i32) #1

declare dso_local i32 @tsi_stmt(i32) #1

declare dso_local i32 @IS_EMPTY_STMT(i32) #1

declare dso_local i32 @tsi_delink(i32*) #1

declare dso_local i32* @tsi_stmt_ptr(i32) #1

declare dso_local i32 @tsi_link_before(i32*, i32, i32) #1

declare dso_local i32 @tsi_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
