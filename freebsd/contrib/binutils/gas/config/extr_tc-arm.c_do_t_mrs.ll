; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_t_mrs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_t_mrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@SUCCESS = common dso_local global i64 0, align 8
@inst = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@PSR_c = common dso_local global i32 0, align 4
@PSR_x = common dso_local global i32 0, align 4
@PSR_s = common dso_local global i32 0, align 4
@PSR_f = common dso_local global i32 0, align 4
@SPSR_BIT = common dso_local global i32 0, align 4
@cpu_variant = common dso_local global i32 0, align 4
@arm_ext_v7m = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"selected processor does not support requested special purpose register\00", align 1
@arm_ext_v1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [74 x i8] c"selected processor does not support requested special purpose register %x\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"'CPSR' or 'SPSR' expected\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_t_mrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_t_mrs() #0 {
  %1 = alloca i32, align 4
  %2 = call i64 (...) @do_vfp_nsyn_mrs()
  %3 = load i64, i64* @SUCCESS, align 8
  %4 = icmp eq i64 %2, %3
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %73

6:                                                ; preds = %0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i64 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @PSR_c, align 4
  %12 = load i32, i32* @PSR_x, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @PSR_s, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @PSR_f, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @SPSR_BIT, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %10, %19
  store i32 %20, i32* %1, align 4
  %21 = load i32, i32* %1, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %6
  %24 = load i32, i32* @cpu_variant, align 4
  %25 = load i32, i32* @arm_ext_v7m, align 4
  %26 = call i32 @ARM_CPU_HAS_FEATURE(i32 %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @_(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0))
  %31 = call i32 @constraint(i32 %29, i32 %30)
  br label %52

32:                                               ; preds = %6
  %33 = load i32, i32* @cpu_variant, align 4
  %34 = load i32, i32* @arm_ext_v1, align 4
  %35 = call i32 @ARM_CPU_HAS_FEATURE(i32 %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i32 @_(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0))
  %40 = call i32 @constraint(i32 %38, i32 %39)
  %41 = load i32, i32* %1, align 4
  %42 = load i32, i32* @SPSR_BIT, align 4
  %43 = xor i32 %42, -1
  %44 = and i32 %41, %43
  %45 = load i32, i32* @PSR_c, align 4
  %46 = load i32, i32* @PSR_f, align 4
  %47 = or i32 %45, %46
  %48 = icmp ne i32 %44, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %51 = call i32 @constraint(i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %32, %23
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 %56, 8
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %59 = or i32 %58, %57
  store i32 %59, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %60 = load i32, i32* %1, align 4
  %61 = load i32, i32* @SPSR_BIT, align 4
  %62 = and i32 %60, %61
  %63 = ashr i32 %62, 2
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %65 = or i32 %64, %63
  store i32 %65, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i64 1
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, 255
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %72 = or i32 %71, %70
  store i32 %72, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  br label %73

73:                                               ; preds = %52, %5
  ret void
}

declare dso_local i64 @do_vfp_nsyn_mrs(...) #1

declare dso_local i32 @constraint(i32, i32) #1

declare dso_local i32 @ARM_CPU_HAS_FEATURE(i32, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
