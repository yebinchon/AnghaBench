; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_exit.c_exit_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_exit.c_exit_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i64, i64, i64, %struct.TYPE_4__*, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i64 }

@tasklist_lock = common dso_local global i32 0, align 4
@SIGCHLD = common dso_local global i64 0, align 8
@DEATH_REAP = common dso_local global i32 0, align 4
@EXIT_DEAD = common dso_local global i32 0, align 4
@EXIT_ZOMBIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*, i32)* @exit_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exit_notify(%struct.task_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %8 = call i32 @forget_original_parent(%struct.task_struct* %7)
  %9 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %10 = call i32 @exit_task_namespaces(%struct.task_struct* %9)
  %11 = call i32 @write_lock_irq(i32* @tasklist_lock)
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %16 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @kill_orphaned_pgrp(i32 %17, i32* null)
  br label %19

19:                                               ; preds = %14, %2
  %20 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %21 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SIGCHLD, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %51

25:                                               ; preds = %19
  %26 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %27 = call i32 @task_detached(%struct.task_struct* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %51, label %29

29:                                               ; preds = %25
  %30 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %31 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %34 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %33, i32 0, i32 5
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %32, %37
  br i1 %38, label %47, label %39

39:                                               ; preds = %29
  %40 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %41 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %44 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %42, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %39, %29
  %48 = load i64, i64* @SIGCHLD, align 8
  %49 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %50 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  br label %51

51:                                               ; preds = %47, %39, %25, %19
  %52 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @tracehook_notify_death(%struct.task_struct* %52, i8** %6, i32 %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp sge i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @do_notify_parent(%struct.task_struct* %58, i32 %59)
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %57, %51
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @DEATH_REAP, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i32, i32* @EXIT_DEAD, align 4
  br label %69

67:                                               ; preds = %61
  %68 = load i32, i32* @EXIT_ZOMBIE, align 4
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i32 [ %66, %65 ], [ %68, %67 ]
  %71 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %72 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 8
  %73 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %74 = call i64 @thread_group_leader(%struct.task_struct* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %97

76:                                               ; preds = %69
  %77 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %78 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %77, i32 0, i32 3
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %97

83:                                               ; preds = %76
  %84 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %85 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %84, i32 0, i32 3
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp slt i64 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %83
  %91 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %92 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %91, i32 0, i32 3
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @wake_up_process(i64 %95)
  br label %97

97:                                               ; preds = %90, %83, %76, %69
  %98 = call i32 @write_unlock_irq(i32* @tasklist_lock)
  %99 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %100 = load i32, i32* %5, align 4
  %101 = load i8*, i8** %6, align 8
  %102 = load i32, i32* %4, align 4
  %103 = call i32 @tracehook_report_death(%struct.task_struct* %99, i32 %100, i8* %101, i32 %102)
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* @DEATH_REAP, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %97
  %108 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %109 = call i32 @release_task(%struct.task_struct* %108)
  br label %110

110:                                              ; preds = %107, %97
  ret void
}

declare dso_local i32 @forget_original_parent(%struct.task_struct*) #1

declare dso_local i32 @exit_task_namespaces(%struct.task_struct*) #1

declare dso_local i32 @write_lock_irq(i32*) #1

declare dso_local i32 @kill_orphaned_pgrp(i32, i32*) #1

declare dso_local i32 @task_detached(%struct.task_struct*) #1

declare dso_local i32 @tracehook_notify_death(%struct.task_struct*, i8**, i32) #1

declare dso_local i32 @do_notify_parent(%struct.task_struct*, i32) #1

declare dso_local i64 @thread_group_leader(%struct.task_struct*) #1

declare dso_local i32 @wake_up_process(i64) #1

declare dso_local i32 @write_unlock_irq(i32*) #1

declare dso_local i32 @tracehook_report_death(%struct.task_struct*, i32, i8*, i32) #1

declare dso_local i32 @release_task(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
