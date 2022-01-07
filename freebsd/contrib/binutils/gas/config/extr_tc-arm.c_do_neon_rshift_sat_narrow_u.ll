; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_neon_rshift_sat_narrow_u.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_neon_rshift_sat_narrow_u.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64 }
%struct.neon_type_el = type { i32 }

@NS_DQI = common dso_local global i32 0, align 4
@N_EQK = common dso_local global i32 0, align 4
@N_HLF = common dso_local global i32 0, align 4
@N_UNS = common dso_local global i32 0, align 4
@N_S16 = common dso_local global i32 0, align 4
@N_S32 = common dso_local global i32 0, align 4
@N_S64 = common dso_local global i32 0, align 4
@N_KEY = common dso_local global i32 0, align 4
@inst = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@N_MNEM_vqmovun = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"immediate out of range\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_neon_rshift_sat_narrow_u to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_neon_rshift_sat_narrow_u() #0 {
  %1 = alloca %struct.neon_type_el, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @NS_DQI, align 4
  %4 = load i32, i32* @N_EQK, align 4
  %5 = load i32, i32* @N_HLF, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @N_UNS, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @N_S16, align 4
  %10 = load i32, i32* @N_S32, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @N_S64, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @N_KEY, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @neon_check_type(i32 2, i32 %3, i32 %8, i32 %15)
  %17 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %1, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 2
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %2, align 4
  %22 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %1, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sdiv i32 %23, 2
  store i32 %24, i32* %22, align 4
  %25 = load i32, i32* %2, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 2
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* @N_MNEM_vqmovun, align 4
  store i32 %31, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %32 = call i32 (...) @do_neon_qmovun()
  br label %54

33:                                               ; preds = %0
  %34 = load i32, i32* %2, align 4
  %35 = icmp slt i32 %34, 1
  br i1 %35, label %41, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %2, align 4
  %38 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %1, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ugt i32 %37, %39
  br label %41

41:                                               ; preds = %36, %33
  %42 = phi i1 [ true, %33 ], [ %40, %36 ]
  %43 = zext i1 %42 to i32
  %44 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %45 = call i32 @constraint(i32 %43, i32 %44)
  %46 = load i32, i32* @TRUE, align 4
  %47 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %1, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %2, align 4
  %50 = sub nsw i32 %48, %49
  %51 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %1, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @neon_imm_shift(i32 %46, i32 1, i32 0, i32 %52, i32 %50)
  br label %54

54:                                               ; preds = %41, %27
  ret void
}

declare dso_local i32 @neon_check_type(i32, i32, i32, i32) #1

declare dso_local i32 @do_neon_qmovun(...) #1

declare dso_local i32 @constraint(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @neon_imm_shift(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
