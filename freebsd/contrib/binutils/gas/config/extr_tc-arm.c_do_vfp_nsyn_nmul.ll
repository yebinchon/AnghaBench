; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_vfp_nsyn_nmul.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_vfp_nsyn_nmul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@NS_FFF = common dso_local global i32 0, align 4
@NS_DDD = common dso_local global i32 0, align 4
@NS_NULL = common dso_local global i32 0, align 4
@N_EQK = common dso_local global i32 0, align 4
@N_VFP = common dso_local global i32 0, align 4
@N_F32 = common dso_local global i32 0, align 4
@N_F64 = common dso_local global i32 0, align 4
@N_KEY = common dso_local global i32 0, align 4
@inst = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_vfp_nsyn_nmul to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_vfp_nsyn_nmul() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @NS_FFF, align 4
  %3 = load i32, i32* @NS_DDD, align 4
  %4 = load i32, i32* @NS_NULL, align 4
  %5 = call i32 @neon_select_shape(i32 %2, i32 %3, i32 %4)
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* @N_EQK, align 4
  %8 = load i32, i32* @N_VFP, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @N_EQK, align 4
  %11 = load i32, i32* @N_VFP, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @N_F32, align 4
  %14 = load i32, i32* @N_F64, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @N_KEY, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @N_VFP, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @neon_check_type(i32 3, i32 %6, i32 %9, i32 %12, i32 %19)
  %21 = load i32, i32* %1, align 4
  %22 = load i32, i32* @NS_FFF, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %0
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 4
  %26 = call i32 @NEON_ENC_SINGLE(i32 %25)
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 4
  %27 = call i32 (...) @do_vfp_sp_dyadic()
  br label %32

28:                                               ; preds = %0
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 4
  %30 = call i32 @NEON_ENC_DOUBLE(i32 %29)
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 4
  %31 = call i32 (...) @do_vfp_dp_rd_rn_rm()
  br label %32

32:                                               ; preds = %28, %24
  %33 = call i32 (...) @do_vfp_cond_or_thumb()
  ret void
}

declare dso_local i32 @neon_select_shape(i32, i32, i32) #1

declare dso_local i32 @neon_check_type(i32, i32, i32, i32, i32) #1

declare dso_local i32 @NEON_ENC_SINGLE(i32) #1

declare dso_local i32 @do_vfp_sp_dyadic(...) #1

declare dso_local i32 @NEON_ENC_DOUBLE(i32) #1

declare dso_local i32 @do_vfp_dp_rd_rn_rm(...) #1

declare dso_local i32 @do_vfp_cond_or_thumb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
