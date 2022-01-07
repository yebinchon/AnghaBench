; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-into-ssa.c_mark_sym_for_renaming.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-into-ssa.c_mark_sym_for_renaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@need_to_initialize_update_ssa_p = common dso_local global i64 0, align 8
@syms_to_rename = common dso_local global i32 0, align 4
@need_to_update_vops_p = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mark_sym_for_renaming(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i64, i64* @need_to_initialize_update_ssa_p, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = call i32 (...) @init_update_ssa()
  br label %7

7:                                                ; preds = %5, %1
  %8 = load i32, i32* @syms_to_rename, align 4
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @DECL_UID(i32 %9)
  %11 = call i32 @bitmap_set_bit(i32 %8, i32 %10)
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @is_gimple_reg(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %7
  store i32 1, i32* @need_to_update_vops_p, align 4
  br label %16

16:                                               ; preds = %15, %7
  ret void
}

declare dso_local i32 @init_update_ssa(...) #1

declare dso_local i32 @bitmap_set_bit(i32, i32) #1

declare dso_local i32 @DECL_UID(i32) #1

declare dso_local i32 @is_gimple_reg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
