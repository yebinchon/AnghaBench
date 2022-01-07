; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_ptrace-utrace.c_ptrace_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_ptrace-utrace.c_ptrace_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, i32, i32, i32 }

@EPERM = common dso_local global i32 0, align 4
@PF_KTHREAD = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@ERESTARTNOINTR = common dso_local global i32 0, align 4
@PTRACE_MODE_ATTACH = common dso_local global i32 0, align 4
@tasklist_lock = common dso_local global i32 0, align 4
@PT_UTRACED = common dso_local global i32 0, align 4
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
  br label %89

16:                                               ; preds = %1
  %17 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %18 = load i32, i32* @current, align 4
  %19 = call i64 @same_thread_group(%struct.task_struct* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %89

22:                                               ; preds = %16
  %23 = load i32, i32* @ERESTARTNOINTR, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  %25 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %26 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %25, i32 0, i32 2
  %27 = call i64 @mutex_lock_interruptible(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %89

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
  br label %85

41:                                               ; preds = %30
  %42 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %43 = call i32 @ptrace_attach_task(%struct.task_struct* %42, i32 0)
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* %3, align 4
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %85

48:                                               ; preds = %41
  %49 = call i32 @write_lock_irq(i32* @tasklist_lock)
  %50 = load i32, i32* @EPERM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  %52 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %53 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  br label %83

58:                                               ; preds = %48
  %59 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %60 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @BUG_ON(i32 %61)
  %63 = load i32, i32* @PT_UTRACED, align 4
  %64 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %65 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @CAP_SYS_PTRACE, align 4
  %67 = call i64 @capable(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %58
  %70 = load i32, i32* @PT_PTRACE_CAP, align 4
  %71 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %72 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %69, %58
  %76 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %77 = load i32, i32* @current, align 4
  %78 = call i32 @__ptrace_link(%struct.task_struct* %76, i32 %77)
  %79 = load i32, i32* @SIGSTOP, align 4
  %80 = load i32, i32* @SEND_SIG_FORCED, align 4
  %81 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %82 = call i32 @send_sig_info(i32 %79, i32 %80, %struct.task_struct* %81)
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %75, %57
  %84 = call i32 @write_unlock_irq(i32* @tasklist_lock)
  br label %85

85:                                               ; preds = %83, %47, %40
  %86 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %87 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %86, i32 0, i32 2
  %88 = call i32 @mutex_unlock(i32* %87)
  br label %89

89:                                               ; preds = %85, %29, %21, %15
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @audit_ptrace(%struct.task_struct*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @same_thread_group(%struct.task_struct*, i32) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @task_lock(%struct.task_struct*) #1

declare dso_local i32 @__ptrace_may_access(%struct.task_struct*, i32) #1

declare dso_local i32 @task_unlock(%struct.task_struct*) #1

declare dso_local i32 @ptrace_attach_task(%struct.task_struct*, i32) #1

declare dso_local i32 @write_lock_irq(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

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
