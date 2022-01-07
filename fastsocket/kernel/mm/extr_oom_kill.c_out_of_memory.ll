; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_oom_kill.c_out_of_memory.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_oom_kill.c_out_of_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.zonelist = type { i32 }

@CONSTRAINT_NONE = common dso_local global i32 0, align 4
@oom_notify_list = common dso_local global i32 0, align 4
@current = common dso_local global %struct.task_struct* null, align 8
@TIF_MEMDIE = common dso_local global i32 0, align 4
@CONSTRAINT_MEMORY_POLICY = common dso_local global i32 0, align 4
@tasklist_lock = common dso_local global i32 0, align 4
@sysctl_oom_kill_allocating_task = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"Out of memory (oom_kill_allocating_task)\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Out of memory and no killable processes...\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @out_of_memory(%struct.zonelist* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.zonelist*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.task_struct*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.zonelist* %0, %struct.zonelist** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i64 0, i64* %12, align 8
  %16 = load i32, i32* @CONSTRAINT_NONE, align 4
  store i32 %16, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %17 = call i32 @blocking_notifier_call_chain(i32* @oom_notify_list, i32 0, i64* %12)
  %18 = load i64, i64* %12, align 8
  %19 = icmp ugt i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  br label %116

21:                                               ; preds = %4
  %22 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %23 = call i64 @fatal_signal_pending(%struct.task_struct* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* @TIF_MEMDIE, align 4
  %27 = call i32 @set_thread_flag(i32 %26)
  br label %116

28:                                               ; preds = %21
  %29 = load %struct.zonelist*, %struct.zonelist** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @constrained_alloc(%struct.zonelist* %29, i32 %30, i32* %31, i64* %11)
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* @CONSTRAINT_MEMORY_POLICY, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32*, i32** %8, align 8
  br label %39

38:                                               ; preds = %28
  br label %39

39:                                               ; preds = %38, %36
  %40 = phi i32* [ %37, %36 ], [ null, %38 ]
  store i32* %40, i32** %9, align 8
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32*, i32** %9, align 8
  %45 = call i32 @check_panic_on_oom(i32 %41, i32 %42, i32 %43, i32* %44)
  %46 = call i32 @read_lock(i32* @tasklist_lock)
  %47 = load i64, i64* @sysctl_oom_kill_allocating_task, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %76

49:                                               ; preds = %39
  %50 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %51 = load i32*, i32** %8, align 8
  %52 = call i32 @oom_unkillable_task(%struct.task_struct* %50, i32* null, i32* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %76, label %54

54:                                               ; preds = %49
  %55 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %56 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = icmp ne %struct.TYPE_2__* %57, null
  br i1 %58, label %59, label %76

59:                                               ; preds = %54
  %60 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %61 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = call i32 @atomic_read(i32* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %76, label %66

66:                                               ; preds = %59
  %67 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load i64, i64* %11, align 8
  %71 = load i32*, i32** %8, align 8
  %72 = call i64 @oom_kill_process(%struct.task_struct* %67, i32 %68, i32 %69, i32 0, i64 %70, i32* null, i32* %71, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %66
  br label %106

75:                                               ; preds = %66
  br label %76

76:                                               ; preds = %75, %59, %54, %49, %39
  br label %77

77:                                               ; preds = %104, %76
  %78 = load i64, i64* %11, align 8
  %79 = load i32*, i32** %9, align 8
  %80 = call %struct.task_struct* @select_bad_process(i32* %13, i64 %78, i32* null, i32* %79)
  store %struct.task_struct* %80, %struct.task_struct** %10, align 8
  %81 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %82 = call i64 @PTR_ERR(%struct.task_struct* %81)
  %83 = icmp eq i64 %82, -1
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  br label %106

85:                                               ; preds = %77
  %86 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %87 = icmp ne %struct.task_struct* %86, null
  br i1 %87, label %95, label %88

88:                                               ; preds = %85
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* %7, align 4
  %91 = load i32*, i32** %9, align 8
  %92 = call i32 @dump_header(i32* null, i32 %89, i32 %90, i32* null, i32* %91)
  %93 = call i32 @read_unlock(i32* @tasklist_lock)
  %94 = call i32 @panic(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %95

95:                                               ; preds = %88, %85
  %96 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* %13, align 4
  %100 = load i64, i64* %11, align 8
  %101 = load i32*, i32** %8, align 8
  %102 = call i64 @oom_kill_process(%struct.task_struct* %96, i32 %97, i32 %98, i32 %99, i64 %100, i32* null, i32* %101, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %95
  br label %77

105:                                              ; preds = %95
  store i32 1, i32* %15, align 4
  br label %106

106:                                              ; preds = %105, %84, %74
  %107 = call i32 @read_unlock(i32* @tasklist_lock)
  %108 = load i32, i32* %15, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %106
  %111 = load i32, i32* @TIF_MEMDIE, align 4
  %112 = call i32 @test_thread_flag(i32 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %110
  %115 = call i32 @schedule_timeout_uninterruptible(i32 1)
  br label %116

116:                                              ; preds = %20, %25, %114, %110, %106
  ret void
}

declare dso_local i32 @blocking_notifier_call_chain(i32*, i32, i64*) #1

declare dso_local i64 @fatal_signal_pending(%struct.task_struct*) #1

declare dso_local i32 @set_thread_flag(i32) #1

declare dso_local i32 @constrained_alloc(%struct.zonelist*, i32, i32*, i64*) #1

declare dso_local i32 @check_panic_on_oom(i32, i32, i32, i32*) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @oom_unkillable_task(%struct.task_struct*, i32*, i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @oom_kill_process(%struct.task_struct*, i32, i32, i32, i64, i32*, i32*, i8*) #1

declare dso_local %struct.task_struct* @select_bad_process(i32*, i64, i32*, i32*) #1

declare dso_local i64 @PTR_ERR(%struct.task_struct*) #1

declare dso_local i32 @dump_header(i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @test_thread_flag(i32) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
