; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-if-conv.c_add_to_dst_predicate_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-if-conv.c_add_to_dst_predicate_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i32 }
%struct.TYPE_3__ = type { i32, i64 }

@NULL_TREE = common dso_local global i64 0, align 8
@boolean_true_node = common dso_local global i64 0, align 8
@BSI_SAME_STMT = common dso_local global i32 0, align 4
@TRUTH_AND_EXPR = common dso_local global i32 0, align 4
@boolean_type_node = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.loop*, %struct.TYPE_3__*, i64, i64, i32*)* @add_to_dst_predicate_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @add_to_dst_predicate_list(%struct.loop* %0, %struct.TYPE_3__* %1, i64 %2, i64 %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.loop*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.loop* %0, %struct.loop** %7, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load i64, i64* @NULL_TREE, align 8
  store i64 %17, i64* %12, align 8
  %18 = load %struct.loop*, %struct.loop** %7, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @flow_bb_inside_loop_p(%struct.loop* %18, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %5
  %25 = load i64, i64* @NULL_TREE, align 8
  store i64 %25, i64* %6, align 8
  br label %87

26:                                               ; preds = %5
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* @boolean_true_node, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = load i64, i64* %9, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %30, %26
  %34 = load i64, i64* %10, align 8
  %35 = call i64 @unshare_expr(i64 %34)
  store i64 %35, i64* %12, align 8
  br label %80

36:                                               ; preds = %30
  %37 = load i64, i64* @NULL_TREE, align 8
  store i64 %37, i64* %14, align 8
  %38 = load i64, i64* @NULL_TREE, align 8
  store i64 %38, i64* %15, align 8
  %39 = load i64, i64* @NULL_TREE, align 8
  store i64 %39, i64* %16, align 8
  %40 = load i64, i64* %9, align 8
  %41 = call i64 @unshare_expr(i64 %40)
  %42 = call i64 @force_gimple_operand(i64 %41, i64* %15, i32 1, i32* null)
  store i64 %42, i64* %9, align 8
  %43 = load i64, i64* %15, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %36
  %46 = load i32*, i32** %11, align 8
  %47 = load i64, i64* %15, align 8
  %48 = load i32, i32* @BSI_SAME_STMT, align 4
  %49 = call i32 @bsi_insert_before(i32* %46, i64 %47, i32 %48)
  br label %50

50:                                               ; preds = %45, %36
  %51 = load i64, i64* %10, align 8
  %52 = call i64 @unshare_expr(i64 %51)
  %53 = call i64 @force_gimple_operand(i64 %52, i64* %16, i32 1, i32* null)
  store i64 %53, i64* %10, align 8
  %54 = load i64, i64* %16, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = load i32*, i32** %11, align 8
  %58 = load i64, i64* %16, align 8
  %59 = load i32, i32* @BSI_SAME_STMT, align 4
  %60 = call i32 @bsi_insert_before(i32* %57, i64 %58, i32 %59)
  br label %61

61:                                               ; preds = %56, %50
  %62 = load i64, i64* %10, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  store i64 %62, i64* %64, align 8
  %65 = load i32, i32* @TRUTH_AND_EXPR, align 4
  %66 = load i32, i32* @boolean_type_node, align 4
  %67 = load i64, i64* %9, align 8
  %68 = call i64 @unshare_expr(i64 %67)
  %69 = load i64, i64* %10, align 8
  %70 = call i64 @build2(i32 %65, i32 %66, i64 %68, i64 %69)
  store i64 %70, i64* %13, align 8
  %71 = load i32, i32* @boolean_type_node, align 4
  %72 = load i64, i64* %13, align 8
  %73 = call i64 @ifc_temp_var(i32 %71, i64 %72)
  store i64 %73, i64* %14, align 8
  %74 = load i32*, i32** %11, align 8
  %75 = load i64, i64* %14, align 8
  %76 = load i32, i32* @BSI_SAME_STMT, align 4
  %77 = call i32 @bsi_insert_before(i32* %74, i64 %75, i32 %76)
  %78 = load i64, i64* %14, align 8
  %79 = call i64 @TREE_OPERAND(i64 %78, i32 0)
  store i64 %79, i64* %12, align 8
  br label %80

80:                                               ; preds = %61, %33
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i64, i64* %12, align 8
  %85 = call i32 @add_to_predicate_list(i32 %83, i64 %84)
  %86 = load i64, i64* %12, align 8
  store i64 %86, i64* %6, align 8
  br label %87

87:                                               ; preds = %80, %24
  %88 = load i64, i64* %6, align 8
  ret i64 %88
}

declare dso_local i32 @flow_bb_inside_loop_p(%struct.loop*, i32) #1

declare dso_local i64 @unshare_expr(i64) #1

declare dso_local i64 @force_gimple_operand(i64, i64*, i32, i32*) #1

declare dso_local i32 @bsi_insert_before(i32*, i64, i32) #1

declare dso_local i64 @build2(i32, i32, i64, i64) #1

declare dso_local i64 @ifc_temp_var(i32, i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i32 @add_to_predicate_list(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
