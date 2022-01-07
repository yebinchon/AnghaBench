; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i386-tdep.c_i386_stab_reg_to_regnum.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i386-tdep.c_i386_stab_reg_to_regnum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@I387_ST0_REGNUM = common dso_local global i32 0, align 4
@I387_XMM0_REGNUM = common dso_local global i32 0, align 4
@I387_MM0_REGNUM = common dso_local global i32 0, align 4
@NUM_REGS = common dso_local global i32 0, align 4
@NUM_PSEUDO_REGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @i386_stab_reg_to_regnum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i386_stab_reg_to_regnum(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp sge i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = icmp sle i32 %7, 7
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = load i32, i32* %3, align 4
  store i32 %10, i32* %2, align 4
  br label %51

11:                                               ; preds = %6, %1
  %12 = load i32, i32* %3, align 4
  %13 = icmp sge i32 %12, 12
  br i1 %13, label %14, label %22

14:                                               ; preds = %11
  %15 = load i32, i32* %3, align 4
  %16 = icmp sle i32 %15, 19
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load i32, i32* %3, align 4
  %19 = sub nsw i32 %18, 12
  %20 = load i32, i32* @I387_ST0_REGNUM, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %2, align 4
  br label %51

22:                                               ; preds = %14, %11
  %23 = load i32, i32* %3, align 4
  %24 = icmp sge i32 %23, 21
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = load i32, i32* %3, align 4
  %27 = icmp sle i32 %26, 28
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load i32, i32* %3, align 4
  %30 = sub nsw i32 %29, 21
  %31 = load i32, i32* @I387_XMM0_REGNUM, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %2, align 4
  br label %51

33:                                               ; preds = %25, %22
  %34 = load i32, i32* %3, align 4
  %35 = icmp sge i32 %34, 29
  br i1 %35, label %36, label %44

36:                                               ; preds = %33
  %37 = load i32, i32* %3, align 4
  %38 = icmp sle i32 %37, 36
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load i32, i32* %3, align 4
  %41 = sub nsw i32 %40, 29
  %42 = load i32, i32* @I387_MM0_REGNUM, align 4
  %43 = add nsw i32 %41, %42
  store i32 %43, i32* %2, align 4
  br label %51

44:                                               ; preds = %36, %33
  br label %45

45:                                               ; preds = %44
  br label %46

46:                                               ; preds = %45
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* @NUM_REGS, align 4
  %49 = load i32, i32* @NUM_PSEUDO_REGS, align 4
  %50 = add nsw i32 %48, %49
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %47, %39, %28, %17, %9
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
