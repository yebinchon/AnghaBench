; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_transport.c_transport_clear_lun_from_sessions.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_transport.c_transport_clear_lun_from_sessions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_lun = type { i32, i32 }
%struct.task_struct = type { i32 }

@transport_clear_lun_thread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"tcm_cl_%u\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Unable to start clear_lun thread\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @transport_clear_lun_from_sessions(%struct.se_lun* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.se_lun*, align 8
  %4 = alloca %struct.task_struct*, align 8
  store %struct.se_lun* %0, %struct.se_lun** %3, align 8
  %5 = load i32, i32* @transport_clear_lun_thread, align 4
  %6 = load %struct.se_lun*, %struct.se_lun** %3, align 8
  %7 = load %struct.se_lun*, %struct.se_lun** %3, align 8
  %8 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.task_struct* @kthread_run(i32 %5, %struct.se_lun* %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %9)
  store %struct.task_struct* %10, %struct.task_struct** %4, align 8
  %11 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %12 = call i64 @IS_ERR(%struct.task_struct* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %16 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %17 = call i32 @PTR_ERR(%struct.task_struct* %16)
  store i32 %17, i32* %2, align 4
  br label %22

18:                                               ; preds = %1
  %19 = load %struct.se_lun*, %struct.se_lun** %3, align 8
  %20 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %19, i32 0, i32 0
  %21 = call i32 @wait_for_completion(i32* %20)
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %18, %14
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local %struct.task_struct* @kthread_run(i32, %struct.se_lun*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.task_struct*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @PTR_ERR(%struct.task_struct*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
