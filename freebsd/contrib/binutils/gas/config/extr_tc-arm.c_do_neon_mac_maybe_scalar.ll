; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_neon_mac_maybe_scalar.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_neon_mac_maybe_scalar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.neon_type_el = type { i32 }

@do_vfp_nsyn_mla_mls = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i64 0, align 8
@NEON_CHECK_CC = common dso_local global i32 0, align 4
@NEON_CHECK_ARCH = common dso_local global i32 0, align 4
@FAIL = common dso_local global i64 0, align 8
@inst = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@NS_DDS = common dso_local global i32 0, align 4
@NS_QQS = common dso_local global i32 0, align 4
@NS_NULL = common dso_local global i32 0, align 4
@N_EQK = common dso_local global i32 0, align 4
@N_I16 = common dso_local global i32 0, align 4
@N_I32 = common dso_local global i32 0, align 4
@N_F32 = common dso_local global i32 0, align 4
@N_KEY = common dso_local global i32 0, align 4
@NT_untyped = common dso_local global i32 0, align 4
@N_IF_32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_neon_mac_maybe_scalar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_neon_mac_maybe_scalar() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.neon_type_el, align 4
  %3 = load i32, i32* @do_vfp_nsyn_mla_mls, align 4
  %4 = call i64 @try_vfp_nsyn(i32 3, i32 %3)
  %5 = load i64, i64* @SUCCESS, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %50

8:                                                ; preds = %0
  %9 = load i32, i32* @NEON_CHECK_CC, align 4
  %10 = load i32, i32* @NEON_CHECK_ARCH, align 4
  %11 = or i32 %9, %10
  %12 = call i64 @vfp_or_neon_is_neon(i32 %11)
  %13 = load i64, i64* @FAIL, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %8
  br label %50

16:                                               ; preds = %8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i64 2
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %46

22:                                               ; preds = %16
  %23 = load i32, i32* @NS_DDS, align 4
  %24 = load i32, i32* @NS_QQS, align 4
  %25 = load i32, i32* @NS_NULL, align 4
  %26 = call i32 @neon_select_shape(i32 %23, i32 %24, i32 %25)
  store i32 %26, i32* %1, align 4
  %27 = load i32, i32* %1, align 4
  %28 = load i32, i32* @N_EQK, align 4
  %29 = load i32, i32* @N_EQK, align 4
  %30 = load i32, i32* @N_I16, align 4
  %31 = load i32, i32* @N_I32, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @N_F32, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @N_KEY, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @neon_check_type(i32 3, i32 %27, i32 %28, i32 %29, i32 %36)
  %38 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %2, i32 0, i32 0
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %40 = call i32 @NEON_ENC_SCALAR(i32 %39)
  store i32 %40, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %41 = load i32, i32* %1, align 4
  %42 = call i32 @neon_quad(i32 %41)
  %43 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %2, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @neon_mul_mac(i32 %44, i32 %42)
  br label %50

46:                                               ; preds = %16
  %47 = load i32, i32* @NT_untyped, align 4
  %48 = load i32, i32* @N_IF_32, align 4
  %49 = call i32 @neon_dyadic_misc(i32 %47, i32 %48, i32 0)
  br label %50

50:                                               ; preds = %7, %15, %46, %22
  ret void
}

declare dso_local i64 @try_vfp_nsyn(i32, i32) #1

declare dso_local i64 @vfp_or_neon_is_neon(i32) #1

declare dso_local i32 @neon_select_shape(i32, i32, i32) #1

declare dso_local i32 @neon_check_type(i32, i32, i32, i32, i32) #1

declare dso_local i32 @NEON_ENC_SCALAR(i32) #1

declare dso_local i32 @neon_mul_mac(i32, i32) #1

declare dso_local i32 @neon_quad(i32) #1

declare dso_local i32 @neon_dyadic_misc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
