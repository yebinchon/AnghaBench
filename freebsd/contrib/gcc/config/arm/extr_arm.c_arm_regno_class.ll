; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_arm_regno_class.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_arm_regno_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_THUMB = common dso_local global i64 0, align 8
@STACK_POINTER_REGNUM = common dso_local global i32 0, align 4
@STACK_REG = common dso_local global i32 0, align 4
@CC_REGNUM = common dso_local global i32 0, align 4
@CC_REG = common dso_local global i32 0, align 4
@LO_REGS = common dso_local global i32 0, align 4
@HI_REGS = common dso_local global i32 0, align 4
@LAST_ARM_REGNUM = common dso_local global i32 0, align 4
@FRAME_POINTER_REGNUM = common dso_local global i32 0, align 4
@ARG_POINTER_REGNUM = common dso_local global i32 0, align 4
@GENERAL_REGS = common dso_local global i32 0, align 4
@VFPCC_REGNUM = common dso_local global i32 0, align 4
@NO_REGS = common dso_local global i32 0, align 4
@CIRRUS_REGS = common dso_local global i32 0, align 4
@VFP_REGS = common dso_local global i32 0, align 4
@IWMMXT_REGS = common dso_local global i32 0, align 4
@IWMMXT_GR_REGS = common dso_local global i32 0, align 4
@FPA_REGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arm_regno_class(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i64, i64* @TARGET_THUMB, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %25

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @STACK_POINTER_REGNUM, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = load i32, i32* @STACK_REG, align 4
  store i32 %11, i32* %2, align 4
  br label %75

12:                                               ; preds = %6
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @CC_REGNUM, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i32, i32* @CC_REG, align 4
  store i32 %17, i32* %2, align 4
  br label %75

18:                                               ; preds = %12
  %19 = load i32, i32* %3, align 4
  %20 = icmp slt i32 %19, 8
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32, i32* @LO_REGS, align 4
  store i32 %22, i32* %2, align 4
  br label %75

23:                                               ; preds = %18
  %24 = load i32, i32* @HI_REGS, align 4
  store i32 %24, i32* %2, align 4
  br label %75

25:                                               ; preds = %1
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @LAST_ARM_REGNUM, align 4
  %28 = icmp sle i32 %26, %27
  br i1 %28, label %37, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @FRAME_POINTER_REGNUM, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @ARG_POINTER_REGNUM, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33, %29, %25
  %38 = load i32, i32* @GENERAL_REGS, align 4
  store i32 %38, i32* %2, align 4
  br label %75

39:                                               ; preds = %33
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @CC_REGNUM, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @VFPCC_REGNUM, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43, %39
  %48 = load i32, i32* @NO_REGS, align 4
  store i32 %48, i32* %2, align 4
  br label %75

49:                                               ; preds = %43
  %50 = load i32, i32* %3, align 4
  %51 = call i64 @IS_CIRRUS_REGNUM(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32, i32* @CIRRUS_REGS, align 4
  store i32 %54, i32* %2, align 4
  br label %75

55:                                               ; preds = %49
  %56 = load i32, i32* %3, align 4
  %57 = call i64 @IS_VFP_REGNUM(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i32, i32* @VFP_REGS, align 4
  store i32 %60, i32* %2, align 4
  br label %75

61:                                               ; preds = %55
  %62 = load i32, i32* %3, align 4
  %63 = call i64 @IS_IWMMXT_REGNUM(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i32, i32* @IWMMXT_REGS, align 4
  store i32 %66, i32* %2, align 4
  br label %75

67:                                               ; preds = %61
  %68 = load i32, i32* %3, align 4
  %69 = call i64 @IS_IWMMXT_GR_REGNUM(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load i32, i32* @IWMMXT_GR_REGS, align 4
  store i32 %72, i32* %2, align 4
  br label %75

73:                                               ; preds = %67
  %74 = load i32, i32* @FPA_REGS, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %73, %71, %65, %59, %53, %47, %37, %23, %21, %16, %10
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i64 @IS_CIRRUS_REGNUM(i32) #1

declare dso_local i64 @IS_VFP_REGNUM(i32) #1

declare dso_local i64 @IS_IWMMXT_REGNUM(i32) #1

declare dso_local i64 @IS_IWMMXT_GR_REGNUM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
