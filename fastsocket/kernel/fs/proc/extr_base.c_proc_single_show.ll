; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_base.c_proc_single_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_base.c_proc_single_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.inode* }
%struct.inode = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.pid_namespace* }
%struct.pid_namespace = type { i32 }
%struct.pid = type { i32 }
%struct.task_struct = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* }

@PIDTYPE_PID = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @proc_single_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_single_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.pid_namespace*, align 8
  %8 = alloca %struct.pid*, align 8
  %9 = alloca %struct.task_struct*, align 8
  %10 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %12 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %11, i32 0, i32 0
  %13 = load %struct.inode*, %struct.inode** %12, align 8
  store %struct.inode* %13, %struct.inode** %6, align 8
  %14 = load %struct.inode*, %struct.inode** %6, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.pid_namespace*, %struct.pid_namespace** %17, align 8
  store %struct.pid_namespace* %18, %struct.pid_namespace** %7, align 8
  %19 = load %struct.inode*, %struct.inode** %6, align 8
  %20 = call %struct.pid* @proc_pid(%struct.inode* %19)
  store %struct.pid* %20, %struct.pid** %8, align 8
  %21 = load %struct.pid*, %struct.pid** %8, align 8
  %22 = load i32, i32* @PIDTYPE_PID, align 4
  %23 = call %struct.task_struct* @get_pid_task(%struct.pid* %21, i32 %22)
  store %struct.task_struct* %23, %struct.task_struct** %9, align 8
  %24 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %25 = icmp ne %struct.task_struct* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @ESRCH, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %43

29:                                               ; preds = %2
  %30 = load %struct.inode*, %struct.inode** %6, align 8
  %31 = call %struct.TYPE_6__* @PROC_I(%struct.inode* %30)
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)*, i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)** %33, align 8
  %35 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %36 = load %struct.pid_namespace*, %struct.pid_namespace** %7, align 8
  %37 = load %struct.pid*, %struct.pid** %8, align 8
  %38 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %39 = call i32 %34(%struct.seq_file* %35, %struct.pid_namespace* %36, %struct.pid* %37, %struct.task_struct* %38)
  store i32 %39, i32* %10, align 4
  %40 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %41 = call i32 @put_task_struct(%struct.task_struct* %40)
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %29, %26
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.pid* @proc_pid(%struct.inode*) #1

declare dso_local %struct.task_struct* @get_pid_task(%struct.pid*, i32) #1

declare dso_local %struct.TYPE_6__* @PROC_I(%struct.inode*) #1

declare dso_local i32 @put_task_struct(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
