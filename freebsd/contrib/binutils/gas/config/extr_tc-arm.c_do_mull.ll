; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_mull.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_mull.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@inst = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@selected_cpu = common dso_local global i32 0, align 4
@arm_ext_v6 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"rdhi, rdlo and rm must all be different\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_mull to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_mull() #0 {
  %1 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %2 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i64 0
  %3 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %4 = load i32, i32* %3, align 4
  %5 = shl i32 %4, 12
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %7 = or i32 %6, %5
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i64 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = shl i32 %11, 16
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %14 = or i32 %13, %12
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 2
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %20 = or i32 %19, %18
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 3
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 %24, 8
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %27 = or i32 %26, %25
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %31, %35
  br i1 %36, label %62, label %37

37:                                               ; preds = %0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 2
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %41, %45
  br i1 %46, label %57, label %47

47:                                               ; preds = %37
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i64 2
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %51, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %47, %37
  %58 = load i32, i32* @selected_cpu, align 4
  %59 = load i32, i32* @arm_ext_v6, align 4
  %60 = call i32 @ARM_CPU_HAS_FEATURE(i32 %58, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %57, %0
  %63 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %64 = call i32 @as_tsktsk(i32 %63)
  br label %65

65:                                               ; preds = %62, %57, %47
  ret void
}

declare dso_local i32 @ARM_CPU_HAS_FEATURE(i32, i32) #1

declare dso_local i32 @as_tsktsk(i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
