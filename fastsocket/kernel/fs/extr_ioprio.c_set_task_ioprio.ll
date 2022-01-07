; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_ioprio.c_set_task_ioprio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_ioprio.c_set_task_ioprio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.io_context* }
%struct.io_context = type { i32, i32 }
%struct.cred = type { i64, i64 }

@CAP_SYS_NICE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_task_ioprio(%struct.task_struct* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.io_context*, align 8
  %8 = alloca %struct.cred*, align 8
  %9 = alloca %struct.cred*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = call %struct.cred* (...) @current_cred()
  store %struct.cred* %10, %struct.cred** %8, align 8
  %11 = call i32 (...) @rcu_read_lock()
  %12 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %13 = call %struct.cred* @__task_cred(%struct.task_struct* %12)
  store %struct.cred* %13, %struct.cred** %9, align 8
  %14 = load %struct.cred*, %struct.cred** %9, align 8
  %15 = getelementptr inbounds %struct.cred, %struct.cred* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.cred*, %struct.cred** %8, align 8
  %18 = getelementptr inbounds %struct.cred, %struct.cred* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %16, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %2
  %22 = load %struct.cred*, %struct.cred** %9, align 8
  %23 = getelementptr inbounds %struct.cred, %struct.cred* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.cred*, %struct.cred** %8, align 8
  %26 = getelementptr inbounds %struct.cred, %struct.cred* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %24, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %21
  %30 = load i32, i32* @CAP_SYS_NICE, align 4
  %31 = call i32 @capable(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = call i32 (...) @rcu_read_unlock()
  %35 = load i32, i32* @EPERM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %83

37:                                               ; preds = %29, %21, %2
  %38 = call i32 (...) @rcu_read_unlock()
  %39 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @security_task_setioprio(%struct.task_struct* %39, i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %3, align 4
  br label %83

46:                                               ; preds = %37
  %47 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %48 = call i32 @task_lock(%struct.task_struct* %47)
  br label %49

49:                                               ; preds = %69, %46
  %50 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %51 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %50, i32 0, i32 0
  %52 = load %struct.io_context*, %struct.io_context** %51, align 8
  store %struct.io_context* %52, %struct.io_context** %7, align 8
  %53 = call i32 (...) @smp_read_barrier_depends()
  %54 = load %struct.io_context*, %struct.io_context** %7, align 8
  %55 = icmp ne %struct.io_context* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %70

57:                                               ; preds = %49
  %58 = load i32, i32* @GFP_ATOMIC, align 4
  %59 = call %struct.io_context* @alloc_io_context(i32 %58, i32 -1)
  store %struct.io_context* %59, %struct.io_context** %7, align 8
  %60 = load %struct.io_context*, %struct.io_context** %7, align 8
  %61 = icmp ne %struct.io_context* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %57
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %6, align 4
  br label %70

65:                                               ; preds = %57
  %66 = load %struct.io_context*, %struct.io_context** %7, align 8
  %67 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %68 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %67, i32 0, i32 0
  store %struct.io_context* %66, %struct.io_context** %68, align 8
  br label %69

69:                                               ; preds = %65
  br i1 true, label %49, label %70

70:                                               ; preds = %69, %62, %56
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* %5, align 4
  %75 = load %struct.io_context*, %struct.io_context** %7, align 8
  %76 = getelementptr inbounds %struct.io_context, %struct.io_context* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  %77 = load %struct.io_context*, %struct.io_context** %7, align 8
  %78 = getelementptr inbounds %struct.io_context, %struct.io_context* %77, i32 0, i32 1
  store i32 1, i32* %78, align 4
  br label %79

79:                                               ; preds = %73, %70
  %80 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %81 = call i32 @task_unlock(%struct.task_struct* %80)
  %82 = load i32, i32* %6, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %79, %44, %33
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local %struct.cred* @current_cred(...) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.cred* @__task_cred(%struct.task_struct*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @security_task_setioprio(%struct.task_struct*, i32) #1

declare dso_local i32 @task_lock(%struct.task_struct*) #1

declare dso_local i32 @smp_read_barrier_depends(...) #1

declare dso_local %struct.io_context* @alloc_io_context(i32, i32) #1

declare dso_local i32 @task_unlock(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
