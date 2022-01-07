; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_adsp.c_msm_adsp_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_adsp.c_msm_adsp_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_adsp_module = type { i64, i64, i32, i32, i64, i32*, i32*, i64 }

@.str = private unnamed_addr constant [25 x i8] c"adsp: closing module %s\0A\00", align 1
@adsp_cmd_lock = common dso_local global i32 0, align 4
@ADSP_STATE_DISABLED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"adsp: disabling module %s\0A\00", align 1
@adsp_open_count = common dso_local global i64 0, align 8
@INT_ADSP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"adsp: disable interrupt\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"adsp: module %s is already closed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @msm_adsp_put(%struct.msm_adsp_module* %0) #0 {
  %2 = alloca %struct.msm_adsp_module*, align 8
  %3 = alloca i64, align 8
  store %struct.msm_adsp_module* %0, %struct.msm_adsp_module** %2, align 8
  %4 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %2, align 8
  %5 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %4, i32 0, i32 2
  %6 = call i32 @mutex_lock(i32* %5)
  %7 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %2, align 8
  %8 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = add nsw i64 %9, -1
  store i64 %10, i64* %8, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %1
  %13 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %2, align 8
  %14 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %13, i32 0, i32 7
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %2, align 8
  %19 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %18, i32 0, i32 7
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @clk_disable(i64 %20)
  br label %22

22:                                               ; preds = %17, %12, %1
  %23 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %2, align 8
  %24 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %23, i32 0, i32 6
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %68

27:                                               ; preds = %22
  %28 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %2, align 8
  %29 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i64, i64* %3, align 8
  %33 = call i32 @spin_lock_irqsave(i32* @adsp_cmd_lock, i64 %32)
  %34 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %2, align 8
  %35 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %34, i32 0, i32 6
  store i32* null, i32** %35, align 8
  %36 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %2, align 8
  %37 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %36, i32 0, i32 5
  store i32* null, i32** %37, align 8
  %38 = load i64, i64* %3, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* @adsp_cmd_lock, i64 %38)
  %40 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %2, align 8
  %41 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @ADSP_STATE_DISABLED, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %27
  %46 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %2, align 8
  %47 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %2, align 8
  %51 = call i32 @msm_adsp_disable_locked(%struct.msm_adsp_module* %50)
  br label %52

52:                                               ; preds = %45, %27
  %53 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %2, align 8
  %54 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @msm_rpc_close(i64 %55)
  %57 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %2, align 8
  %58 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %57, i32 0, i32 4
  store i64 0, i64* %58, align 8
  %59 = load i64, i64* @adsp_open_count, align 8
  %60 = add nsw i64 %59, -1
  store i64 %60, i64* @adsp_open_count, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %52
  %63 = load i32, i32* @INT_ADSP, align 4
  %64 = call i32 @disable_irq(i32 %63)
  %65 = call i32 (...) @allow_suspend()
  %66 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %67

67:                                               ; preds = %62, %52
  br label %73

68:                                               ; preds = %22
  %69 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %2, align 8
  %70 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %68, %67
  %74 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %2, align 8
  %75 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %74, i32 0, i32 2
  %76 = call i32 @mutex_unlock(i32* %75)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @clk_disable(i64) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @msm_adsp_disable_locked(%struct.msm_adsp_module*) #1

declare dso_local i32 @msm_rpc_close(i64) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @allow_suspend(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
