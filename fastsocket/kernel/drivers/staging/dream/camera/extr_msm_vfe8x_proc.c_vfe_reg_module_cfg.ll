; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_reg_module_cfg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_reg_module_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.vfe_module_enable = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vfe_mod_enable = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ctrl = common dso_local global %struct.TYPE_2__* null, align 8
@VFE_MODULE_CFG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vfe_module_enable*)* @vfe_reg_module_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfe_reg_module_cfg(%struct.vfe_module_enable* %0) #0 {
  %2 = alloca %struct.vfe_module_enable*, align 8
  %3 = alloca %struct.vfe_mod_enable, align 4
  store %struct.vfe_module_enable* %0, %struct.vfe_module_enable** %2, align 8
  %4 = call i32 @memset(%struct.vfe_mod_enable* %3, i32 0, i32 80)
  %5 = load %struct.vfe_module_enable*, %struct.vfe_module_enable** %2, align 8
  %6 = getelementptr inbounds %struct.vfe_module_enable, %struct.vfe_module_enable* %5, i32 0, i32 19
  %7 = load i32, i32* %6, align 4
  %8 = getelementptr inbounds %struct.vfe_mod_enable, %struct.vfe_mod_enable* %3, i32 0, i32 19
  store i32 %7, i32* %8, align 4
  %9 = load %struct.vfe_module_enable*, %struct.vfe_module_enable** %2, align 8
  %10 = getelementptr inbounds %struct.vfe_module_enable, %struct.vfe_module_enable* %9, i32 0, i32 18
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.vfe_mod_enable, %struct.vfe_mod_enable* %3, i32 0, i32 18
  store i32 %11, i32* %12, align 4
  %13 = load %struct.vfe_module_enable*, %struct.vfe_module_enable** %2, align 8
  %14 = getelementptr inbounds %struct.vfe_module_enable, %struct.vfe_module_enable* %13, i32 0, i32 17
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.vfe_mod_enable, %struct.vfe_mod_enable* %3, i32 0, i32 17
  store i32 %15, i32* %16, align 4
  %17 = load %struct.vfe_module_enable*, %struct.vfe_module_enable** %2, align 8
  %18 = getelementptr inbounds %struct.vfe_module_enable, %struct.vfe_module_enable* %17, i32 0, i32 16
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.vfe_mod_enable, %struct.vfe_mod_enable* %3, i32 0, i32 16
  store i32 %19, i32* %20, align 4
  %21 = load %struct.vfe_module_enable*, %struct.vfe_module_enable** %2, align 8
  %22 = getelementptr inbounds %struct.vfe_module_enable, %struct.vfe_module_enable* %21, i32 0, i32 15
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.vfe_mod_enable, %struct.vfe_mod_enable* %3, i32 0, i32 15
  store i32 %23, i32* %24, align 4
  %25 = load %struct.vfe_module_enable*, %struct.vfe_module_enable** %2, align 8
  %26 = getelementptr inbounds %struct.vfe_module_enable, %struct.vfe_module_enable* %25, i32 0, i32 14
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.vfe_mod_enable, %struct.vfe_mod_enable* %3, i32 0, i32 14
  store i32 %27, i32* %28, align 4
  %29 = load %struct.vfe_module_enable*, %struct.vfe_module_enable** %2, align 8
  %30 = getelementptr inbounds %struct.vfe_module_enable, %struct.vfe_module_enable* %29, i32 0, i32 13
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.vfe_mod_enable, %struct.vfe_mod_enable* %3, i32 0, i32 13
  store i32 %31, i32* %32, align 4
  %33 = load %struct.vfe_module_enable*, %struct.vfe_module_enable** %2, align 8
  %34 = getelementptr inbounds %struct.vfe_module_enable, %struct.vfe_module_enable* %33, i32 0, i32 12
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.vfe_mod_enable, %struct.vfe_mod_enable* %3, i32 0, i32 12
  store i32 %35, i32* %36, align 4
  %37 = load %struct.vfe_module_enable*, %struct.vfe_module_enable** %2, align 8
  %38 = getelementptr inbounds %struct.vfe_module_enable, %struct.vfe_module_enable* %37, i32 0, i32 11
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.vfe_mod_enable, %struct.vfe_mod_enable* %3, i32 0, i32 11
  store i32 %39, i32* %40, align 4
  %41 = load %struct.vfe_module_enable*, %struct.vfe_module_enable** %2, align 8
  %42 = getelementptr inbounds %struct.vfe_module_enable, %struct.vfe_module_enable* %41, i32 0, i32 10
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.vfe_mod_enable, %struct.vfe_mod_enable* %3, i32 0, i32 10
  store i32 %43, i32* %44, align 4
  %45 = load %struct.vfe_module_enable*, %struct.vfe_module_enable** %2, align 8
  %46 = getelementptr inbounds %struct.vfe_module_enable, %struct.vfe_module_enable* %45, i32 0, i32 9
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.vfe_mod_enable, %struct.vfe_mod_enable* %3, i32 0, i32 9
  store i32 %47, i32* %48, align 4
  %49 = load %struct.vfe_module_enable*, %struct.vfe_module_enable** %2, align 8
  %50 = getelementptr inbounds %struct.vfe_module_enable, %struct.vfe_module_enable* %49, i32 0, i32 8
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.vfe_mod_enable, %struct.vfe_mod_enable* %3, i32 0, i32 8
  store i32 %51, i32* %52, align 4
  %53 = load %struct.vfe_module_enable*, %struct.vfe_module_enable** %2, align 8
  %54 = getelementptr inbounds %struct.vfe_module_enable, %struct.vfe_module_enable* %53, i32 0, i32 7
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.vfe_mod_enable, %struct.vfe_mod_enable* %3, i32 0, i32 7
  store i32 %55, i32* %56, align 4
  %57 = load %struct.vfe_module_enable*, %struct.vfe_module_enable** %2, align 8
  %58 = getelementptr inbounds %struct.vfe_module_enable, %struct.vfe_module_enable* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.vfe_mod_enable, %struct.vfe_mod_enable* %3, i32 0, i32 6
  store i32 %59, i32* %60, align 4
  %61 = load %struct.vfe_module_enable*, %struct.vfe_module_enable** %2, align 8
  %62 = getelementptr inbounds %struct.vfe_module_enable, %struct.vfe_module_enable* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.vfe_mod_enable, %struct.vfe_mod_enable* %3, i32 0, i32 5
  store i32 %63, i32* %64, align 4
  %65 = load %struct.vfe_module_enable*, %struct.vfe_module_enable** %2, align 8
  %66 = getelementptr inbounds %struct.vfe_module_enable, %struct.vfe_module_enable* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.vfe_mod_enable, %struct.vfe_mod_enable* %3, i32 0, i32 4
  store i32 %67, i32* %68, align 4
  %69 = load %struct.vfe_module_enable*, %struct.vfe_module_enable** %2, align 8
  %70 = getelementptr inbounds %struct.vfe_module_enable, %struct.vfe_module_enable* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.vfe_mod_enable, %struct.vfe_mod_enable* %3, i32 0, i32 3
  store i32 %71, i32* %72, align 4
  %73 = load %struct.vfe_module_enable*, %struct.vfe_module_enable** %2, align 8
  %74 = getelementptr inbounds %struct.vfe_module_enable, %struct.vfe_module_enable* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.vfe_mod_enable, %struct.vfe_mod_enable* %3, i32 0, i32 2
  store i32 %75, i32* %76, align 4
  %77 = load %struct.vfe_module_enable*, %struct.vfe_module_enable** %2, align 8
  %78 = getelementptr inbounds %struct.vfe_module_enable, %struct.vfe_module_enable* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.vfe_mod_enable, %struct.vfe_mod_enable* %3, i32 0, i32 1
  store i32 %79, i32* %80, align 4
  %81 = load %struct.vfe_module_enable*, %struct.vfe_module_enable** %2, align 8
  %82 = getelementptr inbounds %struct.vfe_module_enable, %struct.vfe_module_enable* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.vfe_mod_enable, %struct.vfe_mod_enable* %3, i32 0, i32 0
  store i32 %83, i32* %84, align 4
  %85 = bitcast %struct.vfe_mod_enable* %3 to i32*
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctrl, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @VFE_MODULE_CFG, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i32 @writel(i32 %86, i64 %91)
  ret void
}

declare dso_local i32 @memset(%struct.vfe_mod_enable*, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
