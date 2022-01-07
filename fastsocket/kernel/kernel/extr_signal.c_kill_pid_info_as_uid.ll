; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_signal.c_kill_pid_info_as_uid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_signal.c_kill_pid_info_as_uid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siginfo = type { i32 }
%struct.pid = type { i32 }
%struct.task_struct = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.cred = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@tasklist_lock = common dso_local global i32 0, align 4
@PIDTYPE_PID = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kill_pid_info_as_uid(i32 %0, %struct.siginfo* %1, %struct.pid* %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.siginfo*, align 8
  %10 = alloca %struct.pid*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.task_struct*, align 8
  %16 = alloca %struct.cred*, align 8
  %17 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store %struct.siginfo* %1, %struct.siginfo** %9, align 8
  store %struct.pid* %2, %struct.pid** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @valid_signal(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %6
  %24 = load i32, i32* %14, align 4
  store i32 %24, i32* %7, align 4
  br label %106

25:                                               ; preds = %6
  %26 = call i32 @read_lock(i32* @tasklist_lock)
  %27 = load %struct.pid*, %struct.pid** %10, align 8
  %28 = load i32, i32* @PIDTYPE_PID, align 4
  %29 = call %struct.task_struct* @pid_task(%struct.pid* %27, i32 %28)
  store %struct.task_struct* %29, %struct.task_struct** %15, align 8
  %30 = load %struct.task_struct*, %struct.task_struct** %15, align 8
  %31 = icmp ne %struct.task_struct* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %25
  %33 = load i32, i32* @ESRCH, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %14, align 4
  br label %103

35:                                               ; preds = %25
  %36 = load %struct.task_struct*, %struct.task_struct** %15, align 8
  %37 = call %struct.cred* @__task_cred(%struct.task_struct* %36)
  store %struct.cred* %37, %struct.cred** %16, align 8
  %38 = load %struct.siginfo*, %struct.siginfo** %9, align 8
  %39 = call i64 @si_fromuser(%struct.siginfo* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %68

41:                                               ; preds = %35
  %42 = load i64, i64* %12, align 8
  %43 = load %struct.cred*, %struct.cred** %16, align 8
  %44 = getelementptr inbounds %struct.cred, %struct.cred* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %42, %45
  br i1 %46, label %47, label %68

47:                                               ; preds = %41
  %48 = load i64, i64* %12, align 8
  %49 = load %struct.cred*, %struct.cred** %16, align 8
  %50 = getelementptr inbounds %struct.cred, %struct.cred* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %48, %51
  br i1 %52, label %53, label %68

53:                                               ; preds = %47
  %54 = load i64, i64* %11, align 8
  %55 = load %struct.cred*, %struct.cred** %16, align 8
  %56 = getelementptr inbounds %struct.cred, %struct.cred* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %54, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %53
  %60 = load i64, i64* %11, align 8
  %61 = load %struct.cred*, %struct.cred** %16, align 8
  %62 = getelementptr inbounds %struct.cred, %struct.cred* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %60, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i32, i32* @EPERM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %14, align 4
  br label %103

68:                                               ; preds = %59, %53, %47, %41, %35
  %69 = load %struct.task_struct*, %struct.task_struct** %15, align 8
  %70 = load %struct.siginfo*, %struct.siginfo** %9, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %13, align 4
  %73 = call i32 @security_task_kill(%struct.task_struct* %69, %struct.siginfo* %70, i32 %71, i32 %72)
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %14, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  br label %103

77:                                               ; preds = %68
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %102

80:                                               ; preds = %77
  %81 = load %struct.task_struct*, %struct.task_struct** %15, align 8
  %82 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %81, i32 0, i32 0
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = icmp ne %struct.TYPE_2__* %83, null
  br i1 %84, label %85, label %102

85:                                               ; preds = %80
  %86 = load %struct.task_struct*, %struct.task_struct** %15, align 8
  %87 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i64, i64* %17, align 8
  %91 = call i32 @spin_lock_irqsave(i32* %89, i64 %90)
  %92 = load i32, i32* %8, align 4
  %93 = load %struct.siginfo*, %struct.siginfo** %9, align 8
  %94 = load %struct.task_struct*, %struct.task_struct** %15, align 8
  %95 = call i32 @__send_signal(i32 %92, %struct.siginfo* %93, %struct.task_struct* %94, i32 1, i32 0)
  store i32 %95, i32* %14, align 4
  %96 = load %struct.task_struct*, %struct.task_struct** %15, align 8
  %97 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %96, i32 0, i32 0
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i64, i64* %17, align 8
  %101 = call i32 @spin_unlock_irqrestore(i32* %99, i64 %100)
  br label %102

102:                                              ; preds = %85, %80, %77
  br label %103

103:                                              ; preds = %102, %76, %65, %32
  %104 = call i32 @read_unlock(i32* @tasklist_lock)
  %105 = load i32, i32* %14, align 4
  store i32 %105, i32* %7, align 4
  br label %106

106:                                              ; preds = %103, %23
  %107 = load i32, i32* %7, align 4
  ret i32 %107
}

declare dso_local i32 @valid_signal(i32) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local %struct.task_struct* @pid_task(%struct.pid*, i32) #1

declare dso_local %struct.cred* @__task_cred(%struct.task_struct*) #1

declare dso_local i64 @si_fromuser(%struct.siginfo*) #1

declare dso_local i32 @security_task_kill(%struct.task_struct*, %struct.siginfo*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__send_signal(i32, %struct.siginfo*, %struct.task_struct*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
