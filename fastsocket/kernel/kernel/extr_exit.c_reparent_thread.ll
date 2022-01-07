; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_exit.c_reparent_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_exit.c_reparent_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i64, i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { %struct.list_head }
%struct.list_head = type { i32 }

@SEND_SIG_NOINFO = common dso_local global i32 0, align 4
@SIGCHLD = common dso_local global i32 0, align 4
@EXIT_ZOMBIE = common dso_local global i64 0, align 8
@EXIT_DEAD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*, %struct.task_struct*, %struct.list_head*)* @reparent_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reparent_thread(%struct.task_struct* %0, %struct.task_struct* %1, %struct.list_head* %2) #0 {
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca %struct.list_head*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store %struct.task_struct* %1, %struct.task_struct** %5, align 8
  store %struct.list_head* %2, %struct.list_head** %6, align 8
  %7 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %8 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %7, i32 0, i32 4
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %3
  %12 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %13 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* @SEND_SIG_NOINFO, align 4
  %16 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %17 = call i32 @group_send_sig_info(i64 %14, i32 %15, %struct.task_struct* %16)
  br label %18

18:                                               ; preds = %11, %3
  %19 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %20 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %19, i32 0, i32 1
  %21 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %22 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %21, i32 0, i32 3
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @list_move_tail(i32* %20, %struct.list_head* %24)
  %26 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %27 = call i64 @task_detached(%struct.task_struct* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %18
  br label %77

30:                                               ; preds = %18
  %31 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %32 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %31, i32 0, i32 3
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %35 = call i64 @same_thread_group(%struct.TYPE_2__* %33, %struct.task_struct* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %77

38:                                               ; preds = %30
  %39 = load i32, i32* @SIGCHLD, align 4
  %40 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %41 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %43 = call i32 @task_ptrace(%struct.task_struct* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %73, label %45

45:                                               ; preds = %38
  %46 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %47 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @EXIT_ZOMBIE, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %73

51:                                               ; preds = %45
  %52 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %53 = call i64 @thread_group_empty(%struct.task_struct* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %73

55:                                               ; preds = %51
  %56 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %57 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %58 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @do_notify_parent(%struct.task_struct* %56, i32 %59)
  %61 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %62 = call i64 @task_detached(%struct.task_struct* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %55
  %65 = load i64, i64* @EXIT_DEAD, align 8
  %66 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %67 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  %68 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %69 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %68, i32 0, i32 1
  %70 = load %struct.list_head*, %struct.list_head** %6, align 8
  %71 = call i32 @list_move_tail(i32* %69, %struct.list_head* %70)
  br label %72

72:                                               ; preds = %64, %55
  br label %73

73:                                               ; preds = %72, %51, %45, %38
  %74 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %75 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %76 = call i32 @kill_orphaned_pgrp(%struct.task_struct* %74, %struct.task_struct* %75)
  br label %77

77:                                               ; preds = %73, %37, %29
  ret void
}

declare dso_local i32 @group_send_sig_info(i64, i32, %struct.task_struct*) #1

declare dso_local i32 @list_move_tail(i32*, %struct.list_head*) #1

declare dso_local i64 @task_detached(%struct.task_struct*) #1

declare dso_local i64 @same_thread_group(%struct.TYPE_2__*, %struct.task_struct*) #1

declare dso_local i32 @task_ptrace(%struct.task_struct*) #1

declare dso_local i64 @thread_group_empty(%struct.task_struct*) #1

declare dso_local i32 @do_notify_parent(%struct.task_struct*, i32) #1

declare dso_local i32 @kill_orphaned_pgrp(%struct.task_struct*, %struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
