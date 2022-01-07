; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_expand_ptrmemfunc_cst.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_expand_ptrmemfunc_cst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FUNCTION_DECL = common dso_local global i64 0, align 8
@PLUS_EXPR = common dso_local global i32 0, align 4
@MULT_EXPR = common dso_local global i32 0, align 4
@integer_type_node = common dso_local global i32 0, align 4
@vtable_entry_type = common dso_local global i32 0, align 4
@TARGET_PTRMEMFUNC_VBIT_LOCATION = common dso_local global i32 0, align 4
@integer_one_node = common dso_local global i32 0, align 4
@LSHIFT_EXPR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @expand_ptrmemfunc_cst(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @TREE_TYPE(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @PTRMEM_CST_MEMBER(i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i64 @TREE_CODE(i32 %17)
  %19 = load i64, i64* @FUNCTION_DECL, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @gcc_assert(i32 %21)
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @DECL_CONTEXT(i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @TYPE_PTRMEMFUNC_OBJECT_TYPE(i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @get_delta_difference(i32 %27, i32 %28, i32 0, i32 0)
  %30 = load i32*, i32** %5, align 8
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @DECL_VIRTUAL_P(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %3
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @TYPE_PTRMEMFUNC_FN_TYPE(i32 %35)
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @build_addr_func(i32 %37)
  %39 = call i32 @convert(i32 %36, i32 %38)
  %40 = load i32*, i32** %6, align 8
  store i32 %39, i32* %40, align 4
  br label %129

41:                                               ; preds = %3
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @DECL_CONTEXT(i32 %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @binfo_or_else(i32 %44, i32 %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* @PLUS_EXPR, align 4
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @TREE_TYPE(i32 %49)
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @BINFO_OFFSET(i32 %53)
  %55 = call i32 @build2(i32 %47, i32 %50, i32 %52, i32 %54)
  %56 = load i32*, i32** %5, align 8
  store i32 %55, i32* %56, align 4
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @fold_if_not_in_template(i32 %58)
  %60 = load i32*, i32** %5, align 8
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @DECL_VINDEX(i32 %61)
  %63 = load i32*, i32** %6, align 8
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* @MULT_EXPR, align 4
  %65 = load i32, i32* @integer_type_node, align 4
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @vtable_entry_type, align 4
  %69 = call i32 @TYPE_SIZE_UNIT(i32 %68)
  %70 = call i32 @build2(i32 %64, i32 %65, i32 %67, i32 %69)
  %71 = load i32*, i32** %6, align 8
  store i32 %70, i32* %71, align 4
  %72 = load i32*, i32** %6, align 8
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @fold_if_not_in_template(i32 %73)
  %75 = load i32*, i32** %6, align 8
  store i32 %74, i32* %75, align 4
  %76 = load i32, i32* @TARGET_PTRMEMFUNC_VBIT_LOCATION, align 4
  switch i32 %76, label %116 [
    i32 128, label %77
    i32 129, label %89
  ]

77:                                               ; preds = %41
  %78 = load i32, i32* @PLUS_EXPR, align 4
  %79 = load i32, i32* @integer_type_node, align 4
  %80 = load i32*, i32** %6, align 8
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @integer_one_node, align 4
  %83 = call i32 @build2(i32 %78, i32 %79, i32 %81, i32 %82)
  %84 = load i32*, i32** %6, align 8
  store i32 %83, i32* %84, align 4
  %85 = load i32*, i32** %6, align 8
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @fold_if_not_in_template(i32 %86)
  %88 = load i32*, i32** %6, align 8
  store i32 %87, i32* %88, align 4
  br label %118

89:                                               ; preds = %41
  %90 = load i32, i32* @LSHIFT_EXPR, align 4
  %91 = load i32*, i32** %5, align 8
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @TREE_TYPE(i32 %92)
  %94 = load i32*, i32** %5, align 8
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @integer_one_node, align 4
  %97 = call i32 @build2(i32 %90, i32 %93, i32 %95, i32 %96)
  %98 = load i32*, i32** %5, align 8
  store i32 %97, i32* %98, align 4
  %99 = load i32*, i32** %5, align 8
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @fold_if_not_in_template(i32 %100)
  %102 = load i32*, i32** %5, align 8
  store i32 %101, i32* %102, align 4
  %103 = load i32, i32* @PLUS_EXPR, align 4
  %104 = load i32*, i32** %5, align 8
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @TREE_TYPE(i32 %105)
  %107 = load i32*, i32** %5, align 8
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @integer_one_node, align 4
  %110 = call i32 @build2(i32 %103, i32 %106, i32 %108, i32 %109)
  %111 = load i32*, i32** %5, align 8
  store i32 %110, i32* %111, align 4
  %112 = load i32*, i32** %5, align 8
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @fold_if_not_in_template(i32 %113)
  %115 = load i32*, i32** %5, align 8
  store i32 %114, i32* %115, align 4
  br label %118

116:                                              ; preds = %41
  %117 = call i32 (...) @gcc_unreachable()
  br label %118

118:                                              ; preds = %116, %89, %77
  %119 = load i32, i32* %7, align 4
  %120 = call i32 @TYPE_PTRMEMFUNC_FN_TYPE(i32 %119)
  %121 = load i32*, i32** %6, align 8
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @build_nop(i32 %120, i32 %122)
  %124 = load i32*, i32** %6, align 8
  store i32 %123, i32* %124, align 4
  %125 = load i32*, i32** %6, align 8
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @fold_if_not_in_template(i32 %126)
  %128 = load i32*, i32** %6, align 8
  store i32 %127, i32* %128, align 4
  br label %129

129:                                              ; preds = %118, %34
  ret void
}

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @PTRMEM_CST_MEMBER(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @DECL_CONTEXT(i32) #1

declare dso_local i32 @TYPE_PTRMEMFUNC_OBJECT_TYPE(i32) #1

declare dso_local i32 @get_delta_difference(i32, i32, i32, i32) #1

declare dso_local i32 @DECL_VIRTUAL_P(i32) #1

declare dso_local i32 @convert(i32, i32) #1

declare dso_local i32 @TYPE_PTRMEMFUNC_FN_TYPE(i32) #1

declare dso_local i32 @build_addr_func(i32) #1

declare dso_local i32 @binfo_or_else(i32, i32) #1

declare dso_local i32 @build2(i32, i32, i32, i32) #1

declare dso_local i32 @BINFO_OFFSET(i32) #1

declare dso_local i32 @fold_if_not_in_template(i32) #1

declare dso_local i32 @DECL_VINDEX(i32) #1

declare dso_local i32 @TYPE_SIZE_UNIT(i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @build_nop(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
