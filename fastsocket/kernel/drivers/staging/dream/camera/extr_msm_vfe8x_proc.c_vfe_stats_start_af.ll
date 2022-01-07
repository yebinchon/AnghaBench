; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_stats_start_af.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_stats_start_af.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.vfe_cmd_stats_af_start = type { i32*, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32 }
%struct.vfe_statsaf_update = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vfe_statsaf_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ctrl = common dso_local global %struct.TYPE_6__* null, align 8
@TRUE = common dso_local global i32 0, align 4
@VFE_STATS_AF_CFG = common dso_local global i64 0, align 8
@VFE_STATS_AF_GRID_0 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vfe_stats_start_af(%struct.vfe_cmd_stats_af_start* %0) #0 {
  %2 = alloca %struct.vfe_cmd_stats_af_start*, align 8
  %3 = alloca %struct.vfe_statsaf_update, align 4
  %4 = alloca %struct.vfe_statsaf_cfg, align 4
  store %struct.vfe_cmd_stats_af_start* %0, %struct.vfe_cmd_stats_af_start** %2, align 8
  %5 = call i32 @memset(%struct.vfe_statsaf_update* %3, i32 0, i32 124)
  %6 = bitcast %struct.vfe_statsaf_cfg* %4 to %struct.vfe_statsaf_update*
  %7 = call i32 @memset(%struct.vfe_statsaf_update* %6, i32 0, i32 124)
  %8 = load %struct.vfe_cmd_stats_af_start*, %struct.vfe_cmd_stats_af_start** %2, align 8
  %9 = getelementptr inbounds %struct.vfe_cmd_stats_af_start, %struct.vfe_cmd_stats_af_start* %8, i32 0, i32 10
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctrl, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i32 %10, i32* %13, align 4
  %14 = load i32, i32* @TRUE, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctrl, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store i32 %14, i32* %17, align 8
  %18 = load %struct.vfe_cmd_stats_af_start*, %struct.vfe_cmd_stats_af_start** %2, align 8
  %19 = getelementptr inbounds %struct.vfe_cmd_stats_af_start, %struct.vfe_cmd_stats_af_start* %18, i32 0, i32 9
  %20 = load i32, i32* %19, align 8
  %21 = getelementptr inbounds %struct.vfe_statsaf_update, %struct.vfe_statsaf_update* %3, i32 0, i32 30
  store i32 %20, i32* %21, align 4
  %22 = load %struct.vfe_cmd_stats_af_start*, %struct.vfe_cmd_stats_af_start** %2, align 8
  %23 = getelementptr inbounds %struct.vfe_cmd_stats_af_start, %struct.vfe_cmd_stats_af_start* %22, i32 0, i32 8
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.vfe_statsaf_update, %struct.vfe_statsaf_update* %3, i32 0, i32 29
  store i32 %24, i32* %25, align 4
  %26 = load %struct.vfe_cmd_stats_af_start*, %struct.vfe_cmd_stats_af_start** %2, align 8
  %27 = getelementptr inbounds %struct.vfe_cmd_stats_af_start, %struct.vfe_cmd_stats_af_start* %26, i32 0, i32 7
  %28 = load i32, i32* %27, align 8
  %29 = getelementptr inbounds %struct.vfe_statsaf_update, %struct.vfe_statsaf_update* %3, i32 0, i32 28
  store i32 %28, i32* %29, align 4
  %30 = load %struct.vfe_cmd_stats_af_start*, %struct.vfe_cmd_stats_af_start** %2, align 8
  %31 = getelementptr inbounds %struct.vfe_cmd_stats_af_start, %struct.vfe_cmd_stats_af_start* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.vfe_statsaf_update, %struct.vfe_statsaf_update* %3, i32 0, i32 27
  store i32 %32, i32* %33, align 4
  %34 = load %struct.vfe_cmd_stats_af_start*, %struct.vfe_cmd_stats_af_start** %2, align 8
  %35 = getelementptr inbounds %struct.vfe_cmd_stats_af_start, %struct.vfe_cmd_stats_af_start* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 8
  %37 = getelementptr inbounds %struct.vfe_statsaf_update, %struct.vfe_statsaf_update* %3, i32 0, i32 26
  store i32 %36, i32* %37, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctrl, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @VFE_STATS_AF_CFG, align 8
  %42 = add nsw i64 %40, %41
  %43 = bitcast %struct.vfe_statsaf_update* %3 to i32*
  %44 = call i32 @vfe_prog_hw(i64 %42, i32* %43, i32 124)
  %45 = load %struct.vfe_cmd_stats_af_start*, %struct.vfe_cmd_stats_af_start** %2, align 8
  %46 = getelementptr inbounds %struct.vfe_cmd_stats_af_start, %struct.vfe_cmd_stats_af_start* %45, i32 0, i32 4
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.vfe_statsaf_cfg, %struct.vfe_statsaf_cfg* %4, i32 0, i32 25
  store i32 %49, i32* %50, align 4
  %51 = load %struct.vfe_cmd_stats_af_start*, %struct.vfe_cmd_stats_af_start** %2, align 8
  %52 = getelementptr inbounds %struct.vfe_cmd_stats_af_start, %struct.vfe_cmd_stats_af_start* %51, i32 0, i32 4
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.vfe_statsaf_cfg, %struct.vfe_statsaf_cfg* %4, i32 0, i32 24
  store i32 %55, i32* %56, align 4
  %57 = load %struct.vfe_cmd_stats_af_start*, %struct.vfe_cmd_stats_af_start** %2, align 8
  %58 = getelementptr inbounds %struct.vfe_cmd_stats_af_start, %struct.vfe_cmd_stats_af_start* %57, i32 0, i32 4
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 2
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.vfe_statsaf_cfg, %struct.vfe_statsaf_cfg* %4, i32 0, i32 23
  store i32 %61, i32* %62, align 4
  %63 = load %struct.vfe_cmd_stats_af_start*, %struct.vfe_cmd_stats_af_start** %2, align 8
  %64 = getelementptr inbounds %struct.vfe_cmd_stats_af_start, %struct.vfe_cmd_stats_af_start* %63, i32 0, i32 4
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 3
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.vfe_statsaf_cfg, %struct.vfe_statsaf_cfg* %4, i32 0, i32 22
  store i32 %67, i32* %68, align 4
  %69 = load %struct.vfe_cmd_stats_af_start*, %struct.vfe_cmd_stats_af_start** %2, align 8
  %70 = getelementptr inbounds %struct.vfe_cmd_stats_af_start, %struct.vfe_cmd_stats_af_start* %69, i32 0, i32 4
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 4
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.vfe_statsaf_cfg, %struct.vfe_statsaf_cfg* %4, i32 0, i32 21
  store i32 %73, i32* %74, align 4
  %75 = load %struct.vfe_cmd_stats_af_start*, %struct.vfe_cmd_stats_af_start** %2, align 8
  %76 = getelementptr inbounds %struct.vfe_cmd_stats_af_start, %struct.vfe_cmd_stats_af_start* %75, i32 0, i32 4
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 5
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.vfe_statsaf_cfg, %struct.vfe_statsaf_cfg* %4, i32 0, i32 20
  store i32 %79, i32* %80, align 4
  %81 = load %struct.vfe_cmd_stats_af_start*, %struct.vfe_cmd_stats_af_start** %2, align 8
  %82 = getelementptr inbounds %struct.vfe_cmd_stats_af_start, %struct.vfe_cmd_stats_af_start* %81, i32 0, i32 4
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 6
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.vfe_statsaf_cfg, %struct.vfe_statsaf_cfg* %4, i32 0, i32 19
  store i32 %85, i32* %86, align 4
  %87 = load %struct.vfe_cmd_stats_af_start*, %struct.vfe_cmd_stats_af_start** %2, align 8
  %88 = getelementptr inbounds %struct.vfe_cmd_stats_af_start, %struct.vfe_cmd_stats_af_start* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = getelementptr inbounds %struct.vfe_statsaf_cfg, %struct.vfe_statsaf_cfg* %4, i32 0, i32 18
  store i32 %89, i32* %90, align 4
  %91 = load %struct.vfe_cmd_stats_af_start*, %struct.vfe_cmd_stats_af_start** %2, align 8
  %92 = getelementptr inbounds %struct.vfe_cmd_stats_af_start, %struct.vfe_cmd_stats_af_start* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.vfe_statsaf_cfg, %struct.vfe_statsaf_cfg* %4, i32 0, i32 17
  store i32 %93, i32* %94, align 4
  %95 = load %struct.vfe_cmd_stats_af_start*, %struct.vfe_cmd_stats_af_start** %2, align 8
  %96 = getelementptr inbounds %struct.vfe_cmd_stats_af_start, %struct.vfe_cmd_stats_af_start* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = getelementptr inbounds %struct.vfe_statsaf_cfg, %struct.vfe_statsaf_cfg* %4, i32 0, i32 16
  store i32 %97, i32* %98, align 4
  %99 = load %struct.vfe_cmd_stats_af_start*, %struct.vfe_cmd_stats_af_start** %2, align 8
  %100 = getelementptr inbounds %struct.vfe_cmd_stats_af_start, %struct.vfe_cmd_stats_af_start* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  %103 = load i32, i32* %102, align 4
  %104 = getelementptr inbounds %struct.vfe_statsaf_cfg, %struct.vfe_statsaf_cfg* %4, i32 0, i32 15
  store i32 %103, i32* %104, align 4
  %105 = load %struct.vfe_cmd_stats_af_start*, %struct.vfe_cmd_stats_af_start** %2, align 8
  %106 = getelementptr inbounds %struct.vfe_cmd_stats_af_start, %struct.vfe_cmd_stats_af_start* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 1
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds %struct.vfe_statsaf_cfg, %struct.vfe_statsaf_cfg* %4, i32 0, i32 14
  store i32 %109, i32* %110, align 4
  %111 = load %struct.vfe_cmd_stats_af_start*, %struct.vfe_cmd_stats_af_start** %2, align 8
  %112 = getelementptr inbounds %struct.vfe_cmd_stats_af_start, %struct.vfe_cmd_stats_af_start* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 2
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds %struct.vfe_statsaf_cfg, %struct.vfe_statsaf_cfg* %4, i32 0, i32 13
  store i32 %115, i32* %116, align 4
  %117 = load %struct.vfe_cmd_stats_af_start*, %struct.vfe_cmd_stats_af_start** %2, align 8
  %118 = getelementptr inbounds %struct.vfe_cmd_stats_af_start, %struct.vfe_cmd_stats_af_start* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 3
  %121 = load i32, i32* %120, align 4
  %122 = getelementptr inbounds %struct.vfe_statsaf_cfg, %struct.vfe_statsaf_cfg* %4, i32 0, i32 12
  store i32 %121, i32* %122, align 4
  %123 = load %struct.vfe_cmd_stats_af_start*, %struct.vfe_cmd_stats_af_start** %2, align 8
  %124 = getelementptr inbounds %struct.vfe_cmd_stats_af_start, %struct.vfe_cmd_stats_af_start* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 4
  %127 = load i32, i32* %126, align 4
  %128 = getelementptr inbounds %struct.vfe_statsaf_cfg, %struct.vfe_statsaf_cfg* %4, i32 0, i32 11
  store i32 %127, i32* %128, align 4
  %129 = load %struct.vfe_cmd_stats_af_start*, %struct.vfe_cmd_stats_af_start** %2, align 8
  %130 = getelementptr inbounds %struct.vfe_cmd_stats_af_start, %struct.vfe_cmd_stats_af_start* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 5
  %133 = load i32, i32* %132, align 4
  %134 = getelementptr inbounds %struct.vfe_statsaf_cfg, %struct.vfe_statsaf_cfg* %4, i32 0, i32 10
  store i32 %133, i32* %134, align 4
  %135 = load %struct.vfe_cmd_stats_af_start*, %struct.vfe_cmd_stats_af_start** %2, align 8
  %136 = getelementptr inbounds %struct.vfe_cmd_stats_af_start, %struct.vfe_cmd_stats_af_start* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 6
  %139 = load i32, i32* %138, align 4
  %140 = getelementptr inbounds %struct.vfe_statsaf_cfg, %struct.vfe_statsaf_cfg* %4, i32 0, i32 9
  store i32 %139, i32* %140, align 4
  %141 = load %struct.vfe_cmd_stats_af_start*, %struct.vfe_cmd_stats_af_start** %2, align 8
  %142 = getelementptr inbounds %struct.vfe_cmd_stats_af_start, %struct.vfe_cmd_stats_af_start* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 7
  %145 = load i32, i32* %144, align 4
  %146 = getelementptr inbounds %struct.vfe_statsaf_cfg, %struct.vfe_statsaf_cfg* %4, i32 0, i32 8
  store i32 %145, i32* %146, align 4
  %147 = load %struct.vfe_cmd_stats_af_start*, %struct.vfe_cmd_stats_af_start** %2, align 8
  %148 = getelementptr inbounds %struct.vfe_cmd_stats_af_start, %struct.vfe_cmd_stats_af_start* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 8
  %151 = load i32, i32* %150, align 4
  %152 = getelementptr inbounds %struct.vfe_statsaf_cfg, %struct.vfe_statsaf_cfg* %4, i32 0, i32 7
  store i32 %151, i32* %152, align 4
  %153 = load %struct.vfe_cmd_stats_af_start*, %struct.vfe_cmd_stats_af_start** %2, align 8
  %154 = getelementptr inbounds %struct.vfe_cmd_stats_af_start, %struct.vfe_cmd_stats_af_start* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 9
  %157 = load i32, i32* %156, align 4
  %158 = getelementptr inbounds %struct.vfe_statsaf_cfg, %struct.vfe_statsaf_cfg* %4, i32 0, i32 6
  store i32 %157, i32* %158, align 4
  %159 = load %struct.vfe_cmd_stats_af_start*, %struct.vfe_cmd_stats_af_start** %2, align 8
  %160 = getelementptr inbounds %struct.vfe_cmd_stats_af_start, %struct.vfe_cmd_stats_af_start* %159, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 10
  %163 = load i32, i32* %162, align 4
  %164 = getelementptr inbounds %struct.vfe_statsaf_cfg, %struct.vfe_statsaf_cfg* %4, i32 0, i32 5
  store i32 %163, i32* %164, align 4
  %165 = load %struct.vfe_cmd_stats_af_start*, %struct.vfe_cmd_stats_af_start** %2, align 8
  %166 = getelementptr inbounds %struct.vfe_cmd_stats_af_start, %struct.vfe_cmd_stats_af_start* %165, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 11
  %169 = load i32, i32* %168, align 4
  %170 = getelementptr inbounds %struct.vfe_statsaf_cfg, %struct.vfe_statsaf_cfg* %4, i32 0, i32 4
  store i32 %169, i32* %170, align 4
  %171 = load %struct.vfe_cmd_stats_af_start*, %struct.vfe_cmd_stats_af_start** %2, align 8
  %172 = getelementptr inbounds %struct.vfe_cmd_stats_af_start, %struct.vfe_cmd_stats_af_start* %171, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 12
  %175 = load i32, i32* %174, align 4
  %176 = getelementptr inbounds %struct.vfe_statsaf_cfg, %struct.vfe_statsaf_cfg* %4, i32 0, i32 3
  store i32 %175, i32* %176, align 4
  %177 = load %struct.vfe_cmd_stats_af_start*, %struct.vfe_cmd_stats_af_start** %2, align 8
  %178 = getelementptr inbounds %struct.vfe_cmd_stats_af_start, %struct.vfe_cmd_stats_af_start* %177, i32 0, i32 0
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 13
  %181 = load i32, i32* %180, align 4
  %182 = getelementptr inbounds %struct.vfe_statsaf_cfg, %struct.vfe_statsaf_cfg* %4, i32 0, i32 2
  store i32 %181, i32* %182, align 4
  %183 = load %struct.vfe_cmd_stats_af_start*, %struct.vfe_cmd_stats_af_start** %2, align 8
  %184 = getelementptr inbounds %struct.vfe_cmd_stats_af_start, %struct.vfe_cmd_stats_af_start* %183, i32 0, i32 0
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 14
  %187 = load i32, i32* %186, align 4
  %188 = getelementptr inbounds %struct.vfe_statsaf_cfg, %struct.vfe_statsaf_cfg* %4, i32 0, i32 1
  store i32 %187, i32* %188, align 4
  %189 = load %struct.vfe_cmd_stats_af_start*, %struct.vfe_cmd_stats_af_start** %2, align 8
  %190 = getelementptr inbounds %struct.vfe_cmd_stats_af_start, %struct.vfe_cmd_stats_af_start* %189, i32 0, i32 0
  %191 = load i32*, i32** %190, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 15
  %193 = load i32, i32* %192, align 4
  %194 = getelementptr inbounds %struct.vfe_statsaf_cfg, %struct.vfe_statsaf_cfg* %4, i32 0, i32 0
  store i32 %193, i32* %194, align 4
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctrl, align 8
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @VFE_STATS_AF_GRID_0, align 8
  %199 = add nsw i64 %197, %198
  %200 = bitcast %struct.vfe_statsaf_cfg* %4 to i32*
  %201 = call i32 @vfe_prog_hw(i64 %199, i32* %200, i32 124)
  ret void
}

declare dso_local i32 @memset(%struct.vfe_statsaf_update*, i32, i32) #1

declare dso_local i32 @vfe_prog_hw(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
