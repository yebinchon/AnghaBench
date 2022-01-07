; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_set_stats_pingpong_address.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_set_stats_pingpong_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.vfe_stats_control = type { i32*, i32* }

@ctrl = common dso_local global %struct.TYPE_2__* null, align 8
@VFE_BUS_STATS_AF_WR_PING_ADDR = common dso_local global i64 0, align 8
@VFE_BUS_STATS_AF_WR_PONG_ADDR = common dso_local global i64 0, align 8
@VFE_BUS_STATS_AWB_WR_PING_ADDR = common dso_local global i64 0, align 8
@VFE_BUS_STATS_AWB_WR_PONG_ADDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vfe_stats_control*, %struct.vfe_stats_control*)* @vfe_set_stats_pingpong_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfe_set_stats_pingpong_address(%struct.vfe_stats_control* %0, %struct.vfe_stats_control* %1) #0 {
  %3 = alloca %struct.vfe_stats_control*, align 8
  %4 = alloca %struct.vfe_stats_control*, align 8
  store %struct.vfe_stats_control* %0, %struct.vfe_stats_control** %3, align 8
  store %struct.vfe_stats_control* %1, %struct.vfe_stats_control** %4, align 8
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctrl, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @VFE_BUS_STATS_AF_WR_PING_ADDR, align 8
  %9 = add nsw i64 %7, %8
  %10 = inttoptr i64 %9 to i32*
  %11 = load %struct.vfe_stats_control*, %struct.vfe_stats_control** %3, align 8
  %12 = getelementptr inbounds %struct.vfe_stats_control, %struct.vfe_stats_control* %11, i32 0, i32 1
  store i32* %10, i32** %12, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctrl, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @VFE_BUS_STATS_AF_WR_PONG_ADDR, align 8
  %17 = add nsw i64 %15, %16
  %18 = inttoptr i64 %17 to i32*
  %19 = load %struct.vfe_stats_control*, %struct.vfe_stats_control** %3, align 8
  %20 = getelementptr inbounds %struct.vfe_stats_control, %struct.vfe_stats_control* %19, i32 0, i32 0
  store i32* %18, i32** %20, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctrl, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @VFE_BUS_STATS_AWB_WR_PING_ADDR, align 8
  %25 = add nsw i64 %23, %24
  %26 = inttoptr i64 %25 to i32*
  %27 = load %struct.vfe_stats_control*, %struct.vfe_stats_control** %4, align 8
  %28 = getelementptr inbounds %struct.vfe_stats_control, %struct.vfe_stats_control* %27, i32 0, i32 1
  store i32* %26, i32** %28, align 8
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctrl, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @VFE_BUS_STATS_AWB_WR_PONG_ADDR, align 8
  %33 = add nsw i64 %31, %32
  %34 = inttoptr i64 %33 to i32*
  %35 = load %struct.vfe_stats_control*, %struct.vfe_stats_control** %4, align 8
  %36 = getelementptr inbounds %struct.vfe_stats_control, %struct.vfe_stats_control* %35, i32 0, i32 0
  store i32* %34, i32** %36, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
