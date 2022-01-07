; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_try_vfp_nsyn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_try_vfp_nsyn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.neon_type_el = type { i64 }

@NS_FF = common dso_local global i32 0, align 4
@NS_DD = common dso_local global i32 0, align 4
@NS_NULL = common dso_local global i32 0, align 4
@N_EQK = common dso_local global i32 0, align 4
@N_VFP = common dso_local global i32 0, align 4
@N_F32 = common dso_local global i32 0, align 4
@N_F64 = common dso_local global i32 0, align 4
@N_KEY = common dso_local global i32 0, align 4
@NS_FFF = common dso_local global i32 0, align 4
@NS_DDD = common dso_local global i32 0, align 4
@NT_invtype = common dso_local global i64 0, align 8
@SUCCESS = common dso_local global i32 0, align 4
@inst = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, void (i32)*)* @try_vfp_nsyn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_vfp_nsyn(i32 %0, void (i32)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca void (i32)*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.neon_type_el, align 8
  %8 = alloca %struct.neon_type_el, align 8
  %9 = alloca %struct.neon_type_el, align 8
  store i32 %0, i32* %4, align 4
  store void (i32)* %1, void (i32)** %5, align 8
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %54 [
    i32 2, label %11
    i32 3, label %31
  ]

11:                                               ; preds = %2
  %12 = load i32, i32* @NS_FF, align 4
  %13 = load i32, i32* @NS_DD, align 4
  %14 = load i32, i32* @NS_NULL, align 4
  %15 = call i32 @neon_select_shape(i32 %12, i32 %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @N_EQK, align 4
  %18 = load i32, i32* @N_VFP, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @N_F32, align 4
  %21 = load i32, i32* @N_F64, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @N_KEY, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @N_VFP, align 4
  %26 = or i32 %24, %25
  %27 = call i64 (i32, i32, i32, i32, ...) @neon_check_type(i32 2, i32 %16, i32 %19, i32 %26)
  %28 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %8, i32 0, i32 0
  store i64 %27, i64* %28, align 8
  %29 = bitcast %struct.neon_type_el* %7 to i8*
  %30 = bitcast %struct.neon_type_el* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 %30, i64 8, i1 false)
  br label %56

31:                                               ; preds = %2
  %32 = load i32, i32* @NS_FFF, align 4
  %33 = load i32, i32* @NS_DDD, align 4
  %34 = load i32, i32* @NS_NULL, align 4
  %35 = call i32 @neon_select_shape(i32 %32, i32 %33, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @N_EQK, align 4
  %38 = load i32, i32* @N_VFP, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @N_EQK, align 4
  %41 = load i32, i32* @N_VFP, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @N_F32, align 4
  %44 = load i32, i32* @N_F64, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @N_KEY, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @N_VFP, align 4
  %49 = or i32 %47, %48
  %50 = call i64 (i32, i32, i32, i32, ...) @neon_check_type(i32 3, i32 %36, i32 %39, i32 %42, i32 %49)
  %51 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %9, i32 0, i32 0
  store i64 %50, i64* %51, align 8
  %52 = bitcast %struct.neon_type_el* %7 to i8*
  %53 = bitcast %struct.neon_type_el* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %52, i8* align 8 %53, i64 8, i1 false)
  br label %56

54:                                               ; preds = %2
  %55 = call i32 (...) @abort() #4
  unreachable

56:                                               ; preds = %31, %11
  %57 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %7, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @NT_invtype, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load void (i32)*, void (i32)** %5, align 8
  %63 = load i32, i32* %6, align 4
  call void %62(i32 %63)
  %64 = load i32, i32* @SUCCESS, align 4
  store i32 %64, i32* %3, align 4
  br label %68

65:                                               ; preds = %56
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 8
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* @FAIL, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %66, %61
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @neon_select_shape(i32, i32, i32) #1

declare dso_local i64 @neon_check_type(i32, i32, i32, i32, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
