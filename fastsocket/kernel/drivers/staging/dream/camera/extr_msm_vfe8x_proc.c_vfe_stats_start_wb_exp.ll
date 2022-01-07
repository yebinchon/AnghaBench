; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_stats_start_wb_exp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_stats_start_wb_exp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.vfe_cmd_stats_wb_exp_start = type { i32, i32, i32, i32, i32, i32*, i32*, i32 }
%struct.vfe_statsawb_update = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vfe_statsawbae_update = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vfe_statsaxw_hdr_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ctrl = common dso_local global %struct.TYPE_6__* null, align 8
@TRUE = common dso_local global i32 0, align 4
@VFE_STATS_AWB_MCFG = common dso_local global i64 0, align 8
@VFE_STATS_AWBAE_CFG = common dso_local global i64 0, align 8
@VFE_STATS_AXW_HEADER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vfe_stats_start_wb_exp(%struct.vfe_cmd_stats_wb_exp_start* %0) #0 {
  %2 = alloca %struct.vfe_cmd_stats_wb_exp_start*, align 8
  %3 = alloca %struct.vfe_statsawb_update, align 4
  %4 = alloca %struct.vfe_statsawbae_update, align 4
  %5 = alloca %struct.vfe_statsaxw_hdr_cfg, align 4
  store %struct.vfe_cmd_stats_wb_exp_start* %0, %struct.vfe_cmd_stats_wb_exp_start** %2, align 8
  %6 = load %struct.vfe_cmd_stats_wb_exp_start*, %struct.vfe_cmd_stats_wb_exp_start** %2, align 8
  %7 = getelementptr inbounds %struct.vfe_cmd_stats_wb_exp_start, %struct.vfe_cmd_stats_wb_exp_start* %6, i32 0, i32 7
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctrl, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i32 %8, i32* %11, align 4
  %12 = load i32, i32* @TRUE, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctrl, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  store i32 %12, i32* %15, align 8
  %16 = bitcast %struct.vfe_statsawb_update* %3 to %struct.vfe_statsaxw_hdr_cfg*
  %17 = call i32 @memset(%struct.vfe_statsaxw_hdr_cfg* %16, i32 0, i32 52)
  %18 = bitcast %struct.vfe_statsawbae_update* %4 to %struct.vfe_statsaxw_hdr_cfg*
  %19 = call i32 @memset(%struct.vfe_statsaxw_hdr_cfg* %18, i32 0, i32 52)
  %20 = call i32 @memset(%struct.vfe_statsaxw_hdr_cfg* %5, i32 0, i32 52)
  %21 = load %struct.vfe_cmd_stats_wb_exp_start*, %struct.vfe_cmd_stats_wb_exp_start** %2, align 8
  %22 = getelementptr inbounds %struct.vfe_cmd_stats_wb_exp_start, %struct.vfe_cmd_stats_wb_exp_start* %21, i32 0, i32 6
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.vfe_statsawb_update, %struct.vfe_statsawb_update* %3, i32 0, i32 12
  store i32 %25, i32* %26, align 4
  %27 = load %struct.vfe_cmd_stats_wb_exp_start*, %struct.vfe_cmd_stats_wb_exp_start** %2, align 8
  %28 = getelementptr inbounds %struct.vfe_cmd_stats_wb_exp_start, %struct.vfe_cmd_stats_wb_exp_start* %27, i32 0, i32 6
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.vfe_statsawb_update, %struct.vfe_statsawb_update* %3, i32 0, i32 11
  store i32 %31, i32* %32, align 4
  %33 = load %struct.vfe_cmd_stats_wb_exp_start*, %struct.vfe_cmd_stats_wb_exp_start** %2, align 8
  %34 = getelementptr inbounds %struct.vfe_cmd_stats_wb_exp_start, %struct.vfe_cmd_stats_wb_exp_start* %33, i32 0, i32 6
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 2
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.vfe_statsawb_update, %struct.vfe_statsawb_update* %3, i32 0, i32 10
  store i32 %37, i32* %38, align 4
  %39 = load %struct.vfe_cmd_stats_wb_exp_start*, %struct.vfe_cmd_stats_wb_exp_start** %2, align 8
  %40 = getelementptr inbounds %struct.vfe_cmd_stats_wb_exp_start, %struct.vfe_cmd_stats_wb_exp_start* %39, i32 0, i32 6
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 3
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.vfe_statsawb_update, %struct.vfe_statsawb_update* %3, i32 0, i32 9
  store i32 %43, i32* %44, align 4
  %45 = load %struct.vfe_cmd_stats_wb_exp_start*, %struct.vfe_cmd_stats_wb_exp_start** %2, align 8
  %46 = getelementptr inbounds %struct.vfe_cmd_stats_wb_exp_start, %struct.vfe_cmd_stats_wb_exp_start* %45, i32 0, i32 5
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.vfe_statsawb_update, %struct.vfe_statsawb_update* %3, i32 0, i32 8
  store i32 %49, i32* %50, align 4
  %51 = load %struct.vfe_cmd_stats_wb_exp_start*, %struct.vfe_cmd_stats_wb_exp_start** %2, align 8
  %52 = getelementptr inbounds %struct.vfe_cmd_stats_wb_exp_start, %struct.vfe_cmd_stats_wb_exp_start* %51, i32 0, i32 5
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.vfe_statsawb_update, %struct.vfe_statsawb_update* %3, i32 0, i32 7
  store i32 %55, i32* %56, align 4
  %57 = load %struct.vfe_cmd_stats_wb_exp_start*, %struct.vfe_cmd_stats_wb_exp_start** %2, align 8
  %58 = getelementptr inbounds %struct.vfe_cmd_stats_wb_exp_start, %struct.vfe_cmd_stats_wb_exp_start* %57, i32 0, i32 5
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 2
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.vfe_statsawb_update, %struct.vfe_statsawb_update* %3, i32 0, i32 6
  store i32 %61, i32* %62, align 4
  %63 = load %struct.vfe_cmd_stats_wb_exp_start*, %struct.vfe_cmd_stats_wb_exp_start** %2, align 8
  %64 = getelementptr inbounds %struct.vfe_cmd_stats_wb_exp_start, %struct.vfe_cmd_stats_wb_exp_start* %63, i32 0, i32 5
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 3
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.vfe_statsawb_update, %struct.vfe_statsawb_update* %3, i32 0, i32 5
  store i32 %67, i32* %68, align 4
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctrl, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @VFE_STATS_AWB_MCFG, align 8
  %73 = add nsw i64 %71, %72
  %74 = bitcast %struct.vfe_statsawb_update* %3 to i32*
  %75 = call i32 @vfe_prog_hw(i64 %73, i32* %74, i32 52)
  %76 = load %struct.vfe_cmd_stats_wb_exp_start*, %struct.vfe_cmd_stats_wb_exp_start** %2, align 8
  %77 = getelementptr inbounds %struct.vfe_cmd_stats_wb_exp_start, %struct.vfe_cmd_stats_wb_exp_start* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = getelementptr inbounds %struct.vfe_statsawbae_update, %struct.vfe_statsawbae_update* %4, i32 0, i32 4
  store i32 %78, i32* %79, align 4
  %80 = load %struct.vfe_cmd_stats_wb_exp_start*, %struct.vfe_cmd_stats_wb_exp_start** %2, align 8
  %81 = getelementptr inbounds %struct.vfe_cmd_stats_wb_exp_start, %struct.vfe_cmd_stats_wb_exp_start* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.vfe_statsawbae_update, %struct.vfe_statsawbae_update* %4, i32 0, i32 3
  store i32 %82, i32* %83, align 4
  %84 = load %struct.vfe_cmd_stats_wb_exp_start*, %struct.vfe_cmd_stats_wb_exp_start** %2, align 8
  %85 = getelementptr inbounds %struct.vfe_cmd_stats_wb_exp_start, %struct.vfe_cmd_stats_wb_exp_start* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = getelementptr inbounds %struct.vfe_statsawbae_update, %struct.vfe_statsawbae_update* %4, i32 0, i32 2
  store i32 %86, i32* %87, align 4
  %88 = load %struct.vfe_cmd_stats_wb_exp_start*, %struct.vfe_cmd_stats_wb_exp_start** %2, align 8
  %89 = getelementptr inbounds %struct.vfe_cmd_stats_wb_exp_start, %struct.vfe_cmd_stats_wb_exp_start* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds %struct.vfe_statsawbae_update, %struct.vfe_statsawbae_update* %4, i32 0, i32 1
  store i32 %90, i32* %91, align 4
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctrl, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @VFE_STATS_AWBAE_CFG, align 8
  %96 = add nsw i64 %94, %95
  %97 = bitcast %struct.vfe_statsawbae_update* %4 to i32*
  %98 = call i32 @vfe_prog_hw(i64 %96, i32* %97, i32 52)
  %99 = load %struct.vfe_cmd_stats_wb_exp_start*, %struct.vfe_cmd_stats_wb_exp_start** %2, align 8
  %100 = getelementptr inbounds %struct.vfe_cmd_stats_wb_exp_start, %struct.vfe_cmd_stats_wb_exp_start* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = getelementptr inbounds %struct.vfe_statsaxw_hdr_cfg, %struct.vfe_statsaxw_hdr_cfg* %5, i32 0, i32 0
  store i32 %101, i32* %102, align 4
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctrl, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @VFE_STATS_AXW_HEADER, align 8
  %107 = add nsw i64 %105, %106
  %108 = bitcast %struct.vfe_statsaxw_hdr_cfg* %5 to i32*
  %109 = call i32 @vfe_prog_hw(i64 %107, i32* %108, i32 52)
  ret void
}

declare dso_local i32 @memset(%struct.vfe_statsaxw_hdr_cfg*, i32, i32) #1

declare dso_local i32 @vfe_prog_hw(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
