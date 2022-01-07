; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_vfp_nsyn_abs_neg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_vfp_nsyn_abs_neg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@inst = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@N_EQK = common dso_local global i32 0, align 4
@N_VFP = common dso_local global i32 0, align 4
@N_F32 = common dso_local global i32 0, align 4
@N_F64 = common dso_local global i32 0, align 4
@N_KEY = common dso_local global i32 0, align 4
@NS_FF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"fnegs\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"fabss\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"fnegd\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"fabsd\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @do_vfp_nsyn_abs_neg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_vfp_nsyn_abs_neg(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 4
  %5 = and i32 %4, 128
  %6 = icmp ne i32 %5, 0
  %7 = zext i1 %6 to i32
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @N_EQK, align 4
  %10 = load i32, i32* @N_VFP, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @N_F32, align 4
  %13 = load i32, i32* @N_F64, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @N_VFP, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @N_KEY, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @neon_check_type(i32 2, i32 %8, i32 %11, i32 %18)
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @NS_FF, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %1
  %24 = load i32, i32* %3, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = call i32 @do_vfp_nsyn_opcode(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %30

28:                                               ; preds = %23
  %29 = call i32 @do_vfp_nsyn_opcode(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %26
  br label %39

31:                                               ; preds = %1
  %32 = load i32, i32* %3, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = call i32 @do_vfp_nsyn_opcode(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %38

36:                                               ; preds = %31
  %37 = call i32 @do_vfp_nsyn_opcode(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %34
  br label %39

39:                                               ; preds = %38, %30
  ret void
}

declare dso_local i32 @neon_check_type(i32, i32, i32, i32) #1

declare dso_local i32 @do_vfp_nsyn_opcode(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
