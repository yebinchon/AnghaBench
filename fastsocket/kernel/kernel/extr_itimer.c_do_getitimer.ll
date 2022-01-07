; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_itimer.c_do_getitimer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_itimer.c_do_getitimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.itimerval = type { i32, i32 }

@current = common dso_local global %struct.task_struct* null, align 8
@CPUCLOCK_VIRT = common dso_local global i32 0, align 4
@CPUCLOCK_PROF = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_getitimer(i32 %0, %struct.itimerval* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.itimerval*, align 8
  %6 = alloca %struct.task_struct*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.itimerval* %1, %struct.itimerval** %5, align 8
  %7 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %7, %struct.task_struct** %6, align 8
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %45 [
    i32 129, label %9
    i32 128, label %35
    i32 130, label %40
  ]

9:                                                ; preds = %2
  %10 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %11 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = call i32 @spin_lock_irq(i32* %13)
  %15 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %16 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = call i32 @itimer_get_remtime(i32* %18)
  %20 = load %struct.itimerval*, %struct.itimerval** %5, align 8
  %21 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %23 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ktime_to_timeval(i32 %26)
  %28 = load %struct.itimerval*, %struct.itimerval** %5, align 8
  %29 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %31 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = call i32 @spin_unlock_irq(i32* %33)
  br label %48

35:                                               ; preds = %2
  %36 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %37 = load i32, i32* @CPUCLOCK_VIRT, align 4
  %38 = load %struct.itimerval*, %struct.itimerval** %5, align 8
  %39 = call i32 @get_cpu_itimer(%struct.task_struct* %36, i32 %37, %struct.itimerval* %38)
  br label %48

40:                                               ; preds = %2
  %41 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %42 = load i32, i32* @CPUCLOCK_PROF, align 4
  %43 = load %struct.itimerval*, %struct.itimerval** %5, align 8
  %44 = call i32 @get_cpu_itimer(%struct.task_struct* %41, i32 %42, %struct.itimerval* %43)
  br label %48

45:                                               ; preds = %2
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %49

48:                                               ; preds = %40, %35, %9
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %45
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @itimer_get_remtime(i32*) #1

declare dso_local i32 @ktime_to_timeval(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @get_cpu_itimer(%struct.task_struct*, i32, %struct.itimerval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
