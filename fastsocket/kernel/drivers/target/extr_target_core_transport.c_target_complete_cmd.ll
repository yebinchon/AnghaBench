; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_transport.c_target_complete_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_transport.c_target_complete_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.se_device* }
%struct.se_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.se_cmd*, i32, i32)* }

@GOOD = common dso_local global i64 0, align 8
@CMD_T_BUSY = common dso_local global i32 0, align 4
@SCF_TRANSPORT_TASK_SENSE = common dso_local global i32 0, align 4
@CMD_T_REQUEST_STOP = common dso_local global i32 0, align 4
@CMD_T_FAILED = common dso_local global i32 0, align 4
@CMD_T_ABORTED = common dso_local global i32 0, align 4
@CMD_T_STOP = common dso_local global i32 0, align 4
@target_complete_failure_work = common dso_local global i32 0, align 4
@target_complete_ok_work = common dso_local global i32 0, align 4
@TRANSPORT_COMPLETE = common dso_local global i32 0, align 4
@CMD_T_COMPLETE = common dso_local global i32 0, align 4
@CMD_T_ACTIVE = common dso_local global i32 0, align 4
@target_completion_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @target_complete_cmd(%struct.se_cmd* %0, i64 %1) #0 {
  %3 = alloca %struct.se_cmd*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.se_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.se_cmd* %0, %struct.se_cmd** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %9 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %8, i32 0, i32 9
  %10 = load %struct.se_device*, %struct.se_device** %9, align 8
  store %struct.se_device* %10, %struct.se_device** %5, align 8
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @GOOD, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %6, align 4
  %15 = load i64, i64* %4, align 8
  %16 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %17 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %16, i32 0, i32 8
  store i64 %15, i64* %17, align 8
  %18 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %19 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %18, i32 0, i32 3
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load i32, i32* @CMD_T_BUSY, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %25 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 8
  %28 = load %struct.se_device*, %struct.se_device** %5, align 8
  %29 = icmp ne %struct.se_device* %28, null
  br i1 %29, label %30, label %58

30:                                               ; preds = %2
  %31 = load %struct.se_device*, %struct.se_device** %5, align 8
  %32 = getelementptr inbounds %struct.se_device, %struct.se_device* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32 (%struct.se_cmd*, i32, i32)*, i32 (%struct.se_cmd*, i32, i32)** %34, align 8
  %36 = icmp ne i32 (%struct.se_cmd*, i32, i32)* %35, null
  br i1 %36, label %37, label %58

37:                                               ; preds = %30
  %38 = load %struct.se_device*, %struct.se_device** %5, align 8
  %39 = getelementptr inbounds %struct.se_device, %struct.se_device* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32 (%struct.se_cmd*, i32, i32)*, i32 (%struct.se_cmd*, i32, i32)** %41, align 8
  %43 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %44 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %45 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %44, i32 0, i32 7
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %48 = call i32 @transport_get_sense_buffer(%struct.se_cmd* %47)
  %49 = call i32 %42(%struct.se_cmd* %43, i32 %46, i32 %48)
  %50 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %51 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @SCF_TRANSPORT_TASK_SENSE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %37
  store i32 1, i32* %6, align 4
  br label %57

57:                                               ; preds = %56, %37
  br label %58

58:                                               ; preds = %57, %30, %2
  %59 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %60 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @CMD_T_REQUEST_STOP, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %58
  %66 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %67 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %66, i32 0, i32 3
  %68 = load i64, i64* %7, align 8
  %69 = call i32 @spin_unlock_irqrestore(i32* %67, i64 %68)
  %70 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %71 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %70, i32 0, i32 6
  %72 = call i32 @complete(i32* %71)
  br label %141

73:                                               ; preds = %58
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* @CMD_T_FAILED, align 4
  %78 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %79 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 8
  br label %82

82:                                               ; preds = %76, %73
  %83 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %84 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @CMD_T_ABORTED, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %104

89:                                               ; preds = %82
  %90 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %91 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @CMD_T_STOP, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %89
  %97 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %98 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %97, i32 0, i32 3
  %99 = load i64, i64* %7, align 8
  %100 = call i32 @spin_unlock_irqrestore(i32* %98, i64 %99)
  %101 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %102 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %101, i32 0, i32 5
  %103 = call i32 @complete(i32* %102)
  br label %141

104:                                              ; preds = %89, %82
  %105 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %106 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @CMD_T_FAILED, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %104
  %112 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %113 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %112, i32 0, i32 2
  %114 = load i32, i32* @target_complete_failure_work, align 4
  %115 = call i32 @INIT_WORK(i32* %113, i32 %114)
  br label %121

116:                                              ; preds = %104
  %117 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %118 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %117, i32 0, i32 2
  %119 = load i32, i32* @target_complete_ok_work, align 4
  %120 = call i32 @INIT_WORK(i32* %118, i32 %119)
  br label %121

121:                                              ; preds = %116, %111
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* @TRANSPORT_COMPLETE, align 4
  %124 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %125 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %124, i32 0, i32 4
  store i32 %123, i32* %125, align 8
  %126 = load i32, i32* @CMD_T_COMPLETE, align 4
  %127 = load i32, i32* @CMD_T_ACTIVE, align 4
  %128 = or i32 %126, %127
  %129 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %130 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = or i32 %131, %128
  store i32 %132, i32* %130, align 8
  %133 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %134 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %133, i32 0, i32 3
  %135 = load i64, i64* %7, align 8
  %136 = call i32 @spin_unlock_irqrestore(i32* %134, i64 %135)
  %137 = load i32, i32* @target_completion_wq, align 4
  %138 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %139 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %138, i32 0, i32 2
  %140 = call i32 @queue_work(i32 %137, i32* %139)
  br label %141

141:                                              ; preds = %122, %96, %65
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @transport_get_sense_buffer(%struct.se_cmd*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
