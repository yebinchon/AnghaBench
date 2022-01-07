; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_ptrace.c_ptrace_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_ptrace.c_ptrace_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, i32, i32, i32 }

@EPERM = common dso_local global i32 0, align 4
@PF_KTHREAD = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@ERESTARTNOINTR = common dso_local global i32 0, align 4
@PTRACE_MODE_ATTACH = common dso_local global i32 0, align 4
@tasklist_lock = common dso_local global i32 0, align 4
@PT_PTRACED = common dso_local global i32 0, align 4
@CAP_SYS_PTRACE = common dso_local global i32 0, align 4
@PT_PTRACE_CAP = common dso_local global i32 0, align 4
@SIGSTOP = common dso_local global i32 0, align 4
@SEND_SIG_FORCED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ptrace_attach(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %4 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %5 = call i32 @audit_ptrace(%struct.task_struct* %4)
  %6 = load i32, i32* @EPERM, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %3, align 4
  %8 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %9 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @PF_KTHREAD, align 4
  %12 = and i32 %10, %11
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %84

16:                                               ; preds = %1
  %17 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %18 = load i32, i32* @current, align 4
  %19 = call i64 @same_thread_group(%struct.task_struct* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %84

22:                                               ; preds = %16
  %23 = load i32, i32* @ERESTARTNOINTR, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  %25 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %26 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %25, i32 0, i32 3
  %27 = call i64 @mutex_lock_interruptible(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %84

30:                                               ; preds = %22
  %31 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %32 = call i32 @task_lock(%struct.task_struct* %31)
  %33 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %34 = load i32, i32* @PTRACE_MODE_ATTACH, align 4
  %35 = call i32 @__ptrace_may_access(%struct.task_struct* %33, i32 %34)
  store i32 %35, i32* %3, align 4
  %36 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %37 = call i32 @task_unlock(%struct.task_struct* %36)
  %38 = load i32, i32* %3, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  br label %80

41:                                               ; preds = %30
  %42 = call i32 @write_lock_irq(i32* @tasklist_lock)
  %43 = load i32, i32* @EPERM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  %45 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %46 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  br label %78

51:                                               ; preds = %41
  %52 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %53 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %78

57:                                               ; preds = %51
  %58 = load i32, i32* @PT_PTRACED, align 4
  %59 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %60 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @CAP_SYS_PTRACE, align 4
  %62 = call i64 @capable(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %57
  %65 = load i32, i32* @PT_PTRACE_CAP, align 4
  %66 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %67 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %64, %57
  %71 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %72 = load i32, i32* @current, align 4
  %73 = call i32 @__ptrace_link(%struct.task_struct* %71, i32 %72)
  %74 = load i32, i32* @SIGSTOP, align 4
  %75 = load i32, i32* @SEND_SIG_FORCED, align 4
  %76 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %77 = call i32 @send_sig_info(i32 %74, i32 %75, %struct.task_struct* %76)
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %70, %56, %50
  %79 = call i32 @write_unlock_irq(i32* @tasklist_lock)
  br label %80

80:                                               ; preds = %78, %40
  %81 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %82 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %81, i32 0, i32 3
  %83 = call i32 @mutex_unlock(i32* %82)
  br label %84

84:                                               ; preds = %80, %29, %21, %15
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @audit_ptrace(%struct.task_struct*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @same_thread_group(%struct.task_struct*, i32) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @task_lock(%struct.task_struct*) #1

declare dso_local i32 @__ptrace_may_access(%struct.task_struct*, i32) #1

declare dso_local i32 @task_unlock(%struct.task_struct*) #1

declare dso_local i32 @write_lock_irq(i32*) #1

declare dso_local i64 @capable(i32) #1

declare dso_local i32 @__ptrace_link(%struct.task_struct*, i32) #1

declare dso_local i32 @send_sig_info(i32, i32, %struct.task_struct*) #1

declare dso_local i32 @write_unlock_irq(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
