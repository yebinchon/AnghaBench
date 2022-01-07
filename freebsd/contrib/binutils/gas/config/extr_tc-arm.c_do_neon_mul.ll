; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_neon_mul.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_neon_mul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@do_vfp_nsyn_mul = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i64 0, align 8
@NEON_CHECK_CC = common dso_local global i32 0, align 4
@NEON_CHECK_ARCH = common dso_local global i32 0, align 4
@FAIL = common dso_local global i64 0, align 8
@inst = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@NT_poly = common dso_local global i32 0, align 4
@N_I8 = common dso_local global i32 0, align 4
@N_I16 = common dso_local global i32 0, align 4
@N_I32 = common dso_local global i32 0, align 4
@N_F32 = common dso_local global i32 0, align 4
@N_P8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_neon_mul to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_neon_mul() #0 {
  %1 = load i32, i32* @do_vfp_nsyn_mul, align 4
  %2 = call i64 @try_vfp_nsyn(i32 3, i32 %1)
  %3 = load i64, i64* @SUCCESS, align 8
  %4 = icmp eq i64 %2, %3
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %34

6:                                                ; preds = %0
  %7 = load i32, i32* @NEON_CHECK_CC, align 4
  %8 = load i32, i32* @NEON_CHECK_ARCH, align 4
  %9 = or i32 %7, %8
  %10 = call i64 @vfp_or_neon_is_neon(i32 %9)
  %11 = load i64, i64* @FAIL, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %6
  br label %34

14:                                               ; preds = %6
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 2
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = call i32 (...) @do_neon_mac_maybe_scalar()
  br label %34

22:                                               ; preds = %14
  %23 = load i32, i32* @NT_poly, align 4
  %24 = load i32, i32* @N_I8, align 4
  %25 = load i32, i32* @N_I16, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @N_I32, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @N_F32, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @N_P8, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @neon_dyadic_misc(i32 %23, i32 %32, i32 0)
  br label %34

34:                                               ; preds = %5, %13, %22, %20
  ret void
}

declare dso_local i64 @try_vfp_nsyn(i32, i32) #1

declare dso_local i64 @vfp_or_neon_is_neon(i32) #1

declare dso_local i32 @do_neon_mac_maybe_scalar(...) #1

declare dso_local i32 @neon_dyadic_misc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
