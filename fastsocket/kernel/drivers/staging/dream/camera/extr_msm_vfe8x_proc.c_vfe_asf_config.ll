; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_asf_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_asf_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.vfe_cmd_asf_config = type { i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vfe_asf_update = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vfe_asfcrop_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ctrl = common dso_local global %struct.TYPE_4__* null, align 8
@VFE_ASF_CFG = common dso_local global i64 0, align 8
@VFE_ASF_CROP_WIDTH_CFG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vfe_asf_config(%struct.vfe_cmd_asf_config* %0) #0 {
  %2 = alloca %struct.vfe_cmd_asf_config*, align 8
  %3 = alloca %struct.vfe_asf_update, align 4
  %4 = alloca %struct.vfe_asfcrop_cfg, align 4
  store %struct.vfe_cmd_asf_config* %0, %struct.vfe_cmd_asf_config** %2, align 8
  %5 = bitcast %struct.vfe_asf_update* %3 to %struct.vfe_asfcrop_cfg*
  %6 = call i32 @memset(%struct.vfe_asfcrop_cfg* %5, i32 0, i32 140)
  %7 = call i32 @memset(%struct.vfe_asfcrop_cfg* %4, i32 0, i32 140)
  %8 = load %struct.vfe_cmd_asf_config*, %struct.vfe_cmd_asf_config** %2, align 8
  %9 = getelementptr inbounds %struct.vfe_cmd_asf_config, %struct.vfe_cmd_asf_config* %8, i32 0, i32 19
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctrl, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i32 %10, i32* %13, align 8
  %14 = load %struct.vfe_cmd_asf_config*, %struct.vfe_cmd_asf_config** %2, align 8
  %15 = getelementptr inbounds %struct.vfe_cmd_asf_config, %struct.vfe_cmd_asf_config* %14, i32 0, i32 18
  %16 = load i32, i32* %15, align 8
  %17 = getelementptr inbounds %struct.vfe_asf_update, %struct.vfe_asf_update* %3, i32 0, i32 34
  store i32 %16, i32* %17, align 4
  %18 = load %struct.vfe_cmd_asf_config*, %struct.vfe_cmd_asf_config** %2, align 8
  %19 = getelementptr inbounds %struct.vfe_cmd_asf_config, %struct.vfe_cmd_asf_config* %18, i32 0, i32 17
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.vfe_asf_update, %struct.vfe_asf_update* %3, i32 0, i32 33
  store i32 %20, i32* %21, align 4
  %22 = load %struct.vfe_cmd_asf_config*, %struct.vfe_cmd_asf_config** %2, align 8
  %23 = getelementptr inbounds %struct.vfe_cmd_asf_config, %struct.vfe_cmd_asf_config* %22, i32 0, i32 16
  %24 = load i32, i32* %23, align 8
  %25 = getelementptr inbounds %struct.vfe_asf_update, %struct.vfe_asf_update* %3, i32 0, i32 32
  store i32 %24, i32* %25, align 4
  %26 = load %struct.vfe_cmd_asf_config*, %struct.vfe_cmd_asf_config** %2, align 8
  %27 = getelementptr inbounds %struct.vfe_cmd_asf_config, %struct.vfe_cmd_asf_config* %26, i32 0, i32 15
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.vfe_asf_update, %struct.vfe_asf_update* %3, i32 0, i32 31
  store i32 %28, i32* %29, align 4
  %30 = load %struct.vfe_cmd_asf_config*, %struct.vfe_cmd_asf_config** %2, align 8
  %31 = getelementptr inbounds %struct.vfe_cmd_asf_config, %struct.vfe_cmd_asf_config* %30, i32 0, i32 14
  %32 = load i32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.vfe_asf_update, %struct.vfe_asf_update* %3, i32 0, i32 30
  store i32 %32, i32* %33, align 4
  %34 = load %struct.vfe_cmd_asf_config*, %struct.vfe_cmd_asf_config** %2, align 8
  %35 = getelementptr inbounds %struct.vfe_cmd_asf_config, %struct.vfe_cmd_asf_config* %34, i32 0, i32 13
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.vfe_asf_update, %struct.vfe_asf_update* %3, i32 0, i32 29
  store i32 %36, i32* %37, align 4
  %38 = load %struct.vfe_cmd_asf_config*, %struct.vfe_cmd_asf_config** %2, align 8
  %39 = getelementptr inbounds %struct.vfe_cmd_asf_config, %struct.vfe_cmd_asf_config* %38, i32 0, i32 12
  %40 = load i32, i32* %39, align 8
  %41 = getelementptr inbounds %struct.vfe_asf_update, %struct.vfe_asf_update* %3, i32 0, i32 28
  store i32 %40, i32* %41, align 4
  %42 = load %struct.vfe_cmd_asf_config*, %struct.vfe_cmd_asf_config** %2, align 8
  %43 = getelementptr inbounds %struct.vfe_cmd_asf_config, %struct.vfe_cmd_asf_config* %42, i32 0, i32 11
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.vfe_asf_update, %struct.vfe_asf_update* %3, i32 0, i32 27
  store i32 %44, i32* %45, align 4
  %46 = load %struct.vfe_cmd_asf_config*, %struct.vfe_cmd_asf_config** %2, align 8
  %47 = getelementptr inbounds %struct.vfe_cmd_asf_config, %struct.vfe_cmd_asf_config* %46, i32 0, i32 10
  %48 = load i32, i32* %47, align 8
  %49 = getelementptr inbounds %struct.vfe_asf_update, %struct.vfe_asf_update* %3, i32 0, i32 26
  store i32 %48, i32* %49, align 4
  %50 = load %struct.vfe_cmd_asf_config*, %struct.vfe_cmd_asf_config** %2, align 8
  %51 = getelementptr inbounds %struct.vfe_cmd_asf_config, %struct.vfe_cmd_asf_config* %50, i32 0, i32 9
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.vfe_asf_update, %struct.vfe_asf_update* %3, i32 0, i32 25
  store i32 %52, i32* %53, align 4
  %54 = load %struct.vfe_cmd_asf_config*, %struct.vfe_cmd_asf_config** %2, align 8
  %55 = getelementptr inbounds %struct.vfe_cmd_asf_config, %struct.vfe_cmd_asf_config* %54, i32 0, i32 8
  %56 = load i32, i32* %55, align 8
  %57 = getelementptr inbounds %struct.vfe_asf_update, %struct.vfe_asf_update* %3, i32 0, i32 24
  store i32 %56, i32* %57, align 4
  %58 = load %struct.vfe_cmd_asf_config*, %struct.vfe_cmd_asf_config** %2, align 8
  %59 = getelementptr inbounds %struct.vfe_cmd_asf_config, %struct.vfe_cmd_asf_config* %58, i32 0, i32 7
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.vfe_asf_update, %struct.vfe_asf_update* %3, i32 0, i32 23
  store i32 %60, i32* %61, align 4
  %62 = load %struct.vfe_cmd_asf_config*, %struct.vfe_cmd_asf_config** %2, align 8
  %63 = getelementptr inbounds %struct.vfe_cmd_asf_config, %struct.vfe_cmd_asf_config* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 8
  %65 = getelementptr inbounds %struct.vfe_asf_update, %struct.vfe_asf_update* %3, i32 0, i32 22
  store i32 %64, i32* %65, align 4
  %66 = load %struct.vfe_cmd_asf_config*, %struct.vfe_cmd_asf_config** %2, align 8
  %67 = getelementptr inbounds %struct.vfe_cmd_asf_config, %struct.vfe_cmd_asf_config* %66, i32 0, i32 5
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.vfe_asf_update, %struct.vfe_asf_update* %3, i32 0, i32 21
  store i32 %70, i32* %71, align 4
  %72 = load %struct.vfe_cmd_asf_config*, %struct.vfe_cmd_asf_config** %2, align 8
  %73 = getelementptr inbounds %struct.vfe_cmd_asf_config, %struct.vfe_cmd_asf_config* %72, i32 0, i32 5
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.vfe_asf_update, %struct.vfe_asf_update* %3, i32 0, i32 20
  store i32 %76, i32* %77, align 4
  %78 = load %struct.vfe_cmd_asf_config*, %struct.vfe_cmd_asf_config** %2, align 8
  %79 = getelementptr inbounds %struct.vfe_cmd_asf_config, %struct.vfe_cmd_asf_config* %78, i32 0, i32 5
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 2
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.vfe_asf_update, %struct.vfe_asf_update* %3, i32 0, i32 19
  store i32 %82, i32* %83, align 4
  %84 = load %struct.vfe_cmd_asf_config*, %struct.vfe_cmd_asf_config** %2, align 8
  %85 = getelementptr inbounds %struct.vfe_cmd_asf_config, %struct.vfe_cmd_asf_config* %84, i32 0, i32 5
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 3
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.vfe_asf_update, %struct.vfe_asf_update* %3, i32 0, i32 18
  store i32 %88, i32* %89, align 4
  %90 = load %struct.vfe_cmd_asf_config*, %struct.vfe_cmd_asf_config** %2, align 8
  %91 = getelementptr inbounds %struct.vfe_cmd_asf_config, %struct.vfe_cmd_asf_config* %90, i32 0, i32 5
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 4
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds %struct.vfe_asf_update, %struct.vfe_asf_update* %3, i32 0, i32 17
  store i32 %94, i32* %95, align 4
  %96 = load %struct.vfe_cmd_asf_config*, %struct.vfe_cmd_asf_config** %2, align 8
  %97 = getelementptr inbounds %struct.vfe_cmd_asf_config, %struct.vfe_cmd_asf_config* %96, i32 0, i32 5
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 5
  %100 = load i32, i32* %99, align 4
  %101 = getelementptr inbounds %struct.vfe_asf_update, %struct.vfe_asf_update* %3, i32 0, i32 16
  store i32 %100, i32* %101, align 4
  %102 = load %struct.vfe_cmd_asf_config*, %struct.vfe_cmd_asf_config** %2, align 8
  %103 = getelementptr inbounds %struct.vfe_cmd_asf_config, %struct.vfe_cmd_asf_config* %102, i32 0, i32 5
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 6
  %106 = load i32, i32* %105, align 4
  %107 = getelementptr inbounds %struct.vfe_asf_update, %struct.vfe_asf_update* %3, i32 0, i32 15
  store i32 %106, i32* %107, align 4
  %108 = load %struct.vfe_cmd_asf_config*, %struct.vfe_cmd_asf_config** %2, align 8
  %109 = getelementptr inbounds %struct.vfe_cmd_asf_config, %struct.vfe_cmd_asf_config* %108, i32 0, i32 5
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 7
  %112 = load i32, i32* %111, align 4
  %113 = getelementptr inbounds %struct.vfe_asf_update, %struct.vfe_asf_update* %3, i32 0, i32 14
  store i32 %112, i32* %113, align 4
  %114 = load %struct.vfe_cmd_asf_config*, %struct.vfe_cmd_asf_config** %2, align 8
  %115 = getelementptr inbounds %struct.vfe_cmd_asf_config, %struct.vfe_cmd_asf_config* %114, i32 0, i32 5
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 8
  %118 = load i32, i32* %117, align 4
  %119 = getelementptr inbounds %struct.vfe_asf_update, %struct.vfe_asf_update* %3, i32 0, i32 13
  store i32 %118, i32* %119, align 4
  %120 = load %struct.vfe_cmd_asf_config*, %struct.vfe_cmd_asf_config** %2, align 8
  %121 = getelementptr inbounds %struct.vfe_cmd_asf_config, %struct.vfe_cmd_asf_config* %120, i32 0, i32 4
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 0
  %124 = load i32, i32* %123, align 4
  %125 = getelementptr inbounds %struct.vfe_asf_update, %struct.vfe_asf_update* %3, i32 0, i32 12
  store i32 %124, i32* %125, align 4
  %126 = load %struct.vfe_cmd_asf_config*, %struct.vfe_cmd_asf_config** %2, align 8
  %127 = getelementptr inbounds %struct.vfe_cmd_asf_config, %struct.vfe_cmd_asf_config* %126, i32 0, i32 4
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 1
  %130 = load i32, i32* %129, align 4
  %131 = getelementptr inbounds %struct.vfe_asf_update, %struct.vfe_asf_update* %3, i32 0, i32 11
  store i32 %130, i32* %131, align 4
  %132 = load %struct.vfe_cmd_asf_config*, %struct.vfe_cmd_asf_config** %2, align 8
  %133 = getelementptr inbounds %struct.vfe_cmd_asf_config, %struct.vfe_cmd_asf_config* %132, i32 0, i32 4
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 2
  %136 = load i32, i32* %135, align 4
  %137 = getelementptr inbounds %struct.vfe_asf_update, %struct.vfe_asf_update* %3, i32 0, i32 10
  store i32 %136, i32* %137, align 4
  %138 = load %struct.vfe_cmd_asf_config*, %struct.vfe_cmd_asf_config** %2, align 8
  %139 = getelementptr inbounds %struct.vfe_cmd_asf_config, %struct.vfe_cmd_asf_config* %138, i32 0, i32 4
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 3
  %142 = load i32, i32* %141, align 4
  %143 = getelementptr inbounds %struct.vfe_asf_update, %struct.vfe_asf_update* %3, i32 0, i32 9
  store i32 %142, i32* %143, align 4
  %144 = load %struct.vfe_cmd_asf_config*, %struct.vfe_cmd_asf_config** %2, align 8
  %145 = getelementptr inbounds %struct.vfe_cmd_asf_config, %struct.vfe_cmd_asf_config* %144, i32 0, i32 4
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 4
  %148 = load i32, i32* %147, align 4
  %149 = getelementptr inbounds %struct.vfe_asf_update, %struct.vfe_asf_update* %3, i32 0, i32 8
  store i32 %148, i32* %149, align 4
  %150 = load %struct.vfe_cmd_asf_config*, %struct.vfe_cmd_asf_config** %2, align 8
  %151 = getelementptr inbounds %struct.vfe_cmd_asf_config, %struct.vfe_cmd_asf_config* %150, i32 0, i32 4
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 5
  %154 = load i32, i32* %153, align 4
  %155 = getelementptr inbounds %struct.vfe_asf_update, %struct.vfe_asf_update* %3, i32 0, i32 7
  store i32 %154, i32* %155, align 4
  %156 = load %struct.vfe_cmd_asf_config*, %struct.vfe_cmd_asf_config** %2, align 8
  %157 = getelementptr inbounds %struct.vfe_cmd_asf_config, %struct.vfe_cmd_asf_config* %156, i32 0, i32 4
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 6
  %160 = load i32, i32* %159, align 4
  %161 = getelementptr inbounds %struct.vfe_asf_update, %struct.vfe_asf_update* %3, i32 0, i32 6
  store i32 %160, i32* %161, align 4
  %162 = load %struct.vfe_cmd_asf_config*, %struct.vfe_cmd_asf_config** %2, align 8
  %163 = getelementptr inbounds %struct.vfe_cmd_asf_config, %struct.vfe_cmd_asf_config* %162, i32 0, i32 4
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 7
  %166 = load i32, i32* %165, align 4
  %167 = getelementptr inbounds %struct.vfe_asf_update, %struct.vfe_asf_update* %3, i32 0, i32 5
  store i32 %166, i32* %167, align 4
  %168 = load %struct.vfe_cmd_asf_config*, %struct.vfe_cmd_asf_config** %2, align 8
  %169 = getelementptr inbounds %struct.vfe_cmd_asf_config, %struct.vfe_cmd_asf_config* %168, i32 0, i32 4
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 8
  %172 = load i32, i32* %171, align 4
  %173 = getelementptr inbounds %struct.vfe_asf_update, %struct.vfe_asf_update* %3, i32 0, i32 4
  store i32 %172, i32* %173, align 4
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctrl, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @VFE_ASF_CFG, align 8
  %178 = add nsw i64 %176, %177
  %179 = bitcast %struct.vfe_asf_update* %3 to i32*
  %180 = call i32 @vfe_prog_hw(i64 %178, i32* %179, i32 140)
  %181 = load %struct.vfe_cmd_asf_config*, %struct.vfe_cmd_asf_config** %2, align 8
  %182 = getelementptr inbounds %struct.vfe_cmd_asf_config, %struct.vfe_cmd_asf_config* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = getelementptr inbounds %struct.vfe_asfcrop_cfg, %struct.vfe_asfcrop_cfg* %4, i32 0, i32 3
  store i32 %183, i32* %184, align 4
  %185 = load %struct.vfe_cmd_asf_config*, %struct.vfe_cmd_asf_config** %2, align 8
  %186 = getelementptr inbounds %struct.vfe_cmd_asf_config, %struct.vfe_cmd_asf_config* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = getelementptr inbounds %struct.vfe_asfcrop_cfg, %struct.vfe_asfcrop_cfg* %4, i32 0, i32 2
  store i32 %187, i32* %188, align 4
  %189 = load %struct.vfe_cmd_asf_config*, %struct.vfe_cmd_asf_config** %2, align 8
  %190 = getelementptr inbounds %struct.vfe_cmd_asf_config, %struct.vfe_cmd_asf_config* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = getelementptr inbounds %struct.vfe_asfcrop_cfg, %struct.vfe_asfcrop_cfg* %4, i32 0, i32 1
  store i32 %191, i32* %192, align 4
  %193 = load %struct.vfe_cmd_asf_config*, %struct.vfe_cmd_asf_config** %2, align 8
  %194 = getelementptr inbounds %struct.vfe_cmd_asf_config, %struct.vfe_cmd_asf_config* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = getelementptr inbounds %struct.vfe_asfcrop_cfg, %struct.vfe_asfcrop_cfg* %4, i32 0, i32 0
  store i32 %195, i32* %196, align 4
  %197 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctrl, align 8
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @VFE_ASF_CROP_WIDTH_CFG, align 8
  %201 = add nsw i64 %199, %200
  %202 = bitcast %struct.vfe_asfcrop_cfg* %4 to i32*
  %203 = call i32 @vfe_prog_hw(i64 %201, i32* %202, i32 140)
  ret void
}

declare dso_local i32 @memset(%struct.vfe_asfcrop_cfg*, i32, i32) #1

declare dso_local i32 @vfe_prog_hw(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
