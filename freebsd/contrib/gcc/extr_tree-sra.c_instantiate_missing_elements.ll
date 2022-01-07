; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-sra.c_instantiate_missing_elements.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-sra.c_instantiate_missing_elements.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sra_elt = type { i32, i32 }

@FIELD_DECL = common dso_local global i32 0, align 4
@COMPONENT_REF = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@PLUS_EXPR = common dso_local global i32 0, align 4
@integer_one_node = common dso_local global i32 0, align 4
@integer_zero_node = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sra_elt*)* @instantiate_missing_elements to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @instantiate_missing_elements(%struct.sra_elt* %0) #0 {
  %2 = alloca %struct.sra_elt*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sra_elt* %0, %struct.sra_elt** %2, align 8
  %9 = load %struct.sra_elt*, %struct.sra_elt** %2, align 8
  %10 = getelementptr inbounds %struct.sra_elt, %struct.sra_elt* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @TREE_CODE(i32 %12)
  switch i32 %13, label %95 [
    i32 128, label %14
    i32 130, label %59
    i32 129, label %84
  ]

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @TYPE_FIELDS(i32 %15)
  store i32 %16, i32* %4, align 4
  br label %17

17:                                               ; preds = %55, %14
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %58

20:                                               ; preds = %17
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @TREE_CODE(i32 %21)
  %23 = load i32, i32* @FIELD_DECL, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %54

25:                                               ; preds = %20
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @TREE_TYPE(i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @INTEGRAL_TYPE_P(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %49

31:                                               ; preds = %25
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @DECL_MODE(i32 %32)
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @TYPE_MODE(i32 %34)
  %36 = icmp ne i32 %33, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %31
  %38 = load i32, i32* @COMPONENT_REF, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.sra_elt*, %struct.sra_elt** %2, align 8
  %41 = getelementptr inbounds %struct.sra_elt, %struct.sra_elt* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @NULL_TREE, align 4
  %45 = call i32 @build3(i32 %38, i32 %39, i32 %42, i32 %43, i32 %44)
  %46 = load i32, i32* @NULL_TREE, align 4
  %47 = call i32 @get_unwidened(i32 %45, i32 %46)
  %48 = call i32 @TREE_TYPE(i32 %47)
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %37, %31, %25
  %50 = load %struct.sra_elt*, %struct.sra_elt** %2, align 8
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @instantiate_missing_elements_1(%struct.sra_elt* %50, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %49, %20
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @TREE_CHAIN(i32 %56)
  store i32 %57, i32* %4, align 4
  br label %17

58:                                               ; preds = %17
  br label %97

59:                                               ; preds = %1
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @TYPE_DOMAIN(i32 %60)
  %62 = call i32 @TYPE_MIN_VALUE(i32 %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @TYPE_DOMAIN(i32 %63)
  %65 = call i32 @TYPE_MAX_VALUE(i32 %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @TREE_TYPE(i32 %66)
  store i32 %67, i32* %8, align 4
  br label %68

68:                                               ; preds = %59, %78
  %69 = load %struct.sra_elt*, %struct.sra_elt** %2, align 8
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @instantiate_missing_elements_1(%struct.sra_elt* %69, i32 %70, i32 %71)
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @tree_int_cst_equal(i32 %73, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %68
  br label %83

78:                                               ; preds = %68
  %79 = load i32, i32* @PLUS_EXPR, align 4
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @integer_one_node, align 4
  %82 = call i32 @int_const_binop(i32 %79, i32 %80, i32 %81, i32 1)
  store i32 %82, i32* %6, align 4
  br label %68

83:                                               ; preds = %77
  br label %97

84:                                               ; preds = %1
  %85 = load i32, i32* %3, align 4
  %86 = call i32 @TREE_TYPE(i32 %85)
  store i32 %86, i32* %3, align 4
  %87 = load %struct.sra_elt*, %struct.sra_elt** %2, align 8
  %88 = load i32, i32* @integer_zero_node, align 4
  %89 = load i32, i32* %3, align 4
  %90 = call i32 @instantiate_missing_elements_1(%struct.sra_elt* %87, i32 %88, i32 %89)
  %91 = load %struct.sra_elt*, %struct.sra_elt** %2, align 8
  %92 = load i32, i32* @integer_one_node, align 4
  %93 = load i32, i32* %3, align 4
  %94 = call i32 @instantiate_missing_elements_1(%struct.sra_elt* %91, i32 %92, i32 %93)
  br label %97

95:                                               ; preds = %1
  %96 = call i32 (...) @gcc_unreachable()
  br label %97

97:                                               ; preds = %95, %84, %83, %58
  ret void
}

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @TYPE_FIELDS(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @INTEGRAL_TYPE_P(i32) #1

declare dso_local i32 @DECL_MODE(i32) #1

declare dso_local i32 @TYPE_MODE(i32) #1

declare dso_local i32 @get_unwidened(i32, i32) #1

declare dso_local i32 @build3(i32, i32, i32, i32, i32) #1

declare dso_local i32 @instantiate_missing_elements_1(%struct.sra_elt*, i32, i32) #1

declare dso_local i32 @TREE_CHAIN(i32) #1

declare dso_local i32 @TYPE_MIN_VALUE(i32) #1

declare dso_local i32 @TYPE_DOMAIN(i32) #1

declare dso_local i32 @TYPE_MAX_VALUE(i32) #1

declare dso_local i32 @tree_int_cst_equal(i32, i32) #1

declare dso_local i32 @int_const_binop(i32, i32, i32, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
