; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_neon_dyadic_narrow.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_neon_dyadic_narrow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neon_type_el = type { i32, i32 }

@NS_QDD = common dso_local global i32 0, align 4
@N_EQK = common dso_local global i32 0, align 4
@N_DBL = common dso_local global i32 0, align 4
@N_I16 = common dso_local global i32 0, align 4
@N_I32 = common dso_local global i32 0, align 4
@N_I64 = common dso_local global i32 0, align 4
@N_KEY = common dso_local global i32 0, align 4
@NT_integer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_neon_dyadic_narrow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_neon_dyadic_narrow() #0 {
  %1 = alloca %struct.neon_type_el, align 4
  %2 = load i32, i32* @NS_QDD, align 4
  %3 = load i32, i32* @N_EQK, align 4
  %4 = load i32, i32* @N_DBL, align 4
  %5 = or i32 %3, %4
  %6 = load i32, i32* @N_EQK, align 4
  %7 = load i32, i32* @N_I16, align 4
  %8 = load i32, i32* @N_I32, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @N_I64, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @N_KEY, align 4
  %13 = or i32 %11, %12
  %14 = call i64 @neon_check_type(i32 3, i32 %2, i32 %5, i32 %6, i32 %13)
  %15 = bitcast %struct.neon_type_el* %1 to i64*
  store i64 %14, i64* %15, align 4
  %16 = load i32, i32* @NT_integer, align 4
  %17 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %1, i32 0, i32 1
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %1, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sdiv i32 %19, 2
  %21 = bitcast %struct.neon_type_el* %1 to i64*
  %22 = load i64, i64* %21, align 4
  %23 = call i32 @neon_mixed_length(i64 %22, i32 %20)
  ret void
}

declare dso_local i64 @neon_check_type(i32, i32, i32, i32, i32) #1

declare dso_local i32 @neon_mixed_length(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
