; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_posix-cpu-timers.c_do_cpu_nanosleep.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_posix-cpu-timers.c_do_cpu_nanosleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.itimerspec = type { i32, %struct.timespec, i32, %struct.TYPE_5__, i32, i32 }
%struct.timespec = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.k_itimer = type { i32, %struct.timespec, i32, %struct.TYPE_5__, i32, i32 }

@current = common dso_local global i32 0, align 4
@do_cpu_nanosleep.zero_it = internal global %struct.itimerspec zeroinitializer, align 8
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@ERESTART_RESTARTBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.timespec*, %struct.itimerspec*)* @do_cpu_nanosleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_cpu_nanosleep(i32 %0, i32 %1, %struct.timespec* %2, %struct.itimerspec* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.timespec*, align 8
  %9 = alloca %struct.itimerspec*, align 8
  %10 = alloca %struct.k_itimer, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.timespec* %2, %struct.timespec** %8, align 8
  store %struct.itimerspec* %3, %struct.itimerspec** %9, align 8
  %12 = call i32 @memset(%struct.k_itimer* %10, i32 0, i32 32)
  %13 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %10, i32 0, i32 2
  %14 = call i32 @spin_lock_init(i32* %13)
  %15 = load i32, i32* %6, align 4
  %16 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %10, i32 0, i32 5
  store i32 %15, i32* %16, align 4
  %17 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %10, i32 0, i32 0
  store i32 -1, i32* %17, align 8
  %18 = call i32 @posix_cpu_timer_create(%struct.k_itimer* %10)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* @current, align 4
  %20 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %10, i32 0, i32 4
  store i32 %19, i32* %20, align 8
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %96, label %23

23:                                               ; preds = %4
  %24 = load %struct.itimerspec*, %struct.itimerspec** %9, align 8
  %25 = bitcast %struct.itimerspec* %24 to %struct.k_itimer*
  %26 = call i32 @memset(%struct.k_itimer* %25, i32 0, i32 32)
  %27 = load %struct.itimerspec*, %struct.itimerspec** %9, align 8
  %28 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %27, i32 0, i32 1
  %29 = load %struct.timespec*, %struct.timespec** %8, align 8
  %30 = bitcast %struct.timespec* %28 to i8*
  %31 = bitcast %struct.timespec* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 %31, i64 8, i1 false)
  %32 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %10, i32 0, i32 2
  %33 = call i32 @spin_lock_irq(i32* %32)
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.itimerspec*, %struct.itimerspec** %9, align 8
  %36 = bitcast %struct.itimerspec* %35 to %struct.k_itimer*
  %37 = call i32 @posix_cpu_timer_set(%struct.k_itimer* %10, i32 %34, %struct.k_itimer* %36, %struct.k_itimer* null)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %23
  %41 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %10, i32 0, i32 2
  %42 = call i32 @spin_unlock_irq(i32* %41)
  %43 = load i32, i32* %11, align 4
  store i32 %43, i32* %5, align 4
  br label %98

44:                                               ; preds = %23
  br label %45

45:                                               ; preds = %60, %44
  %46 = load i32, i32* @current, align 4
  %47 = call i32 @signal_pending(i32 %46)
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  br i1 %49, label %50, label %68

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %10, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %10, i32 0, i32 2
  %59 = call i32 @spin_unlock_irq(i32* %58)
  store i32 0, i32* %5, align 4
  br label %98

60:                                               ; preds = %50
  %61 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %62 = call i32 @__set_current_state(i32 %61)
  %63 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %10, i32 0, i32 2
  %64 = call i32 @spin_unlock_irq(i32* %63)
  %65 = call i32 (...) @schedule()
  %66 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %10, i32 0, i32 2
  %67 = call i32 @spin_lock_irq(i32* %66)
  br label %45

68:                                               ; preds = %45
  %69 = load i32, i32* %6, align 4
  %70 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %10, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load %struct.timespec*, %struct.timespec** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @sample_to_timespec(i32 %69, i64 %75, %struct.timespec* %73)
  %77 = load %struct.itimerspec*, %struct.itimerspec** %9, align 8
  %78 = bitcast %struct.itimerspec* %77 to %struct.k_itimer*
  %79 = call i32 @posix_cpu_timer_set(%struct.k_itimer* %10, i32 0, %struct.k_itimer* bitcast (%struct.itimerspec* @do_cpu_nanosleep.zero_it to %struct.k_itimer*), %struct.k_itimer* %78)
  %80 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %10, i32 0, i32 2
  %81 = call i32 @spin_unlock_irq(i32* %80)
  %82 = load %struct.itimerspec*, %struct.itimerspec** %9, align 8
  %83 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.timespec, %struct.timespec* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.itimerspec*, %struct.itimerspec** %9, align 8
  %87 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.timespec, %struct.timespec* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %85, %89
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %68
  store i32 0, i32* %5, align 4
  br label %98

93:                                               ; preds = %68
  %94 = load i32, i32* @ERESTART_RESTARTBLOCK, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %11, align 4
  br label %96

96:                                               ; preds = %93, %4
  %97 = load i32, i32* %11, align 4
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %96, %92, %57, %40
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local i32 @memset(%struct.k_itimer*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @posix_cpu_timer_create(%struct.k_itimer*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @posix_cpu_timer_set(%struct.k_itimer*, i32, %struct.k_itimer*, %struct.k_itimer*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @signal_pending(i32) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @sample_to_timespec(i32, i64, %struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
