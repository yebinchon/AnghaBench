; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cvt.c_build_up_reference.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cvt.c_build_up_reference.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REFERENCE_TYPE = common dso_local global i64 0, align 8
@DIRECT_BIND = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i64 0, align 8
@LOOKUP_ONLYCONVERTING = common dso_local global i32 0, align 4
@ADDR_EXPR = common dso_local global i32 0, align 4
@error_mark_node = common dso_local global i64 0, align 8
@LOOKUP_PROTECT = common dso_local global i32 0, align 4
@ba_check = common dso_local global i32 0, align 4
@PLUS_EXPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i32, i64)* @build_up_reference to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @build_up_reference(i64 %0, i64 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %16 = load i64, i64* %7, align 8
  %17 = call i64 @TREE_TYPE(i64 %16)
  store i64 %17, i64* %11, align 8
  %18 = load i64, i64* %6, align 8
  %19 = call i64 @TREE_TYPE(i64 %18)
  store i64 %19, i64* %12, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call i64 @TREE_CODE(i64 %20)
  %22 = load i64, i64* @REFERENCE_TYPE, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @gcc_assert(i32 %24)
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @DIRECT_BIND, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %4
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @real_lvalue_p(i64 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %48, label %34

34:                                               ; preds = %30
  %35 = load i64, i64* %7, align 8
  store i64 %35, i64* %13, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* %7, align 8
  %38 = call i64 @TREE_TYPE(i64 %37)
  %39 = call i64 @make_temporary_var_for_ref_to_temp(i64 %36, i64 %38)
  store i64 %39, i64* %7, align 8
  %40 = load i64, i64* %13, align 8
  store i64 %40, i64* %14, align 8
  %41 = load i64, i64* %14, align 8
  %42 = load i64, i64* %13, align 8
  %43 = load i64, i64* @NULL_TREE, align 8
  %44 = load i32, i32* @LOOKUP_ONLYCONVERTING, align 4
  %45 = load i32, i32* @DIRECT_BIND, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @cp_finish_decl(i64 %41, i64 %42, i32 0, i64 %43, i32 %46)
  br label %61

48:                                               ; preds = %30, %4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @DIRECT_BIND, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %48
  %54 = load i64, i64* %7, align 8
  %55 = call i32 @lvalue_p(i64 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %53
  %58 = load i64, i64* %7, align 8
  %59 = call i64 @get_target_expr(i64 %58)
  store i64 %59, i64* %5, align 8
  br label %121

60:                                               ; preds = %53, %48
  br label %61

61:                                               ; preds = %60, %34
  %62 = load i32, i32* @ADDR_EXPR, align 4
  %63 = load i64, i64* %7, align 8
  %64 = call i64 @build_unary_op(i32 %62, i64 %63, i32 1)
  store i64 %64, i64* %10, align 8
  %65 = load i64, i64* %10, align 8
  %66 = load i64, i64* @error_mark_node, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = load i64, i64* @error_mark_node, align 8
  store i64 %69, i64* %5, align 8
  br label %121

70:                                               ; preds = %61
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @LOOKUP_PROTECT, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %112

75:                                               ; preds = %70
  %76 = load i64, i64* %11, align 8
  %77 = call i64 @TYPE_MAIN_VARIANT(i64 %76)
  %78 = load i64, i64* %12, align 8
  %79 = call i64 @TYPE_MAIN_VARIANT(i64 %78)
  %80 = icmp ne i64 %77, %79
  br i1 %80, label %81, label %112

81:                                               ; preds = %75
  %82 = load i64, i64* %11, align 8
  %83 = call i64 @IS_AGGR_TYPE(i64 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %112

85:                                               ; preds = %81
  %86 = load i64, i64* %12, align 8
  %87 = call i64 @IS_AGGR_TYPE(i64 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %112

89:                                               ; preds = %85
  %90 = load i64, i64* %11, align 8
  %91 = load i64, i64* %12, align 8
  %92 = load i32, i32* @ba_check, align 4
  %93 = call i64 @lookup_base(i64 %90, i64 %91, i32 %92, i32* null)
  store i64 %93, i64* %15, align 8
  %94 = load i64, i64* %15, align 8
  %95 = load i64, i64* @error_mark_node, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %89
  %98 = load i64, i64* @error_mark_node, align 8
  store i64 %98, i64* %5, align 8
  br label %121

99:                                               ; preds = %89
  %100 = load i64, i64* %15, align 8
  %101 = load i64, i64* @NULL_TREE, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %99
  %104 = load i64, i64* %12, align 8
  %105 = load i64, i64* %11, align 8
  %106 = call i64 @error_not_base_type(i64 %104, i64 %105)
  store i64 %106, i64* %5, align 8
  br label %121

107:                                              ; preds = %99
  %108 = load i32, i32* @PLUS_EXPR, align 4
  %109 = load i64, i64* %10, align 8
  %110 = load i64, i64* %15, align 8
  %111 = call i64 @build_base_path(i32 %108, i64 %109, i64 %110, i32 1)
  store i64 %111, i64* %10, align 8
  br label %117

112:                                              ; preds = %85, %81, %75, %70
  %113 = load i64, i64* %12, align 8
  %114 = call i32 @build_pointer_type(i64 %113)
  %115 = load i64, i64* %10, align 8
  %116 = call i64 @convert_to_pointer_force(i32 %114, i64 %115)
  store i64 %116, i64* %10, align 8
  br label %117

117:                                              ; preds = %112, %107
  %118 = load i64, i64* %6, align 8
  %119 = load i64, i64* %10, align 8
  %120 = call i64 @build_nop(i64 %118, i64 %119)
  store i64 %120, i64* %5, align 8
  br label %121

121:                                              ; preds = %117, %103, %97, %68, %57
  %122 = load i64, i64* %5, align 8
  ret i64 %122
}

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @real_lvalue_p(i64) #1

declare dso_local i64 @make_temporary_var_for_ref_to_temp(i64, i64) #1

declare dso_local i32 @cp_finish_decl(i64, i64, i32, i64, i32) #1

declare dso_local i32 @lvalue_p(i64) #1

declare dso_local i64 @get_target_expr(i64) #1

declare dso_local i64 @build_unary_op(i32, i64, i32) #1

declare dso_local i64 @TYPE_MAIN_VARIANT(i64) #1

declare dso_local i64 @IS_AGGR_TYPE(i64) #1

declare dso_local i64 @lookup_base(i64, i64, i32, i32*) #1

declare dso_local i64 @error_not_base_type(i64, i64) #1

declare dso_local i64 @build_base_path(i32, i64, i64, i32) #1

declare dso_local i64 @convert_to_pointer_force(i32, i64) #1

declare dso_local i32 @build_pointer_type(i64) #1

declare dso_local i64 @build_nop(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
