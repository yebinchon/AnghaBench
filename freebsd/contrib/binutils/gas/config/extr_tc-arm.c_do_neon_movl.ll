; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_neon_movl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_neon_movl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.neon_type_el = type { i32, i64 }

@NS_QD = common dso_local global i32 0, align 4
@N_EQK = common dso_local global i32 0, align 4
@N_DBL = common dso_local global i32 0, align 4
@N_SU_32 = common dso_local global i32 0, align 4
@N_KEY = common dso_local global i32 0, align 4
@inst = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@NT_unsigned = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_neon_movl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_neon_movl() #0 {
  %1 = alloca %struct.neon_type_el, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @NS_QD, align 4
  %4 = load i32, i32* @N_EQK, align 4
  %5 = load i32, i32* @N_DBL, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @N_SU_32, align 4
  %8 = load i32, i32* @N_KEY, align 4
  %9 = or i32 %7, %8
  %10 = call { i32, i64 } @neon_check_type(i32 2, i32 %3, i32 %6, i32 %9)
  %11 = bitcast %struct.neon_type_el* %1 to { i32, i64 }*
  %12 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %11, i32 0, i32 0
  %13 = extractvalue { i32, i64 } %10, 0
  store i32 %13, i32* %12, align 8
  %14 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %11, i32 0, i32 1
  %15 = extractvalue { i32, i64 } %10, 1
  store i64 %15, i64* %14, align 8
  %16 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %1, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = ashr i32 %17, 3
  store i32 %18, i32* %2, align 4
  %19 = load i32, i32* %2, align 4
  %20 = shl i32 %19, 19
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 4
  %23 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %1, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @NT_unsigned, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @neon_two_same(i32 0, i32 %27, i32 -1)
  ret void
}

declare dso_local { i32, i64 } @neon_check_type(i32, i32, i32, i32) #1

declare dso_local i32 @neon_two_same(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
