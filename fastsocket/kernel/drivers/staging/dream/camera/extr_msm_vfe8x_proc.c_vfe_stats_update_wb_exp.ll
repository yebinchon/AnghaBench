; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_stats_update_wb_exp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_stats_update_wb_exp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.vfe_cmd_stats_wb_exp_update = type { i32, i32, i32, i32, i32*, i32* }
%struct.vfe_statsawb_update = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vfe_statsawbae_update = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ctrl = common dso_local global %struct.TYPE_2__* null, align 8
@VFE_STATS_AWB_MCFG = common dso_local global i64 0, align 8
@VFE_STATS_AWBAE_CFG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vfe_stats_update_wb_exp(%struct.vfe_cmd_stats_wb_exp_update* %0) #0 {
  %2 = alloca %struct.vfe_cmd_stats_wb_exp_update*, align 8
  %3 = alloca %struct.vfe_statsawb_update, align 4
  %4 = alloca %struct.vfe_statsawbae_update, align 4
  store %struct.vfe_cmd_stats_wb_exp_update* %0, %struct.vfe_cmd_stats_wb_exp_update** %2, align 8
  %5 = bitcast %struct.vfe_statsawb_update* %3 to %struct.vfe_statsawbae_update*
  %6 = call i32 @memset(%struct.vfe_statsawbae_update* %5, i32 0, i32 48)
  %7 = call i32 @memset(%struct.vfe_statsawbae_update* %4, i32 0, i32 48)
  %8 = load %struct.vfe_cmd_stats_wb_exp_update*, %struct.vfe_cmd_stats_wb_exp_update** %2, align 8
  %9 = getelementptr inbounds %struct.vfe_cmd_stats_wb_exp_update, %struct.vfe_cmd_stats_wb_exp_update* %8, i32 0, i32 5
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.vfe_statsawb_update, %struct.vfe_statsawb_update* %3, i32 0, i32 11
  store i32 %12, i32* %13, align 4
  %14 = load %struct.vfe_cmd_stats_wb_exp_update*, %struct.vfe_cmd_stats_wb_exp_update** %2, align 8
  %15 = getelementptr inbounds %struct.vfe_cmd_stats_wb_exp_update, %struct.vfe_cmd_stats_wb_exp_update* %14, i32 0, i32 5
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.vfe_statsawb_update, %struct.vfe_statsawb_update* %3, i32 0, i32 10
  store i32 %18, i32* %19, align 4
  %20 = load %struct.vfe_cmd_stats_wb_exp_update*, %struct.vfe_cmd_stats_wb_exp_update** %2, align 8
  %21 = getelementptr inbounds %struct.vfe_cmd_stats_wb_exp_update, %struct.vfe_cmd_stats_wb_exp_update* %20, i32 0, i32 5
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 2
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.vfe_statsawb_update, %struct.vfe_statsawb_update* %3, i32 0, i32 9
  store i32 %24, i32* %25, align 4
  %26 = load %struct.vfe_cmd_stats_wb_exp_update*, %struct.vfe_cmd_stats_wb_exp_update** %2, align 8
  %27 = getelementptr inbounds %struct.vfe_cmd_stats_wb_exp_update, %struct.vfe_cmd_stats_wb_exp_update* %26, i32 0, i32 5
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 3
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.vfe_statsawb_update, %struct.vfe_statsawb_update* %3, i32 0, i32 8
  store i32 %30, i32* %31, align 4
  %32 = load %struct.vfe_cmd_stats_wb_exp_update*, %struct.vfe_cmd_stats_wb_exp_update** %2, align 8
  %33 = getelementptr inbounds %struct.vfe_cmd_stats_wb_exp_update, %struct.vfe_cmd_stats_wb_exp_update* %32, i32 0, i32 4
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.vfe_statsawb_update, %struct.vfe_statsawb_update* %3, i32 0, i32 7
  store i32 %36, i32* %37, align 4
  %38 = load %struct.vfe_cmd_stats_wb_exp_update*, %struct.vfe_cmd_stats_wb_exp_update** %2, align 8
  %39 = getelementptr inbounds %struct.vfe_cmd_stats_wb_exp_update, %struct.vfe_cmd_stats_wb_exp_update* %38, i32 0, i32 4
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.vfe_statsawb_update, %struct.vfe_statsawb_update* %3, i32 0, i32 6
  store i32 %42, i32* %43, align 4
  %44 = load %struct.vfe_cmd_stats_wb_exp_update*, %struct.vfe_cmd_stats_wb_exp_update** %2, align 8
  %45 = getelementptr inbounds %struct.vfe_cmd_stats_wb_exp_update, %struct.vfe_cmd_stats_wb_exp_update* %44, i32 0, i32 4
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.vfe_statsawb_update, %struct.vfe_statsawb_update* %3, i32 0, i32 5
  store i32 %48, i32* %49, align 4
  %50 = load %struct.vfe_cmd_stats_wb_exp_update*, %struct.vfe_cmd_stats_wb_exp_update** %2, align 8
  %51 = getelementptr inbounds %struct.vfe_cmd_stats_wb_exp_update, %struct.vfe_cmd_stats_wb_exp_update* %50, i32 0, i32 4
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 3
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.vfe_statsawb_update, %struct.vfe_statsawb_update* %3, i32 0, i32 4
  store i32 %54, i32* %55, align 4
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctrl, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @VFE_STATS_AWB_MCFG, align 8
  %60 = add nsw i64 %58, %59
  %61 = bitcast %struct.vfe_statsawb_update* %3 to i32*
  %62 = call i32 @vfe_prog_hw(i64 %60, i32* %61, i32 48)
  %63 = load %struct.vfe_cmd_stats_wb_exp_update*, %struct.vfe_cmd_stats_wb_exp_update** %2, align 8
  %64 = getelementptr inbounds %struct.vfe_cmd_stats_wb_exp_update, %struct.vfe_cmd_stats_wb_exp_update* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.vfe_statsawbae_update, %struct.vfe_statsawbae_update* %4, i32 0, i32 3
  store i32 %65, i32* %66, align 4
  %67 = load %struct.vfe_cmd_stats_wb_exp_update*, %struct.vfe_cmd_stats_wb_exp_update** %2, align 8
  %68 = getelementptr inbounds %struct.vfe_cmd_stats_wb_exp_update, %struct.vfe_cmd_stats_wb_exp_update* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = getelementptr inbounds %struct.vfe_statsawbae_update, %struct.vfe_statsawbae_update* %4, i32 0, i32 2
  store i32 %69, i32* %70, align 4
  %71 = load %struct.vfe_cmd_stats_wb_exp_update*, %struct.vfe_cmd_stats_wb_exp_update** %2, align 8
  %72 = getelementptr inbounds %struct.vfe_cmd_stats_wb_exp_update, %struct.vfe_cmd_stats_wb_exp_update* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.vfe_statsawbae_update, %struct.vfe_statsawbae_update* %4, i32 0, i32 1
  store i32 %73, i32* %74, align 4
  %75 = load %struct.vfe_cmd_stats_wb_exp_update*, %struct.vfe_cmd_stats_wb_exp_update** %2, align 8
  %76 = getelementptr inbounds %struct.vfe_cmd_stats_wb_exp_update, %struct.vfe_cmd_stats_wb_exp_update* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = getelementptr inbounds %struct.vfe_statsawbae_update, %struct.vfe_statsawbae_update* %4, i32 0, i32 0
  store i32 %77, i32* %78, align 4
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctrl, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @VFE_STATS_AWBAE_CFG, align 8
  %83 = add nsw i64 %81, %82
  %84 = bitcast %struct.vfe_statsawbae_update* %4 to i32*
  %85 = call i32 @vfe_prog_hw(i64 %83, i32* %84, i32 48)
  ret void
}

declare dso_local i32 @memset(%struct.vfe_statsawbae_update*, i32, i32) #1

declare dso_local i32 @vfe_prog_hw(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
