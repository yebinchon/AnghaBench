; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_init.c_expand_virtual_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_init.c_expand_virtual_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@current_vtt_parm = common dso_local global i64 0, align 8
@PLUS_EXPR = common dso_local global i32 0, align 4
@COND_EXPR = common dso_local global i32 0, align 4
@EQ_EXPR = common dso_local global i32 0, align 4
@boolean_type_node = common dso_local global i32 0, align 4
@current_in_charge_parm = common dso_local global i64 0, align 8
@integer_zero_node = common dso_local global i64 0, align 8
@error_mark_node = common dso_local global i64 0, align 8
@NOP_EXPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @expand_virtual_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @expand_virtual_init(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load i64, i64* %3, align 8
  %11 = call i64 @build_vtbl_address(i64 %10)
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %3, align 8
  %13 = call i64 @BINFO_VPTR_INDEX(i64 %12)
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %41

16:                                               ; preds = %2
  %17 = load i64, i64* @current_vtt_parm, align 8
  store i64 %17, i64* %9, align 8
  %18 = load i32, i32* @PLUS_EXPR, align 4
  %19 = load i64, i64* %9, align 8
  %20 = call i32 @TREE_TYPE(i64 %19)
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i64 @build2(i32 %18, i32 %20, i64 %21, i64 %22)
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %8, align 8
  %25 = call i64 @build_indirect_ref(i64 %24, i32* null)
  store i64 %25, i64* %8, align 8
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @TREE_TYPE(i64 %26)
  %28 = load i64, i64* %8, align 8
  %29 = call i64 @convert(i32 %27, i64 %28)
  store i64 %29, i64* %8, align 8
  %30 = load i32, i32* @COND_EXPR, align 4
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @TREE_TYPE(i64 %31)
  %33 = load i32, i32* @EQ_EXPR, align 4
  %34 = load i32, i32* @boolean_type_node, align 4
  %35 = load i64, i64* @current_in_charge_parm, align 8
  %36 = load i64, i64* @integer_zero_node, align 8
  %37 = call i64 @build2(i32 %33, i32 %34, i64 %35, i64 %36)
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* %5, align 8
  %40 = call i64 @build3(i32 %30, i32 %32, i64 %37, i64 %38, i64 %39)
  store i64 %40, i64* %5, align 8
  br label %41

41:                                               ; preds = %16, %2
  %42 = load i64, i64* %4, align 8
  %43 = call i64 @build_indirect_ref(i64 %42, i32* null)
  %44 = load i64, i64* %3, align 8
  %45 = call i32 @TREE_TYPE(i64 %44)
  %46 = call i64 @build_vfield_ref(i64 %43, i32 %45)
  store i64 %46, i64* %6, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* @error_mark_node, align 8
  %49 = icmp ne i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @gcc_assert(i32 %50)
  %52 = load i64, i64* %6, align 8
  %53 = call i32 @TREE_TYPE(i64 %52)
  %54 = load i64, i64* %5, align 8
  %55 = call i64 @convert_force(i32 %53, i64 %54, i32 0)
  store i64 %55, i64* %5, align 8
  %56 = load i64, i64* %6, align 8
  %57 = load i32, i32* @NOP_EXPR, align 4
  %58 = load i64, i64* %5, align 8
  %59 = call i32 @build_modify_expr(i64 %56, i32 %57, i64 %58)
  %60 = call i32 @finish_expr_stmt(i32 %59)
  ret void
}

declare dso_local i64 @build_vtbl_address(i64) #1

declare dso_local i64 @BINFO_VPTR_INDEX(i64) #1

declare dso_local i64 @build2(i32, i32, i64, i64) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i64 @build_indirect_ref(i64, i32*) #1

declare dso_local i64 @convert(i32, i64) #1

declare dso_local i64 @build3(i32, i32, i64, i64, i64) #1

declare dso_local i64 @build_vfield_ref(i64, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @convert_force(i32, i64, i32) #1

declare dso_local i32 @finish_expr_stmt(i32) #1

declare dso_local i32 @build_modify_expr(i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
