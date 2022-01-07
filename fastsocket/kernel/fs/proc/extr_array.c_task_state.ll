; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_array.c_task_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_array.c_task_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.pid_namespace = type { i32 }
%struct.pid = type { i32 }
%struct.task_struct = type { i64, i32 }
%struct.group_info = type { i32 }
%struct.fdtable = type { i32 }
%struct.cred = type { %struct.group_info*, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [85 x i8] c"State:\09%s\0ATgid:\09%d\0APid:\09%d\0APPid:\09%d\0ATracerPid:\09%d\0AUid:\09%d\09%d\09%d\09%d\0AGid:\09%d\09%d\09%d\09%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"FDSize:\09%d\0AGroups:\09\00", align 1
@NGROUPS_SMALL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* @task_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @task_state(%struct.seq_file* %0, %struct.pid_namespace* %1, %struct.pid* %2, %struct.task_struct* %3) #0 {
  %5 = alloca %struct.seq_file*, align 8
  %6 = alloca %struct.pid_namespace*, align 8
  %7 = alloca %struct.pid*, align 8
  %8 = alloca %struct.task_struct*, align 8
  %9 = alloca %struct.group_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.fdtable*, align 8
  %12 = alloca %struct.cred*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.task_struct*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %5, align 8
  store %struct.pid_namespace* %1, %struct.pid_namespace** %6, align 8
  store %struct.pid* %2, %struct.pid** %7, align 8
  store %struct.task_struct* %3, %struct.task_struct** %8, align 8
  store %struct.fdtable* null, %struct.fdtable** %11, align 8
  %16 = call i32 (...) @rcu_read_lock()
  %17 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %18 = call i64 @pid_alive(%struct.task_struct* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %4
  %21 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %22 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.task_struct* @rcu_dereference(i32 %23)
  %25 = load %struct.pid_namespace*, %struct.pid_namespace** %6, align 8
  %26 = call i64 @task_tgid_nr_ns(%struct.task_struct* %24, %struct.pid_namespace* %25)
  br label %28

27:                                               ; preds = %4
  br label %28

28:                                               ; preds = %27, %20
  %29 = phi i64 [ %26, %20 ], [ 0, %27 ]
  store i64 %29, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %30 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %31 = call i64 @pid_alive(%struct.task_struct* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %28
  %34 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %35 = call %struct.task_struct* @tracehook_tracer_task(%struct.task_struct* %34)
  store %struct.task_struct* %35, %struct.task_struct** %15, align 8
  %36 = load %struct.task_struct*, %struct.task_struct** %15, align 8
  %37 = icmp ne %struct.task_struct* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load %struct.task_struct*, %struct.task_struct** %15, align 8
  %40 = load %struct.pid_namespace*, %struct.pid_namespace** %6, align 8
  %41 = call i64 @task_pid_nr_ns(%struct.task_struct* %39, %struct.pid_namespace* %40)
  store i64 %41, i64* %14, align 8
  br label %42

42:                                               ; preds = %38, %33
  br label %43

43:                                               ; preds = %42, %28
  %44 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %45 = call %struct.cred* @get_task_cred(%struct.task_struct* %44)
  store %struct.cred* %45, %struct.cred** %12, align 8
  %46 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %47 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %48 = call i32 @get_task_state(%struct.task_struct* %47)
  %49 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %50 = load %struct.pid_namespace*, %struct.pid_namespace** %6, align 8
  %51 = call i64 @task_tgid_nr_ns(%struct.task_struct* %49, %struct.pid_namespace* %50)
  %52 = load %struct.pid*, %struct.pid** %7, align 8
  %53 = load %struct.pid_namespace*, %struct.pid_namespace** %6, align 8
  %54 = call i32 @pid_nr_ns(%struct.pid* %52, %struct.pid_namespace* %53)
  %55 = load i64, i64* %13, align 8
  %56 = load i64, i64* %14, align 8
  %57 = load %struct.cred*, %struct.cred** %12, align 8
  %58 = getelementptr inbounds %struct.cred, %struct.cred* %57, i32 0, i32 8
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.cred*, %struct.cred** %12, align 8
  %61 = getelementptr inbounds %struct.cred, %struct.cred* %60, i32 0, i32 7
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.cred*, %struct.cred** %12, align 8
  %64 = getelementptr inbounds %struct.cred, %struct.cred* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.cred*, %struct.cred** %12, align 8
  %67 = getelementptr inbounds %struct.cred, %struct.cred* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.cred*, %struct.cred** %12, align 8
  %70 = getelementptr inbounds %struct.cred, %struct.cred* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.cred*, %struct.cred** %12, align 8
  %73 = getelementptr inbounds %struct.cred, %struct.cred* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.cred*, %struct.cred** %12, align 8
  %76 = getelementptr inbounds %struct.cred, %struct.cred* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.cred*, %struct.cred** %12, align 8
  %79 = getelementptr inbounds %struct.cred, %struct.cred* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %46, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0), i32 %48, i64 %51, i32 %54, i64 %55, i64 %56, i32 %59, i32 %62, i32 %65, i32 %68, i32 %71, i32 %74, i32 %77, i32 %80)
  %82 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %83 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %84 = call i32 @task_utrace_proc_status(%struct.seq_file* %82, %struct.task_struct* %83)
  %85 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %86 = call i32 @task_lock(%struct.task_struct* %85)
  %87 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %88 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %43
  %92 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %93 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = call %struct.fdtable* @files_fdtable(i64 %94)
  store %struct.fdtable* %95, %struct.fdtable** %11, align 8
  br label %96

96:                                               ; preds = %91, %43
  %97 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %98 = load %struct.fdtable*, %struct.fdtable** %11, align 8
  %99 = icmp ne %struct.fdtable* %98, null
  br i1 %99, label %100, label %104

100:                                              ; preds = %96
  %101 = load %struct.fdtable*, %struct.fdtable** %11, align 8
  %102 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  br label %105

104:                                              ; preds = %96
  br label %105

105:                                              ; preds = %104, %100
  %106 = phi i32 [ %103, %100 ], [ 0, %104 ]
  %107 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %97, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %106)
  %108 = call i32 (...) @rcu_read_unlock()
  %109 = load %struct.cred*, %struct.cred** %12, align 8
  %110 = getelementptr inbounds %struct.cred, %struct.cred* %109, i32 0, i32 0
  %111 = load %struct.group_info*, %struct.group_info** %110, align 8
  store %struct.group_info* %111, %struct.group_info** %9, align 8
  %112 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %113 = call i32 @task_unlock(%struct.task_struct* %112)
  store i32 0, i32* %10, align 4
  br label %114

