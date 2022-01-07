; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_itimer.c_get_cpu_itimer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_itimer.c_get_cpu_itimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.cpu_itimer* }
%struct.cpu_itimer = type { i32, i32 }
%struct.itimerval = type { i32, i32 }
%struct.task_cputime = type { i32, i32 }

@cputime_zero = common dso_local global i32 0, align 4
@CPUCLOCK_PROF = common dso_local global i32 0, align 4
@cputime_one_jiffy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*, i32, %struct.itimerval*)* @get_cpu_itimer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_cpu_itimer(%struct.task_struct* %0, i32 %1, %struct.itimerval* %2) #0 {
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.itimerval*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cpu_itimer*, align 8
  %10 = alloca %struct.task_cputime, align 4
  %11 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.itimerval* %2, %struct.itimerval** %6, align 8
  %12 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %13 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.cpu_itimer*, %struct.cpu_itimer** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.cpu_itimer, %struct.cpu_itimer* %16, i64 %18
  store %struct.cpu_itimer* %19, %struct.cpu_itimer** %9, align 8
  %20 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %21 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = call i32 @spin_lock_irq(i32* %23)
  %25 = load %struct.cpu_itimer*, %struct.cpu_itimer** %9, align 8
  %26 = getelementptr inbounds %struct.cpu_itimer, %struct.cpu_itimer* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %7, align 4
  %28 = load %struct.cpu_itimer*, %struct.cpu_itimer** %9, align 8
  %29 = getelementptr inbounds %struct.cpu_itimer, %struct.cpu_itimer* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @cputime_zero, align 4
  %33 = call i32 @cputime_eq(i32 %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %62, label %35

35:                                               ; preds = %3
  %36 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %37 = call i32 @thread_group_cputimer(%struct.task_struct* %36, %struct.task_cputime* %10)
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @CPUCLOCK_PROF, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.task_cputime, %struct.task_cputime* %10, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.task_cputime, %struct.task_cputime* %10, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @cputime_add(i32 %43, i32 %45)
  store i32 %46, i32* %11, align 4
  br label %50

47:                                               ; preds = %35
  %48 = getelementptr inbounds %struct.task_cputime, %struct.task_cputime* %10, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %11, align 4
  br label %50

50:                                               ; preds = %47, %41
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %11, align 4
  %53 = call i64 @cputime_le(i32 %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i32, i32* @cputime_one_jiffy, align 4
  store i32 %56, i32* %7, align 4
  br label %61

57:                                               ; preds = %50
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @cputime_sub(i32 %58, i32 %59)
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %57, %55
  br label %62

62:                                               ; preds = %61, %3
  %63 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %64 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = call i32 @spin_unlock_irq(i32* %66)
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.itimerval*, %struct.itimerval** %6, align 8
  %70 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %69, i32 0, i32 1
  %71 = call i32 @cputime_to_timeval(i32 %68, i32* %70)
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.itimerval*, %struct.itimerval** %6, align 8
  %74 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %73, i32 0, i32 0
  %75 = call i32 @cputime_to_timeval(i32 %72, i32* %74)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @cputime_eq(i32, i32) #1

declare dso_local i32 @thread_group_cputimer(%struct.task_struct*, %struct.task_cputime*) #1

declare dso_local i32 @cputime_add(i32, i32) #1

declare dso_local i64 @cputime_le(i32, i32) #1

declare dso_local i32 @cputime_sub(i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @cputime_to_timeval(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
