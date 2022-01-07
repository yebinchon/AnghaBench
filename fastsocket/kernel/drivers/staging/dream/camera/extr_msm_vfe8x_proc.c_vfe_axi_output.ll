; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_axi_output.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_axi_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64 }
%struct.vfe_cmd_axi_output_config = type { %struct.TYPE_17__, %struct.TYPE_12__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__, %struct.TYPE_14__ }
%struct.TYPE_16__ = type { i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.vfe_output_path_combo = type { %struct.TYPE_15__, %struct.TYPE_13__ }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_13__ = type { i32* }
%struct.vfe_axi_out_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i8*, i32, i32, i32 }

@ctrl = common dso_local global %struct.TYPE_18__* null, align 8
@VFE_BUS_ENC_Y_WR_PING_ADDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vfe_cmd_axi_output_config*, %struct.vfe_output_path_combo*, %struct.vfe_output_path_combo*, i32)* @vfe_axi_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfe_axi_output(%struct.vfe_cmd_axi_output_config* %0, %struct.vfe_output_path_combo* %1, %struct.vfe_output_path_combo* %2, i32 %3) #0 {
  %5 = alloca %struct.vfe_cmd_axi_output_config*, align 8
  %6 = alloca %struct.vfe_output_path_combo*, align 8
  %7 = alloca %struct.vfe_output_path_combo*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.vfe_axi_out_cfg, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.vfe_cmd_axi_output_config* %0, %struct.vfe_cmd_axi_output_config** %5, align 8
  store %struct.vfe_output_path_combo* %1, %struct.vfe_output_path_combo** %6, align 8
  store %struct.vfe_output_path_combo* %2, %struct.vfe_output_path_combo** %7, align 8
  store i32 %3, i32* %8, align 4
  store i8* inttoptr (i64 1 to i8*), i8** %11, align 8
  %12 = load %struct.vfe_output_path_combo*, %struct.vfe_output_path_combo** %7, align 8
  %13 = getelementptr inbounds %struct.vfe_output_path_combo, %struct.vfe_output_path_combo* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.vfe_axi_out_cfg, %struct.vfe_axi_out_cfg* %9, i32 0, i32 27
  store i32 %17, i32* %18, align 8
  %19 = load %struct.vfe_output_path_combo*, %struct.vfe_output_path_combo** %7, align 8
  %20 = getelementptr inbounds %struct.vfe_output_path_combo, %struct.vfe_output_path_combo* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.vfe_axi_out_cfg, %struct.vfe_axi_out_cfg* %9, i32 0, i32 26
  store i32 %24, i32* %25, align 4
  %26 = load %struct.vfe_cmd_axi_output_config*, %struct.vfe_cmd_axi_output_config** %5, align 8
  %27 = getelementptr inbounds %struct.vfe_cmd_axi_output_config, %struct.vfe_cmd_axi_output_config* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.vfe_axi_out_cfg, %struct.vfe_axi_out_cfg* %9, i32 0, i32 25
  store i32 %30, i32* %31, align 8
  %32 = load %struct.vfe_cmd_axi_output_config*, %struct.vfe_cmd_axi_output_config** %5, align 8
  %33 = getelementptr inbounds %struct.vfe_cmd_axi_output_config, %struct.vfe_cmd_axi_output_config* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %8, align 4
  %38 = sub nsw i32 %37, 1
  %39 = add nsw i32 %36, %38
  %40 = load i32, i32* %8, align 4
  %41 = sdiv i32 %39, %40
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = getelementptr inbounds %struct.vfe_axi_out_cfg, %struct.vfe_axi_out_cfg* %9, i32 0, i32 0
  store i32 %42, i32* %43, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = getelementptr inbounds %struct.vfe_axi_out_cfg, %struct.vfe_axi_out_cfg* %9, i32 0, i32 24
  store i8* %44, i8** %45, align 8
  %46 = load %struct.vfe_cmd_axi_output_config*, %struct.vfe_cmd_axi_output_config** %5, align 8
  %47 = getelementptr inbounds %struct.vfe_cmd_axi_output_config, %struct.vfe_cmd_axi_output_config* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.vfe_axi_out_cfg, %struct.vfe_axi_out_cfg* %9, i32 0, i32 23
  store i32 %50, i32* %51, align 4
  %52 = load %struct.vfe_cmd_axi_output_config*, %struct.vfe_cmd_axi_output_config** %5, align 8
  %53 = getelementptr inbounds %struct.vfe_cmd_axi_output_config, %struct.vfe_cmd_axi_output_config* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %8, align 4
  %58 = sub nsw i32 %57, 1
  %59 = add nsw i32 %56, %58
  %60 = load i32, i32* %8, align 4
  %61 = sdiv i32 %59, %60
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = getelementptr inbounds %struct.vfe_axi_out_cfg, %struct.vfe_axi_out_cfg* %9, i32 0, i32 1
  store i32 %62, i32* %63, align 4
  %64 = load %struct.vfe_output_path_combo*, %struct.vfe_output_path_combo** %7, align 8
  %65 = getelementptr inbounds %struct.vfe_output_path_combo, %struct.vfe_output_path_combo* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.vfe_axi_out_cfg, %struct.vfe_axi_out_cfg* %9, i32 0, i32 22
  store i32 %69, i32* %70, align 8
  %71 = load %struct.vfe_output_path_combo*, %struct.vfe_output_path_combo** %7, align 8
  %72 = getelementptr inbounds %struct.vfe_output_path_combo, %struct.vfe_output_path_combo* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.vfe_axi_out_cfg, %struct.vfe_axi_out_cfg* %9, i32 0, i32 21
  store i32 %76, i32* %77, align 4
  %78 = load %struct.vfe_cmd_axi_output_config*, %struct.vfe_cmd_axi_output_config** %5, align 8
  %79 = getelementptr inbounds %struct.vfe_cmd_axi_output_config, %struct.vfe_cmd_axi_output_config* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.vfe_axi_out_cfg, %struct.vfe_axi_out_cfg* %9, i32 0, i32 20
  store i32 %82, i32* %83, align 8
  %84 = load %struct.vfe_cmd_axi_output_config*, %struct.vfe_cmd_axi_output_config** %5, align 8
  %85 = getelementptr inbounds %struct.vfe_cmd_axi_output_config, %struct.vfe_cmd_axi_output_config* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %8, align 4
  %90 = sub nsw i32 %89, 1
  %91 = add nsw i32 %88, %90
  %92 = load i32, i32* %8, align 4
  %93 = sdiv i32 %91, %92
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %10, align 4
  %95 = getelementptr inbounds %struct.vfe_axi_out_cfg, %struct.vfe_axi_out_cfg* %9, i32 0, i32 2
  store i32 %94, i32* %95, align 8
  %96 = load i8*, i8** %11, align 8
  %97 = getelementptr inbounds %struct.vfe_axi_out_cfg, %struct.vfe_axi_out_cfg* %9, i32 0, i32 19
  store i8* %96, i8** %97, align 8
  %98 = load %struct.vfe_cmd_axi_output_config*, %struct.vfe_cmd_axi_output_config** %5, align 8
  %99 = getelementptr inbounds %struct.vfe_cmd_axi_output_config, %struct.vfe_cmd_axi_output_config* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds %struct.vfe_axi_out_cfg, %struct.vfe_axi_out_cfg* %9, i32 0, i32 18
  store i32 %102, i32* %103, align 4
  %104 = load %struct.vfe_cmd_axi_output_config*, %struct.vfe_cmd_axi_output_config** %5, align 8
  %105 = getelementptr inbounds %struct.vfe_cmd_axi_output_config, %struct.vfe_cmd_axi_output_config* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %8, align 4
  %110 = sub nsw i32 %109, 1
  %111 = add nsw i32 %108, %110
  %112 = load i32, i32* %8, align 4
  %113 = sdiv i32 %111, %112
  store i32 %113, i32* %10, align 4
  %114 = load i32, i32* %10, align 4
  %115 = getelementptr inbounds %struct.vfe_axi_out_cfg, %struct.vfe_axi_out_cfg* %9, i32 0, i32 3
  store i32 %114, i32* %115, align 4
  %116 = load %struct.vfe_output_path_combo*, %struct.vfe_output_path_combo** %6, align 8
  %117 = getelementptr inbounds %struct.vfe_output_path_combo, %struct.vfe_output_path_combo* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  %121 = load i32, i32* %120, align 4
  %122 = getelementptr inbounds %struct.vfe_axi_out_cfg, %struct.vfe_axi_out_cfg* %9, i32 0, i32 17
  store i32 %121, i32* %122, align 8
  %123 = load %struct.vfe_output_path_combo*, %struct.vfe_output_path_combo** %6, align 8
  %124 = getelementptr inbounds %struct.vfe_output_path_combo, %struct.vfe_output_path_combo* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 1
  %128 = load i32, i32* %127, align 4
  %129 = getelementptr inbounds %struct.vfe_axi_out_cfg, %struct.vfe_axi_out_cfg* %9, i32 0, i32 16
  store i32 %128, i32* %129, align 4
  %130 = load %struct.vfe_cmd_axi_output_config*, %struct.vfe_cmd_axi_output_config** %5, align 8
  %131 = getelementptr inbounds %struct.vfe_cmd_axi_output_config, %struct.vfe_cmd_axi_output_config* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = getelementptr inbounds %struct.vfe_axi_out_cfg, %struct.vfe_axi_out_cfg* %9, i32 0, i32 15
  store i32 %134, i32* %135, align 8
  %136 = load %struct.vfe_cmd_axi_output_config*, %struct.vfe_cmd_axi_output_config** %5, align 8
  %137 = getelementptr inbounds %struct.vfe_cmd_axi_output_config, %struct.vfe_cmd_axi_output_config* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %8, align 4
  %142 = sub nsw i32 %141, 1
  %143 = add nsw i32 %140, %142
  %144 = load i32, i32* %8, align 4
  %145 = sdiv i32 %143, %144
  store i32 %145, i32* %10, align 4
  %146 = load i32, i32* %10, align 4
  %147 = getelementptr inbounds %struct.vfe_axi_out_cfg, %struct.vfe_axi_out_cfg* %9, i32 0, i32 4
  store i32 %146, i32* %147, align 8
  %148 = load i8*, i8** %11, align 8
  %149 = getelementptr inbounds %struct.vfe_axi_out_cfg, %struct.vfe_axi_out_cfg* %9, i32 0, i32 14
  store i8* %148, i8** %149, align 8
  %150 = load %struct.vfe_cmd_axi_output_config*, %struct.vfe_cmd_axi_output_config** %5, align 8
  %151 = getelementptr inbounds %struct.vfe_cmd_axi_output_config, %struct.vfe_cmd_axi_output_config* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = getelementptr inbounds %struct.vfe_axi_out_cfg, %struct.vfe_axi_out_cfg* %9, i32 0, i32 13
  store i32 %154, i32* %155, align 4
  %156 = load %struct.vfe_cmd_axi_output_config*, %struct.vfe_cmd_axi_output_config** %5, align 8
  %157 = getelementptr inbounds %struct.vfe_cmd_axi_output_config, %struct.vfe_cmd_axi_output_config* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* %8, align 4
  %162 = sub nsw i32 %161, 1
  %163 = add nsw i32 %160, %162
  %164 = load i32, i32* %8, align 4
  %165 = sdiv i32 %163, %164
  store i32 %165, i32* %10, align 4
  %166 = load i32, i32* %10, align 4
  %167 = getelementptr inbounds %struct.vfe_axi_out_cfg, %struct.vfe_axi_out_cfg* %9, i32 0, i32 5
  store i32 %166, i32* %167, align 4
  %168 = load %struct.vfe_output_path_combo*, %struct.vfe_output_path_combo** %6, align 8
  %169 = getelementptr inbounds %struct.vfe_output_path_combo, %struct.vfe_output_path_combo* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 0
  %173 = load i32, i32* %172, align 4
  %174 = getelementptr inbounds %struct.vfe_axi_out_cfg, %struct.vfe_axi_out_cfg* %9, i32 0, i32 12
  store i32 %173, i32* %174, align 8
  %175 = load %struct.vfe_output_path_combo*, %struct.vfe_output_path_combo** %6, align 8
  %176 = getelementptr inbounds %struct.vfe_output_path_combo, %struct.vfe_output_path_combo* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 1
  %180 = load i32, i32* %179, align 4
  %181 = getelementptr inbounds %struct.vfe_axi_out_cfg, %struct.vfe_axi_out_cfg* %9, i32 0, i32 11
  store i32 %180, i32* %181, align 4
  %182 = load %struct.vfe_cmd_axi_output_config*, %struct.vfe_cmd_axi_output_config** %5, align 8
  %183 = getelementptr inbounds %struct.vfe_cmd_axi_output_config, %struct.vfe_cmd_axi_output_config* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  %187 = getelementptr inbounds %struct.vfe_axi_out_cfg, %struct.vfe_axi_out_cfg* %9, i32 0, i32 10
  store i32 %186, i32* %187, align 8
  %188 = load %struct.vfe_cmd_axi_output_config*, %struct.vfe_cmd_axi_output_config** %5, align 8
  %189 = getelementptr inbounds %struct.vfe_cmd_axi_output_config, %struct.vfe_cmd_axi_output_config* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* %8, align 4
  %194 = sub nsw i32 %193, 1
  %195 = add nsw i32 %192, %194
  %196 = load i32, i32* %8, align 4
  %197 = sdiv i32 %195, %196
  store i32 %197, i32* %10, align 4
  %198 = load i32, i32* %10, align 4
  %199 = getelementptr inbounds %struct.vfe_axi_out_cfg, %struct.vfe_axi_out_cfg* %9, i32 0, i32 6
  store i32 %198, i32* %199, align 8
  %200 = load i8*, i8** %11, align 8
  %201 = getelementptr inbounds %struct.vfe_axi_out_cfg, %struct.vfe_axi_out_cfg* %9, i32 0, i32 9
  store i8* %200, i8** %201, align 8
  %202 = load %struct.vfe_cmd_axi_output_config*, %struct.vfe_cmd_axi_output_config** %5, align 8
  %203 = getelementptr inbounds %struct.vfe_cmd_axi_output_config, %struct.vfe_cmd_axi_output_config* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 4
  %207 = getelementptr inbounds %struct.vfe_axi_out_cfg, %struct.vfe_axi_out_cfg* %9, i32 0, i32 8
  store i32 %206, i32* %207, align 8
  %208 = load %struct.vfe_cmd_axi_output_config*, %struct.vfe_cmd_axi_output_config** %5, align 8
  %209 = getelementptr inbounds %struct.vfe_cmd_axi_output_config, %struct.vfe_cmd_axi_output_config* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* %8, align 4
  %214 = sub nsw i32 %213, 1
  %215 = add nsw i32 %212, %214
  %216 = load i32, i32* %8, align 4
  %217 = sdiv i32 %215, %216
  store i32 %217, i32* %10, align 4
  %218 = load i32, i32* %10, align 4
  %219 = getelementptr inbounds %struct.vfe_axi_out_cfg, %struct.vfe_axi_out_cfg* %9, i32 0, i32 7
  store i32 %218, i32* %219, align 4
  %220 = load %struct.TYPE_18__*, %struct.TYPE_18__** @ctrl, align 8
  %221 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @VFE_BUS_ENC_Y_WR_PING_ADDR, align 8
  %224 = add nsw i64 %222, %223
  %225 = bitcast %struct.vfe_axi_out_cfg* %9 to i8**
  %226 = call i32 @vfe_prog_hw(i64 %224, i8** %225, i32 136)
  ret void
}

declare dso_local i32 @vfe_prog_hw(i64, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
