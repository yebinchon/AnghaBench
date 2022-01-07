; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_neon_mac_reg_scalar_long.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_neon_mac_reg_scalar_long.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.neon_type_el = type { i64, i32 }

@inst = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@NS_QDS = common dso_local global i32 0, align 4
@N_EQK = common dso_local global i32 0, align 4
@N_DBL = common dso_local global i32 0, align 4
@N_KEY = common dso_local global i32 0, align 4
@NT_unsigned = common dso_local global i64 0, align 8
@NS_QDD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @neon_mac_reg_scalar_long to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @neon_mac_reg_scalar_long(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.neon_type_el, align 8
  %6 = alloca %struct.neon_type_el, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i64 2
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %40

12:                                               ; preds = %2
  %13 = load i32, i32* @NS_QDS, align 4
  %14 = load i32, i32* @N_EQK, align 4
  %15 = load i32, i32* @N_DBL, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @N_EQK, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @N_KEY, align 4
  %20 = or i32 %18, %19
  %21 = call { i64, i32 } @neon_check_type(i32 3, i32 %13, i32 %16, i32 %17, i32 %20)
  %22 = bitcast %struct.neon_type_el* %5 to { i64, i32 }*
  %23 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %22, i32 0, i32 0
  %24 = extractvalue { i64, i32 } %21, 0
  store i64 %24, i64* %23, align 8
  %25 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %22, i32 0, i32 1
  %26 = extractvalue { i64, i32 } %21, 1
  store i32 %26, i32* %25, align 8
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %28 = call i32 @NEON_ENC_SCALAR(i32 %27)
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %29 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %5, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @NT_unsigned, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = bitcast %struct.neon_type_el* %5 to { i64, i32 }*
  %35 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %34, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @neon_mul_mac(i64 %36, i32 %38, i32 %33)
  br label %65

40:                                               ; preds = %2
  %41 = load i32, i32* @NS_QDD, align 4
  %42 = load i32, i32* @N_EQK, align 4
  %43 = load i32, i32* @N_DBL, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @N_EQK, align 4
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @N_KEY, align 4
  %48 = or i32 %46, %47
  %49 = call { i64, i32 } @neon_check_type(i32 3, i32 %41, i32 %44, i32 %45, i32 %48)
  %50 = bitcast %struct.neon_type_el* %6 to { i64, i32 }*
  %51 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %50, i32 0, i32 0
  %52 = extractvalue { i64, i32 } %49, 0
  store i64 %52, i64* %51, align 8
  %53 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %50, i32 0, i32 1
  %54 = extractvalue { i64, i32 } %49, 1
  store i32 %54, i32* %53, align 8
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %56 = call i32 @NEON_ENC_INTEGER(i32 %55)
  store i32 %56, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %57 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %6, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = bitcast %struct.neon_type_el* %6 to { i64, i32 }*
  %60 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %59, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @neon_mixed_length(i64 %61, i32 %63, i32 %58)
  br label %65

65:                                               ; preds = %40, %12
  ret void
}

declare dso_local { i64, i32 } @neon_check_type(i32, i32, i32, i32, i32) #1

declare dso_local i32 @NEON_ENC_SCALAR(i32) #1

declare dso_local i32 @neon_mul_mac(i64, i32, i32) #1

declare dso_local i32 @NEON_ENC_INTEGER(i32) #1

declare dso_local i32 @neon_mixed_length(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
