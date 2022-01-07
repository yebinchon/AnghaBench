; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_neon_rshl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_neon_rshl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.neon_type_el = type { i64, i32 }

@NS_DDD = common dso_local global i32 0, align 4
@NS_QQQ = common dso_local global i32 0, align 4
@NS_NULL = common dso_local global i32 0, align 4
@N_EQK = common dso_local global i32 0, align 4
@N_SU_ALL = common dso_local global i32 0, align 4
@N_KEY = common dso_local global i32 0, align 4
@inst = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@NT_unsigned = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_neon_rshl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_neon_rshl() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.neon_type_el, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @NS_DDD, align 4
  %5 = load i32, i32* @NS_QQQ, align 4
  %6 = load i32, i32* @NS_NULL, align 4
  %7 = call i32 @neon_select_shape(i32 %4, i32 %5, i32 %6)
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* %1, align 4
  %9 = load i32, i32* @N_EQK, align 4
  %10 = load i32, i32* @N_EQK, align 4
  %11 = load i32, i32* @N_SU_ALL, align 4
  %12 = load i32, i32* @N_KEY, align 4
  %13 = or i32 %11, %12
  %14 = call { i64, i32 } @neon_check_type(i32 3, i32 %8, i32 %9, i32 %10, i32 %13)
  %15 = bitcast %struct.neon_type_el* %2 to { i64, i32 }*
  %16 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i32 0, i32 0
  %17 = extractvalue { i64, i32 } %14, 0
  store i64 %17, i64* %16, align 8
  %18 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i32 0, i32 1
  %19 = extractvalue { i64, i32 } %14, 1
  store i32 %19, i32* %18, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i64 2
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %3, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 2
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* %3, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* %1, align 4
  %36 = call i32 @neon_quad(i32 %35)
  %37 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %2, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @NT_unsigned, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %2, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @neon_three_same(i32 %36, i32 %41, i32 %43)
  ret void
}

declare dso_local i32 @neon_select_shape(i32, i32, i32) #1

declare dso_local { i64, i32 } @neon_check_type(i32, i32, i32, i32, i32) #1

declare dso_local i32 @neon_three_same(i32, i32, i32) #1

declare dso_local i32 @neon_quad(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