114:                                              ; preds = %128, %105
  %115 = load i32, i32* %10, align 4
  %116 = load %struct.group_info*, %struct.group_info** %9, align 8
  %117 = getelementptr inbounds %struct.group_info, %struct.group_info* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @NGROUPS_SMALL, align 4
  %120 = call i32 @min(i32 %118, i32 %119)
  %121 = icmp slt i32 %115, %120
  br i1 %121, label %122, label %131

122:                                              ; preds = %114
  %123 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %124 = load %struct.group_info*, %struct.group_info** %9, align 8
  %125 = load i32, i32* %10, align 4
  %126 = call i32 @GROUP_AT(%struct.group_info* %124, i32 %125)
  %127 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %123, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %126)
  br label %128

128:                                              ; preds = %122
  %129 = load i32, i32* %10, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %10, align 4
  br label %114

131:                                              ; preds = %114
  %132 = load %struct.cred*, %struct.cred** %12, align 8
  %133 = call i32 @put_cred(%struct.cred* %132)
  %134 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %135 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %134, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i64 @pid_alive(%struct.task_struct*) #1

declare dso_local i64 @task_tgid_nr_ns(%struct.task_struct*, %struct.pid_namespace*) #1

declare dso_local %struct.task_struct* @rcu_dereference(i32) #1

declare dso_local %struct.task_struct* @tracehook_tracer_task(%struct.task_struct*) #1

declare dso_local i64 @task_pid_nr_ns(%struct.task_struct*, %struct.pid_namespace*) #1

declare dso_local %struct.cred* @get_task_cred(%struct.task_struct*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @get_task_state(%struct.task_struct*) #1

declare dso_local i32 @pid_nr_ns(%struct.pid*, %struct.pid_namespace*) #1

declare dso_local i32 @task_utrace_proc_status(%struct.seq_file*, %struct.task_struct*) #1

declare dso_local i32 @task_lock(%struct.task_struct*) #1

declare dso_local %struct.fdtable* @files_fdtable(i64) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @task_unlock(%struct.task_struct*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @GROUP_AT(%struct.group_info*, i32) #1

declare dso_local i32 @put_cred(%struct.cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
