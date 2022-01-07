; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/w1/masters/extr_omap_hdq.c_omap_hdq_break.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/w1/masters/extr_omap_hdq.c_omap_hdq_break.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdq_data = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"Could not acquire mutex\0A\00", align 1
@EINTR = common dso_local global i32 0, align 4
@OMAP_HDQ_INT_STATUS = common dso_local global i32 0, align 4
@OMAP_HDQ_CTRL_STATUS = common dso_local global i32 0, align 4
@OMAP_HDQ_CTRL_STATUS_INITIALIZATION = common dso_local global i32 0, align 4
@OMAP_HDQ_CTRL_STATUS_GO = common dso_local global i32 0, align 4
@OMAP_HDQ_CTRL_STATUS_DIR = common dso_local global i32 0, align 4
@hdq_wait_queue = common dso_local global i32 0, align 4
@OMAP_HDQ_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"break wait elapsed\0A\00", align 1
@OMAP_HDQ_INT_STATUS_TIMEOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"timeout waiting for TIMEOUT, %x\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@OMAP_HDQ_FLAG_CLEAR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"timeout waiting INIT&GO bitsreturn to zero, %x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdq_data*)* @omap_hdq_break to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_hdq_break(%struct.hdq_data* %0) #0 {
  %2 = alloca %struct.hdq_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.hdq_data* %0, %struct.hdq_data** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.hdq_data*, %struct.hdq_data** %2, align 8
  %7 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %6, i32 0, i32 1
  %8 = call i32 @mutex_lock_interruptible(i32* %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.hdq_data*, %struct.hdq_data** %2, align 8
  %13 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 (i32, i8*, ...) @dev_dbg(i32 %14, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EINTR, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %95

18:                                               ; preds = %1
  %19 = load %struct.hdq_data*, %struct.hdq_data** %2, align 8
  %20 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %19, i32 0, i32 3
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.hdq_data*, %struct.hdq_data** %2, align 8
  %24 = load i32, i32* @OMAP_HDQ_INT_STATUS, align 4
  %25 = call i32 @hdq_reg_in(%struct.hdq_data* %23, i32 %24)
  %26 = load %struct.hdq_data*, %struct.hdq_data** %2, align 8
  %27 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %26, i32 0, i32 0
  store i32 0, i32* %27, align 4
  %28 = load %struct.hdq_data*, %struct.hdq_data** %2, align 8
  %29 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %28, i32 0, i32 3
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i64 %30)
  %32 = load %struct.hdq_data*, %struct.hdq_data** %2, align 8
  %33 = load i32, i32* @OMAP_HDQ_CTRL_STATUS, align 4
  %34 = load i32, i32* @OMAP_HDQ_CTRL_STATUS_INITIALIZATION, align 4
  %35 = load i32, i32* @OMAP_HDQ_CTRL_STATUS_GO, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @OMAP_HDQ_CTRL_STATUS_DIR, align 4
  %38 = load i32, i32* @OMAP_HDQ_CTRL_STATUS_INITIALIZATION, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @OMAP_HDQ_CTRL_STATUS_GO, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @hdq_reg_merge(%struct.hdq_data* %32, i32 %33, i32 %36, i32 %41)
  %43 = load i32, i32* @hdq_wait_queue, align 4
  %44 = load %struct.hdq_data*, %struct.hdq_data** %2, align 8
  %45 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @OMAP_HDQ_TIMEOUT, align 4
  %48 = call i32 @wait_event_timeout(i32 %43, i32 %46, i32 %47)
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* %3, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %18
  %52 = load %struct.hdq_data*, %struct.hdq_data** %2, align 8
  %53 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i32, i8*, ...) @dev_dbg(i32 %54, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32, i32* @EINTR, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %91

58:                                               ; preds = %18
  %59 = load %struct.hdq_data*, %struct.hdq_data** %2, align 8
  %60 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @OMAP_HDQ_INT_STATUS_TIMEOUT, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %74, label %66

66:                                               ; preds = %58
  %67 = load %struct.hdq_data*, %struct.hdq_data** %2, align 8
  %68 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %4, align 4
  %71 = call i32 (i32, i8*, ...) @dev_dbg(i32 %69, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* @ETIMEDOUT, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %91

74:                                               ; preds = %58
  %75 = load %struct.hdq_data*, %struct.hdq_data** %2, align 8
  %76 = load i32, i32* @OMAP_HDQ_CTRL_STATUS, align 4
  %77 = load i32, i32* @OMAP_HDQ_CTRL_STATUS_INITIALIZATION, align 4
  %78 = load i32, i32* @OMAP_HDQ_CTRL_STATUS_GO, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @OMAP_HDQ_FLAG_CLEAR, align 4
  %81 = call i32 @hdq_wait_for_flag(%struct.hdq_data* %75, i32 %76, i32 %79, i32 %80, i32* %4)
  store i32 %81, i32* %3, align 4
  %82 = load i32, i32* %3, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %74
  %85 = load %struct.hdq_data*, %struct.hdq_data** %2, align 8
  %86 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %4, align 4
  %89 = call i32 (i32, i8*, ...) @dev_dbg(i32 %87, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %84, %74
  br label %91

91:                                               ; preds = %90, %66, %51
  %92 = load %struct.hdq_data*, %struct.hdq_data** %2, align 8
  %93 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %92, i32 0, i32 1
  %94 = call i32 @mutex_unlock(i32* %93)
  br label %95

95:                                               ; preds = %91, %11
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @hdq_reg_in(%struct.hdq_data*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @hdq_reg_merge(%struct.hdq_data*, i32, i32, i32) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @hdq_wait_for_flag(%struct.hdq_data*, i32, i32, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
