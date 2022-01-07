; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_rtti.c_build_typeid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_rtti.c_build_typeid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i64 0, align 8
@error_mark_node = common dso_local global i64 0, align 8
@processing_template_decl = common dso_local global i64 0, align 8
@TYPEID_EXPR = common dso_local global i32 0, align 4
@const_type_info_type_node = common dso_local global i32 0, align 4
@INDIRECT_REF = common dso_local global i64 0, align 8
@POINTER_TYPE = common dso_local global i64 0, align 8
@boolean_type_node = common dso_local global i32 0, align 4
@COND_EXPR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @build_typeid(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %7 = load i64, i64* @NULL_TREE, align 8
  store i64 %7, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @error_mark_node, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = call i32 (...) @typeid_ok_p()
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11, %1
  %15 = load i64, i64* @error_mark_node, align 8
  store i64 %15, i64* %2, align 8
  br label %77

16:                                               ; preds = %11
  %17 = load i64, i64* @processing_template_decl, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load i32, i32* @TYPEID_EXPR, align 4
  %21 = load i32, i32* @const_type_info_type_node, align 4
  %22 = load i64, i64* %3, align 8
  %23 = call i64 @build_min(i32 %20, i32 %21, i64 %22)
  store i64 %23, i64* %2, align 8
  br label %77

24:                                               ; preds = %16
  %25 = load i64, i64* %3, align 8
  %26 = call i64 @TREE_CODE(i64 %25)
  %27 = load i64, i64* @INDIRECT_REF, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %55

29:                                               ; preds = %24
  %30 = load i64, i64* %3, align 8
  %31 = call i64 @TREE_OPERAND(i64 %30, i32 0)
  %32 = call i64 @TREE_TYPE(i64 %31)
  %33 = call i64 @TREE_CODE(i64 %32)
  %34 = load i64, i64* @POINTER_TYPE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %55

36:                                               ; preds = %29
  %37 = load i64, i64* %3, align 8
  %38 = call i64 @TREE_TYPE(i64 %37)
  %39 = call i64 @TYPE_POLYMORPHIC_P(i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %36
  %42 = load i64, i64* %3, align 8
  %43 = call i32 @resolves_to_fixed_type_p(i64 %42, i32* %5)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %55, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %45
  %49 = load i64, i64* %3, align 8
  %50 = call i64 @stabilize_reference(i64 %49)
  store i64 %50, i64* %3, align 8
  %51 = load i32, i32* @boolean_type_node, align 4
  %52 = load i64, i64* %3, align 8
  %53 = call i64 @TREE_OPERAND(i64 %52, i32 0)
  %54 = call i64 @cp_convert(i32 %51, i64 %53)
  store i64 %54, i64* %4, align 8
  br label %55

55:                                               ; preds = %48, %45, %41, %36, %29, %24
  %56 = load i64, i64* %3, align 8
  %57 = call i64 @get_tinfo_decl_dynamic(i64 %56)
  store i64 %57, i64* %3, align 8
  %58 = load i64, i64* %3, align 8
  %59 = load i64, i64* @error_mark_node, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i64, i64* @error_mark_node, align 8
  store i64 %62, i64* %2, align 8
  br label %77

63:                                               ; preds = %55
  %64 = load i64, i64* %4, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %63
  %67 = call i64 (...) @throw_bad_typeid()
  store i64 %67, i64* %6, align 8
  %68 = load i32, i32* @COND_EXPR, align 4
  %69 = load i64, i64* %3, align 8
  %70 = call i64 @TREE_TYPE(i64 %69)
  %71 = load i64, i64* %4, align 8
  %72 = load i64, i64* %3, align 8
  %73 = load i64, i64* %6, align 8
  %74 = call i64 @build3(i32 %68, i64 %70, i64 %71, i64 %72, i64 %73)
  store i64 %74, i64* %3, align 8
  br label %75

75:                                               ; preds = %66, %63
  %76 = load i64, i64* %3, align 8
  store i64 %76, i64* %2, align 8
  br label %77

77:                                               ; preds = %75, %61, %19, %14
  %78 = load i64, i64* %2, align 8
  ret i64 %78
}

declare dso_local i32 @typeid_ok_p(...) #1

declare dso_local i64 @build_min(i32, i32, i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i64 @TYPE_POLYMORPHIC_P(i64) #1

declare dso_local i32 @resolves_to_fixed_type_p(i64, i32*) #1

declare dso_local i64 @stabilize_reference(i64) #1

declare dso_local i64 @cp_convert(i32, i64) #1

declare dso_local i64 @get_tinfo_decl_dynamic(i64) #1

declare dso_local i64 @throw_bad_typeid(...) #1

declare dso_local i64 @build3(i32, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
