; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_reg_set_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_reg_set_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FIRST_PSEUDO_REGISTER = common dso_local global i64 0, align 8
@regs_invalidated_by_call = common dso_local global i32 0, align 4
@CLOBBER = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reg_set_p(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @INSN_P(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %46

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i64 @FIND_REG_INC_NOTE(i32 %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %45, label %14

14:                                               ; preds = %9
  %15 = load i32, i32* %5, align 4
  %16 = call i64 @CALL_P(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %46

18:                                               ; preds = %14
  %19 = load i32, i32* %4, align 4
  %20 = call i64 @REG_P(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %18
  %23 = load i32, i32* %4, align 4
  %24 = call i64 @REGNO(i32 %23)
  %25 = load i64, i64* @FIRST_PSEUDO_REGISTER, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load i32, i32* @regs_invalidated_by_call, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @GET_MODE(i32 %29)
  %31 = load i32, i32* %4, align 4
  %32 = call i64 @REGNO(i32 %31)
  %33 = call i64 @overlaps_hard_reg_set_p(i32 %28, i32 %30, i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %27, %22, %18
  %36 = load i32, i32* %4, align 4
  %37 = call i64 @MEM_P(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @CLOBBER, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i64 @find_reg_fusage(i32 %40, i32 %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39, %35, %27, %9
  store i32 1, i32* %3, align 4
  br label %53

46:                                               ; preds = %39, %14, %2
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i64 @set_of(i32 %47, i32 %48)
  %50 = load i64, i64* @NULL_RTX, align 8
  %51 = icmp ne i64 %49, %50
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %46, %45
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i64 @INSN_P(i32) #1

declare dso_local i64 @FIND_REG_INC_NOTE(i32, i32) #1

declare dso_local i64 @CALL_P(i32) #1

declare dso_local i64 @REG_P(i32) #1

declare dso_local i64 @REGNO(i32) #1

declare dso_local i64 @overlaps_hard_reg_set_p(i32, i32, i64) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i64 @MEM_P(i32) #1

declare dso_local i64 @find_reg_fusage(i32, i32, i32) #1

declare dso_local i64 @set_of(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
