; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_set_bus_pipo_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_set_bus_pipo_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.vfe_output_path_combo = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32*, i32* }
%struct.TYPE_4__ = type { i32*, i32* }

@ctrl = common dso_local global %struct.TYPE_6__* null, align 8
@VFE_BUS_VIEW_Y_WR_PING_ADDR = common dso_local global i64 0, align 8
@VFE_BUS_VIEW_Y_WR_PONG_ADDR = common dso_local global i64 0, align 8
@VFE_BUS_VIEW_CBCR_WR_PING_ADDR = common dso_local global i64 0, align 8
@VFE_BUS_VIEW_CBCR_WR_PONG_ADDR = common dso_local global i64 0, align 8
@VFE_BUS_ENC_Y_WR_PING_ADDR = common dso_local global i64 0, align 8
@VFE_BUS_ENC_Y_WR_PONG_ADDR = common dso_local global i64 0, align 8
@VFE_BUS_ENC_CBCR_WR_PING_ADDR = common dso_local global i64 0, align 8
@VFE_BUS_ENC_CBCR_WR_PONG_ADDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vfe_output_path_combo*, %struct.vfe_output_path_combo*)* @vfe_set_bus_pipo_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfe_set_bus_pipo_addr(%struct.vfe_output_path_combo* %0, %struct.vfe_output_path_combo* %1) #0 {
  %3 = alloca %struct.vfe_output_path_combo*, align 8
  %4 = alloca %struct.vfe_output_path_combo*, align 8
  store %struct.vfe_output_path_combo* %0, %struct.vfe_output_path_combo** %3, align 8
  store %struct.vfe_output_path_combo* %1, %struct.vfe_output_path_combo** %4, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctrl, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @VFE_BUS_VIEW_Y_WR_PING_ADDR, align 8
  %9 = add nsw i64 %7, %8
  %10 = inttoptr i64 %9 to i32*
  %11 = load %struct.vfe_output_path_combo*, %struct.vfe_output_path_combo** %3, align 8
  %12 = getelementptr inbounds %struct.vfe_output_path_combo, %struct.vfe_output_path_combo* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  store i32* %10, i32** %13, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctrl, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @VFE_BUS_VIEW_Y_WR_PONG_ADDR, align 8
  %18 = add nsw i64 %16, %17
  %19 = inttoptr i64 %18 to i32*
  %20 = load %struct.vfe_output_path_combo*, %struct.vfe_output_path_combo** %3, align 8
  %21 = getelementptr inbounds %struct.vfe_output_path_combo, %struct.vfe_output_path_combo* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i32* %19, i32** %22, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctrl, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @VFE_BUS_VIEW_CBCR_WR_PING_ADDR, align 8
  %27 = add nsw i64 %25, %26
  %28 = inttoptr i64 %27 to i32*
  %29 = load %struct.vfe_output_path_combo*, %struct.vfe_output_path_combo** %3, align 8
  %30 = getelementptr inbounds %struct.vfe_output_path_combo, %struct.vfe_output_path_combo* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  store i32* %28, i32** %31, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctrl, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @VFE_BUS_VIEW_CBCR_WR_PONG_ADDR, align 8
  %36 = add nsw i64 %34, %35
  %37 = inttoptr i64 %36 to i32*
  %38 = load %struct.vfe_output_path_combo*, %struct.vfe_output_path_combo** %3, align 8
  %39 = getelementptr inbounds %struct.vfe_output_path_combo, %struct.vfe_output_path_combo* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  store i32* %37, i32** %40, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctrl, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @VFE_BUS_ENC_Y_WR_PING_ADDR, align 8
  %45 = add nsw i64 %43, %44
  %46 = inttoptr i64 %45 to i32*
  %47 = load %struct.vfe_output_path_combo*, %struct.vfe_output_path_combo** %4, align 8
  %48 = getelementptr inbounds %struct.vfe_output_path_combo, %struct.vfe_output_path_combo* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  store i32* %46, i32** %49, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctrl, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @VFE_BUS_ENC_Y_WR_PONG_ADDR, align 8
  %54 = add nsw i64 %52, %53
  %55 = inttoptr i64 %54 to i32*
  %56 = load %struct.vfe_output_path_combo*, %struct.vfe_output_path_combo** %4, align 8
  %57 = getelementptr inbounds %struct.vfe_output_path_combo, %struct.vfe_output_path_combo* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  store i32* %55, i32** %58, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctrl, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @VFE_BUS_ENC_CBCR_WR_PING_ADDR, align 8
  %63 = add nsw i64 %61, %62
  %64 = inttoptr i64 %63 to i32*
  %65 = load %struct.vfe_output_path_combo*, %struct.vfe_output_path_combo** %4, align 8
  %66 = getelementptr inbounds %struct.vfe_output_path_combo, %struct.vfe_output_path_combo* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  store i32* %64, i32** %67, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctrl, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @VFE_BUS_ENC_CBCR_WR_PONG_ADDR, align 8
  %72 = add nsw i64 %70, %71
  %73 = inttoptr i64 %72 to i32*
  %74 = load %struct.vfe_output_path_combo*, %struct.vfe_output_path_combo** %4, align 8
  %75 = getelementptr inbounds %struct.vfe_output_path_combo, %struct.vfe_output_path_combo* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  store i32* %73, i32** %76, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
