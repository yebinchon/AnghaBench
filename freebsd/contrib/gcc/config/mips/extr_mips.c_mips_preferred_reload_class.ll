; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_preferred_reload_class.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_preferred_reload_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LEA_REGS = common dso_local global i32 0, align 4
@TARGET_HARD_FLOAT = common dso_local global i64 0, align 8
@FP_REGS = common dso_local global i32 0, align 4
@GR_REGS = common dso_local global i32 0, align 4
@TARGET_MIPS16 = common dso_local global i64 0, align 8
@M16_REGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mips_preferred_reload_class(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i64 @mips_dangerous_for_la25_p(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load i32, i32* @LEA_REGS, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @reg_class_subset_p(i32 %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = load i32, i32* @LEA_REGS, align 4
  store i32 %15, i32* %3, align 4
  br label %50

16:                                               ; preds = %9, %2
  %17 = load i64, i64* @TARGET_HARD_FLOAT, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %16
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @GET_MODE(i32 %20)
  %22 = call i64 @FLOAT_MODE_P(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load i32, i32* @FP_REGS, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i64 @reg_class_subset_p(i32 %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @FP_REGS, align 4
  store i32 %30, i32* %3, align 4
  br label %50

31:                                               ; preds = %24, %19, %16
  %32 = load i32, i32* @GR_REGS, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i64 @reg_class_subset_p(i32 %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @GR_REGS, align 4
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %36, %31
  %39 = load i64, i64* @TARGET_MIPS16, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = load i32, i32* @M16_REGS, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i64 @reg_class_subset_p(i32 %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* @M16_REGS, align 4
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %46, %41, %38
  %49 = load i32, i32* %5, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %48, %29, %14
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i64 @mips_dangerous_for_la25_p(i32) #1

declare dso_local i64 @reg_class_subset_p(i32, i32) #1

declare dso_local i64 @FLOAT_MODE_P(i32) #1

declare dso_local i32 @GET_MODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
