; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_name-lookup.c_do_local_using_decl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_name-lookup.c_do_local_using_decl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i64 0, align 8
@OVERLOAD = common dso_local global i64 0, align 8
@PUSH_LOCAL = common dso_local global i32 0, align 4
@PUSH_USING = common dso_local global i32 0, align 4
@processing_template_decl = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_local_using_decl(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %14 = load i64, i64* %4, align 8
  store i64 %14, i64* %11, align 8
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call i64 @validate_nonmember_using_decl(i64 %15, i64 %16, i64 %17)
  store i64 %18, i64* %4, align 8
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @NULL_TREE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %108

23:                                               ; preds = %3
  %24 = call i64 (...) @building_stmt_tree()
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = call i64 (...) @at_function_scope_p()
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @add_decl_expr(i64 %30)
  br label %32

32:                                               ; preds = %29, %26, %23
  %33 = load i64, i64* %6, align 8
  %34 = call i64 @lookup_name_innermost_nonclass_level(i64 %33)
  store i64 %34, i64* %7, align 8
  %35 = load i64, i64* %6, align 8
  %36 = call i64 @lookup_type_current_level(i64 %35)
  store i64 %36, i64* %8, align 8
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @do_nonmember_using_decl(i64 %37, i64 %38, i64 %39, i64 %40, i64* %9, i64* %10)
  %42 = load i64, i64* %9, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %90

44:                                               ; preds = %32
  %45 = load i64, i64* %9, align 8
  %46 = call i64 @is_overloaded_fn(i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %84

48:                                               ; preds = %44
  %49 = load i64, i64* %7, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = load i64, i64* %7, align 8
  %53 = call i64 @TREE_CODE(i64 %52)
  %54 = load i64, i64* @OVERLOAD, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i64, i64* %7, align 8
  %58 = call i64 @OVL_FUNCTION(i64 %57)
  store i64 %58, i64* %13, align 8
  br label %61

59:                                               ; preds = %51, %48
  %60 = load i64, i64* %7, align 8
  store i64 %60, i64* %13, align 8
  br label %61

61:                                               ; preds = %59, %56
  %62 = load i64, i64* %9, align 8
  store i64 %62, i64* %12, align 8
  br label %63

63:                                               ; preds = %80, %61
  %64 = load i64, i64* %12, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = load i64, i64* %12, align 8
  %68 = call i64 @OVL_CURRENT(i64 %67)
  %69 = load i64, i64* %13, align 8
  %70 = icmp ne i64 %68, %69
  br label %71

71:                                               ; preds = %66, %63
  %72 = phi i1 [ false, %63 ], [ %70, %66 ]
  br i1 %72, label %73, label %83

73:                                               ; preds = %71
  %74 = load i64, i64* %12, align 8
  %75 = call i64 @OVL_CURRENT(i64 %74)
  %76 = load i32, i32* @PUSH_LOCAL, align 4
  %77 = load i32, i32* @PUSH_USING, align 4
  %78 = or i32 %76, %77
  %79 = call i32 @push_overloaded_decl(i64 %75, i32 %78, i32 0)
  br label %80

80:                                               ; preds = %73
  %81 = load i64, i64* %12, align 8
  %82 = call i64 @OVL_NEXT(i64 %81)
  store i64 %82, i64* %12, align 8
  br label %63

83:                                               ; preds = %71
  br label %89

84:                                               ; preds = %44
  %85 = load i64, i64* %6, align 8
  %86 = load i64, i64* %9, align 8
  %87 = load i32, i32* @PUSH_USING, align 4
  %88 = call i32 @push_local_binding(i64 %85, i64 %86, i32 %87)
  br label %89

89:                                               ; preds = %84, %83
  br label %90

90:                                               ; preds = %89, %32
  %91 = load i64, i64* %10, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %90
  %94 = load i64, i64* %6, align 8
  %95 = load i64, i64* %10, align 8
  %96 = load i32, i32* @PUSH_USING, align 4
  %97 = call i32 @push_local_binding(i64 %94, i64 %95, i32 %96)
  %98 = load i64, i64* %6, align 8
  %99 = load i64, i64* %10, align 8
  %100 = call i32 @set_identifier_type_value(i64 %98, i64 %99)
  br label %101

101:                                              ; preds = %93, %90
  %102 = load i32, i32* @processing_template_decl, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %101
  %105 = load i64, i64* %11, align 8
  %106 = call i32 (...) @current_scope()
  %107 = call i32 @cp_emit_debug_info_for_using(i64 %105, i32 %106)
  br label %108

108:                                              ; preds = %22, %104, %101
  ret void
}

declare dso_local i64 @validate_nonmember_using_decl(i64, i64, i64) #1

declare dso_local i64 @building_stmt_tree(...) #1

declare dso_local i64 @at_function_scope_p(...) #1

declare dso_local i32 @add_decl_expr(i64) #1

declare dso_local i64 @lookup_name_innermost_nonclass_level(i64) #1

declare dso_local i64 @lookup_type_current_level(i64) #1

declare dso_local i32 @do_nonmember_using_decl(i64, i64, i64, i64, i64*, i64*) #1

declare dso_local i64 @is_overloaded_fn(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @OVL_FUNCTION(i64) #1

declare dso_local i64 @OVL_CURRENT(i64) #1

declare dso_local i32 @push_overloaded_decl(i64, i32, i32) #1

declare dso_local i64 @OVL_NEXT(i64) #1

declare dso_local i32 @push_local_binding(i64, i64, i32) #1

declare dso_local i32 @set_identifier_type_value(i64, i64) #1

declare dso_local i32 @cp_emit_debug_info_for_using(i64, i32) #1

declare dso_local i32 @current_scope(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
