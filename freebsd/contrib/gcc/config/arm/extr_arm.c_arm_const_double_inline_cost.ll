; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_arm_const_double_inline_cost.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_arm_const_double_inline_cost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VOIDmode = common dso_local global i32 0, align 4
@DImode = common dso_local global i32 0, align 4
@SImode = common dso_local global i32 0, align 4
@CONST_INT = common dso_local global i64 0, align 8
@SET = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arm_const_double_inline_cost(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @GET_MODE(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @VOIDmode, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @DImode, align 4
  store i32 %12, i32* %5, align 4
  br label %13

13:                                               ; preds = %11, %1
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @GET_MODE_SIZE(i32 %14)
  %16 = icmp eq i32 %15, 8
  %17 = zext i1 %16 to i32
  %18 = call i32 @gcc_assert(i32 %17)
  %19 = load i32, i32* @SImode, align 4
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @gen_lowpart(i32 %19, i32 %20)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* @SImode, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @gen_highpart_mode(i32 %22, i32 %23, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i64 @GET_CODE(i32 %26)
  %28 = load i64, i64* @CONST_INT, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @gcc_assert(i32 %30)
  %32 = load i32, i32* %4, align 4
  %33 = call i64 @GET_CODE(i32 %32)
  %34 = load i64, i64* @CONST_INT, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @gcc_assert(i32 %36)
  %38 = load i32, i32* @SET, align 4
  %39 = load i32, i32* @SImode, align 4
  %40 = load i32, i32* @NULL_RTX, align 4
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @INTVAL(i32 %41)
  %43 = load i32, i32* @NULL_RTX, align 4
  %44 = load i32, i32* @NULL_RTX, align 4
  %45 = call i32 @arm_gen_constant(i32 %38, i32 %39, i32 %40, i32 %42, i32 %43, i32 %44, i32 0, i32 0)
  %46 = load i32, i32* @SET, align 4
  %47 = load i32, i32* @SImode, align 4
  %48 = load i32, i32* @NULL_RTX, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @INTVAL(i32 %49)
  %51 = load i32, i32* @NULL_RTX, align 4
  %52 = load i32, i32* @NULL_RTX, align 4
  %53 = call i32 @arm_gen_constant(i32 %46, i32 %47, i32 %48, i32 %50, i32 %51, i32 %52, i32 0, i32 0)
  %54 = add nsw i32 %45, %53
  ret i32 %54
}

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @gen_lowpart(i32, i32) #1

declare dso_local i32 @gen_highpart_mode(i32, i32, i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @arm_gen_constant(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @INTVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
