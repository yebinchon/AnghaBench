; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_arm-tdep.c_arm_register_byte.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_arm-tdep.c_arm_register_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ARM_F0_REGNUM = common dso_local global i32 0, align 4
@INT_REGISTER_SIZE = common dso_local global i32 0, align 4
@ARM_PS_REGNUM = common dso_local global i32 0, align 4
@NUM_GREGS = common dso_local global i32 0, align 4
@FP_REGISTER_SIZE = common dso_local global i32 0, align 4
@NUM_FREGS = common dso_local global i32 0, align 4
@ARM_FPS_REGNUM = common dso_local global i32 0, align 4
@STATUS_REGISTER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @arm_register_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_register_byte(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @ARM_F0_REGNUM, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @INT_REGISTER_SIZE, align 4
  %10 = mul nsw i32 %8, %9
  store i32 %10, i32* %2, align 4
  br label %39

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @ARM_PS_REGNUM, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %11
  %16 = load i32, i32* @NUM_GREGS, align 4
  %17 = load i32, i32* @INT_REGISTER_SIZE, align 4
  %18 = mul nsw i32 %16, %17
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @ARM_F0_REGNUM, align 4
  %21 = sub nsw i32 %19, %20
  %22 = load i32, i32* @FP_REGISTER_SIZE, align 4
  %23 = mul nsw i32 %21, %22
  %24 = add nsw i32 %18, %23
  store i32 %24, i32* %2, align 4
  br label %39

25:                                               ; preds = %11
  %26 = load i32, i32* @NUM_GREGS, align 4
  %27 = load i32, i32* @INT_REGISTER_SIZE, align 4
  %28 = mul nsw i32 %26, %27
  %29 = load i32, i32* @NUM_FREGS, align 4
  %30 = load i32, i32* @FP_REGISTER_SIZE, align 4
  %31 = mul nsw i32 %29, %30
  %32 = add nsw i32 %28, %31
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @ARM_FPS_REGNUM, align 4
  %35 = sub nsw i32 %33, %34
  %36 = load i32, i32* @STATUS_REGISTER_SIZE, align 4
  %37 = mul nsw i32 %35, %36
  %38 = add nsw i32 %32, %37
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %25, %15, %7
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
