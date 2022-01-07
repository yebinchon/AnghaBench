; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_stats_setting.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_stats_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32* }
%struct.TYPE_4__ = type { i32, i32* }
%struct.vfe_cmd_stats_setting = type { i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vfe_statsframe = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vfe_busstats_wrprio = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@ctrl = common dso_local global %struct.TYPE_6__* null, align 8
@VFE_STATS_FRAME_SIZE = common dso_local global i64 0, align 8
@VFE_BUS_STATS_WR_PRIORITY = common dso_local global i64 0, align 8
@VFE_BUS_STATS_AF_WR_PING_ADDR = common dso_local global i64 0, align 8
@VFE_BUS_STATS_AF_WR_PONG_ADDR = common dso_local global i64 0, align 8
@VFE_BUS_STATS_AWB_WR_PING_ADDR = common dso_local global i64 0, align 8
@VFE_BUS_STATS_AWB_WR_PONG_ADDR = common dso_local global i64 0, align 8
@VFE_BUS_STATS_HIST_WR_PING_ADDR = common dso_local global i64 0, align 8
@VFE_BUS_STATS_HIST_WR_PONG_ADDR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vfe_stats_setting(%struct.vfe_cmd_stats_setting* %0) #0 {
  %2 = alloca %struct.vfe_cmd_stats_setting*, align 8
  %3 = alloca %struct.vfe_statsframe, align 4
  %4 = alloca %struct.vfe_busstats_wrprio, align 4
  store %struct.vfe_cmd_stats_setting* %0, %struct.vfe_cmd_stats_setting** %2, align 8
  %5 = call i32 @memset(%struct.vfe_statsframe* %3, i32 0, i32 32)
  %6 = bitcast %struct.vfe_busstats_wrprio* %4 to %struct.vfe_statsframe*
  %7 = call i32 @memset(%struct.vfe_statsframe* %6, i32 0, i32 32)
  %8 = load %struct.vfe_cmd_stats_setting*, %struct.vfe_cmd_stats_setting** %2, align 8
  %9 = getelementptr inbounds %struct.vfe_cmd_stats_setting, %struct.vfe_cmd_stats_setting* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctrl, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  store i32 %12, i32* %17, align 4
  %18 = load %struct.vfe_cmd_stats_setting*, %struct.vfe_cmd_stats_setting** %2, align 8
  %19 = getelementptr inbounds %struct.vfe_cmd_stats_setting, %struct.vfe_cmd_stats_setting* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctrl, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  store i32 %22, i32* %27, align 4
  %28 = load %struct.vfe_cmd_stats_setting*, %struct.vfe_cmd_stats_setting** %2, align 8
  %29 = getelementptr inbounds %struct.vfe_cmd_stats_setting, %struct.vfe_cmd_stats_setting* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctrl, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 8
  %36 = load %struct.vfe_cmd_stats_setting*, %struct.vfe_cmd_stats_setting** %2, align 8
  %37 = getelementptr inbounds %struct.vfe_cmd_stats_setting, %struct.vfe_cmd_stats_setting* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctrl, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  store i32 %40, i32* %45, align 4
  %46 = load %struct.vfe_cmd_stats_setting*, %struct.vfe_cmd_stats_setting** %2, align 8
  %47 = getelementptr inbounds %struct.vfe_cmd_stats_setting, %struct.vfe_cmd_stats_setting* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctrl, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  store i32 %50, i32* %55, align 4
  %56 = load %struct.vfe_cmd_stats_setting*, %struct.vfe_cmd_stats_setting** %2, align 8
  %57 = getelementptr inbounds %struct.vfe_cmd_stats_setting, %struct.vfe_cmd_stats_setting* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctrl, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 8
  %64 = load %struct.vfe_cmd_stats_setting*, %struct.vfe_cmd_stats_setting** %2, align 8
  %65 = getelementptr inbounds %struct.vfe_cmd_stats_setting, %struct.vfe_cmd_stats_setting* %64, i32 0, i32 10
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.vfe_statsframe, %struct.vfe_statsframe* %3, i32 0, i32 7
  store i32 %66, i32* %67, align 4
  %68 = load %struct.vfe_cmd_stats_setting*, %struct.vfe_cmd_stats_setting** %2, align 8
  %69 = getelementptr inbounds %struct.vfe_cmd_stats_setting, %struct.vfe_cmd_stats_setting* %68, i32 0, i32 9
  %70 = load i32, i32* %69, align 8
  %71 = getelementptr inbounds %struct.vfe_statsframe, %struct.vfe_statsframe* %3, i32 0, i32 6
  store i32 %70, i32* %71, align 4
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctrl, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @VFE_STATS_FRAME_SIZE, align 8
  %76 = add nsw i64 %74, %75
  %77 = bitcast %struct.vfe_statsframe* %3 to i32*
  %78 = call i32 @vfe_prog_hw(i64 %76, i32* %77, i32 32)
  %79 = load %struct.vfe_cmd_stats_setting*, %struct.vfe_cmd_stats_setting** %2, align 8
  %80 = getelementptr inbounds %struct.vfe_cmd_stats_setting, %struct.vfe_cmd_stats_setting* %79, i32 0, i32 8
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.vfe_busstats_wrprio, %struct.vfe_busstats_wrprio* %4, i32 0, i32 5
  store i32 %81, i32* %82, align 4
  %83 = load %struct.vfe_cmd_stats_setting*, %struct.vfe_cmd_stats_setting** %2, align 8
  %84 = getelementptr inbounds %struct.vfe_cmd_stats_setting, %struct.vfe_cmd_stats_setting* %83, i32 0, i32 7
  %85 = load i32, i32* %84, align 8
  %86 = getelementptr inbounds %struct.vfe_busstats_wrprio, %struct.vfe_busstats_wrprio* %4, i32 0, i32 4
  store i32 %85, i32* %86, align 4
  %87 = load %struct.vfe_cmd_stats_setting*, %struct.vfe_cmd_stats_setting** %2, align 8
  %88 = getelementptr inbounds %struct.vfe_cmd_stats_setting, %struct.vfe_cmd_stats_setting* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.vfe_busstats_wrprio, %struct.vfe_busstats_wrprio* %4, i32 0, i32 3
  store i32 %89, i32* %90, align 4
  %91 = load %struct.vfe_cmd_stats_setting*, %struct.vfe_cmd_stats_setting** %2, align 8
  %92 = getelementptr inbounds %struct.vfe_cmd_stats_setting, %struct.vfe_cmd_stats_setting* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 8
  %94 = getelementptr inbounds %struct.vfe_busstats_wrprio, %struct.vfe_busstats_wrprio* %4, i32 0, i32 2
  store i32 %93, i32* %94, align 4
  %95 = load %struct.vfe_cmd_stats_setting*, %struct.vfe_cmd_stats_setting** %2, align 8
  %96 = getelementptr inbounds %struct.vfe_cmd_stats_setting, %struct.vfe_cmd_stats_setting* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.vfe_busstats_wrprio, %struct.vfe_busstats_wrprio* %4, i32 0, i32 1
  store i32 %97, i32* %98, align 4
  %99 = load %struct.vfe_cmd_stats_setting*, %struct.vfe_cmd_stats_setting** %2, align 8
  %100 = getelementptr inbounds %struct.vfe_cmd_stats_setting, %struct.vfe_cmd_stats_setting* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = getelementptr inbounds %struct.vfe_busstats_wrprio, %struct.vfe_busstats_wrprio* %4, i32 0, i32 0
  store i32 %101, i32* %102, align 4
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctrl, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @VFE_BUS_STATS_WR_PRIORITY, align 8
  %107 = add nsw i64 %105, %106
  %108 = bitcast %struct.vfe_busstats_wrprio* %4 to i32*
  %109 = call i32 @vfe_prog_hw(i64 %107, i32* %108, i32 32)
  %110 = load %struct.vfe_cmd_stats_setting*, %struct.vfe_cmd_stats_setting** %2, align 8
  %111 = getelementptr inbounds %struct.vfe_cmd_stats_setting, %struct.vfe_cmd_stats_setting* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctrl, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @VFE_BUS_STATS_AF_WR_PING_ADDR, align 8
  %119 = add nsw i64 %117, %118
  %120 = call i32 @writel(i32 %114, i64 %119)
  %121 = load %struct.vfe_cmd_stats_setting*, %struct.vfe_cmd_stats_setting** %2, align 8
  %122 = getelementptr inbounds %struct.vfe_cmd_stats_setting, %struct.vfe_cmd_stats_setting* %121, i32 0, i32 2
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctrl, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @VFE_BUS_STATS_AF_WR_PONG_ADDR, align 8
  %130 = add nsw i64 %128, %129
  %131 = call i32 @writel(i32 %125, i64 %130)
  %132 = load %struct.vfe_cmd_stats_setting*, %struct.vfe_cmd_stats_setting** %2, align 8
  %133 = getelementptr inbounds %struct.vfe_cmd_stats_setting, %struct.vfe_cmd_stats_setting* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctrl, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @VFE_BUS_STATS_AWB_WR_PING_ADDR, align 8
  %141 = add nsw i64 %139, %140
  %142 = call i32 @writel(i32 %136, i64 %141)
  %143 = load %struct.vfe_cmd_stats_setting*, %struct.vfe_cmd_stats_setting** %2, align 8
  %144 = getelementptr inbounds %struct.vfe_cmd_stats_setting, %struct.vfe_cmd_stats_setting* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctrl, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @VFE_BUS_STATS_AWB_WR_PONG_ADDR, align 8
  %152 = add nsw i64 %150, %151
  %153 = call i32 @writel(i32 %147, i64 %152)
  %154 = load %struct.vfe_cmd_stats_setting*, %struct.vfe_cmd_stats_setting** %2, align 8
  %155 = getelementptr inbounds %struct.vfe_cmd_stats_setting, %struct.vfe_cmd_stats_setting* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 0
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctrl, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @VFE_BUS_STATS_HIST_WR_PING_ADDR, align 8
  %163 = add nsw i64 %161, %162
  %164 = call i32 @writel(i32 %158, i64 %163)
  %165 = load %struct.vfe_cmd_stats_setting*, %struct.vfe_cmd_stats_setting** %2, align 8
  %166 = getelementptr inbounds %struct.vfe_cmd_stats_setting, %struct.vfe_cmd_stats_setting* %165, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 1
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctrl, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @VFE_BUS_STATS_HIST_WR_PONG_ADDR, align 8
  %174 = add nsw i64 %172, %173
  %175 = call i32 @writel(i32 %169, i64 %174)
  ret void
}

declare dso_local i32 @memset(%struct.vfe_statsframe*, i32, i32) #1

declare dso_local i32 @vfe_prog_hw(i64, i32*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
