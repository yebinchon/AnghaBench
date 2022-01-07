; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_rtti.c_get_typeid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_rtti.c_get_typeid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@error_mark_node = common dso_local global i64 0, align 8
@processing_template_decl = common dso_local global i64 0, align 8
@TYPEID_EXPR = common dso_local global i32 0, align 4
@const_type_info_type_node = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_typeid(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = load i64, i64* @error_mark_node, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = call i32 (...) @typeid_ok_p()
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %7, %1
  %11 = load i64, i64* @error_mark_node, align 8
  store i64 %11, i64* %2, align 8
  br label %41

12:                                               ; preds = %7
  %13 = load i64, i64* @processing_template_decl, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load i32, i32* @TYPEID_EXPR, align 4
  %17 = load i32, i32* @const_type_info_type_node, align 4
  %18 = load i64, i64* %3, align 8
  %19 = call i64 @build_min(i32 %16, i32 %17, i64 %18)
  store i64 %19, i64* %2, align 8
  br label %41

20:                                               ; preds = %12
  %21 = load i64, i64* %3, align 8
  %22 = call i64 @non_reference(i64 %21)
  store i64 %22, i64* %3, align 8
  %23 = load i64, i64* %3, align 8
  %24 = call i64 @TYPE_MAIN_VARIANT(i64 %23)
  store i64 %24, i64* %3, align 8
  %25 = load i64, i64* %3, align 8
  %26 = call i64 @CLASS_TYPE_P(i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = load i64, i64* %3, align 8
  %30 = load i32, i32* @NULL_TREE, align 4
  %31 = call i64 @complete_type_or_else(i64 %29, i32 %30)
  store i64 %31, i64* %3, align 8
  br label %32

32:                                               ; preds = %28, %20
  %33 = load i64, i64* %3, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = load i64, i64* @error_mark_node, align 8
  store i64 %36, i64* %2, align 8
  br label %41

37:                                               ; preds = %32
  %38 = load i64, i64* %3, align 8
  %39 = call i32 @get_tinfo_ptr(i64 %38)
  %40 = call i64 @build_indirect_ref(i32 %39, i32* null)
  store i64 %40, i64* %2, align 8
  br label %41

41:                                               ; preds = %37, %35, %15, %10
  %42 = load i64, i64* %2, align 8
  ret i64 %42
}

declare dso_local i32 @typeid_ok_p(...) #1

declare dso_local i64 @build_min(i32, i32, i64) #1

declare dso_local i64 @non_reference(i64) #1

declare dso_local i64 @TYPE_MAIN_VARIANT(i64) #1

declare dso_local i64 @CLASS_TYPE_P(i64) #1

declare dso_local i64 @complete_type_or_else(i64, i32) #1

declare dso_local i64 @build_indirect_ref(i32, i32*) #1

declare dso_local i32 @get_tinfo_ptr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
