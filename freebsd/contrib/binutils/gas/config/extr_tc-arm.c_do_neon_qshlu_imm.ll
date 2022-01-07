; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_neon_qshlu_imm.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_neon_qshlu_imm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.neon_type_el = type { i32, i64 }

@NS_DDI = common dso_local global i32 0, align 4
@NS_QQI = common dso_local global i32 0, align 4
@NS_NULL = common dso_local global i32 0, align 4
@N_EQK = common dso_local global i32 0, align 4
@N_UNS = common dso_local global i32 0, align 4
@N_S8 = common dso_local global i32 0, align 4
@N_S16 = common dso_local global i32 0, align 4
@N_S32 = common dso_local global i32 0, align 4
@N_S64 = common dso_local global i32 0, align 4
@N_KEY = common dso_local global i32 0, align 4
@inst = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [33 x i8] c"immediate out of range for shift\00", align 1
@NT_unsigned = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_neon_qshlu_imm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_neon_qshlu_imm() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.neon_type_el, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @NS_DDI, align 4
  %5 = load i32, i32* @NS_QQI, align 4
  %6 = load i32, i32* @NS_NULL, align 4
  %7 = call i32 @neon_select_shape(i32 %4, i32 %5, i32 %6)
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* %1, align 4
  %9 = load i32, i32* @N_EQK, align 4
  %10 = load i32, i32* @N_UNS, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @N_S8, align 4
  %13 = load i32, i32* @N_S16, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @N_S32, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @N_S64, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @N_KEY, align 4
  %20 = or i32 %18, %19
  %21 = call { i32, i64 } @neon_check_type(i32 2, i32 %8, i32 %11, i32 %20)
  %22 = bitcast %struct.neon_type_el* %2 to { i32, i64 }*
  %23 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %22, i32 0, i32 0
  %24 = extractvalue { i32, i64 } %21, 0
  store i32 %24, i32* %23, align 8
  %25 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %22, i32 0, i32 1
  %26 = extractvalue { i32, i64 } %21, 1
  store i64 %26, i64* %25, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 2
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %0
  %34 = load i32, i32* %3, align 4
  %35 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %2, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp uge i32 %34, %36
  br label %38

38:                                               ; preds = %33, %0
  %39 = phi i1 [ true, %0 ], [ %37, %33 ]
  %40 = zext i1 %39 to i32
  %41 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %42 = call i32 @constraint(i32 %40, i32 %41)
  %43 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %2, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @NT_unsigned, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = shl i32 %47, 8
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %50 = or i32 %49, %48
  store i32 %50, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %51 = load i32, i32* @FALSE, align 4
  %52 = load i32, i32* %1, align 4
  %53 = call i32 @neon_quad(i32 %52)
  %54 = load i32, i32* %3, align 4
  %55 = bitcast %struct.neon_type_el* %2 to { i32, i64 }*
  %56 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %55, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @neon_imm_shift(i32 %51, i32 0, i32 %53, i32 %57, i64 %59, i32 %54)
  ret void
}

declare dso_local i32 @neon_select_shape(i32, i32, i32) #1

declare dso_local { i32, i64 } @neon_check_type(i32, i32, i32, i32) #1

declare dso_local i32 @constraint(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @neon_imm_shift(i32, i32, i32, i32, i64, i32) #1

declare dso_local i32 @neon_quad(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
