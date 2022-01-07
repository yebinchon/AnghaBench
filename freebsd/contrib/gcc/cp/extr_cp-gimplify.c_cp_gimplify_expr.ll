; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cp-gimplify.c_cp_gimplify_expr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cp-gimplify.c_cp_gimplify_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@GS_OK = common dso_local global i32 0, align 4
@GS_ALL_DONE = common dso_local global i32 0, align 4
@bc_continue = common dso_local global i32 0, align 4
@bc_break = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cp_gimplify_expr(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @TREE_CODE(i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i64 @STATEMENT_CODE_P(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %3
  %19 = call i32 (...) @stmts_are_full_exprs_p()
  store i32 %19, i32* %7, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @STMT_IS_FULL_EXPR_P(i32 %21)
  %23 = call %struct.TYPE_2__* (...) @current_stmt_tree()
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  br label %25

25:                                               ; preds = %18, %3
  %26 = load i32, i32* %8, align 4
  switch i32 %26, label %142 [
    i32 134, label %27
    i32 148, label %33
    i32 132, label %37
    i32 136, label %43
    i32 137, label %48
    i32 142, label %54
    i32 147, label %61
    i32 131, label %67
    i32 139, label %71
    i32 143, label %75
    i32 129, label %79
    i32 138, label %83
    i32 140, label %87
    i32 128, label %92
    i32 144, label %96
    i32 133, label %100
    i32 135, label %104
    i32 145, label %107
    i32 146, label %112
    i32 141, label %117
    i32 130, label %121
  ]

27:                                               ; preds = %25
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @cplus_expand_constant(i32 %29)
  %31 = load i32*, i32** %4, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* @GS_OK, align 4
  store i32 %32, i32* %9, align 4
  br label %147

33:                                               ; preds = %25
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @simplify_aggr_init_expr(i32* %34)
  %36 = load i32, i32* @GS_OK, align 4
  store i32 %36, i32* %9, align 4
  br label %147

37:                                               ; preds = %25
  %38 = load i32*, i32** %4, align 8
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @TREE_OPERAND(i32 %39, i32 0)
  %41 = load i32*, i32** %4, align 8
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* @GS_OK, align 4
  store i32 %42, i32* %9, align 4
  br label %147

43:                                               ; preds = %25
  %44 = load i32*, i32** %4, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @gimplify_must_not_throw_expr(i32* %44, i32* %45)
  %47 = load i32, i32* @GS_OK, align 4
  store i32 %47, i32* %9, align 4
  br label %147

48:                                               ; preds = %25
  %49 = load i32*, i32** %4, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @cp_gimplify_init_expr(i32* %49, i32* %50, i32* %51)
  %53 = load i32, i32* @GS_OK, align 4
  store i32 %53, i32* %9, align 4
  br label %147

54:                                               ; preds = %25
  %55 = load i32*, i32** %4, align 8
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @TREE_TYPE(i32 %56)
  %58 = call i32 @build_constructor(i32 %57, i32* null)
  %59 = load i32*, i32** %4, align 8
  store i32 %58, i32* %59, align 4
  %60 = load i32, i32* @GS_OK, align 4
  store i32 %60, i32* %9, align 4
  br label %147

61:                                               ; preds = %25
  %62 = load i32*, i32** %4, align 8
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @BASELINK_FUNCTIONS(i32 %63)
  %65 = load i32*, i32** %4, align 8
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* @GS_OK, align 4
  store i32 %66, i32* %9, align 4
  br label %147

67:                                               ; preds = %25
  %68 = load i32*, i32** %4, align 8
  %69 = call i32 @genericize_try_block(i32* %68)
  %70 = load i32, i32* @GS_OK, align 4
  store i32 %70, i32* %9, align 4
  br label %147

71:                                               ; preds = %25
  %72 = load i32*, i32** %4, align 8
  %73 = call i32 @genericize_catch_block(i32* %72)
  %74 = load i32, i32* @GS_OK, align 4
  store i32 %74, i32* %9, align 4
  br label %147

75:                                               ; preds = %25
  %76 = load i32*, i32** %4, align 8
  %77 = call i32 @genericize_eh_spec_block(i32* %76)
  %78 = load i32, i32* @GS_OK, align 4
  store i32 %78, i32* %9, align 4
  br label %147

79:                                               ; preds = %25
  %80 = call i32 (...) @build_empty_stmt()
  %81 = load i32*, i32** %4, align 8
  store i32 %80, i32* %81, align 4
  %82 = load i32, i32* @GS_ALL_DONE, align 4
  store i32 %82, i32* %9, align 4
  br label %147

83:                                               ; preds = %25
  %84 = load i32*, i32** %4, align 8
  %85 = call i32 @gimplify_if_stmt(i32* %84)
  %86 = load i32, i32* @GS_OK, align 4
  store i32 %86, i32* %9, align 4
  br label %147

87:                                               ; preds = %25
  %88 = load i32*, i32** %4, align 8
  %89 = load i32*, i32** %5, align 8
  %90 = call i32 @gimplify_for_stmt(i32* %88, i32* %89)
  %91 = load i32, i32* @GS_ALL_DONE, align 4
  store i32 %91, i32* %9, align 4
  br label %147

92:                                               ; preds = %25
  %93 = load i32*, i32** %4, align 8
  %94 = call i32 @gimplify_while_stmt(i32* %93)
  %95 = load i32, i32* @GS_ALL_DONE, align 4
  store i32 %95, i32* %9, align 4
  br label %147

96:                                               ; preds = %25
  %97 = load i32*, i32** %4, align 8
  %98 = call i32 @gimplify_do_stmt(i32* %97)
  %99 = load i32, i32* @GS_ALL_DONE, align 4
  store i32 %99, i32* %9, align 4
  br label %147

100:                                              ; preds = %25
  %101 = load i32*, i32** %4, align 8
  %102 = call i32 @gimplify_switch_stmt(i32* %101)
  %103 = load i32, i32* @GS_ALL_DONE, align 4
  store i32 %103, i32* %9, align 4
  br label %147

104:                                              ; preds = %25
  %105 = load i32*, i32** %4, align 8
  %106 = call i32 @cp_gimplify_omp_for(i32* %105)
  store i32 %106, i32* %9, align 4
  br label %147

107:                                              ; preds = %25
  %108 = load i32, i32* @bc_continue, align 4
  %109 = call i32 @build_bc_goto(i32 %108)
  %110 = load i32*, i32** %4, align 8
  store i32 %109, i32* %110, align 4
  %111 = load i32, i32* @GS_ALL_DONE, align 4
  store i32 %111, i32* %9, align 4
  br label %147

112:                                              ; preds = %25
  %113 = load i32, i32* @bc_break, align 4
  %114 = call i32 @build_bc_goto(i32 %113)
  %115 = load i32*, i32** %4, align 8
  store i32 %114, i32* %115, align 4
  %116 = load i32, i32* @GS_ALL_DONE, align 4
  store i32 %116, i32* %9, align 4
  br label %147

117:                                              ; preds = %25
  %118 = load i32*, i32** %4, align 8
  %119 = call i32 @gimplify_expr_stmt(i32* %118)
  %120 = load i32, i32* @GS_OK, align 4
  store i32 %120, i32* %9, align 4
  br label %147

121:                                              ; preds = %25
  %122 = load i32*, i32** %4, align 8
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @TREE_OPERAND(i32 %123, i32 0)
  store i32 %124, i32* %10, align 4
  %125 = load i32*, i32** %4, align 8
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @TREE_TYPE(i32 %126)
  store i32 %127, i32* %11, align 4
  %128 = load i32, i32* %10, align 4
  %129 = call i32 @TREE_TYPE(i32 %128)
  %130 = load i32, i32* %11, align 4
  %131 = icmp ne i32 %129, %130
  br i1 %131, label %132, label %136

132:                                              ; preds = %121
  %133 = load i32, i32* %11, align 4
  %134 = load i32, i32* %10, align 4
  %135 = call i32 @fold_convert(i32 %133, i32 %134)
  br label %138

136:                                              ; preds = %121
  %137 = load i32, i32* %10, align 4
  br label %138

138:                                              ; preds = %136, %132
  %139 = phi i32 [ %135, %132 ], [ %137, %136 ]
  %140 = load i32*, i32** %4, align 8
  store i32 %139, i32* %140, align 4
  %141 = load i32, i32* @GS_OK, align 4
  store i32 %141, i32* %9, align 4
  br label %147

142:                                              ; preds = %25
  %143 = load i32*, i32** %4, align 8
  %144 = load i32*, i32** %5, align 8
  %145 = load i32*, i32** %6, align 8
  %146 = call i32 @c_gimplify_expr(i32* %143, i32* %144, i32* %145)
  store i32 %146, i32* %9, align 4
  br label %147

147:                                              ; preds = %142, %138, %117, %112, %107, %104, %100, %96, %92, %87, %83, %79, %75, %71, %67, %61, %54, %48, %43, %37, %33, %27
  %148 = load i32, i32* %8, align 4
  %149 = call i64 @STATEMENT_CODE_P(i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %147
  %152 = load i32, i32* %7, align 4
  %153 = call %struct.TYPE_2__* (...) @current_stmt_tree()
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 0
  store i32 %152, i32* %154, align 4
  br label %155

155:                                              ; preds = %151, %147
  %156 = load i32, i32* %9, align 4
  ret i32 %156
}

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i64 @STATEMENT_CODE_P(i32) #1

declare dso_local i32 @stmts_are_full_exprs_p(...) #1

declare dso_local i32 @STMT_IS_FULL_EXPR_P(i32) #1

declare dso_local %struct.TYPE_2__* @current_stmt_tree(...) #1

declare dso_local i32 @cplus_expand_constant(i32) #1

declare dso_local i32 @simplify_aggr_init_expr(i32*) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @gimplify_must_not_throw_expr(i32*, i32*) #1

declare dso_local i32 @cp_gimplify_init_expr(i32*, i32*, i32*) #1

declare dso_local i32 @build_constructor(i32, i32*) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @BASELINK_FUNCTIONS(i32) #1

declare dso_local i32 @genericize_try_block(i32*) #1

declare dso_local i32 @genericize_catch_block(i32*) #1

declare dso_local i32 @genericize_eh_spec_block(i32*) #1

declare dso_local i32 @build_empty_stmt(...) #1

declare dso_local i32 @gimplify_if_stmt(i32*) #1

declare dso_local i32 @gimplify_for_stmt(i32*, i32*) #1

declare dso_local i32 @gimplify_while_stmt(i32*) #1

declare dso_local i32 @gimplify_do_stmt(i32*) #1

declare dso_local i32 @gimplify_switch_stmt(i32*) #1

declare dso_local i32 @cp_gimplify_omp_for(i32*) #1

declare dso_local i32 @build_bc_goto(i32) #1

declare dso_local i32 @gimplify_expr_stmt(i32*) #1

declare dso_local i32 @fold_convert(i32, i32) #1

declare dso_local i32 @c_gimplify_expr(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
