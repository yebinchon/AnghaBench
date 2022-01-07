; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_neon_rshift_narrow.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_neon_rshift_narrow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64 }
%struct.neon_type_el = type { i32 }

@NS_DQI = common dso_local global i32 0, align 4
@N_EQK = common dso_local global i32 0, align 4
@N_HLF = common dso_local global i32 0, align 4
@N_I16 = common dso_local global i32 0, align 4
@N_I32 = common dso_local global i32 0, align 4
@N_I64 = common dso_local global i32 0, align 4
@N_KEY = common dso_local global i32 0, align 4
@inst = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@N_MNEM_vmovn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"immediate out of range for narrowing operation\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_neon_rshift_narrow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_neon_rshift_narrow() #0 {
  %1 = alloca %struct.neon_type_el, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @NS_DQI, align 4
  %4 = load i32, i32* @N_EQK, align 4
  %5 = load i32, i32* @N_HLF, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @N_I16, align 4
  %8 = load i32, i32* @N_I32, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @N_I64, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @N_KEY, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @neon_check_type(i32 2, i32 %3, i32 %6, i32 %13)
  %15 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %1, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 2
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %2, align 4
  %20 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %1, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sdiv i32 %21, 2
  store i32 %22, i32* %20, align 4
  %23 = load i32, i32* %2, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 2
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = load i32, i32* @N_MNEM_vmovn, align 4
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %30 = call i32 (...) @do_neon_movn()
  br label %52

31:                                               ; preds = %0
  %32 = load i32, i32* %2, align 4
  %33 = icmp slt i32 %32, 1
  br i1 %33, label %39, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %2, align 4
  %36 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %1, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ugt i32 %35, %37
  br label %39

39:                                               ; preds = %34, %31
  %40 = phi i1 [ true, %31 ], [ %38, %34 ]
  %41 = zext i1 %40 to i32
  %42 = call i32 @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %43 = call i32 @constraint(i32 %41, i32 %42)
  %44 = load i32, i32* @FALSE, align 4
  %45 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %1, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %2, align 4
  %48 = sub nsw i32 %46, %47
  %49 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %1, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @neon_imm_shift(i32 %44, i32 0, i32 0, i32 %50, i32 %48)
  br label %52

52:                                               ; preds = %39, %25
  ret void
}

declare dso_local i32 @neon_check_type(i32, i32, i32, i32) #1

declare dso_local i32 @do_neon_movn(...) #1

declare dso_local i32 @constraint(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @neon_imm_shift(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
