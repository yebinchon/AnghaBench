; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_get_ref_tag.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_get_ref_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@NULL_TREE = common dso_local global i64 0, align 8
@INDIRECT_REF = common dso_local global i64 0, align 8
@SSA_NAME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64)* @get_ref_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_ref_tag(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load i64, i64* %4, align 8
  %14 = call i64 @get_base_address(i64 %13)
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* @NULL_TREE, align 8
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %5, align 8
  store i64 %16, i64* %9, align 8
  br label %17

17:                                               ; preds = %28, %2
  %18 = load i64, i64* %9, align 8
  %19 = call i64 @handled_component_p(i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %17
  %22 = load i64, i64* %9, align 8
  %23 = call i64 @get_ref_base_and_extent(i64 %22, i32* %10, i32* %11, i32* %12)
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %4, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %31

27:                                               ; preds = %21
  br label %28

28:                                               ; preds = %27
  %29 = load i64, i64* %9, align 8
  %30 = call i64 @TREE_OPERAND(i64 %29, i32 0)
  store i64 %30, i64* %9, align 8
  br label %17

31:                                               ; preds = %26, %17
  %32 = load i64, i64* %7, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %31
  %35 = load i64, i64* %7, align 8
  %36 = call i64 @SSA_VAR_P(i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %34
  %39 = load i64, i64* %7, align 8
  %40 = call i64 @get_subvars_for_var(i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i64, i64* %9, align 8
  %44 = call i64 @unshare_expr(i64 %43)
  store i64 %44, i64* %3, align 8
  br label %108

45:                                               ; preds = %38, %34, %31
  %46 = load i64, i64* %6, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %45
  %49 = load i64, i64* @NULL_TREE, align 8
  store i64 %49, i64* %3, align 8
  br label %108

50:                                               ; preds = %45
  %51 = load i64, i64* %6, align 8
  %52 = call i64 @TREE_CODE(i64 %51)
  %53 = load i64, i64* @INDIRECT_REF, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %91

55:                                               ; preds = %50
  %56 = load i64, i64* %6, align 8
  %57 = call i64 @TREE_OPERAND(i64 %56, i32 0)
  store i64 %57, i64* %6, align 8
  %58 = load i64, i64* %6, align 8
  %59 = call i64 @TREE_CODE(i64 %58)
  %60 = load i64, i64* @SSA_NAME, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = load i64, i64* @NULL_TREE, align 8
  store i64 %63, i64* %3, align 8
  br label %108

64:                                               ; preds = %55
  %65 = load i64, i64* %6, align 8
  %66 = call %struct.TYPE_4__* @SSA_NAME_PTR_INFO(i64 %65)
  %67 = icmp ne %struct.TYPE_4__* %66, null
  br i1 %67, label %68, label %78

68:                                               ; preds = %64
  %69 = load i64, i64* %6, align 8
  %70 = call %struct.TYPE_4__* @SSA_NAME_PTR_INFO(i64 %69)
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %8, align 8
  %73 = load i64, i64* %8, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %68
  %76 = load i64, i64* %8, align 8
  store i64 %76, i64* %3, align 8
  br label %108

77:                                               ; preds = %68
  br label %78

78:                                               ; preds = %77, %64
  %79 = load i64, i64* %6, align 8
  %80 = call i64 @SSA_NAME_VAR(i64 %79)
  store i64 %80, i64* %6, align 8
  %81 = load i64, i64* %6, align 8
  %82 = call %struct.TYPE_3__* @var_ann(i64 %81)
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %8, align 8
  %85 = load i64, i64* %8, align 8
  %86 = load i64, i64* @NULL_TREE, align 8
  %87 = icmp ne i64 %85, %86
  %88 = zext i1 %87 to i32
  %89 = call i32 @gcc_assert(i32 %88)
  %90 = load i64, i64* %8, align 8
  store i64 %90, i64* %3, align 8
  br label %108

91:                                               ; preds = %50
  %92 = load i64, i64* %6, align 8
  %93 = call i32 @DECL_P(i64 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %91
  %96 = load i64, i64* @NULL_TREE, align 8
  store i64 %96, i64* %3, align 8
  br label %108

97:                                               ; preds = %91
  %98 = load i64, i64* %6, align 8
  %99 = call %struct.TYPE_3__* @var_ann(i64 %98)
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  store i64 %101, i64* %8, align 8
  %102 = load i64, i64* %8, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %97
  %105 = load i64, i64* %8, align 8
  store i64 %105, i64* %3, align 8
  br label %108

106:                                              ; preds = %97
  %107 = load i64, i64* %6, align 8
  store i64 %107, i64* %3, align 8
  br label %108

108:                                              ; preds = %106, %104, %95, %78, %75, %62, %48, %42
  %109 = load i64, i64* %3, align 8
  ret i64 %109
}

declare dso_local i64 @get_base_address(i64) #1

declare dso_local i64 @handled_component_p(i64) #1

declare dso_local i64 @get_ref_base_and_extent(i64, i32*, i32*, i32*) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i64 @SSA_VAR_P(i64) #1

declare dso_local i64 @get_subvars_for_var(i64) #1

declare dso_local i64 @unshare_expr(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local %struct.TYPE_4__* @SSA_NAME_PTR_INFO(i64) #1

declare dso_local i64 @SSA_NAME_VAR(i64) #1

declare dso_local %struct.TYPE_3__* @var_ann(i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @DECL_P(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
