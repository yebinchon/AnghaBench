; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x.c_msm_camvfe_fn_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x.c_msm_camvfe_fn_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_camvfe_fn = type { i32, i32, i32, i32, i32 }

@vfe_lock = common dso_local global i32 0, align 4
@vfe_init = common dso_local global i32 0, align 4
@vfe_enable = common dso_local global i32 0, align 4
@vfe_config = common dso_local global i32 0, align 4
@vfe_disable = common dso_local global i32 0, align 4
@vfe_release = common dso_local global i32 0, align 4
@vfe_syncdata = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @msm_camvfe_fn_init(%struct.msm_camvfe_fn* %0, i8* %1) #0 {
  %3 = alloca %struct.msm_camvfe_fn*, align 8
  %4 = alloca i8*, align 8
  store %struct.msm_camvfe_fn* %0, %struct.msm_camvfe_fn** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = call i32 @mutex_init(i32* @vfe_lock)
  %6 = load i32, i32* @vfe_init, align 4
  %7 = load %struct.msm_camvfe_fn*, %struct.msm_camvfe_fn** %3, align 8
  %8 = getelementptr inbounds %struct.msm_camvfe_fn, %struct.msm_camvfe_fn* %7, i32 0, i32 4
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @vfe_enable, align 4
  %10 = load %struct.msm_camvfe_fn*, %struct.msm_camvfe_fn** %3, align 8
  %11 = getelementptr inbounds %struct.msm_camvfe_fn, %struct.msm_camvfe_fn* %10, i32 0, i32 3
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @vfe_config, align 4
  %13 = load %struct.msm_camvfe_fn*, %struct.msm_camvfe_fn** %3, align 8
  %14 = getelementptr inbounds %struct.msm_camvfe_fn, %struct.msm_camvfe_fn* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @vfe_disable, align 4
  %16 = load %struct.msm_camvfe_fn*, %struct.msm_camvfe_fn** %3, align 8
  %17 = getelementptr inbounds %struct.msm_camvfe_fn, %struct.msm_camvfe_fn* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @vfe_release, align 4
  %19 = load %struct.msm_camvfe_fn*, %struct.msm_camvfe_fn** %3, align 8
  %20 = getelementptr inbounds %struct.msm_camvfe_fn, %struct.msm_camvfe_fn* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load i8*, i8** %4, align 8
  store i8* %21, i8** @vfe_syncdata, align 8
  ret void
}

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
