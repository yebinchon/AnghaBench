; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_adsp.c_msm_adsp_disable_locked.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_adsp.c_msm_adsp_disable_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_adsp_module = type { i32, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"adsp: module '%s' already disabled\0A\00", align 1
@RPC_ADSP_RTOS_CMD_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msm_adsp_module*)* @msm_adsp_disable_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msm_adsp_disable_locked(%struct.msm_adsp_module* %0) #0 {
  %2 = alloca %struct.msm_adsp_module*, align 8
  %3 = alloca i32, align 4
  store %struct.msm_adsp_module* %0, %struct.msm_adsp_module** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %2, align 8
  %5 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %21 [
    i32 130, label %7
    i32 128, label %12
    i32 129, label %12
  ]

7:                                                ; preds = %1
  %8 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %2, align 8
  %9 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @pr_warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %10)
  br label %21

12:                                               ; preds = %1, %1
  %13 = load i32, i32* @RPC_ADSP_RTOS_CMD_DISABLE, align 4
  %14 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %2, align 8
  %15 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %2, align 8
  %18 = call i32 @rpc_adsp_rtos_app_to_modem(i32 %13, i32 %16, %struct.msm_adsp_module* %17)
  store i32 %18, i32* %3, align 4
  %19 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %2, align 8
  %20 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %19, i32 0, i32 0
  store i32 130, i32* %20, align 4
  br label %21

21:                                               ; preds = %12, %1, %7
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i32 @pr_warning(i8*, i32) #1

declare dso_local i32 @rpc_adsp_rtos_app_to_modem(i32, i32, %struct.msm_adsp_module*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
