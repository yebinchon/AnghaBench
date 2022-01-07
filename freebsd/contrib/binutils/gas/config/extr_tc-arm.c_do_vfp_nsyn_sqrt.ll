; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_vfp_nsyn_sqrt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_vfp_nsyn_sqrt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NS_FF = common dso_local global i32 0, align 4
@NS_DD = common dso_local global i32 0, align 4
@NS_NULL = common dso_local global i32 0, align 4
@N_EQK = common dso_local global i32 0, align 4
@N_VFP = common dso_local global i32 0, align 4
@N_F32 = common dso_local global i32 0, align 4
@N_F64 = common dso_local global i32 0, align 4
@N_KEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"fsqrts\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"fsqrtd\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_vfp_nsyn_sqrt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_vfp_nsyn_sqrt() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @NS_FF, align 4
  %3 = load i32, i32* @NS_DD, align 4
  %4 = load i32, i32* @NS_NULL, align 4
  %5 = call i32 @neon_select_shape(i32 %2, i32 %3, i32 %4)
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* @N_EQK, align 4
  %8 = load i32, i32* @N_VFP, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @N_F32, align 4
  %11 = load i32, i32* @N_F64, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @N_KEY, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @N_VFP, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @neon_check_type(i32 2, i32 %6, i32 %9, i32 %16)
  %18 = load i32, i32* %1, align 4
  %19 = load i32, i32* @NS_FF, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %0
  %22 = call i32 @do_vfp_nsyn_opcode(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %25

23:                                               ; preds = %0
  %24 = call i32 @do_vfp_nsyn_opcode(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %21
  ret void
}

declare dso_local i32 @neon_select_shape(i32, i32, i32) #1

declare dso_local i32 @neon_check_type(i32, i32, i32, i32) #1

declare dso_local i32 @do_vfp_nsyn_opcode(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
