; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_adsp.c_msm_adsp_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_adsp.c_msm_adsp_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_adsp_module = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"msm_adsp_enable() '%s'state[%d] id[%d]\0A\00", align 1
@RPC_ADSP_RTOS_CMD_ENABLE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"adsp: module '%s' enable timed out\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"adsp: module '%s' enable in progress\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"adsp: module '%s' already enabled\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"adsp: module '%s' disable in progress\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msm_adsp_enable(%struct.msm_adsp_module* %0) #0 {
  %2 = alloca %struct.msm_adsp_module*, align 8
  %3 = alloca i32, align 4
  store %struct.msm_adsp_module* %0, %struct.msm_adsp_module** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %2, align 8
  %5 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %2, align 8
  %8 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %2, align 8
  %11 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @pr_info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %6, i32 %9, i32 %12)
  %14 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %2, align 8
  %15 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %14, i32 0, i32 1
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %2, align 8
  %18 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %80 [
    i32 131, label %20
    i32 128, label %63
    i32 129, label %68
    i32 130, label %73
  ]

20:                                               ; preds = %1
  %21 = load i32, i32* @RPC_ADSP_RTOS_CMD_ENABLE, align 4
  %22 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %2, align 8
  %23 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %2, align 8
  %26 = call i32 @rpc_adsp_rtos_app_to_modem(i32 %21, i32 %24, %struct.msm_adsp_module* %25)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %80

30:                                               ; preds = %20
  %31 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %2, align 8
  %32 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %31, i32 0, i32 0
  store i32 128, i32* %32, align 4
  %33 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %2, align 8
  %34 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %33, i32 0, i32 1
  %35 = call i32 @mutex_unlock(i32* %34)
  %36 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %2, align 8
  %37 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %2, align 8
  %40 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 128
  %43 = zext i1 %42 to i32
  %44 = load i32, i32* @HZ, align 4
  %45 = mul nsw i32 1, %44
  %46 = call i32 @wait_event_timeout(i32 %38, i32 %43, i32 %45)
  store i32 %46, i32* %3, align 4
  %47 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %2, align 8
  %48 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %47, i32 0, i32 1
  %49 = call i32 @mutex_lock(i32* %48)
  %50 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %2, align 8
  %51 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 129
  br i1 %53, label %54, label %55

54:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %62

55:                                               ; preds = %30
  %56 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %2, align 8
  %57 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @ETIMEDOUT, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %55, %54
  br label %80

63:                                               ; preds = %1
  %64 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %2, align 8
  %65 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @pr_warning(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  br label %80

68:                                               ; preds = %1
  %69 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %2, align 8
  %70 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @pr_warning(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %71)
  br label %80

73:                                               ; preds = %1
  %74 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %2, align 8
  %75 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* @EBUSY, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %1, %73, %68, %63, %62, %29
  %81 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %2, align 8
  %82 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %81, i32 0, i32 1
  %83 = call i32 @mutex_unlock(i32* %82)
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @pr_info(i8*, i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rpc_adsp_rtos_app_to_modem(i32, i32, %struct.msm_adsp_module*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @pr_warning(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
