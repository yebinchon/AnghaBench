; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_rgb_gamma_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_rgb_gamma_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.vfe_cmd_rgb_gamma_config = type { i32, i32, i32 }

@ctrl = common dso_local global %struct.TYPE_4__* null, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfe_rgb_gamma_config(%struct.vfe_cmd_rgb_gamma_config* %0) #0 {
  %2 = alloca %struct.vfe_cmd_rgb_gamma_config*, align 8
  %3 = alloca i32, align 4
  store %struct.vfe_cmd_rgb_gamma_config* %0, %struct.vfe_cmd_rgb_gamma_config** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.vfe_cmd_rgb_gamma_config*, %struct.vfe_cmd_rgb_gamma_config** %2, align 8
  %5 = getelementptr inbounds %struct.vfe_cmd_rgb_gamma_config, %struct.vfe_cmd_rgb_gamma_config* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctrl, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store i32 %6, i32* %9, align 4
  %10 = load %struct.vfe_cmd_rgb_gamma_config*, %struct.vfe_cmd_rgb_gamma_config** %2, align 8
  %11 = getelementptr inbounds %struct.vfe_cmd_rgb_gamma_config, %struct.vfe_cmd_rgb_gamma_config* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %68 [
    i32 131, label %13
    i32 129, label %18
    i32 128, label %23
    i32 133, label %28
    i32 132, label %37
    i32 130, label %46
    i32 134, label %55
  ]

13:                                               ; preds = %1
  %14 = load %struct.vfe_cmd_rgb_gamma_config*, %struct.vfe_cmd_rgb_gamma_config** %2, align 8
  %15 = getelementptr inbounds %struct.vfe_cmd_rgb_gamma_config, %struct.vfe_cmd_rgb_gamma_config* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @vfe_write_gamma_table(i32 0, i32 0, i32 %16)
  br label %71

18:                                               ; preds = %1
  %19 = load %struct.vfe_cmd_rgb_gamma_config*, %struct.vfe_cmd_rgb_gamma_config** %2, align 8
  %20 = getelementptr inbounds %struct.vfe_cmd_rgb_gamma_config, %struct.vfe_cmd_rgb_gamma_config* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @vfe_write_gamma_table(i32 1, i32 0, i32 %21)
  br label %71

23:                                               ; preds = %1
  %24 = load %struct.vfe_cmd_rgb_gamma_config*, %struct.vfe_cmd_rgb_gamma_config** %2, align 8
  %25 = getelementptr inbounds %struct.vfe_cmd_rgb_gamma_config, %struct.vfe_cmd_rgb_gamma_config* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @vfe_write_gamma_table(i32 2, i32 0, i32 %26)
  br label %71

28:                                               ; preds = %1
  %29 = load %struct.vfe_cmd_rgb_gamma_config*, %struct.vfe_cmd_rgb_gamma_config** %2, align 8
  %30 = getelementptr inbounds %struct.vfe_cmd_rgb_gamma_config, %struct.vfe_cmd_rgb_gamma_config* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @vfe_write_gamma_table(i32 0, i32 0, i32 %31)
  %33 = load %struct.vfe_cmd_rgb_gamma_config*, %struct.vfe_cmd_rgb_gamma_config** %2, align 8
  %34 = getelementptr inbounds %struct.vfe_cmd_rgb_gamma_config, %struct.vfe_cmd_rgb_gamma_config* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @vfe_write_gamma_table(i32 1, i32 0, i32 %35)
  br label %71

37:                                               ; preds = %1
  %38 = load %struct.vfe_cmd_rgb_gamma_config*, %struct.vfe_cmd_rgb_gamma_config** %2, align 8
  %39 = getelementptr inbounds %struct.vfe_cmd_rgb_gamma_config, %struct.vfe_cmd_rgb_gamma_config* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @vfe_write_gamma_table(i32 0, i32 0, i32 %40)
  %42 = load %struct.vfe_cmd_rgb_gamma_config*, %struct.vfe_cmd_rgb_gamma_config** %2, align 8
  %43 = getelementptr inbounds %struct.vfe_cmd_rgb_gamma_config, %struct.vfe_cmd_rgb_gamma_config* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @vfe_write_gamma_table(i32 2, i32 0, i32 %44)
  br label %71

46:                                               ; preds = %1
  %47 = load %struct.vfe_cmd_rgb_gamma_config*, %struct.vfe_cmd_rgb_gamma_config** %2, align 8
  %48 = getelementptr inbounds %struct.vfe_cmd_rgb_gamma_config, %struct.vfe_cmd_rgb_gamma_config* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @vfe_write_gamma_table(i32 1, i32 0, i32 %49)
  %51 = load %struct.vfe_cmd_rgb_gamma_config*, %struct.vfe_cmd_rgb_gamma_config** %2, align 8
  %52 = getelementptr inbounds %struct.vfe_cmd_rgb_gamma_config, %struct.vfe_cmd_rgb_gamma_config* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @vfe_write_gamma_table(i32 2, i32 0, i32 %53)
  br label %71

55:                                               ; preds = %1
  %56 = load %struct.vfe_cmd_rgb_gamma_config*, %struct.vfe_cmd_rgb_gamma_config** %2, align 8
  %57 = getelementptr inbounds %struct.vfe_cmd_rgb_gamma_config, %struct.vfe_cmd_rgb_gamma_config* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @vfe_write_gamma_table(i32 0, i32 0, i32 %58)
  %60 = load %struct.vfe_cmd_rgb_gamma_config*, %struct.vfe_cmd_rgb_gamma_config** %2, align 8
  %61 = getelementptr inbounds %struct.vfe_cmd_rgb_gamma_config, %struct.vfe_cmd_rgb_gamma_config* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @vfe_write_gamma_table(i32 1, i32 0, i32 %62)
  %64 = load %struct.vfe_cmd_rgb_gamma_config*, %struct.vfe_cmd_rgb_gamma_config** %2, align 8
  %65 = getelementptr inbounds %struct.vfe_cmd_rgb_gamma_config, %struct.vfe_cmd_rgb_gamma_config* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @vfe_write_gamma_table(i32 2, i32 0, i32 %66)
  br label %71

68:                                               ; preds = %1
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %68, %55, %46, %37, %28, %23, %18, %13
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @vfe_write_gamma_table(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
