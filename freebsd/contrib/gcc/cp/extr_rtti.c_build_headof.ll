; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_rtti.c_build_headof.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_rtti.c_build_headof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@POINTER_TYPE = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i32 0, align 4
@TARGET_VTABLE_DATA_ENTRY_DISTANCE = common dso_local global i32 0, align 4
@ptr_type_node = common dso_local global i32 0, align 4
@PLUS_EXPR = common dso_local global i32 0, align 4
@ptrdiff_type_node = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @build_headof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_headof(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @TREE_TYPE(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i64 @TREE_CODE(i32 %9)
  %11 = load i64, i64* @POINTER_TYPE, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @gcc_assert(i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @TREE_TYPE(i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @TYPE_POLYMORPHIC_P(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  store i32 %21, i32* %2, align 4
  br label %45

22:                                               ; preds = %1
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @save_expr(i32 %23)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* @NULL_TREE, align 4
  %26 = load i32, i32* @TARGET_VTABLE_DATA_ENTRY_DISTANCE, align 4
  %27 = mul nsw i32 -2, %26
  %28 = call i32 @build_int_cst(i32 %25, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @build_indirect_ref(i32 %29, i32* null)
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @build_vtbl_ref(i32 %30, i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* @ptr_type_node, align 4
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @TREE_TYPE(i32 %34)
  %36 = call i32 @cp_type_quals(i32 %35)
  %37 = call i32 @build_qualified_type(i32 %33, i32 %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* @PLUS_EXPR, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @ptrdiff_type_node, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @convert_to_integer(i32 %41, i32 %42)
  %44 = call i32 @build2(i32 %38, i32 %39, i32 %40, i32 %43)
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %22, %20
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @TYPE_POLYMORPHIC_P(i32) #1

declare dso_local i32 @save_expr(i32) #1

declare dso_local i32 @build_int_cst(i32, i32) #1

declare dso_local i32 @build_vtbl_ref(i32, i32) #1

declare dso_local i32 @build_indirect_ref(i32, i32*) #1

declare dso_local i32 @build_qualified_type(i32, i32) #1

declare dso_local i32 @cp_type_quals(i32) #1

declare dso_local i32 @build2(i32, i32, i32, i32) #1

declare dso_local i32 @convert_to_integer(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
