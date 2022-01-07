; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_bprm_committed_creds.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_bprm_committed_creds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__*, i32, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.linux_binprm = type { i32 }
%struct.task_security_struct = type { i64, i64 }
%struct.itimerval = type { i32 }

@SECCLASS_PROCESS = common dso_local global i32 0, align 4
@PROCESS__SIGINH = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_9__* null, align 8
@SIGNAL_GROUP_EXIT = common dso_local global i32 0, align 4
@tasklist_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.linux_binprm*)* @selinux_bprm_committed_creds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @selinux_bprm_committed_creds(%struct.linux_binprm* %0) #0 {
  %2 = alloca %struct.linux_binprm*, align 8
  %3 = alloca %struct.task_security_struct*, align 8
  %4 = alloca %struct.itimerval, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.linux_binprm* %0, %struct.linux_binprm** %2, align 8
  %9 = call %struct.task_security_struct* (...) @current_security()
  store %struct.task_security_struct* %9, %struct.task_security_struct** %3, align 8
  %10 = load %struct.task_security_struct*, %struct.task_security_struct** %3, align 8
  %11 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %5, align 8
  %13 = load %struct.task_security_struct*, %struct.task_security_struct** %3, align 8
  %14 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* %5, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %75

20:                                               ; preds = %1
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i32, i32* @SECCLASS_PROCESS, align 4
  %24 = load i32, i32* @PROCESS__SIGINH, align 4
  %25 = call i32 @avc_has_perm(i64 %21, i64 %22, i32 %23, i32 %24, i32* null)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %67

28:                                               ; preds = %20
  %29 = call i32 @memset(%struct.itimerval* %4, i32 0, i32 4)
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %36, %28
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 3
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @do_setitimer(i32 %34, %struct.itimerval* %4, i32* null)
  br label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  br label %30

39:                                               ; preds = %30
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = call i32 @spin_lock_irq(i32* %43)
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 3
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @SIGNAL_GROUP_EXIT, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %39
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %55 = call i32 @__flush_signals(%struct.TYPE_9__* %54)
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %57 = call i32 @flush_signal_handlers(%struct.TYPE_9__* %56, i32 1)
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 2
  %60 = call i32 @sigemptyset(i32* %59)
  br label %61

61:                                               ; preds = %53, %39
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = call i32 @spin_unlock_irq(i32* %65)
  br label %67

67:                                               ; preds = %61, %20
  %68 = call i32 @read_lock(i32* @tasklist_lock)
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @__wake_up_parent(%struct.TYPE_9__* %69, i32 %72)
  %74 = call i32 @read_unlock(i32* @tasklist_lock)
  br label %75

75:                                               ; preds = %67, %19
  ret void
}

declare dso_local %struct.task_security_struct* @current_security(...) #1

declare dso_local i32 @avc_has_perm(i64, i64, i32, i32, i32*) #1

declare dso_local i32 @memset(%struct.itimerval*, i32, i32) #1

declare dso_local i32 @do_setitimer(i32, %struct.itimerval*, i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @__flush_signals(%struct.TYPE_9__*) #1

declare dso_local i32 @flush_signal_handlers(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @__wake_up_parent(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
