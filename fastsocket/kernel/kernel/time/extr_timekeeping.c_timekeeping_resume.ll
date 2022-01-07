; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_timekeeping.c_timekeeping_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_timekeeping.c_timekeeping_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*)*, i32 }
%struct.sys_device = type { i32 }
%struct.timespec = type { i32 }

@timekeeper = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@timekeeping_suspend_time = common dso_local global i32 0, align 4
@timekeeping_suspended = common dso_local global i64 0, align 8
@CLOCK_EVT_NOTIFY_RESUME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sys_device*)* @timekeeping_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @timekeeping_resume(%struct.sys_device* %0) #0 {
  %2 = alloca %struct.sys_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.timespec, align 4
  %5 = alloca %struct.timespec, align 4
  store %struct.sys_device* %0, %struct.sys_device** %2, align 8
  %6 = call i32 @read_persistent_clock(%struct.timespec* %4)
  %7 = call i32 (...) @clocksource_resume()
  %8 = load i64, i64* %3, align 8
  %9 = call i32 @write_seqlock_irqsave(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @timekeeper, i32 0, i32 0), i64 %8)
  %10 = call i64 @timespec_compare(%struct.timespec* %4, i32* @timekeeping_suspend_time)
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = load i32, i32* @timekeeping_suspend_time, align 4
  %14 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @timespec_sub(i32 %15, i32 %13)
  %17 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = bitcast %struct.timespec* %4 to i8*
  %19 = bitcast %struct.timespec* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 %19, i64 4, i1 false)
  %20 = call i32 @__timekeeping_inject_sleeptime(%struct.timespec* %4)
  br label %21

21:                                               ; preds = %12, %1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @timekeeper, i32 0, i32 2), align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %23, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @timekeeper, i32 0, i32 2), align 8
  %26 = call i32 %24(%struct.TYPE_4__* %25)
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @timekeeper, i32 0, i32 2), align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @timekeeper, i32 0, i32 1), align 8
  store i64 0, i64* @timekeeping_suspended, align 8
  %29 = call i32 @timekeeping_update(i32 0)
  %30 = load i64, i64* %3, align 8
  %31 = call i32 @write_sequnlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @timekeeper, i32 0, i32 0), i64 %30)
  %32 = call i32 (...) @touch_softlockup_watchdog()
  %33 = load i32, i32* @CLOCK_EVT_NOTIFY_RESUME, align 4
  %34 = call i32 @clockevents_notify(i32 %33, i32* null)
  %35 = call i32 (...) @hrtimers_resume()
  ret i32 0
}

declare dso_local i32 @read_persistent_clock(%struct.timespec*) #1

declare dso_local i32 @clocksource_resume(...) #1

declare dso_local i32 @write_seqlock_irqsave(i32*, i64) #1

declare dso_local i64 @timespec_compare(%struct.timespec*, i32*) #1

declare dso_local i32 @timespec_sub(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @__timekeeping_inject_sleeptime(%struct.timespec*) #1

declare dso_local i32 @timekeeping_update(i32) #1

declare dso_local i32 @write_sequnlock_irqrestore(i32*, i64) #1

declare dso_local i32 @touch_softlockup_watchdog(...) #1

declare dso_local i32 @clockevents_notify(i32, i32*) #1

declare dso_local i32 @hrtimers_resume(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
