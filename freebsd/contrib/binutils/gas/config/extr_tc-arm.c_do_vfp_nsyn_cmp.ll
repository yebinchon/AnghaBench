; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_vfp_nsyn_cmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_vfp_nsyn_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@inst = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@NS_FF = common dso_local global i32 0, align 4
@NS_DD = common dso_local global i32 0, align 4
@NS_NULL = common dso_local global i32 0, align 4
@N_EQK = common dso_local global i32 0, align 4
@N_VFP = common dso_local global i32 0, align 4
@N_F32 = common dso_local global i32 0, align 4
@N_F64 = common dso_local global i32 0, align 4
@N_KEY = common dso_local global i32 0, align 4
@NS_FI = common dso_local global i32 0, align 4
@NS_DI = common dso_local global i32 0, align 4
@N_MNEM_vcmpz = common dso_local global i32 0, align 4
@N_MNEM_vcmpez = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_vfp_nsyn_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_vfp_nsyn_cmp() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i64 1
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %39

8:                                                ; preds = %0
  %9 = load i32, i32* @NS_FF, align 4
  %10 = load i32, i32* @NS_DD, align 4
  %11 = load i32, i32* @NS_NULL, align 4
  %12 = call i32 @neon_select_shape(i32 %9, i32 %10, i32 %11)
  store i32 %12, i32* %1, align 4
  %13 = load i32, i32* %1, align 4
  %14 = load i32, i32* @N_EQK, align 4
  %15 = load i32, i32* @N_VFP, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @N_F32, align 4
  %18 = load i32, i32* @N_F64, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @N_KEY, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @N_VFP, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @neon_check_type(i32 2, i32 %13, i32 %16, i32 %23)
  %25 = load i32, i32* %1, align 4
  %26 = load i32, i32* @NS_FF, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %8
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %30 = call i8* @NEON_ENC_SINGLE(i32 %29)
  %31 = ptrtoint i8* %30 to i32
  store i32 %31, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %32 = call i32 (...) @do_vfp_sp_monadic()
  br label %38

33:                                               ; preds = %8
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %35 = call i8* @NEON_ENC_DOUBLE(i32 %34)
  %36 = ptrtoint i8* %35 to i32
  store i32 %36, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %37 = call i32 (...) @do_vfp_dp_rd_rm()
  br label %38

38:                                               ; preds = %33, %28
  br label %83

39:                                               ; preds = %0
  %40 = load i32, i32* @NS_FI, align 4
  %41 = load i32, i32* @NS_DI, align 4
  %42 = load i32, i32* @NS_NULL, align 4
  %43 = call i32 @neon_select_shape(i32 %40, i32 %41, i32 %42)
  store i32 %43, i32* %2, align 4
  %44 = load i32, i32* %2, align 4
  %45 = load i32, i32* @N_F32, align 4
  %46 = load i32, i32* @N_F64, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @N_KEY, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @N_VFP, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @N_EQK, align 4
  %53 = call i32 @neon_check_type(i32 2, i32 %44, i32 %51, i32 %52)
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %55 = and i32 %54, 268435455
  switch i32 %55, label %66 [
    i32 129, label %56
    i32 128, label %61
  ]

56:                                               ; preds = %39
  %57 = load i32, i32* @N_MNEM_vcmpz, align 4
  %58 = sub nsw i32 %57, 129
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %60 = add nsw i32 %59, %58
  store i32 %60, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  br label %68

61:                                               ; preds = %39
  %62 = load i32, i32* @N_MNEM_vcmpez, align 4
  %63 = sub nsw i32 %62, 128
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %65 = add nsw i32 %64, %63
  store i32 %65, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  br label %68

66:                                               ; preds = %39
  %67 = call i32 (...) @abort() #3
  unreachable

68:                                               ; preds = %61, %56
  %69 = load i32, i32* %2, align 4
  %70 = load i32, i32* @NS_FI, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %68
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %74 = call i8* @NEON_ENC_SINGLE(i32 %73)
  %75 = ptrtoint i8* %74 to i32
  store i32 %75, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %76 = call i32 (...) @do_vfp_sp_compare_z()
  br label %82

77:                                               ; preds = %68
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %79 = call i8* @NEON_ENC_DOUBLE(i32 %78)
  %80 = ptrtoint i8* %79 to i32
  store i32 %80, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %81 = call i32 (...) @do_vfp_dp_rd()
  br label %82

82:                                               ; preds = %77, %72
  br label %83

83:                                               ; preds = %82, %38
  %84 = call i32 (...) @do_vfp_cond_or_thumb()
  ret void
}

declare dso_local i32 @neon_select_shape(i32, i32, i32) #1

declare dso_local i32 @neon_check_type(i32, i32, i32, i32) #1

declare dso_local i8* @NEON_ENC_SINGLE(i32) #1

declare dso_local i32 @do_vfp_sp_monadic(...) #1

declare dso_local i8* @NEON_ENC_DOUBLE(i32) #1

declare dso_local i32 @do_vfp_dp_rd_rm(...) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @do_vfp_sp_compare_z(...) #1

declare dso_local i32 @do_vfp_dp_rd(...) #1

declare dso_local i32 @do_vfp_cond_or_thumb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
