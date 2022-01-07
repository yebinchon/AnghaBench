; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_adsp.c_adsp_rtos_read_ctrl_word_cmd_tast_to_h_v.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_adsp.c_adsp_rtos_read_ctrl_word_cmd_tast_to_h_v.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adsp_info = type { i32 }
%struct.msm_adsp_module = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (i32, i32, i32, void (i8*, i64)*)* }

@MSM_AD5_BASE = common dso_local global i64 0, align 8
@QDSP_RAMC_OFFSET = common dso_local global i64 0, align 8
@ADSP_RTOS_READ_CTRL_WORD_TASK_ID_M = common dso_local global i32 0, align 4
@ADSP_RTOS_READ_CTRL_WORD_MSG_ID_M = common dso_local global i32 0, align 4
@read_event_size = common dso_local global i32 0, align 4
@read_event_addr = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"adsp: bogus task id %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"adsp: no module for task id %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"adsp: module %s is not open\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adsp_info*, i8*)* @adsp_rtos_read_ctrl_word_cmd_tast_to_h_v to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adsp_rtos_read_ctrl_word_cmd_tast_to_h_v(%struct.adsp_info* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adsp_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.msm_adsp_module*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca void (i8*, i64)*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.adsp_info* %0, %struct.adsp_info** %4, align 8
  store i8* %1, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = load i64, i64* @MSM_AD5_BASE, align 8
  %17 = load i64, i64* @QDSP_RAMC_OFFSET, align 8
  %18 = add nsw i64 %16, %17
  %19 = inttoptr i64 %18 to i8*
  %20 = icmp uge i8* %15, %19
  br i1 %20, label %21, label %41

21:                                               ; preds = %2
  %22 = load i8*, i8** %5, align 8
  %23 = bitcast i8* %22 to i32*
  store i32* %23, i32** %11, align 8
  %24 = load i32*, i32** %11, align 8
  %25 = getelementptr inbounds i32, i32* %24, i32 1
  store i32* %25, i32** %11, align 8
  %26 = load i32, i32* %24, align 4
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* @ADSP_RTOS_READ_CTRL_WORD_TASK_ID_M, align 4
  %29 = and i32 %27, %28
  %30 = ashr i32 %29, 8
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @ADSP_RTOS_READ_CTRL_WORD_MSG_ID_M, align 4
  %33 = and i32 %31, %32
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %12, align 4
  %35 = ashr i32 %34, 16
  store i32 %35, i32* @read_event_size, align 4
  %36 = load i32*, i32** %11, align 8
  store i32* %36, i32** @read_event_addr, align 8
  %37 = load i32, i32* @read_event_size, align 4
  %38 = sext i32 %37 to i64
  %39 = mul i64 %38, 4
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %9, align 4
  store void (i8*, i64)* @read_event_32, void (i8*, i64)** %10, align 8
  br label %62

41:                                               ; preds = %2
  %42 = load i8*, i8** %5, align 8
  %43 = bitcast i8* %42 to i32*
  store i32* %43, i32** %13, align 8
  %44 = load i32*, i32** %13, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %13, align 8
  %46 = load i32, i32* %44, align 4
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* @ADSP_RTOS_READ_CTRL_WORD_TASK_ID_M, align 4
  %49 = and i32 %47, %48
  %50 = ashr i32 %49, 8
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* @ADSP_RTOS_READ_CTRL_WORD_MSG_ID_M, align 4
  %53 = and i32 %51, %52
  store i32 %53, i32* %8, align 4
  %54 = load i32*, i32** %13, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %55, i32** %13, align 8
  %56 = load i32, i32* %54, align 4
  store i32 %56, i32* @read_event_size, align 4
  %57 = load i32*, i32** %13, align 8
  store i32* %57, i32** @read_event_addr, align 8
  %58 = load i32, i32* @read_event_size, align 4
  %59 = sext i32 %58 to i64
  %60 = mul i64 %59, 4
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %9, align 4
  store void (i8*, i64)* @read_event_16, void (i8*, i64)** %10, align 8
  br label %62

62:                                               ; preds = %41, %21
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.adsp_info*, %struct.adsp_info** %4, align 8
  %65 = getelementptr inbounds %struct.adsp_info, %struct.adsp_info* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp ugt i32 %63, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %69)
  store i32 0, i32* %3, align 4
  br label %109

71:                                               ; preds = %62
  %72 = load %struct.adsp_info*, %struct.adsp_info** %4, align 8
  %73 = load %struct.adsp_info*, %struct.adsp_info** %4, align 8
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @adsp_get_module(%struct.adsp_info* %73, i32 %74)
  %76 = call %struct.msm_adsp_module* @find_adsp_module_by_id(%struct.adsp_info* %72, i32 %75)
  store %struct.msm_adsp_module* %76, %struct.msm_adsp_module** %6, align 8
  %77 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %6, align 8
  %78 = icmp ne %struct.msm_adsp_module* %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %71
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  store i32 0, i32* %3, align 4
  br label %109

82:                                               ; preds = %71
  %83 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %6, align 8
  %84 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 8
  %87 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %6, align 8
  %88 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %87, i32 0, i32 2
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = icmp ne %struct.TYPE_2__* %89, null
  br i1 %90, label %96, label %91

91:                                               ; preds = %82
  %92 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %6, align 8
  %93 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %94)
  store i32 0, i32* %3, align 4
  br label %109

96:                                               ; preds = %82
  %97 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %6, align 8
  %98 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %97, i32 0, i32 2
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32 (i32, i32, i32, void (i8*, i64)*)*, i32 (i32, i32, i32, void (i8*, i64)*)** %100, align 8
  %102 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %6, align 8
  %103 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* %9, align 4
  %107 = load void (i8*, i64)*, void (i8*, i64)** %10, align 8
  %108 = call i32 %101(i32 %104, i32 %105, i32 %106, void (i8*, i64)* %107)
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %96, %91, %79, %68
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local void @read_event_32(i8*, i64) #1

declare dso_local void @read_event_16(i8*, i64) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local %struct.msm_adsp_module* @find_adsp_module_by_id(%struct.adsp_info*, i32) #1

declare dso_local i32 @adsp_get_module(%struct.adsp_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
