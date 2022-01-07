; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_ptrace.c___ptrace_may_access.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_ptrace.c___ptrace_may_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i64 }
%struct.cred = type { i64, i64, i64, i64, i64, i64 }

@current = common dso_local global i32 0, align 4
@CAP_SYS_PTRACE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@SUID_DUMP_USER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__ptrace_may_access(%struct.task_struct* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cred*, align 8
  %7 = alloca %struct.cred*, align 8
  %8 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = call %struct.cred* (...) @current_cred()
  store %struct.cred* %9, %struct.cred** %6, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %11 = load i32, i32* @current, align 4
  %12 = call i64 @same_thread_group(%struct.task_struct* %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %101

15:                                               ; preds = %2
  %16 = call i32 (...) @rcu_read_lock()
  %17 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %18 = call %struct.cred* @__task_cred(%struct.task_struct* %17)
  store %struct.cred* %18, %struct.cred** %7, align 8
  %19 = load %struct.cred*, %struct.cred** %6, align 8
  %20 = getelementptr inbounds %struct.cred, %struct.cred* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.cred*, %struct.cred** %7, align 8
  %23 = getelementptr inbounds %struct.cred, %struct.cred* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %21, %24
  br i1 %25, label %66, label %26

26:                                               ; preds = %15
  %27 = load %struct.cred*, %struct.cred** %6, align 8
  %28 = getelementptr inbounds %struct.cred, %struct.cred* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.cred*, %struct.cred** %7, align 8
  %31 = getelementptr inbounds %struct.cred, %struct.cred* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %29, %32
  br i1 %33, label %66, label %34

34:                                               ; preds = %26
  %35 = load %struct.cred*, %struct.cred** %6, align 8
  %36 = getelementptr inbounds %struct.cred, %struct.cred* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.cred*, %struct.cred** %7, align 8
  %39 = getelementptr inbounds %struct.cred, %struct.cred* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %37, %40
  br i1 %41, label %66, label %42

42:                                               ; preds = %34
  %43 = load %struct.cred*, %struct.cred** %6, align 8
  %44 = getelementptr inbounds %struct.cred, %struct.cred* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.cred*, %struct.cred** %7, align 8
  %47 = getelementptr inbounds %struct.cred, %struct.cred* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %45, %48
  br i1 %49, label %66, label %50

50:                                               ; preds = %42
  %51 = load %struct.cred*, %struct.cred** %6, align 8
  %52 = getelementptr inbounds %struct.cred, %struct.cred* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.cred*, %struct.cred** %7, align 8
  %55 = getelementptr inbounds %struct.cred, %struct.cred* %54, i32 0, i32 5
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %53, %56
  br i1 %57, label %66, label %58

58:                                               ; preds = %50
  %59 = load %struct.cred*, %struct.cred** %6, align 8
  %60 = getelementptr inbounds %struct.cred, %struct.cred* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.cred*, %struct.cred** %7, align 8
  %63 = getelementptr inbounds %struct.cred, %struct.cred* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %61, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %58, %50, %42, %34, %26, %15
  %67 = load i32, i32* @CAP_SYS_PTRACE, align 4
  %68 = call i32 @capable(i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  %71 = call i32 (...) @rcu_read_unlock()
  %72 = load i32, i32* @EPERM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %101

74:                                               ; preds = %66, %58
  %75 = call i32 (...) @rcu_read_unlock()
  %76 = call i32 (...) @smp_rmb()
  %77 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %78 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %74
  %82 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %83 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @get_dumpable(i64 %84)
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %81, %74
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @SUID_DUMP_USER, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %86
  %91 = load i32, i32* @CAP_SYS_PTRACE, align 4
  %92 = call i32 @capable(i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %90
  %95 = load i32, i32* @EPERM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %3, align 4
  br label %101

97:                                               ; preds = %90, %86
  %98 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %99 = load i32, i32* %5, align 4
  %100 = call i32 @security_ptrace_access_check(%struct.task_struct* %98, i32 %99)
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %97, %94, %70, %14
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local %struct.cred* @current_cred(...) #1

declare dso_local i64 @same_thread_group(%struct.task_struct*, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.cred* @__task_cred(%struct.task_struct*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @get_dumpable(i64) #1

declare dso_local i32 @security_ptrace_access_check(%struct.task_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
