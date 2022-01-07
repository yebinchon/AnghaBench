; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_neon_dyadic_misc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_neon_dyadic_misc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.neon_type_el = type { i64, i32 }

@NS_DDD = common dso_local global i32 0, align 4
@NS_QQQ = common dso_local global i32 0, align 4
@NS_NULL = common dso_local global i32 0, align 4
@N_EQK = common dso_local global i32 0, align 4
@N_KEY = common dso_local global i32 0, align 4
@NT_float = common dso_local global i64 0, align 8
@inst = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @neon_dyadic_misc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @neon_dyadic_misc(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.neon_type_el, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @NS_DDD, align 4
  %10 = load i32, i32* @NS_QQQ, align 4
  %11 = load i32, i32* @NS_NULL, align 4
  %12 = call i32 @neon_select_shape(i32 %9, i32 %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @N_EQK, align 4
  %15 = load i32, i32* %6, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @N_EQK, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @N_KEY, align 4
  %20 = or i32 %18, %19
  %21 = call { i64, i32 } @neon_check_type(i32 3, i32 %13, i32 %16, i32 %17, i32 %20)
  %22 = bitcast %struct.neon_type_el* %8 to { i64, i32 }*
  %23 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %22, i32 0, i32 0
  %24 = extractvalue { i64, i32 } %21, 0
  store i64 %24, i64* %23, align 8
  %25 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %22, i32 0, i32 1
  %26 = extractvalue { i64, i32 } %21, 1
  store i32 %26, i32* %25, align 8
  %27 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %8, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @NT_float, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %3
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 4
  %33 = call i32 @NEON_ENC_FLOAT(i32 %32)
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @neon_quad(i32 %34)
  %36 = call i32 @neon_three_same(i32 %35, i32 0, i32 -1)
  br label %51

37:                                               ; preds = %3
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 4
  %39 = call i32 @NEON_ENC_INTEGER(i32 %38)
  store i32 %39, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @neon_quad(i32 %40)
  %42 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %8, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = zext i32 %44 to i64
  %46 = icmp eq i64 %43, %45
  %47 = zext i1 %46 to i32
  %48 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %8, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @neon_three_same(i32 %41, i32 %47, i32 %49)
  br label %51

51:                                               ; preds = %37, %31
  ret void
}

declare dso_local i32 @neon_select_shape(i32, i32, i32) #1

declare dso_local { i64, i32 } @neon_check_type(i32, i32, i32, i32, i32) #1

declare dso_local i32 @NEON_ENC_FLOAT(i32) #1

declare dso_local i32 @neon_three_same(i32, i32, i32) #1

declare dso_local i32 @neon_quad(i32) #1

declare dso_local i32 @NEON_ENC_INTEGER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
