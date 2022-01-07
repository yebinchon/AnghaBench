; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_get_hw_version.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_get_hw_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.vfe_cmd_hw_version = type { i32, i32, i32 }
%struct.vfe_hw_ver = type { i32, i32, i32 }

@ctrl = common dso_local global %struct.TYPE_2__* null, align 8
@VFE_HW_VERSION = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vfe_get_hw_version(%struct.vfe_cmd_hw_version* %0) #0 {
  %2 = alloca %struct.vfe_cmd_hw_version*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.vfe_hw_ver, align 4
  store %struct.vfe_cmd_hw_version* %0, %struct.vfe_cmd_hw_version** %2, align 8
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctrl, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @VFE_HW_VERSION, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @readl(i64 %9)
  store i32 %10, i32* %3, align 4
  %11 = bitcast i32* %3 to %struct.vfe_hw_ver*
  %12 = bitcast %struct.vfe_hw_ver* %4 to i8*
  %13 = bitcast %struct.vfe_hw_ver* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 %13, i64 12, i1 false)
  %14 = getelementptr inbounds %struct.vfe_hw_ver, %struct.vfe_hw_ver* %4, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.vfe_cmd_hw_version*, %struct.vfe_cmd_hw_version** %2, align 8
  %17 = getelementptr inbounds %struct.vfe_cmd_hw_version, %struct.vfe_cmd_hw_version* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = getelementptr inbounds %struct.vfe_hw_ver, %struct.vfe_hw_ver* %4, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.vfe_cmd_hw_version*, %struct.vfe_cmd_hw_version** %2, align 8
  %21 = getelementptr inbounds %struct.vfe_cmd_hw_version, %struct.vfe_cmd_hw_version* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = getelementptr inbounds %struct.vfe_hw_ver, %struct.vfe_hw_ver* %4, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.vfe_cmd_hw_version*, %struct.vfe_cmd_hw_version** %2, align 8
  %25 = getelementptr inbounds %struct.vfe_cmd_hw_version, %struct.vfe_cmd_hw_version* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  ret void
}

declare dso_local i32 @readl(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
