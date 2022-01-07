; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_exec.c_coredump_wait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_exec.c_coredump_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.completion*, %struct.mm_struct* }
%struct.completion = type { i32 }
%struct.mm_struct = type { i32 }
%struct.core_state = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.core_thread*, %struct.task_struct* }
%struct.core_thread = type { %struct.core_thread*, i32 }

@current = common dso_local global %struct.task_struct* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.core_state*)* @coredump_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coredump_wait(i32 %0, %struct.core_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.core_state*, align 8
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca %struct.mm_struct*, align 8
  %7 = alloca %struct.completion*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.core_thread*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.core_state* %1, %struct.core_state** %4, align 8
  %10 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %10, %struct.task_struct** %5, align 8
  %11 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %12 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %11, i32 0, i32 1
  %13 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  store %struct.mm_struct* %13, %struct.mm_struct** %6, align 8
  %14 = load %struct.core_state*, %struct.core_state** %4, align 8
  %15 = getelementptr inbounds %struct.core_state, %struct.core_state* %14, i32 0, i32 1
  %16 = call i32 @init_completion(i32* %15)
  %17 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %18 = load %struct.core_state*, %struct.core_state** %4, align 8
  %19 = getelementptr inbounds %struct.core_state, %struct.core_state* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  store %struct.task_struct* %17, %struct.task_struct** %20, align 8
  %21 = load %struct.core_state*, %struct.core_state** %4, align 8
  %22 = getelementptr inbounds %struct.core_state, %struct.core_state* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store %struct.core_thread* null, %struct.core_thread** %23, align 8
  %24 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %25 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %26 = load %struct.core_state*, %struct.core_state** %4, align 8
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @zap_threads(%struct.task_struct* %24, %struct.mm_struct* %25, %struct.core_state* %26, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %30 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %29, i32 0, i32 0
  %31 = call i32 @up_write(i32* %30)
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %2
  br label %73

38:                                               ; preds = %2
  %39 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %40 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %39, i32 0, i32 0
  %41 = load %struct.completion*, %struct.completion** %40, align 8
  store %struct.completion* %41, %struct.completion** %7, align 8
  %42 = load %struct.completion*, %struct.completion** %7, align 8
  %43 = icmp ne %struct.completion* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %46 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %45, i32 0, i32 0
  store %struct.completion* null, %struct.completion** %46, align 8
  %47 = load %struct.completion*, %struct.completion** %7, align 8
  %48 = call i32 @complete(%struct.completion* %47)
  br label %49

49:                                               ; preds = %44, %38
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %72

52:                                               ; preds = %49
  %53 = load %struct.core_state*, %struct.core_state** %4, align 8
  %54 = getelementptr inbounds %struct.core_state, %struct.core_state* %53, i32 0, i32 1
  %55 = call i32 @wait_for_completion(i32* %54)
  %56 = load %struct.core_state*, %struct.core_state** %4, align 8
  %57 = getelementptr inbounds %struct.core_state, %struct.core_state* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load %struct.core_thread*, %struct.core_thread** %58, align 8
  store %struct.core_thread* %59, %struct.core_thread** %9, align 8
  br label %60

60:                                               ; preds = %63, %52
  %61 = load %struct.core_thread*, %struct.core_thread** %9, align 8
  %62 = icmp ne %struct.core_thread* %61, null
  br i1 %62, label %63, label %71

63:                                               ; preds = %60
  %64 = load %struct.core_thread*, %struct.core_thread** %9, align 8
  %65 = getelementptr inbounds %struct.core_thread, %struct.core_thread* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @wait_task_inactive(i32 %66, i32 0)
  %68 = load %struct.core_thread*, %struct.core_thread** %9, align 8
  %69 = getelementptr inbounds %struct.core_thread, %struct.core_thread* %68, i32 0, i32 0
  %70 = load %struct.core_thread*, %struct.core_thread** %69, align 8
  store %struct.core_thread* %70, %struct.core_thread** %9, align 8
  br label %60

71:                                               ; preds = %60
  br label %72

72:                                               ; preds = %71, %49
  br label %73

73:                                               ; preds = %72, %37
  %74 = load i32, i32* %8, align 4
  ret i32 %74
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @zap_threads(%struct.task_struct*, %struct.mm_struct*, %struct.core_state*, i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @complete(%struct.completion*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @wait_task_inactive(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
