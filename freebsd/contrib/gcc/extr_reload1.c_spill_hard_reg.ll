; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload1.c_spill_hard_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload1.c_spill_hard_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bad_spill_regs_global = common dso_local global i32 0, align 4
@regs_ever_live = common dso_local global i32* null, align 8
@FIRST_PSEUDO_REGISTER = common dso_local global i32 0, align 4
@max_regno = common dso_local global i32 0, align 4
@reg_renumber = common dso_local global i64* null, align 8
@hard_regno_nregs = common dso_local global i32** null, align 8
@spilled_pseudos = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @spill_hard_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spill_hard_reg(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %2
  %9 = load i32, i32* @bad_spill_regs_global, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @SET_HARD_REG_BIT(i32 %9, i32 %10)
  %12 = load i32*, i32** @regs_ever_live, align 8
  %13 = load i32, i32* %3, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  store i32 1, i32* %15, align 4
  br label %16

16:                                               ; preds = %8, %2
  %17 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %66, %16
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @max_regno, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %69

22:                                               ; preds = %18
  %23 = load i64*, i64** @reg_renumber, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = icmp sge i64 %27, 0
  br i1 %28, label %29, label %65

29:                                               ; preds = %22
  %30 = load i64*, i64** @reg_renumber, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = load i32, i32* %3, align 4
  %37 = icmp ule i32 %35, %36
  br i1 %37, label %38, label %65

38:                                               ; preds = %29
  %39 = load i64*, i64** @reg_renumber, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = load i32**, i32*** @hard_regno_nregs, align 8
  %46 = load i64*, i64** @reg_renumber, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32*, i32** %45, i64 %52
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i64 @PSEUDO_REGNO_MODE(i32 %55)
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = add i32 %44, %58
  %60 = load i32, i32* %3, align 4
  %61 = icmp ugt i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %38
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @SET_REGNO_REG_SET(i32* @spilled_pseudos, i32 %63)
  br label %65

65:                                               ; preds = %62, %38, %29, %22
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %5, align 4
  br label %18

69:                                               ; preds = %18
  ret void
}

declare dso_local i32 @SET_HARD_REG_BIT(i32, i32) #1

declare dso_local i64 @PSEUDO_REGNO_MODE(i32) #1

declare dso_local i32 @SET_REGNO_REG_SET(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
