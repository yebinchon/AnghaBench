; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_chroma_enhan_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_chroma_enhan_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.vfe_cmd_chroma_enhan_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vfe_chroma_enhance_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vfe_color_convert_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ctrl = common dso_local global %struct.TYPE_4__* null, align 8
@VFE_CHROMA_ENHAN_A = common dso_local global i64 0, align 8
@VFE_COLOR_CONVERT_COEFF_0 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vfe_chroma_enhan_config(%struct.vfe_cmd_chroma_enhan_config* %0) #0 {
  %2 = alloca %struct.vfe_cmd_chroma_enhan_config*, align 8
  %3 = alloca %struct.vfe_chroma_enhance_cfg, align 4
  %4 = alloca %struct.vfe_color_convert_cfg, align 4
  store %struct.vfe_cmd_chroma_enhan_config* %0, %struct.vfe_cmd_chroma_enhan_config** %2, align 8
  %5 = bitcast %struct.vfe_chroma_enhance_cfg* %3 to %struct.vfe_color_convert_cfg*
  %6 = call i32 @memset(%struct.vfe_color_convert_cfg* %5, i32 0, i32 56)
  %7 = call i32 @memset(%struct.vfe_color_convert_cfg* %4, i32 0, i32 56)
  %8 = load %struct.vfe_cmd_chroma_enhan_config*, %struct.vfe_cmd_chroma_enhan_config** %2, align 8
  %9 = getelementptr inbounds %struct.vfe_cmd_chroma_enhan_config, %struct.vfe_cmd_chroma_enhan_config* %8, i32 0, i32 14
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctrl, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i32 %10, i32* %13, align 8
  %14 = load %struct.vfe_cmd_chroma_enhan_config*, %struct.vfe_cmd_chroma_enhan_config** %2, align 8
  %15 = getelementptr inbounds %struct.vfe_cmd_chroma_enhan_config, %struct.vfe_cmd_chroma_enhan_config* %14, i32 0, i32 13
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.vfe_chroma_enhance_cfg, %struct.vfe_chroma_enhance_cfg* %3, i32 0, i32 13
  store i32 %16, i32* %17, align 4
  %18 = load %struct.vfe_cmd_chroma_enhan_config*, %struct.vfe_cmd_chroma_enhan_config** %2, align 8
  %19 = getelementptr inbounds %struct.vfe_cmd_chroma_enhan_config, %struct.vfe_cmd_chroma_enhan_config* %18, i32 0, i32 12
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.vfe_chroma_enhance_cfg, %struct.vfe_chroma_enhance_cfg* %3, i32 0, i32 12
  store i32 %20, i32* %21, align 4
  %22 = load %struct.vfe_cmd_chroma_enhan_config*, %struct.vfe_cmd_chroma_enhan_config** %2, align 8
  %23 = getelementptr inbounds %struct.vfe_cmd_chroma_enhan_config, %struct.vfe_cmd_chroma_enhan_config* %22, i32 0, i32 11
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.vfe_chroma_enhance_cfg, %struct.vfe_chroma_enhance_cfg* %3, i32 0, i32 11
  store i32 %24, i32* %25, align 4
  %26 = load %struct.vfe_cmd_chroma_enhan_config*, %struct.vfe_cmd_chroma_enhan_config** %2, align 8
  %27 = getelementptr inbounds %struct.vfe_cmd_chroma_enhan_config, %struct.vfe_cmd_chroma_enhan_config* %26, i32 0, i32 10
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.vfe_chroma_enhance_cfg, %struct.vfe_chroma_enhance_cfg* %3, i32 0, i32 10
  store i32 %28, i32* %29, align 4
  %30 = load %struct.vfe_cmd_chroma_enhan_config*, %struct.vfe_cmd_chroma_enhan_config** %2, align 8
  %31 = getelementptr inbounds %struct.vfe_cmd_chroma_enhan_config, %struct.vfe_cmd_chroma_enhan_config* %30, i32 0, i32 9
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.vfe_chroma_enhance_cfg, %struct.vfe_chroma_enhance_cfg* %3, i32 0, i32 9
  store i32 %32, i32* %33, align 4
  %34 = load %struct.vfe_cmd_chroma_enhan_config*, %struct.vfe_cmd_chroma_enhan_config** %2, align 8
  %35 = getelementptr inbounds %struct.vfe_cmd_chroma_enhan_config, %struct.vfe_cmd_chroma_enhan_config* %34, i32 0, i32 8
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.vfe_chroma_enhance_cfg, %struct.vfe_chroma_enhance_cfg* %3, i32 0, i32 8
  store i32 %36, i32* %37, align 4
  %38 = load %struct.vfe_cmd_chroma_enhan_config*, %struct.vfe_cmd_chroma_enhan_config** %2, align 8
  %39 = getelementptr inbounds %struct.vfe_cmd_chroma_enhan_config, %struct.vfe_cmd_chroma_enhan_config* %38, i32 0, i32 7
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.vfe_chroma_enhance_cfg, %struct.vfe_chroma_enhance_cfg* %3, i32 0, i32 7
  store i32 %40, i32* %41, align 4
  %42 = load %struct.vfe_cmd_chroma_enhan_config*, %struct.vfe_cmd_chroma_enhan_config** %2, align 8
  %43 = getelementptr inbounds %struct.vfe_cmd_chroma_enhan_config, %struct.vfe_cmd_chroma_enhan_config* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.vfe_chroma_enhance_cfg, %struct.vfe_chroma_enhance_cfg* %3, i32 0, i32 6
  store i32 %44, i32* %45, align 4
  %46 = load %struct.vfe_cmd_chroma_enhan_config*, %struct.vfe_cmd_chroma_enhan_config** %2, align 8
  %47 = getelementptr inbounds %struct.vfe_cmd_chroma_enhan_config, %struct.vfe_cmd_chroma_enhan_config* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.vfe_chroma_enhance_cfg, %struct.vfe_chroma_enhance_cfg* %3, i32 0, i32 5
  store i32 %48, i32* %49, align 4
  %50 = load %struct.vfe_cmd_chroma_enhan_config*, %struct.vfe_cmd_chroma_enhan_config** %2, align 8
  %51 = getelementptr inbounds %struct.vfe_cmd_chroma_enhan_config, %struct.vfe_cmd_chroma_enhan_config* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.vfe_chroma_enhance_cfg, %struct.vfe_chroma_enhance_cfg* %3, i32 0, i32 4
  store i32 %52, i32* %53, align 4
  %54 = load %struct.vfe_cmd_chroma_enhan_config*, %struct.vfe_cmd_chroma_enhan_config** %2, align 8
  %55 = getelementptr inbounds %struct.vfe_cmd_chroma_enhan_config, %struct.vfe_cmd_chroma_enhan_config* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.vfe_color_convert_cfg, %struct.vfe_color_convert_cfg* %4, i32 0, i32 3
  store i32 %56, i32* %57, align 4
  %58 = load %struct.vfe_cmd_chroma_enhan_config*, %struct.vfe_cmd_chroma_enhan_config** %2, align 8
  %59 = getelementptr inbounds %struct.vfe_cmd_chroma_enhan_config, %struct.vfe_cmd_chroma_enhan_config* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.vfe_color_convert_cfg, %struct.vfe_color_convert_cfg* %4, i32 0, i32 2
  store i32 %60, i32* %61, align 4
  %62 = load %struct.vfe_cmd_chroma_enhan_config*, %struct.vfe_cmd_chroma_enhan_config** %2, align 8
  %63 = getelementptr inbounds %struct.vfe_cmd_chroma_enhan_config, %struct.vfe_cmd_chroma_enhan_config* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.vfe_color_convert_cfg, %struct.vfe_color_convert_cfg* %4, i32 0, i32 1
  store i32 %64, i32* %65, align 4
  %66 = load %struct.vfe_cmd_chroma_enhan_config*, %struct.vfe_cmd_chroma_enhan_config** %2, align 8
  %67 = getelementptr inbounds %struct.vfe_cmd_chroma_enhan_config, %struct.vfe_cmd_chroma_enhan_config* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.vfe_color_convert_cfg, %struct.vfe_color_convert_cfg* %4, i32 0, i32 0
  store i32 %68, i32* %69, align 4
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctrl, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @VFE_CHROMA_ENHAN_A, align 8
  %74 = add nsw i64 %72, %73
  %75 = bitcast %struct.vfe_chroma_enhance_cfg* %3 to i32*
  %76 = call i32 @vfe_prog_hw(i64 %74, i32* %75, i32 56)
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctrl, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @VFE_COLOR_CONVERT_COEFF_0, align 8
  %81 = add nsw i64 %79, %80
  %82 = bitcast %struct.vfe_color_convert_cfg* %4 to i32*
  %83 = call i32 @vfe_prog_hw(i64 %81, i32* %82, i32 56)
  ret void
}

declare dso_local i32 @memset(%struct.vfe_color_convert_cfg*, i32, i32) #1

declare dso_local i32 @vfe_prog_hw(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
