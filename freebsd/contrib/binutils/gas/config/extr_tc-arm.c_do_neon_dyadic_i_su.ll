; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_neon_dyadic_i_su.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_neon_dyadic_i_su.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neon_type_el = type { i64, i32 }

@NS_DDD = common dso_local global i32 0, align 4
@NS_QQQ = common dso_local global i32 0, align 4
@NS_NULL = common dso_local global i32 0, align 4
@N_EQK = common dso_local global i32 0, align 4
@N_SU_32 = common dso_local global i32 0, align 4
@N_KEY = common dso_local global i32 0, align 4
@NT_unsigned = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_neon_dyadic_i_su to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_neon_dyadic_i_su() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.neon_type_el, align 8
  %3 = load i32, i32* @NS_DDD, align 4
  %4 = load i32, i32* @NS_QQQ, align 4
  %5 = load i32, i32* @NS_NULL, align 4
  %6 = call i32 @neon_select_shape(i32 %3, i32 %4, i32 %5)
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @N_EQK, align 4
  %9 = load i32, i32* @N_EQK, align 4
  %10 = load i32, i32* @N_SU_32, align 4
  %11 = load i32, i32* @N_KEY, align 4
  %12 = or i32 %10, %11
  %13 = call { i64, i32 } @neon_check_type(i32 3, i32 %7, i32 %8, i32 %9, i32 %12)
  %14 = bitcast %struct.neon_type_el* %2 to { i64, i32 }*
  %15 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i32 0, i32 0
  %16 = extractvalue { i64, i32 } %13, 0
  store i64 %16, i64* %15, align 8
  %17 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i32 0, i32 1
  %18 = extractvalue { i64, i32 } %13, 1
  store i32 %18, i32* %17, align 8
  %19 = load i32, i32* %1, align 4
  %20 = call i32 @neon_quad(i32 %19)
  %21 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %2, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @NT_unsigned, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %2, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @neon_three_same(i32 %20, i32 %25, i32 %27)
  ret void
}

declare dso_local i32 @neon_select_shape(i32, i32, i32) #1

declare dso_local { i64, i32 } @neon_check_type(i32, i32, i32, i32, i32) #1

declare dso_local i32 @neon_three_same(i32, i32, i32) #1

declare dso_local i32 @neon_quad(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
