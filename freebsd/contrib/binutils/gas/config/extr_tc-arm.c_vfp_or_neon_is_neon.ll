; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_vfp_or_neon_is_neon.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_vfp_or_neon_is_neon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32 }

@thumb_mode = common dso_local global i32 0, align 4
@NEON_CHECK_CC = common dso_local global i32 0, align 4
@inst = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@COND_ALWAYS = common dso_local global i64 0, align 8
@BAD_COND = common dso_local global i32 0, align 4
@FAIL = common dso_local global i32 0, align 4
@NEON_CHECK_ARCH = common dso_local global i32 0, align 4
@cpu_variant = common dso_local global i32 0, align 4
@fpu_neon_ext_v1 = common dso_local global i32 0, align 4
@BAD_FPU = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @vfp_or_neon_is_neon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfp_or_neon_is_neon(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* @thumb_mode, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %29, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @NEON_CHECK_CC, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %6
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 8
  %13 = load i64, i64* @COND_ALWAYS, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = load i32, i32* @BAD_COND, align 4
  %17 = call i32 @_(i32 %16)
  %18 = call i32 @first_error(i32 %17)
  %19 = load i32, i32* @FAIL, align 4
  store i32 %19, i32* %2, align 4
  br label %46

20:                                               ; preds = %11
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 1), align 8
  %22 = icmp ne i32 %21, -1
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 1), align 8
  %25 = shl i32 %24, 28
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 2), align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 2), align 4
  br label %28

28:                                               ; preds = %23, %20
  br label %29

29:                                               ; preds = %28, %6, %1
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @NEON_CHECK_ARCH, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %29
  %35 = load i32, i32* @cpu_variant, align 4
  %36 = load i32, i32* @fpu_neon_ext_v1, align 4
  %37 = call i32 @ARM_CPU_HAS_FEATURE(i32 %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @BAD_FPU, align 4
  %41 = call i32 @_(i32 %40)
  %42 = call i32 @first_error(i32 %41)
  %43 = load i32, i32* @FAIL, align 4
  store i32 %43, i32* %2, align 4
  br label %46

44:                                               ; preds = %34, %29
  %45 = load i32, i32* @SUCCESS, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %44, %39, %15
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @first_error(i32) #1

declare dso_local i32 @_(i32) #1

declare dso_local i32 @ARM_CPU_HAS_FEATURE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
