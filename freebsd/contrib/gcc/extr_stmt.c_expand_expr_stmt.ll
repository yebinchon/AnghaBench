; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_stmt.c_expand_expr_stmt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_stmt.c_expand_expr_stmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@const0_rtx = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i64 0, align 8
@BLKmode = common dso_local global i64 0, align 8
@EQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @expand_expr_stmt(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @const0_rtx, align 4
  %8 = load i64, i64* @VOIDmode, align 8
  %9 = call i64 @expand_expr(i32 %6, i32 %7, i64 %8, i32 0)
  store i64 %9, i64* %3, align 8
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @TREE_TYPE(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i64, i64* %3, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %51

14:                                               ; preds = %1
  %15 = load i64, i64* %3, align 8
  %16 = call i64 @MEM_P(i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %51

18:                                               ; preds = %14
  %19 = load i32, i32* %2, align 4
  %20 = call i64 @TREE_THIS_VOLATILE(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %51

22:                                               ; preds = %18
  %23 = load i32, i32* %4, align 4
  %24 = call i64 @TYPE_MODE(i32 %23)
  %25 = load i64, i64* @VOIDmode, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %50

28:                                               ; preds = %22
  %29 = load i32, i32* %4, align 4
  %30 = call i64 @TYPE_MODE(i32 %29)
  %31 = load i64, i64* @BLKmode, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i64, i64* %3, align 8
  %35 = call i64 @copy_to_reg(i64 %34)
  store i64 %35, i64* %3, align 8
  br label %49

36:                                               ; preds = %28
  %37 = call i64 (...) @gen_label_rtx()
  store i64 %37, i64* %5, align 8
  %38 = load i64, i64* %3, align 8
  %39 = load i64, i64* %3, align 8
  %40 = load i32, i32* @EQ, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @TYPE_SIZE(i32 %41)
  %43 = call i32 @expand_normal(i32 %42)
  %44 = load i64, i64* @BLKmode, align 8
  %45 = load i64, i64* %5, align 8
  %46 = call i32 @emit_cmp_and_jump_insns(i64 %38, i64 %39, i32 %40, i32 %43, i64 %44, i32 0, i64 %45)
  %47 = load i64, i64* %5, align 8
  %48 = call i32 @emit_label(i64 %47)
  br label %49

49:                                               ; preds = %36, %33
  br label %50

50:                                               ; preds = %49, %27
  br label %51

51:                                               ; preds = %50, %18, %14, %1
  %52 = call i32 (...) @free_temp_slots()
  ret void
}

declare dso_local i64 @expand_expr(i32, i32, i64, i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i64 @MEM_P(i64) #1

declare dso_local i64 @TREE_THIS_VOLATILE(i32) #1

declare dso_local i64 @TYPE_MODE(i32) #1

declare dso_local i64 @copy_to_reg(i64) #1

declare dso_local i64 @gen_label_rtx(...) #1

declare dso_local i32 @emit_cmp_and_jump_insns(i64, i64, i32, i32, i64, i32, i64) #1

declare dso_local i32 @expand_normal(i32) #1

declare dso_local i32 @TYPE_SIZE(i32) #1

declare dso_local i32 @emit_label(i64) #1

declare dso_local i32 @free_temp_slots(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
