; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_transport.c_transport_wait_for_tasks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_transport.c_transport_wait_for_tasks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { {}*, {}* }

@SCF_SE_LUN_CMD = common dso_local global i32 0, align 4
@SCF_SCSI_TMR_CDB = common dso_local global i32 0, align 4
@SCF_SUPPORTED_SAM_OPCODE = common dso_local global i32 0, align 4
@CMD_T_LUN_STOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [103 x i8] c"wait_for_tasks: Stopping wait_for_completion(&cmd->t_tasktransport_lun_fe_stop_comp); for ITT: 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [102 x i8] c"wait_for_tasks: Stopped wait_for_completion(&cmd->t_tasktransport_lun_fe_stop_comp); for ITT: 0x%08x\0A\00", align 1
@CMD_T_ACTIVE = common dso_local global i32 0, align 4
@CMD_T_STOP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [78 x i8] c"wait_for_tasks: Stopping %p ITT: 0x%08x i_state: %d, t_state: %d, CMD_T_STOP\0A\00", align 1
@.str.3 = private unnamed_addr constant [90 x i8] c"wait_for_tasks: Stopped wait_for_completion(&cmd->t_transport_stop_comp) for ITT: 0x%08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @transport_wait_for_tasks(%struct.se_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.se_cmd*, align 8
  %4 = alloca i64, align 8
  store %struct.se_cmd* %0, %struct.se_cmd** %3, align 8
  %5 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %6 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %5, i32 0, i32 2
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %10 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @SCF_SE_LUN_CMD, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %1
  %16 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %17 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @SCF_SCSI_TMR_CDB, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %15
  %23 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %24 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %23, i32 0, i32 2
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  store i32 0, i32* %2, align 4
  br label %171

27:                                               ; preds = %15, %1
  %28 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %29 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @SCF_SUPPORTED_SAM_OPCODE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %27
  %35 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %36 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @SCF_SCSI_TMR_CDB, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %34
  %42 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %43 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %42, i32 0, i32 2
  %44 = load i64, i64* %4, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  store i32 0, i32* %2, align 4
  br label %171

46:                                               ; preds = %34, %27
  %47 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %48 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @CMD_T_LUN_STOP, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %98

53:                                               ; preds = %46
  %54 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %55 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %54, i32 0, i32 3
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = bitcast {}** %57 to i32 (%struct.se_cmd*)**
  %59 = load i32 (%struct.se_cmd*)*, i32 (%struct.se_cmd*)** %58, align 8
  %60 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %61 = call i32 %59(%struct.se_cmd* %60)
  %62 = sext i32 %61 to i64
  %63 = inttoptr i64 %62 to %struct.se_cmd*
  %64 = call i32 (i8*, %struct.se_cmd*, ...) @pr_debug(i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str, i64 0, i64 0), %struct.se_cmd* %63)
  %65 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %66 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %65, i32 0, i32 2
  %67 = load i64, i64* %4, align 8
  %68 = call i32 @spin_unlock_irqrestore(i32* %66, i64 %67)
  %69 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %70 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %69, i32 0, i32 7
  %71 = call i32 @complete(i32* %70)
  %72 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %73 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %72, i32 0, i32 6
  %74 = call i32 @wait_for_completion(i32* %73)
  %75 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %76 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %75, i32 0, i32 2
  %77 = load i64, i64* %4, align 8
  %78 = call i32 @spin_lock_irqsave(i32* %76, i64 %77)
  %79 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %80 = call i32 @target_remove_from_state_list(%struct.se_cmd* %79)
  %81 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %82 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %81, i32 0, i32 3
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = bitcast {}** %84 to i32 (%struct.se_cmd*)**
  %86 = load i32 (%struct.se_cmd*)*, i32 (%struct.se_cmd*)** %85, align 8
  %87 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %88 = call i32 %86(%struct.se_cmd* %87)
  %89 = sext i32 %88 to i64
  %90 = inttoptr i64 %89 to %struct.se_cmd*
  %91 = call i32 (i8*, %struct.se_cmd*, ...) @pr_debug(i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.1, i64 0, i64 0), %struct.se_cmd* %90)
  %92 = load i32, i32* @CMD_T_LUN_STOP, align 4
  %93 = xor i32 %92, -1
  %94 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %95 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, %93
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %53, %46
  %99 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %100 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @CMD_T_ACTIVE, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %98
  %106 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %107 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %106, i32 0, i32 2
  %108 = load i64, i64* %4, align 8
  %109 = call i32 @spin_unlock_irqrestore(i32* %107, i64 %108)
  store i32 0, i32* %2, align 4
  br label %171

110:                                              ; preds = %98
  %111 = load i32, i32* @CMD_T_STOP, align 4
  %112 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %113 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 4
  %116 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %117 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %118 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %117, i32 0, i32 3
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = bitcast {}** %120 to i32 (%struct.se_cmd*)**
  %122 = load i32 (%struct.se_cmd*)*, i32 (%struct.se_cmd*)** %121, align 8
  %123 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %124 = call i32 %122(%struct.se_cmd* %123)
  %125 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %126 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %125, i32 0, i32 3
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 1
  %129 = bitcast {}** %128 to i32 (%struct.se_cmd*)**
  %130 = load i32 (%struct.se_cmd*)*, i32 (%struct.se_cmd*)** %129, align 8
  %131 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %132 = call i32 %130(%struct.se_cmd* %131)
  %133 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %134 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 4
  %136 = call i32 (i8*, %struct.se_cmd*, ...) @pr_debug(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.2, i64 0, i64 0), %struct.se_cmd* %116, i32 %124, i32 %132, i32 %135)
  %137 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %138 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %137, i32 0, i32 2
  %139 = load i64, i64* %4, align 8
  %140 = call i32 @spin_unlock_irqrestore(i32* %138, i64 %139)
  %141 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %142 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %141, i32 0, i32 4
  %143 = call i32 @wait_for_completion(i32* %142)
  %144 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %145 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %144, i32 0, i32 2
  %146 = load i64, i64* %4, align 8
  %147 = call i32 @spin_lock_irqsave(i32* %145, i64 %146)
  %148 = load i32, i32* @CMD_T_ACTIVE, align 4
  %149 = load i32, i32* @CMD_T_STOP, align 4
  %150 = or i32 %148, %149
  %151 = xor i32 %150, -1
  %152 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %153 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = and i32 %154, %151
  store i32 %155, i32* %153, align 4
  %156 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %157 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %156, i32 0, i32 3
  %158 = load %struct.TYPE_2__*, %struct.TYPE_2__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 0
  %160 = bitcast {}** %159 to i32 (%struct.se_cmd*)**
  %161 = load i32 (%struct.se_cmd*)*, i32 (%struct.se_cmd*)** %160, align 8
  %162 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %163 = call i32 %161(%struct.se_cmd* %162)
  %164 = sext i32 %163 to i64
  %165 = inttoptr i64 %164 to %struct.se_cmd*
  %166 = call i32 (i8*, %struct.se_cmd*, ...) @pr_debug(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.3, i64 0, i64 0), %struct.se_cmd* %165)
  %167 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %168 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %167, i32 0, i32 2
  %169 = load i64, i64* %4, align 8
  %170 = call i32 @spin_unlock_irqrestore(i32* %168, i64 %169)
  store i32 1, i32* %2, align 4
  br label %171

171:                                              ; preds = %110, %105, %41, %22
  %172 = load i32, i32* %2, align 4
  ret i32 %172
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pr_debug(i8*, %struct.se_cmd*, ...) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @target_remove_from_state_list(%struct.se_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
