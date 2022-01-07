; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_chroma_subsample_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_chroma_subsample_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.vfe_cmd_chroma_subsample_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vfe_chromasubsample_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ctrl = common dso_local global %struct.TYPE_4__* null, align 8
@VFE_CHROMA_SUBSAMPLE_CFG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vfe_chroma_subsample_config(%struct.vfe_cmd_chroma_subsample_config* %0) #0 {
  %2 = alloca %struct.vfe_cmd_chroma_subsample_config*, align 8
  %3 = alloca %struct.vfe_chromasubsample_cfg, align 4
  store %struct.vfe_cmd_chroma_subsample_config* %0, %struct.vfe_cmd_chroma_subsample_config** %2, align 8
  %4 = call i32 @memset(%struct.vfe_chromasubsample_cfg* %3, i32 0, i32 44)
  %5 = load %struct.vfe_cmd_chroma_subsample_config*, %struct.vfe_cmd_chroma_subsample_config** %2, align 8
  %6 = getelementptr inbounds %struct.vfe_cmd_chroma_subsample_config, %struct.vfe_cmd_chroma_subsample_config* %5, i32 0, i32 11
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctrl, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store i32 %7, i32* %10, align 8
  %11 = load %struct.vfe_cmd_chroma_subsample_config*, %struct.vfe_cmd_chroma_subsample_config** %2, align 8
  %12 = getelementptr inbounds %struct.vfe_cmd_chroma_subsample_config, %struct.vfe_cmd_chroma_subsample_config* %11, i32 0, i32 10
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.vfe_chromasubsample_cfg, %struct.vfe_chromasubsample_cfg* %3, i32 0, i32 10
  store i32 %13, i32* %14, align 4
  %15 = load %struct.vfe_cmd_chroma_subsample_config*, %struct.vfe_cmd_chroma_subsample_config** %2, align 8
  %16 = getelementptr inbounds %struct.vfe_cmd_chroma_subsample_config, %struct.vfe_cmd_chroma_subsample_config* %15, i32 0, i32 9
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.vfe_chromasubsample_cfg, %struct.vfe_chromasubsample_cfg* %3, i32 0, i32 9
  store i32 %17, i32* %18, align 4
  %19 = load %struct.vfe_cmd_chroma_subsample_config*, %struct.vfe_cmd_chroma_subsample_config** %2, align 8
  %20 = getelementptr inbounds %struct.vfe_cmd_chroma_subsample_config, %struct.vfe_cmd_chroma_subsample_config* %19, i32 0, i32 8
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.vfe_chromasubsample_cfg, %struct.vfe_chromasubsample_cfg* %3, i32 0, i32 8
  store i32 %21, i32* %22, align 4
  %23 = load %struct.vfe_cmd_chroma_subsample_config*, %struct.vfe_cmd_chroma_subsample_config** %2, align 8
  %24 = getelementptr inbounds %struct.vfe_cmd_chroma_subsample_config, %struct.vfe_cmd_chroma_subsample_config* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.vfe_chromasubsample_cfg, %struct.vfe_chromasubsample_cfg* %3, i32 0, i32 7
  store i32 %25, i32* %26, align 4
  %27 = load %struct.vfe_cmd_chroma_subsample_config*, %struct.vfe_cmd_chroma_subsample_config** %2, align 8
  %28 = getelementptr inbounds %struct.vfe_cmd_chroma_subsample_config, %struct.vfe_cmd_chroma_subsample_config* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.vfe_chromasubsample_cfg, %struct.vfe_chromasubsample_cfg* %3, i32 0, i32 6
  store i32 %29, i32* %30, align 4
  %31 = load %struct.vfe_cmd_chroma_subsample_config*, %struct.vfe_cmd_chroma_subsample_config** %2, align 8
  %32 = getelementptr inbounds %struct.vfe_cmd_chroma_subsample_config, %struct.vfe_cmd_chroma_subsample_config* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.vfe_chromasubsample_cfg, %struct.vfe_chromasubsample_cfg* %3, i32 0, i32 5
  store i32 %33, i32* %34, align 4
  %35 = load %struct.vfe_cmd_chroma_subsample_config*, %struct.vfe_cmd_chroma_subsample_config** %2, align 8
  %36 = getelementptr inbounds %struct.vfe_cmd_chroma_subsample_config, %struct.vfe_cmd_chroma_subsample_config* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.vfe_chromasubsample_cfg, %struct.vfe_chromasubsample_cfg* %3, i32 0, i32 4
  store i32 %37, i32* %38, align 4
  %39 = load %struct.vfe_cmd_chroma_subsample_config*, %struct.vfe_cmd_chroma_subsample_config** %2, align 8
  %40 = getelementptr inbounds %struct.vfe_cmd_chroma_subsample_config, %struct.vfe_cmd_chroma_subsample_config* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.vfe_chromasubsample_cfg, %struct.vfe_chromasubsample_cfg* %3, i32 0, i32 3
  store i32 %41, i32* %42, align 4
  %43 = load %struct.vfe_cmd_chroma_subsample_config*, %struct.vfe_cmd_chroma_subsample_config** %2, align 8
  %44 = getelementptr inbounds %struct.vfe_cmd_chroma_subsample_config, %struct.vfe_cmd_chroma_subsample_config* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.vfe_chromasubsample_cfg, %struct.vfe_chromasubsample_cfg* %3, i32 0, i32 2
  store i32 %45, i32* %46, align 4
  %47 = load %struct.vfe_cmd_chroma_subsample_config*, %struct.vfe_cmd_chroma_subsample_config** %2, align 8
  %48 = getelementptr inbounds %struct.vfe_cmd_chroma_subsample_config, %struct.vfe_cmd_chroma_subsample_config* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.vfe_chromasubsample_cfg, %struct.vfe_chromasubsample_cfg* %3, i32 0, i32 1
  store i32 %49, i32* %50, align 4
  %51 = load %struct.vfe_cmd_chroma_subsample_config*, %struct.vfe_cmd_chroma_subsample_config** %2, align 8
  %52 = getelementptr inbounds %struct.vfe_cmd_chroma_subsample_config, %struct.vfe_cmd_chroma_subsample_config* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.vfe_chromasubsample_cfg, %struct.vfe_chromasubsample_cfg* %3, i32 0, i32 0
  store i32 %53, i32* %54, align 4
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctrl, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @VFE_CHROMA_SUBSAMPLE_CFG, align 8
  %59 = add nsw i64 %57, %58
  %60 = bitcast %struct.vfe_chromasubsample_cfg* %3 to i32*
  %61 = call i32 @vfe_prog_hw(i64 %59, i32* %60, i32 44)
  ret void
}

declare dso_local i32 @memset(%struct.vfe_chromasubsample_cfg*, i32, i32) #1

declare dso_local i32 @vfe_prog_hw(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
