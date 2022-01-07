; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_adsp.c_adsp_get_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_adsp.c_adsp_get_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adsp_info = type { i32, i32 }

@adsp_cmd_lock = common dso_local global i32 0, align 4
@ADSP_RTOS_READ_CTRL_WORD_FLAG_M = common dso_local global i32 0, align 4
@ADSP_RTOS_READ_CTRL_WORD_FLAG_UP_CONT_V = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"adsp: not ready after 100uS\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@ADSP_RTOS_READ_CTRL_WORD_READY_M = common dso_local global i32 0, align 4
@ADSP_RTOS_READ_CTRL_WORD_READY_V = common dso_local global i32 0, align 4
@ADSP_RTOS_READ_CTRL_WORD_CONT_V = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ADSP_RTOS_READ_CTRL_WORD_CMD_TYPE_M = common dso_local global i32 0, align 4
@ADSP_RTOS_READ_CTRL_WORD_DSP_ADDR_M = common dso_local global i32 0, align 4
@MSM_AD5_BASE = common dso_local global i64 0, align 8
@ADSP_RTOS_READ_CTRL_WORD_CMD_TASK_TO_H_V = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"adsp: unknown dsp cmd_type %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adsp_info*)* @adsp_get_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adsp_get_event(%struct.adsp_info* %0) #0 {
  %2 = alloca %struct.adsp_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.adsp_info* %0, %struct.adsp_info** %2, align 8
  store i32 0, i32* %9, align 4
  %10 = load i64, i64* %8, align 8
  %11 = call i32 @spin_lock_irqsave(i32* @adsp_cmd_lock, i64 %10)
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %28, %1
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 10
  br i1 %14, label %15, label %31

15:                                               ; preds = %12
  %16 = load %struct.adsp_info*, %struct.adsp_info** %2, align 8
  %17 = getelementptr inbounds %struct.adsp_info, %struct.adsp_info* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @readl(i32 %18)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @ADSP_RTOS_READ_CTRL_WORD_FLAG_M, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* @ADSP_RTOS_READ_CTRL_WORD_FLAG_UP_CONT_V, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %15
  br label %35

26:                                               ; preds = %15
  %27 = call i32 @udelay(i32 10)
  br label %28

28:                                               ; preds = %26
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %7, align 4
  br label %12

31:                                               ; preds = %12
  %32 = call i32 @pr_warning(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @EBUSY, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %9, align 4
  br label %90

35:                                               ; preds = %25
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @ADSP_RTOS_READ_CTRL_WORD_READY_M, align 4
  %38 = and i32 %36, %37
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @ADSP_RTOS_READ_CTRL_WORD_READY_V, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %35
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @ADSP_RTOS_READ_CTRL_WORD_CONT_V, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i32, i32* @EAGAIN, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %9, align 4
  br label %90

49:                                               ; preds = %42, %35
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @ADSP_RTOS_READ_CTRL_WORD_CMD_TYPE_M, align 4
  %52 = and i32 %50, %51
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @ADSP_RTOS_READ_CTRL_WORD_DSP_ADDR_M, align 4
  %55 = and i32 %53, %54
  %56 = load i64, i64* @MSM_AD5_BASE, align 8
  %57 = trunc i64 %56 to i32
  %58 = add nsw i32 %55, %57
  %59 = sext i32 %58 to i64
  %60 = inttoptr i64 %59 to i8*
  store i8* %60, i8** %5, align 8
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @ADSP_RTOS_READ_CTRL_WORD_CMD_TASK_TO_H_V, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %49
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* @EIO, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %9, align 4
  br label %90

69:                                               ; preds = %49
  %70 = load %struct.adsp_info*, %struct.adsp_info** %2, align 8
  %71 = load i8*, i8** %5, align 8
  %72 = call i32 @adsp_rtos_read_ctrl_word_cmd_tast_to_h_v(%struct.adsp_info* %70, i8* %71)
  %73 = load %struct.adsp_info*, %struct.adsp_info** %2, align 8
  %74 = getelementptr inbounds %struct.adsp_info, %struct.adsp_info* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @readl(i32 %75)
  store i32 %76, i32* %3, align 4
  %77 = load i32, i32* @ADSP_RTOS_READ_CTRL_WORD_READY_M, align 4
  %78 = xor i32 %77, -1
  %79 = load i32, i32* %3, align 4
  %80 = and i32 %79, %78
  store i32 %80, i32* %3, align 4
  %81 = load i32, i32* %3, align 4
  %82 = load %struct.adsp_info*, %struct.adsp_info** %2, align 8
  %83 = getelementptr inbounds %struct.adsp_info, %struct.adsp_info* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @writel(i32 %81, i32 %84)
  %86 = load %struct.adsp_info*, %struct.adsp_info** %2, align 8
  %87 = getelementptr inbounds %struct.adsp_info, %struct.adsp_info* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @writel(i32 1, i32 %88)
  br label %90

90:                                               ; preds = %69, %64, %46, %31
  %91 = load i64, i64* %8, align 8
  %92 = call i32 @spin_unlock_irqrestore(i32* @adsp_cmd_lock, i64 %91)
  %93 = load i32, i32* %9, align 4
  ret i32 %93
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @pr_warning(i8*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @adsp_rtos_read_ctrl_word_cmd_tast_to_h_v(%struct.adsp_info*, i8*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
