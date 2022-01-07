; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_class.c_build_vfn_ref.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_class.c_build_vfn_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_VTABLE_USES_DESCRIPTORS = common dso_local global i64 0, align 8
@NOP_EXPR = common dso_local global i32 0, align 4
@ADDR_EXPR = common dso_local global i32 0, align 4
@OBJ_TYPE_REF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @build_vfn_ref(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @build_indirect_ref(i32 %6, i32 0)
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @build_vtbl_ref_1(i32 %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i64, i64* @TARGET_VTABLE_USES_DESCRIPTORS, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load i32, i32* @NOP_EXPR, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @TREE_TYPE(i32 %14)
  %16 = load i32, i32* @ADDR_EXPR, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @build_unary_op(i32 %16, i32 %17, i32 1)
  %19 = call i32 @build1(i32 %13, i32 %15, i32 %18)
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %12, %2
  %21 = load i32, i32* @OBJ_TYPE_REF, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @TREE_TYPE(i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @build3(i32 %21, i32 %23, i32 %24, i32 %25, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

declare dso_local i32 @build_vtbl_ref_1(i32, i32) #1

declare dso_local i32 @build_indirect_ref(i32, i32) #1

declare dso_local i32 @build1(i32, i32, i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @build_unary_op(i32, i32, i32) #1

declare dso_local i32 @build3(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
