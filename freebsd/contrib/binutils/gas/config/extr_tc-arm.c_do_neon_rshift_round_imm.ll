; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_neon_rshift_round_imm.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_neon_rshift_round_imm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64 }
%struct.neon_type_el = type { i32, i64 }

@NS_DDI = common dso_local global i32 0, align 4
@NS_QQI = common dso_local global i32 0, align 4
@NS_NULL = common dso_local global i32 0, align 4
@N_EQK = common dso_local global i32 0, align 4
@N_SU_ALL = common dso_local global i32 0, align 4
@N_KEY = common dso_local global i32 0, align 4
@inst = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [33 x i8] c"immediate out of range for shift\00", align 1
@TRUE = common dso_local global i32 0, align 4
@NT_unsigned = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_neon_rshift_round_imm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_neon_rshift_round_imm() #0 {
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
  %10 = load i32, i32* @N_SU_ALL, align 4
  %11 = load i32, i32* @N_KEY, align 4
  %12 = or i32 %10, %11
  %13 = call { i32, i64 } @neon_check_type(i32 2, i32 %8, i32 %9, i32 %12)
  %14 = bitcast %struct.neon_type_el* %2 to { i32, i64 }*
  %15 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %14, i32 0, i32 0
  %16 = extractvalue { i32, i64 } %13, 0
  store i32 %16, i32* %15, align 8
  %17 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %14, i32 0, i32 1
  %18 = extractvalue { i32, i64 } %13, 1
  store i64 %18, i64* %17, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i64 2
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 2
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = call i32 (...) @do_neon_mov()
  br label %61

30:                                               ; preds = %0
  %31 = load i32, i32* %3, align 4
  %32 = icmp slt i32 %31, 1
  br i1 %32, label %38, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %3, align 4
  %35 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %2, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ugt i32 %34, %36
  br label %38

38:                                               ; preds = %33, %30
  %39 = phi i1 [ true, %30 ], [ %37, %33 ]
  %40 = zext i1 %39 to i32
  %41 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %42 = call i32 @constraint(i32 %40, i32 %41)
  %43 = load i32, i32* @TRUE, align 4
  %44 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %2, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @NT_unsigned, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = load i32, i32* %1, align 4
  %50 = call i32 @neon_quad(i32 %49)
  %51 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %2, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %3, align 4
  %54 = sub i32 %52, %53
  %55 = bitcast %struct.neon_type_el* %2 to { i32, i64 }*
  %56 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %55, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @neon_imm_shift(i32 %43, i32 %48, i32 %50, i32 %57, i64 %59, i32 %54)
  br label %61

61:                                               ; preds = %38, %25
  ret void
}

declare dso_local i32 @neon_select_shape(i32, i32, i32) #1

declare dso_local { i32, i64 } @neon_check_type(i32, i32, i32, i32) #1

declare dso_local i32 @do_neon_mov(...) #1

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
