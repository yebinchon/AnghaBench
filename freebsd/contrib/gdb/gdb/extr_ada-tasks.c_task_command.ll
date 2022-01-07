; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-tasks.c_task_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-tasks.c_task_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_entry = type { i32, i32, i32 }

@.str = private unnamed_addr constant [97 x i8] c"Please specify a task ID.  Use the \22info tasks\22 command to\0Asee the IDs of currently known tasks.\00", align 1
@.str.1 = private unnamed_addr constant [93 x i8] c"Task ID %d not known.  Use the \22info tasks\22 command to\0Asee the IDs of currently known tasks.\00", align 1
@current_task_id = common dso_local global i32 0, align 4
@current_task = common dso_local global i32 0, align 4
@current_task_index = common dso_local global i32 0, align 4
@current_thread = common dso_local global i32 0, align 4
@current_lwp = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"[Switching to task %d]\0A\00", align 1
@deprecated_selected_frame = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Unable to switch to task %d\0A\00", align 1
@fpregset_saved = common dso_local global i32 0, align 4
@gregset_saved = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @task_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @task_command(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.task_entry*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %2
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @atoi(i8* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.task_entry* @get_entry_vptr(i32 %14)
  store %struct.task_entry* %15, %struct.task_entry** %6, align 8
  %16 = load %struct.task_entry*, %struct.task_entry** %6, align 8
  %17 = icmp eq %struct.task_entry* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %11
  %19 = load i32, i32* %5, align 4
  %20 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %18, %11
  %22 = load i32, i32* @current_task_id, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = call i32 (...) @get_current_task()
  store i32 %25, i32* @current_task_id, align 4
  br label %26

26:                                               ; preds = %24, %21
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* @current_task, align 4
  %28 = load %struct.task_entry*, %struct.task_entry** %6, align 8
  %29 = getelementptr inbounds %struct.task_entry, %struct.task_entry* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* @current_task_index, align 4
  %31 = load %struct.task_entry*, %struct.task_entry** %6, align 8
  %32 = getelementptr inbounds %struct.task_entry, %struct.task_entry* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* @current_thread, align 4
  %34 = load %struct.task_entry*, %struct.task_entry** %6, align 8
  %35 = getelementptr inbounds %struct.task_entry, %struct.task_entry* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* @current_lwp, align 4
  %37 = load %struct.task_entry*, %struct.task_entry** %6, align 8
  %38 = getelementptr inbounds %struct.task_entry, %struct.task_entry* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.task_entry*, %struct.task_entry** %6, align 8
  %41 = getelementptr inbounds %struct.task_entry, %struct.task_entry* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @task_switch(i32 %39, i32 %42)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %26
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @printf_filtered(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @deprecated_selected_frame, align 4
  %49 = load i32, i32* @deprecated_selected_frame, align 4
  %50 = call i32 @frame_relative_level(i32 %49)
  %51 = call i32 @print_stack_frame(i32 %48, i32 %50, i32 1)
  br label %55

52:                                               ; preds = %26
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @printf_filtered(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %52, %45
  ret void
}

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local %struct.task_entry* @get_entry_vptr(i32) #1

declare dso_local i32 @get_current_task(...) #1

declare dso_local i64 @task_switch(i32, i32) #1

declare dso_local i32 @printf_filtered(i8*, i32) #1

declare dso_local i32 @print_stack_frame(i32, i32, i32) #1

declare dso_local i32 @frame_relative_level(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
