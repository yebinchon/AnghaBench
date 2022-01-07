; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_neon_qshl_imm.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_neon_qshl_imm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.neon_type_el = type { i64, i32 }

@inst = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@NS_DDI = common dso_local global i32 0, align 4
@NS_QQI = common dso_local global i32 0, align 4
@NS_NULL = common dso_local global i32 0, align 4
@N_EQK = common dso_local global i32 0, align 4
@N_SU_ALL = common dso_local global i32 0, align 4
@N_KEY = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@NT_unsigned = common dso_local global i64 0, align 8
@NS_DDD = common dso_local global i32 0, align 4
@NS_QQQ = common dso_local global i32 0, align 4
@N_SGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_neon_qshl_imm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_neon_qshl_imm() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.neon_type_el, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.neon_type_el, align 8
  %5 = alloca i32, align 4
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i64 2
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %47, label %11

11:                                               ; preds = %0
  %12 = load i32, i32* @NS_DDI, align 4
  %13 = load i32, i32* @NS_QQI, align 4
  %14 = load i32, i32* @NS_NULL, align 4
  %15 = call i32 @neon_select_shape(i32 %12, i32 %13, i32 %14)
  store i32 %15, i32* %1, align 4
  %16 = load i32, i32* %1, align 4
  %17 = load i32, i32* @N_EQK, align 4
  %18 = load i32, i32* @N_SU_ALL, align 4
  %19 = load i32, i32* @N_KEY, align 4
  %20 = or i32 %18, %19
  %21 = call { i64, i32 } (i32, i32, i32, i32, ...) @neon_check_type(i32 2, i32 %16, i32 %17, i32 %20)
  %22 = bitcast %struct.neon_type_el* %2 to { i64, i32 }*
  %23 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %22, i32 0, i32 0
  %24 = extractvalue { i64, i32 } %21, 0
  store i64 %24, i64* %23, align 8
  %25 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %22, i32 0, i32 1
  %26 = extractvalue { i64, i32 } %21, 1
  store i32 %26, i32* %25, align 8
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %28 = call i32 @NEON_ENC_IMMED(i32 %27)
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %29 = load i32, i32* @TRUE, align 4
  %30 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %2, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @NT_unsigned, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = load i32, i32* %1, align 4
  %36 = call i32 @neon_quad(i32 %35)
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 2
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = bitcast %struct.neon_type_el* %2 to { i64, i32 }*
  %42 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %41, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @neon_imm_shift(i32 %29, i32 %34, i32 %36, i64 %43, i32 %45, i32 %40)
  br label %93

47:                                               ; preds = %0
  %48 = load i32, i32* @NS_DDD, align 4
  %49 = load i32, i32* @NS_QQQ, align 4
  %50 = load i32, i32* @NS_NULL, align 4
  %51 = call i32 @neon_select_shape(i32 %48, i32 %49, i32 %50)
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @N_EQK, align 4
  %54 = load i32, i32* @N_SU_ALL, align 4
  %55 = load i32, i32* @N_KEY, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @N_EQK, align 4
  %58 = load i32, i32* @N_SGN, align 4
  %59 = or i32 %57, %58
  %60 = call { i64, i32 } (i32, i32, i32, i32, ...) @neon_check_type(i32 3, i32 %52, i32 %53, i32 %56, i32 %59)
  %61 = bitcast %struct.neon_type_el* %4 to { i64, i32 }*
  %62 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %61, i32 0, i32 0
  %63 = extractvalue { i64, i32 } %60, 0
  store i64 %63, i64* %62, align 8
  %64 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %61, i32 0, i32 1
  %65 = extractvalue { i64, i32 } %60, 1
  store i32 %65, i32* %64, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i64 2
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %5, align 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i64 1
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i64 2
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  store i32 %73, i32* %76, align 4
  %77 = load i32, i32* %5, align 4
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i64 1
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  store i32 %77, i32* %80, align 4
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %82 = call i32 @NEON_ENC_INTEGER(i32 %81)
  store i32 %82, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %83 = load i32, i32* %3, align 4
  %84 = call i32 @neon_quad(i32 %83)
  %85 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %4, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @NT_unsigned, align 8
  %88 = icmp eq i64 %86, %87
  %89 = zext i1 %88 to i32
  %90 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %4, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @neon_three_same(i32 %84, i32 %89, i32 %91)
  br label %93

93:                                               ; preds = %47, %11
  ret void
}

declare dso_local i32 @neon_select_shape(i32, i32, i32) #1

declare dso_local { i64, i32 } @neon_check_type(i32, i32, i32, i32, ...) #1

declare dso_local i32 @NEON_ENC_IMMED(i32) #1

declare dso_local i32 @neon_imm_shift(i32, i32, i32, i64, i32, i32) #1

declare dso_local i32 @neon_quad(i32) #1

declare dso_local i32 @NEON_ENC_INTEGER(i32) #1

declare dso_local i32 @neon_three_same(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
