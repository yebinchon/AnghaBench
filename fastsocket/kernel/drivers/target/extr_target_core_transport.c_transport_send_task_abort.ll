; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_transport.c_transport_send_task_abort.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_transport.c_transport_send_task_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i32, i64, %struct.TYPE_2__*, i32*, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 (%struct.se_cmd*)*, i32 (%struct.se_cmd*)*, i32 (%struct.se_cmd*)* }

@SCF_SENT_CHECK_CONDITION = common dso_local global i32 0, align 4
@SCF_SENT_DELAYED_TAS = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i64 0, align 8
@CMD_T_ABORTED = common dso_local global i32 0, align 4
@SAM_STAT_TASK_ABORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"Setting SAM_STAT_TASK_ABORTED status for CDB: 0x%02x, ITT: 0x%08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @transport_send_task_abort(%struct.se_cmd* %0) #0 {
  %2 = alloca %struct.se_cmd*, align 8
  %3 = alloca i64, align 8
  store %struct.se_cmd* %0, %struct.se_cmd** %2, align 8
  %4 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %5 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %4, i32 0, i32 6
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @spin_lock_irqsave(i32* %5, i64 %6)
  %8 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %9 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @SCF_SENT_CHECK_CONDITION, align 4
  %12 = load i32, i32* @SCF_SENT_DELAYED_TAS, align 4
  %13 = or i32 %11, %12
  %14 = and i32 %10, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %18 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %17, i32 0, i32 6
  %19 = load i64, i64* %3, align 8
  %20 = call i32 @spin_unlock_irqrestore(i32* %18, i64 %19)
  br label %74

21:                                               ; preds = %1
  %22 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %23 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %22, i32 0, i32 6
  %24 = load i64, i64* %3, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* %23, i64 %24)
  %26 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %27 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @DMA_TO_DEVICE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %48

31:                                               ; preds = %21
  %32 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %33 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64 (%struct.se_cmd*)*, i64 (%struct.se_cmd*)** %35, align 8
  %37 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %38 = call i64 %36(%struct.se_cmd* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %31
  %41 = load i32, i32* @CMD_T_ABORTED, align 4
  %42 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %43 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = call i32 (...) @smp_mb__after_atomic_inc()
  br label %47

47:                                               ; preds = %40, %31
  br label %48

48:                                               ; preds = %47, %21
  %49 = load i32, i32* @SAM_STAT_TASK_ABORTED, align 4
  %50 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %51 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 8
  %52 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %53 = call i32 @transport_lun_remove_cmd(%struct.se_cmd* %52)
  %54 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %55 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %54, i32 0, i32 3
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %60 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %59, i32 0, i32 2
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  %63 = load i32 (%struct.se_cmd*)*, i32 (%struct.se_cmd*)** %62, align 8
  %64 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %65 = call i32 %63(%struct.se_cmd* %64)
  %66 = call i32 @pr_debug(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %65)
  %67 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %68 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %67, i32 0, i32 2
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32 (%struct.se_cmd*)*, i32 (%struct.se_cmd*)** %70, align 8
  %72 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %73 = call i32 %71(%struct.se_cmd* %72)
  br label %74

74:                                               ; preds = %48, %16
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @smp_mb__after_atomic_inc(...) #1

declare dso_local i32 @transport_lun_remove_cmd(%struct.se_cmd*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
