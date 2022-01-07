; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_neon_vmull.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_neon_vmull.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.neon_type_el = type { i64, i32 }

@inst = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@NS_QDD = common dso_local global i32 0, align 4
@N_EQK = common dso_local global i32 0, align 4
@N_DBL = common dso_local global i32 0, align 4
@N_SU_32 = common dso_local global i32 0, align 4
@N_P8 = common dso_local global i32 0, align 4
@N_KEY = common dso_local global i32 0, align 4
@NT_poly = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_neon_vmull to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_neon_vmull() #0 {
  %1 = alloca %struct.neon_type_el, align 8
  %2 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %3 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i64 2
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = call i32 (...) @do_neon_mac_maybe_scalar_long()
  br label %45

9:                                                ; preds = %0
  %10 = load i32, i32* @NS_QDD, align 4
  %11 = load i32, i32* @N_EQK, align 4
  %12 = load i32, i32* @N_DBL, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @N_EQK, align 4
  %15 = load i32, i32* @N_SU_32, align 4
  %16 = load i32, i32* @N_P8, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @N_KEY, align 4
  %19 = or i32 %17, %18
  %20 = call { i64, i32 } @neon_check_type(i32 3, i32 %10, i32 %13, i32 %14, i32 %19)
  %21 = bitcast %struct.neon_type_el* %1 to { i64, i32 }*
  %22 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %21, i32 0, i32 0
  %23 = extractvalue { i64, i32 } %20, 0
  store i64 %23, i64* %22, align 8
  %24 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %21, i32 0, i32 1
  %25 = extractvalue { i64, i32 } %20, 1
  store i32 %25, i32* %24, align 8
  %26 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %1, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @NT_poly, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %9
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %32 = call i32 @NEON_ENC_POLY(i32 %31)
  store i32 %32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  br label %36

33:                                               ; preds = %9
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %35 = call i32 @NEON_ENC_INTEGER(i32 %34)
  store i32 %35, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  br label %36

36:                                               ; preds = %33, %30
  %37 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %1, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = bitcast %struct.neon_type_el* %1 to { i64, i32 }*
  %40 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %39, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @neon_mixed_length(i64 %41, i32 %43, i32 %38)
  br label %45

45:                                               ; preds = %36, %7
  ret void
}

declare dso_local i32 @do_neon_mac_maybe_scalar_long(...) #1

declare dso_local { i64, i32 } @neon_check_type(i32, i32, i32, i32, i32) #1

declare dso_local i32 @NEON_ENC_POLY(i32) #1

declare dso_local i32 @NEON_ENC_INTEGER(i32) #1

declare dso_local i32 @neon_mixed_length(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
