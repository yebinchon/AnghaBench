; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_neon_qdmulh.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_neon_qdmulh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.neon_type_el = type { i32 }

@inst = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@NS_DDS = common dso_local global i32 0, align 4
@NS_QQS = common dso_local global i32 0, align 4
@NS_NULL = common dso_local global i32 0, align 4
@N_EQK = common dso_local global i32 0, align 4
@N_S16 = common dso_local global i32 0, align 4
@N_S32 = common dso_local global i32 0, align 4
@N_KEY = common dso_local global i32 0, align 4
@NS_DDD = common dso_local global i32 0, align 4
@NS_QQQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_neon_qdmulh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_neon_qdmulh() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.neon_type_el, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.neon_type_el, align 4
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i64 2
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %32

10:                                               ; preds = %0
  %11 = load i32, i32* @NS_DDS, align 4
  %12 = load i32, i32* @NS_QQS, align 4
  %13 = load i32, i32* @NS_NULL, align 4
  %14 = call i32 @neon_select_shape(i32 %11, i32 %12, i32 %13)
  store i32 %14, i32* %1, align 4
  %15 = load i32, i32* %1, align 4
  %16 = load i32, i32* @N_EQK, align 4
  %17 = load i32, i32* @N_EQK, align 4
  %18 = load i32, i32* @N_S16, align 4
  %19 = load i32, i32* @N_S32, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @N_KEY, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @neon_check_type(i32 3, i32 %15, i32 %16, i32 %17, i32 %22)
  %24 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %2, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %26 = call i32 @NEON_ENC_SCALAR(i32 %25)
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %27 = load i32, i32* %1, align 4
  %28 = call i32 @neon_quad(i32 %27)
  %29 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %2, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @neon_mul_mac(i32 %30, i32 %28)
  br label %54

32:                                               ; preds = %0
  %33 = load i32, i32* @NS_DDD, align 4
  %34 = load i32, i32* @NS_QQQ, align 4
  %35 = load i32, i32* @NS_NULL, align 4
  %36 = call i32 @neon_select_shape(i32 %33, i32 %34, i32 %35)
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @N_EQK, align 4
  %39 = load i32, i32* @N_EQK, align 4
  %40 = load i32, i32* @N_S16, align 4
  %41 = load i32, i32* @N_S32, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @N_KEY, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @neon_check_type(i32 3, i32 %37, i32 %38, i32 %39, i32 %44)
  %46 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %4, i32 0, i32 0
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %48 = call i32 @NEON_ENC_INTEGER(i32 %47)
  store i32 %48, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @neon_quad(i32 %49)
  %51 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %4, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @neon_three_same(i32 %50, i32 0, i32 %52)
  br label %54

54:                                               ; preds = %32, %10
  ret void
}

declare dso_local i32 @neon_select_shape(i32, i32, i32) #1

declare dso_local i32 @neon_check_type(i32, i32, i32, i32, i32) #1

declare dso_local i32 @NEON_ENC_SCALAR(i32) #1

declare dso_local i32 @neon_mul_mac(i32, i32) #1

declare dso_local i32 @neon_quad(i32) #1

declare dso_local i32 @NEON_ENC_INTEGER(i32) #1

declare dso_local i32 @neon_three_same(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
