; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_neon_abs_neg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_neon_abs_neg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.neon_type_el = type { i64, i32 }

@do_vfp_nsyn_abs_neg = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i64 0, align 8
@NEON_CHECK_CC = common dso_local global i32 0, align 4
@NEON_CHECK_ARCH = common dso_local global i32 0, align 4
@FAIL = common dso_local global i64 0, align 8
@NS_DD = common dso_local global i32 0, align 4
@NS_QQ = common dso_local global i32 0, align 4
@NS_NULL = common dso_local global i32 0, align 4
@N_EQK = common dso_local global i32 0, align 4
@N_S8 = common dso_local global i32 0, align 4
@N_S16 = common dso_local global i32 0, align 4
@N_S32 = common dso_local global i32 0, align 4
@N_F32 = common dso_local global i32 0, align 4
@N_KEY = common dso_local global i32 0, align 4
@inst = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@NT_float = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_neon_abs_neg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_neon_abs_neg() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.neon_type_el, align 8
  %3 = alloca %struct.neon_type_el, align 8
  %4 = load i32, i32* @do_vfp_nsyn_abs_neg, align 4
  %5 = call i64 @try_vfp_nsyn(i32 2, i32 %4)
  %6 = load i64, i64* @SUCCESS, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  br label %93

9:                                                ; preds = %0
  %10 = load i32, i32* @NEON_CHECK_CC, align 4
  %11 = load i32, i32* @NEON_CHECK_ARCH, align 4
  %12 = or i32 %10, %11
  %13 = call i64 @vfp_or_neon_is_neon(i32 %12)
  %14 = load i64, i64* @FAIL, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  br label %93

17:                                               ; preds = %9
  %18 = load i32, i32* @NS_DD, align 4
  %19 = load i32, i32* @NS_QQ, align 4
  %20 = load i32, i32* @NS_NULL, align 4
  %21 = call i32 @neon_select_shape(i32 %18, i32 %19, i32 %20)
  store i32 %21, i32* %1, align 4
  %22 = load i32, i32* %1, align 4
  %23 = load i32, i32* @N_EQK, align 4
  %24 = load i32, i32* @N_S8, align 4
  %25 = load i32, i32* @N_S16, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @N_S32, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @N_F32, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @N_KEY, align 4
  %32 = or i32 %30, %31
  %33 = call { i64, i32 } @neon_check_type(i32 2, i32 %22, i32 %23, i32 %32)
  %34 = bitcast %struct.neon_type_el* %3 to { i64, i32 }*
  %35 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %34, i32 0, i32 0
  %36 = extractvalue { i64, i32 } %33, 0
  store i64 %36, i64* %35, align 8
  %37 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %34, i32 0, i32 1
  %38 = extractvalue { i64, i32 } %33, 1
  store i32 %38, i32* %37, align 8
  %39 = bitcast %struct.neon_type_el* %2 to i8*
  %40 = bitcast %struct.neon_type_el* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %39, i8* align 8 %40, i64 16, i1 false)
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @LOW4(i32 %44)
  %46 = shl i32 %45, 12
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %48 = or i32 %47, %46
  store i32 %48, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @HI1(i32 %52)
  %54 = shl i32 %53, 22
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %56 = or i32 %55, %54
  store i32 %56, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i64 1
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @LOW4(i32 %60)
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %63 = or i32 %62, %61
  store i32 %63, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i64 1
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @HI1(i32 %67)
  %69 = shl i32 %68, 5
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %71 = or i32 %70, %69
  store i32 %71, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %72 = load i32, i32* %1, align 4
  %73 = call i32 @neon_quad(i32 %72)
  %74 = shl i32 %73, 6
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %76 = or i32 %75, %74
  store i32 %76, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %77 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %2, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @NT_float, align 8
  %80 = icmp eq i64 %78, %79
  %81 = zext i1 %80 to i32
  %82 = shl i32 %81, 10
  %83 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %84 = or i32 %83, %82
  store i32 %84, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %85 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %2, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @neon_logbits(i32 %86)
  %88 = shl i32 %87, 18
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %90 = or i32 %89, %88
  store i32 %90, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %92 = call i32 @neon_dp_fixup(i32 %91)
  store i32 %92, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  br label %93

93:                                               ; preds = %17, %16, %8
  ret void
}

declare dso_local i64 @try_vfp_nsyn(i32, i32) #1

declare dso_local i64 @vfp_or_neon_is_neon(i32) #1

declare dso_local i32 @neon_select_shape(i32, i32, i32) #1

declare dso_local { i64, i32 } @neon_check_type(i32, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @LOW4(i32) #1

declare dso_local i32 @HI1(i32) #1

declare dso_local i32 @neon_quad(i32) #1

declare dso_local i32 @neon_logbits(i32) #1

declare dso_local i32 @neon_dp_fixup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
