; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_8k_pm_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_8k_pm_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_7__ = type { i64, i64, i64, i64 }
%struct.vfe_cmd_bus_pm_start = type { i64, i64, i64, i64 }

@ctrl = common dso_local global %struct.TYPE_8__* null, align 8
@TRUE = common dso_local global i8* null, align 8
@VFE_PERFORMANCE_MONITOR_GO = common dso_local global i32 0, align 4
@VFE_BUS_PM_CMD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vfe_cmd_bus_pm_start*)* @vfe_8k_pm_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfe_8k_pm_start(%struct.vfe_cmd_bus_pm_start* %0) #0 {
  %2 = alloca %struct.vfe_cmd_bus_pm_start*, align 8
  store %struct.vfe_cmd_bus_pm_start* %0, %struct.vfe_cmd_bus_pm_start** %2, align 8
  %3 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ctrl, align 8
  %4 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 3
  %5 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 3
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.vfe_cmd_bus_pm_start*, %struct.vfe_cmd_bus_pm_start** %2, align 8
  %8 = getelementptr inbounds %struct.vfe_cmd_bus_pm_start, %struct.vfe_cmd_bus_pm_start* %7, i32 0, i32 3
  store i64 %6, i64* %8, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ctrl, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.vfe_cmd_bus_pm_start*, %struct.vfe_cmd_bus_pm_start** %2, align 8
  %14 = getelementptr inbounds %struct.vfe_cmd_bus_pm_start, %struct.vfe_cmd_bus_pm_start* %13, i32 0, i32 2
  store i64 %12, i64* %14, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ctrl, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.vfe_cmd_bus_pm_start*, %struct.vfe_cmd_bus_pm_start** %2, align 8
  %20 = getelementptr inbounds %struct.vfe_cmd_bus_pm_start, %struct.vfe_cmd_bus_pm_start* %19, i32 0, i32 1
  store i64 %18, i64* %20, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ctrl, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.vfe_cmd_bus_pm_start*, %struct.vfe_cmd_bus_pm_start** %2, align 8
  %26 = getelementptr inbounds %struct.vfe_cmd_bus_pm_start, %struct.vfe_cmd_bus_pm_start* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load %struct.vfe_cmd_bus_pm_start*, %struct.vfe_cmd_bus_pm_start** %2, align 8
  %28 = getelementptr inbounds %struct.vfe_cmd_bus_pm_start, %struct.vfe_cmd_bus_pm_start* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %1
  %32 = load %struct.vfe_cmd_bus_pm_start*, %struct.vfe_cmd_bus_pm_start** %2, align 8
  %33 = getelementptr inbounds %struct.vfe_cmd_bus_pm_start, %struct.vfe_cmd_bus_pm_start* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31, %1
  %37 = load i8*, i8** @TRUE, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ctrl, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  store i8* %37, i8** %40, align 8
  br label %41

41:                                               ; preds = %36, %31
  %42 = load %struct.vfe_cmd_bus_pm_start*, %struct.vfe_cmd_bus_pm_start** %2, align 8
  %43 = getelementptr inbounds %struct.vfe_cmd_bus_pm_start, %struct.vfe_cmd_bus_pm_start* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = load %struct.vfe_cmd_bus_pm_start*, %struct.vfe_cmd_bus_pm_start** %2, align 8
  %48 = getelementptr inbounds %struct.vfe_cmd_bus_pm_start, %struct.vfe_cmd_bus_pm_start* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46, %41
  %52 = load i8*, i8** @TRUE, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ctrl, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  store i8* %52, i8** %55, align 8
  br label %56

56:                                               ; preds = %51, %46
  %57 = load %struct.vfe_cmd_bus_pm_start*, %struct.vfe_cmd_bus_pm_start** %2, align 8
  %58 = call i32 @vfe_pm_start(%struct.vfe_cmd_bus_pm_start* %57)
  %59 = load i32, i32* @VFE_PERFORMANCE_MONITOR_GO, align 4
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ctrl, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @VFE_BUS_PM_CMD, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @writel(i32 %59, i64 %64)
  ret void
}

declare dso_local i32 @vfe_pm_start(%struct.vfe_cmd_bus_pm_start*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
