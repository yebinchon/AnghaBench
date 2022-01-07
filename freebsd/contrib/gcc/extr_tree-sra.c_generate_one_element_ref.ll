; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-sra.c_generate_one_element_ref.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-sra.c_generate_one_element_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sra_elt = type { i32, i32 }

@COMPONENT_REF = common dso_local global i32 0, align 4
@TODO_update_smt_usage = common dso_local global i32 0, align 4
@todoflags = common dso_local global i32 0, align 4
@RANGE_EXPR = common dso_local global i32 0, align 4
@ARRAY_RANGE_REF = common dso_local global i32 0, align 4
@ARRAY_REF = common dso_local global i32 0, align 4
@integer_zero_node = common dso_local global i32 0, align 4
@REALPART_EXPR = common dso_local global i32 0, align 4
@IMAGPART_EXPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sra_elt*, i32)* @generate_one_element_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generate_one_element_ref(%struct.sra_elt* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sra_elt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sra_elt* %0, %struct.sra_elt** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i32 @TREE_TYPE(i32 %7)
  %9 = call i32 @TREE_CODE(i32 %8)
  switch i32 %9, label %84 [
    i32 128, label %10
    i32 130, label %33
    i32 129, label %64
  ]

10:                                               ; preds = %2
  %11 = load %struct.sra_elt*, %struct.sra_elt** %4, align 8
  %12 = getelementptr inbounds %struct.sra_elt, %struct.sra_elt* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @DECL_FIELD_CONTEXT(i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @TREE_TYPE(i32 %16)
  %18 = call i32 @TYPE_MAIN_VARIANT(i32 %17)
  %19 = icmp ne i32 %15, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %10
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @TREE_TYPE(i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @find_compatible_field(i32 %22, i32 %23)
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %20, %10
  %26 = load i32, i32* @COMPONENT_REF, align 4
  %27 = load %struct.sra_elt*, %struct.sra_elt** %4, align 8
  %28 = getelementptr inbounds %struct.sra_elt, %struct.sra_elt* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @build3(i32 %26, i32 %29, i32 %30, i32 %31, i32* null)
  store i32 %32, i32* %3, align 4
  br label %86

33:                                               ; preds = %2
  %34 = load i32, i32* @TODO_update_smt_usage, align 4
  %35 = load i32, i32* @todoflags, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* @todoflags, align 4
  %37 = load %struct.sra_elt*, %struct.sra_elt** %4, align 8
  %38 = getelementptr inbounds %struct.sra_elt, %struct.sra_elt* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @TREE_CODE(i32 %39)
  %41 = load i32, i32* @RANGE_EXPR, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %33
  %44 = load i32, i32* @ARRAY_RANGE_REF, align 4
  %45 = load %struct.sra_elt*, %struct.sra_elt** %4, align 8
  %46 = getelementptr inbounds %struct.sra_elt, %struct.sra_elt* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.sra_elt*, %struct.sra_elt** %4, align 8
  %50 = getelementptr inbounds %struct.sra_elt, %struct.sra_elt* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @TREE_OPERAND(i32 %51, i32 0)
  %53 = call i32 @build4(i32 %44, i32 %47, i32 %48, i32 %52, i32* null, i32* null)
  store i32 %53, i32* %3, align 4
  br label %86

54:                                               ; preds = %33
  %55 = load i32, i32* @ARRAY_REF, align 4
  %56 = load %struct.sra_elt*, %struct.sra_elt** %4, align 8
  %57 = getelementptr inbounds %struct.sra_elt, %struct.sra_elt* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.sra_elt*, %struct.sra_elt** %4, align 8
  %61 = getelementptr inbounds %struct.sra_elt, %struct.sra_elt* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @build4(i32 %55, i32 %58, i32 %59, i32 %62, i32* null, i32* null)
  store i32 %63, i32* %3, align 4
  br label %86

64:                                               ; preds = %2
  %65 = load %struct.sra_elt*, %struct.sra_elt** %4, align 8
  %66 = getelementptr inbounds %struct.sra_elt, %struct.sra_elt* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @integer_zero_node, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %64
  %71 = load i32, i32* @REALPART_EXPR, align 4
  %72 = load %struct.sra_elt*, %struct.sra_elt** %4, align 8
  %73 = getelementptr inbounds %struct.sra_elt, %struct.sra_elt* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @build1(i32 %71, i32 %74, i32 %75)
  store i32 %76, i32* %3, align 4
  br label %86

77:                                               ; preds = %64
  %78 = load i32, i32* @IMAGPART_EXPR, align 4
  %79 = load %struct.sra_elt*, %struct.sra_elt** %4, align 8
  %80 = getelementptr inbounds %struct.sra_elt, %struct.sra_elt* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @build1(i32 %78, i32 %81, i32 %82)
  store i32 %83, i32* %3, align 4
  br label %86

84:                                               ; preds = %2
  %85 = call i32 (...) @gcc_unreachable()
  br label %86

86:                                               ; preds = %25, %43, %54, %70, %77, %84
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @DECL_FIELD_CONTEXT(i32) #1

declare dso_local i32 @TYPE_MAIN_VARIANT(i32) #1

declare dso_local i32 @find_compatible_field(i32, i32) #1

declare dso_local i32 @build3(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @build4(i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @build1(i32, i32, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
