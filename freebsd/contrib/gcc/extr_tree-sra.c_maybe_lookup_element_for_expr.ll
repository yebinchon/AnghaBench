; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-sra.c_maybe_lookup_element_for_expr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-sra.c_maybe_lookup_element_for_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sra_elt = type { i32 }

@INSERT = common dso_local global i32 0, align 4
@RANGE_EXPR = common dso_local global i32 0, align 4
@integer_type_node = common dso_local global i32 0, align 4
@RECORD_TYPE = common dso_local global i32 0, align 4
@integer_zero_node = common dso_local global i32 0, align 4
@integer_one_node = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sra_elt* (i32)* @maybe_lookup_element_for_expr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sra_elt* @maybe_lookup_element_for_expr(i32 %0) #0 {
  %2 = alloca %struct.sra_elt*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sra_elt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @TREE_CODE(i32 %7)
  switch i32 %8, label %61 [
    i32 128, label %9
    i32 131, label %9
    i32 129, label %9
    i32 134, label %20
    i32 135, label %29
    i32 133, label %46
    i32 130, label %57
    i32 132, label %59
  ]

9:                                                ; preds = %1, %1, %1
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @is_sra_candidate_decl(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %9
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @TREE_TYPE(i32 %15)
  %17 = load i32, i32* @INSERT, align 4
  %18 = call %struct.sra_elt* @lookup_element(%struct.sra_elt* null, i32 %14, i32 %16, i32 %17)
  store %struct.sra_elt* %18, %struct.sra_elt** %2, align 8
  br label %76

19:                                               ; preds = %9
  store %struct.sra_elt* null, %struct.sra_elt** %2, align 8
  br label %76

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @in_array_bounds_p(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @TREE_OPERAND(i32 %25, i32 1)
  store i32 %26, i32* %5, align 4
  br label %28

27:                                               ; preds = %20
  store %struct.sra_elt* null, %struct.sra_elt** %2, align 8
  br label %76

28:                                               ; preds = %24
  br label %62

29:                                               ; preds = %1
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @range_in_array_bounds_p(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %29
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @TREE_TYPE(i32 %34)
  %36 = call i32 @TYPE_DOMAIN(i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* @RANGE_EXPR, align 4
  %38 = load i32, i32* @integer_type_node, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @TYPE_MIN_VALUE(i32 %39)
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @TYPE_MAX_VALUE(i32 %41)
  %43 = call i32 @build2(i32 %37, i32 %38, i32 %40, i32 %42)
  store i32 %43, i32* %5, align 4
  br label %45

44:                                               ; preds = %29
  store %struct.sra_elt* null, %struct.sra_elt** %2, align 8
  br label %76

45:                                               ; preds = %33
  br label %62

46:                                               ; preds = %1
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @TREE_OPERAND(i32 %47, i32 0)
  %49 = call i32 @TREE_TYPE(i32 %48)
  %50 = call i32 @TREE_CODE(i32 %49)
  %51 = load i32, i32* @RECORD_TYPE, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  store %struct.sra_elt* null, %struct.sra_elt** %2, align 8
  br label %76

54:                                               ; preds = %46
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @TREE_OPERAND(i32 %55, i32 1)
  store i32 %56, i32* %5, align 4
  br label %62

57:                                               ; preds = %1
  %58 = load i32, i32* @integer_zero_node, align 4
  store i32 %58, i32* %5, align 4
  br label %62

59:                                               ; preds = %1
  %60 = load i32, i32* @integer_one_node, align 4
  store i32 %60, i32* %5, align 4
  br label %62

61:                                               ; preds = %1
  store %struct.sra_elt* null, %struct.sra_elt** %2, align 8
  br label %76

62:                                               ; preds = %59, %57, %54, %45, %28
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @TREE_OPERAND(i32 %63, i32 0)
  %65 = call %struct.sra_elt* @maybe_lookup_element_for_expr(i32 %64)
  store %struct.sra_elt* %65, %struct.sra_elt** %4, align 8
  %66 = load %struct.sra_elt*, %struct.sra_elt** %4, align 8
  %67 = icmp ne %struct.sra_elt* %66, null
  br i1 %67, label %68, label %75

68:                                               ; preds = %62
  %69 = load %struct.sra_elt*, %struct.sra_elt** %4, align 8
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %3, align 4
  %72 = call i32 @TREE_TYPE(i32 %71)
  %73 = load i32, i32* @INSERT, align 4
  %74 = call %struct.sra_elt* @lookup_element(%struct.sra_elt* %69, i32 %70, i32 %72, i32 %73)
  store %struct.sra_elt* %74, %struct.sra_elt** %2, align 8
  br label %76

75:                                               ; preds = %62
  store %struct.sra_elt* null, %struct.sra_elt** %2, align 8
  br label %76

76:                                               ; preds = %75, %68, %61, %53, %44, %27, %19, %13
  %77 = load %struct.sra_elt*, %struct.sra_elt** %2, align 8
  ret %struct.sra_elt* %77
}

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @is_sra_candidate_decl(i32) #1

declare dso_local %struct.sra_elt* @lookup_element(%struct.sra_elt*, i32, i32, i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @in_array_bounds_p(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @range_in_array_bounds_p(i32) #1

declare dso_local i32 @TYPE_DOMAIN(i32) #1

declare dso_local i32 @build2(i32, i32, i32, i32) #1

declare dso_local i32 @TYPE_MIN_VALUE(i32) #1

declare dso_local i32 @TYPE_MAX_VALUE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
