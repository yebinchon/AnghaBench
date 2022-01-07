; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_adsp.c_adsp_rpc_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_adsp.c_adsp_rpc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_adsp_module = type { i64 }

@RPC_ADSP_RTOS_ATOM_PROG = common dso_local global i32 0, align 4
@RPC_ADSP_RTOS_ATOM_VERS = common dso_local global i32 0, align 4
@MSM_RPC_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"adsp: could not open rpc client: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msm_adsp_module*)* @adsp_rpc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adsp_rpc_init(%struct.msm_adsp_module* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.msm_adsp_module*, align 8
  %4 = alloca i32, align 4
  store %struct.msm_adsp_module* %0, %struct.msm_adsp_module** %3, align 8
  %5 = load i32, i32* @RPC_ADSP_RTOS_ATOM_PROG, align 4
  %6 = load i32, i32* @RPC_ADSP_RTOS_ATOM_VERS, align 4
  %7 = load i32, i32* @MSM_RPC_UNINTERRUPTIBLE, align 4
  %8 = call i64 @msm_rpc_connect(i32 %5, i32 %6, i32 %7)
  %9 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %3, align 8
  %10 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %9, i32 0, i32 0
  store i64 %8, i64* %10, align 8
  %11 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %3, align 8
  %12 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i64 @IS_ERR(i64 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %1
  %17 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %3, align 8
  %18 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @PTR_ERR(i64 %19)
  store i32 %20, i32* %4, align 4
  %21 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %3, align 8
  %22 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %21, i32 0, i32 0
  store i64 0, i64* %22, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %27

26:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %16
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i64 @msm_rpc_connect(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
