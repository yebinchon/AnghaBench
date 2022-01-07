; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_cxx_maybe_build_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_cxx_maybe_build_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i64 0, align 8
@RECORD_TYPE = common dso_local global i64 0, align 8
@error_mark_node = common dso_local global i64 0, align 8
@LOOKUP_NORMAL = common dso_local global i32 0, align 4
@LOOKUP_DESTRUCTOR = common dso_local global i32 0, align 4
@ARRAY_TYPE = common dso_local global i64 0, align 8
@ADDR_EXPR = common dso_local global i32 0, align 4
@flag_expensive_optimizations = common dso_local global i64 0, align 8
@LOOKUP_NONVIRTUAL = common dso_local global i32 0, align 4
@sfk_complete_destructor = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @cxx_maybe_build_cleanup(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %10 = load i64, i64* %3, align 8
  %11 = call i64 @TREE_TYPE(i64 %10)
  store i64 %11, i64* %4, align 8
  %12 = load i64, i64* @NULL_TREE, align 8
  store i64 %12, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %13 = load i64, i64* %4, align 8
  %14 = call i64 @TREE_CODE(i64 %13)
  %15 = load i64, i64* @RECORD_TYPE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i64, i64* %4, align 8
  %19 = call i64 @CLASSTYPE_DESTRUCTORS(i64 %18)
  store i64 %19, i64* %5, align 8
  br label %20

20:                                               ; preds = %17, %1
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* @error_mark_node, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %51

24:                                               ; preds = %20
  %25 = load i64, i64* %4, align 8
  %26 = call i64 @TREE_CODE(i64 %25)
  %27 = load i64, i64* @RECORD_TYPE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %47

29:                                               ; preds = %24
  %30 = load i64, i64* %5, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i64, i64* %5, align 8
  %34 = call i64 @TREE_PRIVATE(i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %32, %29
  %37 = load i64, i64* %4, align 8
  %38 = call i64 @CLASSTYPE_HAS_NONTRIVIAL_DESTRUCTOR_BODY(i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load i64, i64* %4, align 8
  %42 = call i64 @CLASSTYPE_DESTRUCTOR_NONTRIVIAL_BECAUSE_OF_BASE(i64 %41)
  %43 = icmp ne i64 %42, 0
  br label %44

44:                                               ; preds = %40, %36, %32
  %45 = phi i1 [ true, %36 ], [ true, %32 ], [ %43, %40 ]
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %6, align 4
  br label %50

47:                                               ; preds = %24
  %48 = load i64, i64* %4, align 8
  %49 = call i32 @TYPE_HAS_NONTRIVIAL_DESTRUCTOR(i64 %48)
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %47, %44
  br label %51

51:                                               ; preds = %50, %20
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %99

54:                                               ; preds = %51
  %55 = load i32, i32* @LOOKUP_NORMAL, align 4
  %56 = load i32, i32* @LOOKUP_DESTRUCTOR, align 4
  %57 = or i32 %55, %56
  store i32 %57, i32* %7, align 4
  %58 = load i64, i64* %4, align 8
  %59 = call i64 @TREE_CODE(i64 %58)
  %60 = load i64, i64* @RECORD_TYPE, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %54
  %63 = load i64, i64* %4, align 8
  %64 = call i64 @CLASSTYPE_VBASECLASSES(i64 %63)
  %65 = icmp ne i64 %64, 0
  br label %66

66:                                               ; preds = %62, %54
  %67 = phi i1 [ false, %54 ], [ %65, %62 ]
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %9, align 4
  %69 = load i64, i64* %4, align 8
  %70 = call i64 @TREE_CODE(i64 %69)
  %71 = load i64, i64* @ARRAY_TYPE, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = load i64, i64* %3, align 8
  store i64 %74, i64* %8, align 8
  br label %81

75:                                               ; preds = %66
  %76 = load i64, i64* %3, align 8
  %77 = call i32 @cxx_mark_addressable(i64 %76)
  %78 = load i32, i32* @ADDR_EXPR, align 4
  %79 = load i64, i64* %3, align 8
  %80 = call i64 @build_unary_op(i32 %78, i64 %79, i32 0)
  store i64 %80, i64* %8, align 8
  br label %81

81:                                               ; preds = %75, %73
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load i64, i64* @flag_expensive_optimizations, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %84, %81
  %88 = load i32, i32* @LOOKUP_NONVIRTUAL, align 4
  %89 = load i32, i32* %7, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %7, align 4
  br label %91

91:                                               ; preds = %87, %84
  %92 = load i64, i64* %8, align 8
  %93 = call i64 @TREE_TYPE(i64 %92)
  %94 = load i64, i64* %8, align 8
  %95 = load i32, i32* @sfk_complete_destructor, align 4
  %96 = load i32, i32* %7, align 4
  %97 = call i64 @build_delete(i64 %93, i64 %94, i32 %95, i32 %96, i32 0)
  store i64 %97, i64* %8, align 8
  %98 = load i64, i64* %8, align 8
  store i64 %98, i64* %2, align 8
  br label %101

99:                                               ; preds = %51
  %100 = load i64, i64* @NULL_TREE, align 8
  store i64 %100, i64* %2, align 8
  br label %101

101:                                              ; preds = %99, %91
  %102 = load i64, i64* %2, align 8
  ret i64 %102
}

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @CLASSTYPE_DESTRUCTORS(i64) #1

declare dso_local i64 @TREE_PRIVATE(i64) #1

declare dso_local i64 @CLASSTYPE_HAS_NONTRIVIAL_DESTRUCTOR_BODY(i64) #1

declare dso_local i64 @CLASSTYPE_DESTRUCTOR_NONTRIVIAL_BECAUSE_OF_BASE(i64) #1

declare dso_local i32 @TYPE_HAS_NONTRIVIAL_DESTRUCTOR(i64) #1

declare dso_local i64 @CLASSTYPE_VBASECLASSES(i64) #1

declare dso_local i32 @cxx_mark_addressable(i64) #1

declare dso_local i64 @build_unary_op(i32, i64, i32) #1

declare dso_local i64 @build_delete(i64, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
