; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_rtti.c_get_tinfo_decl_dynamic.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_rtti.c_get_tinfo_decl_dynamic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@error_mark_node = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@TARGET_VTABLE_DATA_ENTRY_DISTANCE = common dso_local global i32 0, align 4
@type_info_ptr_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @get_tinfo_decl_dynamic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_tinfo_decl_dynamic(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i64 @error_operand_p(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @error_mark_node, align 4
  store i32 %11, i32* %2, align 4
  br label %56

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @TREE_TYPE(i32 %13)
  %15 = call i32 @non_reference(i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @TYPE_MAIN_VARIANT(i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i64 @CLASS_TYPE_P(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %12
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @complete_type_or_else(i32 %22, i32 %23)
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %21, %12
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* @error_mark_node, align 4
  store i32 %29, i32* %2, align 4
  br label %56

30:                                               ; preds = %25
  %31 = load i32, i32* %4, align 4
  %32 = call i64 @TYPE_POLYMORPHIC_P(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %30
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @resolves_to_fixed_type_p(i32 %35, i32 0)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %49, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* @NULL_TREE, align 4
  %40 = load i32, i32* @TARGET_VTABLE_DATA_ENTRY_DISTANCE, align 4
  %41 = mul nsw i32 -1, %40
  %42 = call i32 @build_int_cst(i32 %39, i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @build_vtbl_ref(i32 %43, i32 %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* @type_info_ptr_type, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @convert(i32 %46, i32 %47)
  store i32 %48, i32* %5, align 4
  br label %53

49:                                               ; preds = %34, %30
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @TYPE_MAIN_VARIANT(i32 %50)
  %52 = call i32 @get_tinfo_ptr(i32 %51)
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %49, %38
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @build_indirect_ref(i32 %54, i32* null)
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %53, %28, %10
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i64 @error_operand_p(i32) #1

declare dso_local i32 @non_reference(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @TYPE_MAIN_VARIANT(i32) #1

declare dso_local i64 @CLASS_TYPE_P(i32) #1

declare dso_local i32 @complete_type_or_else(i32, i32) #1

declare dso_local i64 @TYPE_POLYMORPHIC_P(i32) #1

declare dso_local i32 @resolves_to_fixed_type_p(i32, i32) #1

declare dso_local i32 @build_int_cst(i32, i32) #1

declare dso_local i32 @build_vtbl_ref(i32, i32) #1

declare dso_local i32 @convert(i32, i32) #1

declare dso_local i32 @get_tinfo_ptr(i32) #1

declare dso_local i32 @build_indirect_ref(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
