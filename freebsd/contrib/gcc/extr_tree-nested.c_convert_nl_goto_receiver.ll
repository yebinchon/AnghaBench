; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-nested.c_convert_nl_goto_receiver.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-nested.c_convert_nl_goto_receiver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.walk_stmt_info = type { i32, %struct.nesting_info* }
%struct.nesting_info = type { i32 }
%struct.var_map_elt = type { i32, i32 }

@LABEL_EXPR = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i32 0, align 4
@GOTO_EXPR = common dso_local global i64 0, align 8
@void_type_node = common dso_local global i32 0, align 4
@TSI_SAME_STMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*)* @convert_nl_goto_receiver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_nl_goto_receiver(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.walk_stmt_info*, align 8
  %9 = alloca %struct.nesting_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.var_map_elt*, align 8
  %15 = alloca %struct.var_map_elt, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = bitcast i8* %17 to %struct.walk_stmt_info*
  store %struct.walk_stmt_info* %18, %struct.walk_stmt_info** %8, align 8
  %19 = load %struct.walk_stmt_info*, %struct.walk_stmt_info** %8, align 8
  %20 = getelementptr inbounds %struct.walk_stmt_info, %struct.walk_stmt_info* %19, i32 0, i32 1
  %21 = load %struct.nesting_info*, %struct.nesting_info** %20, align 8
  store %struct.nesting_info* %21, %struct.nesting_info** %9, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %10, align 4
  %24 = load i32*, i32** %6, align 8
  store i32 0, i32* %24, align 4
  %25 = load i32, i32* %10, align 4
  %26 = call i64 @TREE_CODE(i32 %25)
  %27 = load i64, i64* @LABEL_EXPR, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  %30 = load i32, i32* @NULL_TREE, align 4
  store i32 %30, i32* %4, align 4
  br label %82

31:                                               ; preds = %3
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @LABEL_EXPR_LABEL(i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = getelementptr inbounds %struct.var_map_elt, %struct.var_map_elt* %15, i32 0, i32 1
  store i32 %34, i32* %35, align 4
  %36 = load %struct.nesting_info*, %struct.nesting_info** %9, align 8
  %37 = getelementptr inbounds %struct.nesting_info, %struct.nesting_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @htab_find(i32 %38, %struct.var_map_elt* %15)
  %40 = inttoptr i64 %39 to %struct.var_map_elt*
  store %struct.var_map_elt* %40, %struct.var_map_elt** %14, align 8
  %41 = load %struct.var_map_elt*, %struct.var_map_elt** %14, align 8
  %42 = icmp ne %struct.var_map_elt* %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %31
  %44 = load i32, i32* @NULL_TREE, align 4
  store i32 %44, i32* %4, align 4
  br label %82

45:                                               ; preds = %31
  %46 = load %struct.var_map_elt*, %struct.var_map_elt** %14, align 8
  %47 = getelementptr inbounds %struct.var_map_elt, %struct.var_map_elt* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %12, align 4
  %49 = load %struct.walk_stmt_info*, %struct.walk_stmt_info** %8, align 8
  %50 = getelementptr inbounds %struct.walk_stmt_info, %struct.walk_stmt_info* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %16, align 4
  %52 = call i32 @tsi_prev(i32* %16)
  %53 = load i32, i32* %16, align 4
  %54 = call i64 @tsi_end_p(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %45
  %57 = load i32, i32* %16, align 4
  %58 = call i32 @tsi_stmt(i32 %57)
  %59 = call i64 @block_may_fallthru(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %56, %45
  %62 = load i64, i64* @GOTO_EXPR, align 8
  %63 = load i32, i32* @void_type_node, align 4
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @build1(i64 %62, i32 %63, i32 %64)
  store i32 %65, i32* %13, align 4
  %66 = load %struct.walk_stmt_info*, %struct.walk_stmt_info** %8, align 8
  %67 = getelementptr inbounds %struct.walk_stmt_info, %struct.walk_stmt_info* %66, i32 0, i32 0
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* @TSI_SAME_STMT, align 4
  %70 = call i32 @tsi_link_before(i32* %67, i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %61, %56
  %72 = load i64, i64* @LABEL_EXPR, align 8
  %73 = load i32, i32* @void_type_node, align 4
  %74 = load i32, i32* %12, align 4
  %75 = call i32 @build1(i64 %72, i32 %73, i32 %74)
  store i32 %75, i32* %13, align 4
  %76 = load %struct.walk_stmt_info*, %struct.walk_stmt_info** %8, align 8
  %77 = getelementptr inbounds %struct.walk_stmt_info, %struct.walk_stmt_info* %76, i32 0, i32 0
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* @TSI_SAME_STMT, align 4
  %80 = call i32 @tsi_link_before(i32* %77, i32 %78, i32 %79)
  %81 = load i32, i32* @NULL_TREE, align 4
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %71, %43, %29
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @LABEL_EXPR_LABEL(i32) #1

declare dso_local i64 @htab_find(i32, %struct.var_map_elt*) #1

declare dso_local i32 @tsi_prev(i32*) #1

declare dso_local i64 @tsi_end_p(i32) #1

declare dso_local i64 @block_may_fallthru(i32) #1

declare dso_local i32 @tsi_stmt(i32) #1

declare dso_local i32 @build1(i64, i32, i32) #1

declare dso_local i32 @tsi_link_before(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
