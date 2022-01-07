; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_neon_shll.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_neon_shll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.neon_type_el = type { i32, i64 }

@NS_QDI = common dso_local global i32 0, align 4
@N_EQK = common dso_local global i32 0, align 4
@N_DBL = common dso_local global i32 0, align 4
@N_I8 = common dso_local global i32 0, align 4
@N_I16 = common dso_local global i32 0, align 4
@N_I32 = common dso_local global i32 0, align 4
@N_KEY = common dso_local global i32 0, align 4
@inst = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@N_SU_32 = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@NT_unsigned = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_neon_shll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_neon_shll() #0 {
  %1 = alloca %struct.neon_type_el, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.neon_type_el, align 8
  %4 = load i32, i32* @NS_QDI, align 4
  %5 = load i32, i32* @N_EQK, align 4
  %6 = load i32, i32* @N_DBL, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @N_I8, align 4
  %9 = load i32, i32* @N_I16, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @N_I32, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @N_KEY, align 4
  %14 = or i32 %12, %13
  %15 = call { i32, i64 } @neon_check_type(i32 2, i32 %4, i32 %7, i32 %14)
  %16 = bitcast %struct.neon_type_el* %1 to { i32, i64 }*
  %17 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %16, i32 0, i32 0
  %18 = extractvalue { i32, i64 } %15, 0
  store i32 %18, i32* %17, align 8
  %19 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %16, i32 0, i32 1
  %20 = extractvalue { i32, i64 } %15, 1
  store i64 %20, i64* %19, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 2
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %2, align 4
  %25 = load i32, i32* %2, align 4
  %26 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %1, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %71

29:                                               ; preds = %0
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %31 = call i32 @NEON_ENC_INTEGER(i32 %30)
  store i32 %31, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @LOW4(i32 %35)
  %37 = shl i32 %36, 12
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %39 = or i32 %38, %37
  store i32 %39, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @HI1(i32 %43)
  %45 = shl i32 %44, 22
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %47 = or i32 %46, %45
  store i32 %47, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @LOW4(i32 %51)
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %54 = or i32 %53, %52
  store i32 %54, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i64 1
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @HI1(i32 %58)
  %60 = shl i32 %59, 5
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %62 = or i32 %61, %60
  store i32 %62, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %63 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %1, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @neon_logbits(i32 %64)
  %66 = shl i32 %65, 18
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %68 = or i32 %67, %66
  store i32 %68, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %70 = call i32 @neon_dp_fixup(i32 %69)
  store i32 %70, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  br label %102

71:                                               ; preds = %0
  %72 = load i32, i32* @NS_QDI, align 4
  %73 = load i32, i32* @N_EQK, align 4
  %74 = load i32, i32* @N_DBL, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @N_SU_32, align 4
  %77 = load i32, i32* @N_KEY, align 4
  %78 = or i32 %76, %77
  %79 = call { i32, i64 } @neon_check_type(i32 2, i32 %72, i32 %75, i32 %78)
  %80 = bitcast %struct.neon_type_el* %3 to { i32, i64 }*
  %81 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %80, i32 0, i32 0
  %82 = extractvalue { i32, i64 } %79, 0
  store i32 %82, i32* %81, align 8
  %83 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %80, i32 0, i32 1
  %84 = extractvalue { i32, i64 } %79, 1
  store i64 %84, i64* %83, align 8
  %85 = bitcast %struct.neon_type_el* %1 to i8*
  %86 = bitcast %struct.neon_type_el* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %85, i8* align 8 %86, i64 16, i1 false)
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %88 = call i32 @NEON_ENC_IMMED(i32 %87)
  store i32 %88, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %89 = load i32, i32* @TRUE, align 4
  %90 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %1, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @NT_unsigned, align 8
  %93 = icmp eq i64 %91, %92
  %94 = zext i1 %93 to i32
  %95 = load i32, i32* %2, align 4
  %96 = bitcast %struct.neon_type_el* %1 to { i32, i64 }*
  %97 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %96, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @neon_imm_shift(i32 %89, i32 %94, i32 0, i32 %98, i64 %100, i32 %95)
  br label %102

102:                                              ; preds = %71, %29
  ret void
}

declare dso_local { i32, i64 } @neon_check_type(i32, i32, i32, i32) #1

declare dso_local i32 @NEON_ENC_INTEGER(i32) #1

declare dso_local i32 @LOW4(i32) #1

declare dso_local i32 @HI1(i32) #1

declare dso_local i32 @neon_logbits(i32) #1

declare dso_local i32 @neon_dp_fixup(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @NEON_ENC_IMMED(i32) #1

declare dso_local i32 @neon_imm_shift(i32, i32, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
