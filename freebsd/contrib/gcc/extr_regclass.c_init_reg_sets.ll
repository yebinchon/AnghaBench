; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_regclass.c_init_reg_sets.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_regclass.c_init_reg_sets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@N_REG_CLASSES = common dso_local global i32 0, align 4
@reg_class_contents = common dso_local global i32* null, align 8
@FIRST_PSEUDO_REGISTER = common dso_local global i32 0, align 4
@int_reg_class_contents = common dso_local global i32** null, align 8
@fixed_regs = common dso_local global i32 0, align 4
@initial_fixed_regs = common dso_local global i32 0, align 4
@call_used_regs = common dso_local global i32 0, align 4
@initial_call_used_regs = common dso_local global i32 0, align 4
@global_regs = common dso_local global i32 0, align 4
@inv_reg_alloc_order = common dso_local global i32* null, align 8
@reg_alloc_order = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_reg_sets() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %47, %0
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* @N_REG_CLASSES, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %50

7:                                                ; preds = %3
  %8 = load i32*, i32** @reg_class_contents, align 8
  %9 = load i32, i32* %1, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @CLEAR_HARD_REG_SET(i32 %12)
  store i32 0, i32* %2, align 4
  br label %14

14:                                               ; preds = %43, %7
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %46

18:                                               ; preds = %14
  %19 = load i32**, i32*** @int_reg_class_contents, align 8
  %20 = load i32, i32* %1, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32*, i32** %19, i64 %21
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %2, align 4
  %25 = sdiv i32 %24, 32
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %2, align 4
  %30 = srem i32 %29, 32
  %31 = shl i32 1, %30
  %32 = and i32 %28, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %18
  %35 = load i32*, i32** @reg_class_contents, align 8
  %36 = load i32, i32* %1, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %2, align 4
  %41 = call i32 @SET_HARD_REG_BIT(i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %34, %18
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %2, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %2, align 4
  br label %14

46:                                               ; preds = %14
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %1, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %1, align 4
  br label %3

50:                                               ; preds = %3
  %51 = call i32 @gcc_assert(i32 1)
  %52 = call i32 @gcc_assert(i32 1)
  %53 = load i32, i32* @fixed_regs, align 4
  %54 = load i32, i32* @initial_fixed_regs, align 4
  %55 = call i32 @memcpy(i32 %53, i32 %54, i32 4)
  %56 = load i32, i32* @call_used_regs, align 4
  %57 = load i32, i32* @initial_call_used_regs, align 4
  %58 = call i32 @memcpy(i32 %56, i32 %57, i32 4)
  %59 = load i32, i32* @global_regs, align 4
  %60 = call i32 @memset(i32 %59, i32 0, i32 4)
  ret void
}

declare dso_local i32 @CLEAR_HARD_REG_SET(i32) #1

declare dso_local i32 @SET_HARD_REG_BIT(i32, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
