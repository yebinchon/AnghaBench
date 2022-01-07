; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_gcse_emit_move_after.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_gcse_emit_move_after.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REG_EQUAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @gcse_emit_move_after to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gcse_emit_move_after(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @single_set(i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @gen_move_insn(i32 %15, i32 %16)
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @emit_insn_after(i32 %17, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @single_set(i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %3
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @SET_DEST(i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @rtx_equal_p(i32 %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %24, %3
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %4, align 4
  br label %49

32:                                               ; preds = %24
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @find_reg_equal_equiv_note(i32 %33)
  store i32 %34, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @XEXP(i32 %37, i32 0)
  store i32 %38, i32* %12, align 4
  br label %42

39:                                               ; preds = %32
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @SET_SRC(i32 %40)
  store i32 %41, i32* %12, align 4
  br label %42

42:                                               ; preds = %39, %36
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @REG_EQUAL, align 4
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @copy_insn_1(i32 %45)
  %47 = call i32 @set_unique_reg_note(i32 %43, i32 %44, i32 %46)
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %42, %30
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @single_set(i32) #1

declare dso_local i32 @emit_insn_after(i32, i32) #1

declare dso_local i32 @gen_move_insn(i32, i32) #1

declare dso_local i32 @rtx_equal_p(i32, i32) #1

declare dso_local i32 @SET_DEST(i32) #1

declare dso_local i32 @find_reg_equal_equiv_note(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @SET_SRC(i32) #1

declare dso_local i32 @set_unique_reg_note(i32, i32, i32) #1

declare dso_local i32 @copy_insn_1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
