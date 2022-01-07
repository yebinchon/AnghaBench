; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_adsp.c_msm_adsp_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_adsp.c_msm_adsp_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }
%struct.msm_adsp_module = type { i64, i32, i64, i32, i32*, %struct.msm_adsp_ops*, i32 }
%struct.msm_adsp_ops = type { i32 }

@adsp_info = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"adsp: opening module %s\0A\00", align 1
@adsp_open_lock = common dso_local global i32 0, align 4
@adsp_open_count = common dso_local global i64 0, align 8
@INT_ADSP = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@RPC_ADSP_RTOS_CMD_REGISTER_APP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"adsp: REGISTER_APP failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"adsp: module %s has been registered\0A\00", align 1
@ADSP_STATE_INIT_INFO = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msm_adsp_get(i8* %0, %struct.msm_adsp_module** %1, %struct.msm_adsp_ops* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.msm_adsp_module**, align 8
  %8 = alloca %struct.msm_adsp_ops*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.msm_adsp_module*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.msm_adsp_module** %1, %struct.msm_adsp_module*** %7, align 8
  store %struct.msm_adsp_ops* %2, %struct.msm_adsp_ops** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %11, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = call %struct.msm_adsp_module* @find_adsp_module_by_name(%struct.TYPE_3__* @adsp_info, i8* %12)
  store %struct.msm_adsp_module* %13, %struct.msm_adsp_module** %10, align 8
  %14 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %10, align 8
  %15 = icmp ne %struct.msm_adsp_module* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %133

19:                                               ; preds = %4
  %20 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %10, align 8
  %21 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %20, i32 0, i32 1
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %10, align 8
  %24 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %10, align 8
  %28 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 1
  store i64 %30, i64* %28, align 8
  %31 = icmp eq i64 %29, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %19
  %33 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %10, align 8
  %34 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %10, align 8
  %39 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @clk_enable(i64 %40)
  br label %42

42:                                               ; preds = %37, %32, %19
  %43 = call i32 @mutex_lock(i32* @adsp_open_lock)
  %44 = load i64, i64* @adsp_open_count, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* @adsp_open_count, align 8
  %46 = icmp eq i64 %44, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i32, i32* @INT_ADSP, align 4
  %49 = call i32 @enable_irq(i32 %48)
  %50 = call i32 (...) @prevent_suspend()
  br label %51

51:                                               ; preds = %47, %42
  %52 = call i32 @mutex_unlock(i32* @adsp_open_lock)
  %53 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %10, align 8
  %54 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %53, i32 0, i32 5
  %55 = load %struct.msm_adsp_ops*, %struct.msm_adsp_ops** %54, align 8
  %56 = icmp ne %struct.msm_adsp_ops* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load i32, i32* @EBUSY, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %11, align 4
  br label %96

60:                                               ; preds = %51
  %61 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %10, align 8
  %62 = call i32 @adsp_rpc_init(%struct.msm_adsp_module* %61)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %96

66:                                               ; preds = %60
  %67 = load %struct.msm_adsp_ops*, %struct.msm_adsp_ops** %8, align 8
  %68 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %10, align 8
  %69 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %68, i32 0, i32 5
  store %struct.msm_adsp_ops* %67, %struct.msm_adsp_ops** %69, align 8
  %70 = load i8*, i8** %9, align 8
  %71 = bitcast i8* %70 to i32*
  %72 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %10, align 8
  %73 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %72, i32 0, i32 4
  store i32* %71, i32** %73, align 8
  %74 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %10, align 8
  %75 = load %struct.msm_adsp_module**, %struct.msm_adsp_module*** %7, align 8
  store %struct.msm_adsp_module* %74, %struct.msm_adsp_module** %75, align 8
  %76 = load i32, i32* @RPC_ADSP_RTOS_CMD_REGISTER_APP, align 4
  %77 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %10, align 8
  %78 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %10, align 8
  %81 = call i32 @rpc_adsp_rtos_app_to_modem(i32 %76, i32 %79, %struct.msm_adsp_module* %80)
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %66
  %85 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %10, align 8
  %86 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %85, i32 0, i32 5
  store %struct.msm_adsp_ops* null, %struct.msm_adsp_ops** %86, align 8
  %87 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %10, align 8
  %88 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %87, i32 0, i32 4
  store i32* null, i32** %88, align 8
  %89 = load %struct.msm_adsp_module**, %struct.msm_adsp_module*** %7, align 8
  store %struct.msm_adsp_module* null, %struct.msm_adsp_module** %89, align 8
  %90 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %96

91:                                               ; preds = %66
  %92 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %10, align 8
  %93 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %91, %84, %65, %57
  %97 = call i32 @mutex_lock(i32* @adsp_open_lock)
  %98 = load i32, i32* %11, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %96
  %101 = load i64, i64* @adsp_open_count, align 8
  %102 = add nsw i64 %101, -1
  store i64 %102, i64* @adsp_open_count, align 8
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %100
  %105 = load i32, i32* @INT_ADSP, align 4
  %106 = call i32 @disable_irq(i32 %105)
  %107 = call i32 (...) @allow_suspend()
  br label %108

108:                                              ; preds = %104, %100, %96
  %109 = load i32, i32* %11, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %127

111:                                              ; preds = %108
  %112 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %10, align 8
  %113 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %114, -1
  store i64 %115, i64* %113, align 8
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %111
  %118 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %10, align 8
  %119 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %117
  %123 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %10, align 8
  %124 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @clk_disable(i64 %125)
  br label %127

127:                                              ; preds = %122, %117, %111, %108
  %128 = call i32 @mutex_unlock(i32* @adsp_open_lock)
  %129 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %10, align 8
  %130 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %129, i32 0, i32 1
  %131 = call i32 @mutex_unlock(i32* %130)
  %132 = load i32, i32* %11, align 4
  store i32 %132, i32* %5, align 4
  br label %133

133:                                              ; preds = %127, %16
  %134 = load i32, i32* %5, align 4
  ret i32 %134
}

declare dso_local %struct.msm_adsp_module* @find_adsp_module_by_name(%struct.TYPE_3__*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @clk_enable(i64) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @prevent_suspend(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @adsp_rpc_init(%struct.msm_adsp_module*) #1

declare dso_local i32 @rpc_adsp_rtos_app_to_modem(i32, i32, %struct.msm_adsp_module*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @allow_suspend(...) #1

declare dso_local i32 @clk_disable(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
