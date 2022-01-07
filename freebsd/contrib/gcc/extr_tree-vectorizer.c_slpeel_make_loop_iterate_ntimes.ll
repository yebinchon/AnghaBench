; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vectorizer.c_slpeel_make_loop_iterate_ntimes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vectorizer.c_slpeel_make_loop_iterate_ntimes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@NULL_TREE = common dso_local global i32 0, align 4
@EDGE_TRUE_VALUE = common dso_local global i32 0, align 4
@GE_EXPR = common dso_local global i32 0, align 4
@boolean_type_node = common dso_local global i32 0, align 4
@GOTO_EXPR = common dso_local global i32 0, align 4
@void_type_node = common dso_local global i32 0, align 4
@LT_EXPR = common dso_local global i32 0, align 4
@COND_EXPR = common dso_local global i32 0, align 4
@BSI_SAME_STMT = common dso_local global i32 0, align 4
@dump_file = common dso_local global i64 0, align 8
@dump_flags = common dso_local global i32 0, align 4
@TDF_DETAILS = common dso_local global i32 0, align 4
@UNKNOWN_LOC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"\0Aloop at %s:%d: \00", align 1
@TDF_SLIM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @slpeel_make_loop_iterate_ntimes(%struct.loop* %0, i32 %1) #0 {
  %3 = alloca %struct.loop*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_2__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store %struct.loop* %0, %struct.loop** %3, align 8
  store i32 %1, i32* %4, align 4
  %21 = load %struct.loop*, %struct.loop** %3, align 8
  %22 = getelementptr inbounds %struct.loop, %struct.loop* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  store %struct.TYPE_2__* %23, %struct.TYPE_2__** %10, align 8
  %24 = load %struct.loop*, %struct.loop** %3, align 8
  %25 = getelementptr inbounds %struct.loop, %struct.loop* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @tree_block_label(i32 %26)
  store i32 %27, i32* %14, align 4
  %28 = load %struct.loop*, %struct.loop** %3, align 8
  %29 = getelementptr inbounds %struct.loop, %struct.loop* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @tree_block_label(i32 %32)
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @TREE_TYPE(i32 %34)
  %36 = call i32 @build_int_cst(i32 %35, i32 0)
  store i32 %36, i32* %16, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @TREE_TYPE(i32 %37)
  %39 = call i32 @build_int_cst(i32 %38, i32 1)
  store i32 %39, i32* %17, align 4
  %40 = load %struct.loop*, %struct.loop** %3, align 8
  %41 = call i32 @get_loop_exit_condition(%struct.loop* %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @gcc_assert(i32 %42)
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @bsi_for_stmt(i32 %44)
  store i32 %45, i32* %11, align 4
  %46 = load %struct.loop*, %struct.loop** %3, align 8
  %47 = call i32 @standard_iv_increment_position(%struct.loop* %46, i32* %12, i32* %13)
  %48 = load i32, i32* %16, align 4
  %49 = load i32, i32* %17, align 4
  %50 = load i32, i32* @NULL_TREE, align 4
  %51 = load %struct.loop*, %struct.loop** %3, align 8
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @create_iv(i32 %48, i32 %49, i32 %50, %struct.loop* %51, i32* %12, i32 %52, i32* %5, i32* %6)
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @EDGE_TRUE_VALUE, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %2
  %61 = load i32, i32* @GE_EXPR, align 4
  %62 = load i32, i32* @boolean_type_node, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @build2(i32 %61, i32 %62, i32 %63, i32 %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* @GOTO_EXPR, align 4
  %67 = load i32, i32* @void_type_node, align 4
  %68 = load i32, i32* %15, align 4
  %69 = call i32 @build1(i32 %66, i32 %67, i32 %68)
  store i32 %69, i32* %18, align 4
  %70 = load i32, i32* @GOTO_EXPR, align 4
  %71 = load i32, i32* @void_type_node, align 4
  %72 = load i32, i32* %14, align 4
  %73 = call i32 @build1(i32 %70, i32 %71, i32 %72)
  store i32 %73, i32* %19, align 4
  br label %88

74:                                               ; preds = %2
  %75 = load i32, i32* @LT_EXPR, align 4
  %76 = load i32, i32* @boolean_type_node, align 4
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @build2(i32 %75, i32 %76, i32 %77, i32 %78)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* @GOTO_EXPR, align 4
  %81 = load i32, i32* @void_type_node, align 4
  %82 = load i32, i32* %14, align 4
  %83 = call i32 @build1(i32 %80, i32 %81, i32 %82)
  store i32 %83, i32* %18, align 4
  %84 = load i32, i32* @GOTO_EXPR, align 4
  %85 = load i32, i32* @void_type_node, align 4
  %86 = load i32, i32* %15, align 4
  %87 = call i32 @build1(i32 %84, i32 %85, i32 %86)
  store i32 %87, i32* %19, align 4
  br label %88

88:                                               ; preds = %74, %60
  %89 = load i32, i32* @COND_EXPR, align 4
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @TREE_TYPE(i32 %90)
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* %18, align 4
  %94 = load i32, i32* %19, align 4
  %95 = call i32 @build3(i32 %89, i32 %91, i32 %92, i32 %93, i32 %94)
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* @BSI_SAME_STMT, align 4
  %98 = call i32 @bsi_insert_before(i32* %11, i32 %96, i32 %97)
  %99 = call i32 @bsi_remove(i32* %11, i32 1)
  %100 = load %struct.loop*, %struct.loop** %3, align 8
  %101 = call i64 @find_loop_location(%struct.loop* %100)
  store i64 %101, i64* %20, align 8
  %102 = load i64, i64* @dump_file, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %125

104:                                              ; preds = %88
  %105 = load i32, i32* @dump_flags, align 4
  %106 = load i32, i32* @TDF_DETAILS, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %125

109:                                              ; preds = %104
  %110 = load i64, i64* %20, align 8
  %111 = load i64, i64* @UNKNOWN_LOC, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %120

113:                                              ; preds = %109
  %114 = load i64, i64* @dump_file, align 8
  %115 = load i64, i64* %20, align 8
  %116 = call i8* @LOC_FILE(i64 %115)
  %117 = load i64, i64* %20, align 8
  %118 = call i32 @LOC_LINE(i64 %117)
  %119 = call i32 @fprintf(i64 %114, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %116, i32 %118)
  br label %120

120:                                              ; preds = %113, %109
  %121 = load i64, i64* @dump_file, align 8
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* @TDF_SLIM, align 4
  %124 = call i32 @print_generic_expr(i64 %121, i32 %122, i32 %123)
  br label %125

125:                                              ; preds = %120, %104, %88
  %126 = load i32, i32* %4, align 4
  %127 = load %struct.loop*, %struct.loop** %3, align 8
  %128 = getelementptr inbounds %struct.loop, %struct.loop* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 8
  ret void
}

declare dso_local i32 @tree_block_label(i32) #1

declare dso_local i32 @build_int_cst(i32, i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @get_loop_exit_condition(%struct.loop*) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @bsi_for_stmt(i32) #1

declare dso_local i32 @standard_iv_increment_position(%struct.loop*, i32*, i32*) #1

declare dso_local i32 @create_iv(i32, i32, i32, %struct.loop*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @build2(i32, i32, i32, i32) #1

declare dso_local i32 @build1(i32, i32, i32) #1

declare dso_local i32 @build3(i32, i32, i32, i32, i32) #1

declare dso_local i32 @bsi_insert_before(i32*, i32, i32) #1

declare dso_local i32 @bsi_remove(i32*, i32) #1

declare dso_local i64 @find_loop_location(%struct.loop*) #1

declare dso_local i32 @fprintf(i64, i8*, i8*, i32) #1

declare dso_local i8* @LOC_FILE(i64) #1

declare dso_local i32 @LOC_LINE(i64) #1

declare dso_local i32 @print_generic_expr(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
