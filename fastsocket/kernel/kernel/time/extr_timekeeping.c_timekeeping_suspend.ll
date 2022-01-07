; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_timekeeping.c_timekeeping_suspend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_timekeeping.c_timekeeping_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32 }
%struct.TYPE_2__ = type { i32, %struct.timespec }
%struct.sys_device = type { i32 }

@timekeeping_suspend.old_delta = internal global %struct.timespec zeroinitializer, align 4
@timekeeping_suspend_time = common dso_local global %struct.timespec zeroinitializer, align 4
@timekeeper = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@timekeeping_suspended = common dso_local global i32 0, align 4
@CLOCK_EVT_NOTIFY_SUSPEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sys_device*, i32)* @timekeeping_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @timekeeping_suspend(%struct.sys_device* %0, i32 %1) #0 {
  %3 = alloca %struct.sys_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.timespec, align 4
  %7 = alloca %struct.timespec, align 4
  %8 = alloca %struct.timespec, align 4
  %9 = alloca %struct.timespec, align 4
  %10 = alloca %struct.timespec, align 4
  store %struct.sys_device* %0, %struct.sys_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = call i32 @read_persistent_clock(%struct.timespec* @timekeeping_suspend_time)
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @write_seqlock_irqsave(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @timekeeper, i32 0, i32 0), i64 %12)
  %14 = call i32 (...) @timekeeping_forward_now()
  store i32 1, i32* @timekeeping_suspended, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @timekeeper, i32 0, i32 1, i32 0), align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.timespec, %struct.timespec* @timekeeping_suspend_time, i32 0, i32 0), align 4
  %17 = call i32 @timespec_sub(i32 %15, i32 %16)
  %18 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = bitcast %struct.timespec* %6 to i8*
  %20 = bitcast %struct.timespec* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 %20, i64 4, i1 false)
  %21 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.timespec, %struct.timespec* @timekeeping_suspend.old_delta, i32 0, i32 0), align 4
  %24 = call i32 @timespec_sub(i32 %22, i32 %23)
  %25 = getelementptr inbounds %struct.timespec, %struct.timespec* %9, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = bitcast %struct.timespec* %7 to i8*
  %27 = bitcast %struct.timespec* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 %27, i64 4, i1 false)
  %28 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @abs(i32 %29) #4
  %31 = icmp sge i32 %30, 2
  br i1 %31, label %32, label %34

32:                                               ; preds = %2
  %33 = bitcast %struct.timespec* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.timespec* @timekeeping_suspend.old_delta to i8*), i8* align 4 %33, i64 4, i1 false)
  br label %41

34:                                               ; preds = %2
  %35 = load i32, i32* getelementptr inbounds (%struct.timespec, %struct.timespec* @timekeeping_suspend_time, i32 0, i32 0), align 4
  %36 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @timespec_add(i32 %35, i32 %37)
  %39 = getelementptr inbounds %struct.timespec, %struct.timespec* %10, i32 0, i32 0
  store i32 %38, i32* %39, align 4
  %40 = bitcast %struct.timespec* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.timespec* @timekeeping_suspend_time to i8*), i8* align 4 %40, i64 4, i1 false)
  br label %41

41:                                               ; preds = %34, %32
  %42 = load i64, i64* %5, align 8
  %43 = call i32 @write_sequnlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @timekeeper, i32 0, i32 0), i64 %42)
  %44 = load i32, i32* @CLOCK_EVT_NOTIFY_SUSPEND, align 4
  %45 = call i32 @clockevents_notify(i32 %44, i32* null)
  %46 = call i32 (...) @clocksource_suspend()
  ret i32 0
}

declare dso_local i32 @read_persistent_clock(%struct.timespec*) #1

declare dso_local i32 @write_seqlock_irqsave(i32*, i64) #1

declare dso_local i32 @timekeeping_forward_now(...) #1

declare dso_local i32 @timespec_sub(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #3

declare dso_local i32 @timespec_add(i32, i32) #1

declare dso_local i32 @write_sequnlock_irqrestore(i32*, i64) #1

declare dso_local i32 @clockevents_notify(i32, i32*) #1

declare dso_local i32 @clocksource_suspend(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
