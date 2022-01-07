; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_timekeeping.c_do_settimeofday.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_timekeeping.c_do_settimeofday.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.timespec, i32 }
%struct.timespec = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@timekeeper = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_settimeofday(%struct.timespec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.timespec*, align 8
  %4 = alloca %struct.timespec, align 8
  %5 = alloca i64, align 8
  store %struct.timespec* %0, %struct.timespec** %3, align 8
  %6 = load %struct.timespec*, %struct.timespec** %3, align 8
  %7 = call i32 @timespec_valid_strict(%struct.timespec* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %41

12:                                               ; preds = %1
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @write_seqlock_irqsave(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @timekeeper, i32 0, i32 0), i64 %13)
  %15 = call i32 (...) @timekeeping_forward_now()
  %16 = load %struct.timespec*, %struct.timespec** %3, align 8
  %17 = getelementptr inbounds %struct.timespec, %struct.timespec* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @timekeeper, i32 0, i32 1, i32 1), align 8
  %20 = sub nsw i64 %18, %19
  %21 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 1
  store i64 %20, i64* %21, align 8
  %22 = load %struct.timespec*, %struct.timespec** %3, align 8
  %23 = getelementptr inbounds %struct.timespec, %struct.timespec* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @timekeeper, i32 0, i32 1, i32 0), align 8
  %26 = sub nsw i64 %24, %25
  %27 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 0
  store i64 %26, i64* %27, align 8
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @timekeeper, i32 0, i32 2), align 8
  %29 = bitcast %struct.timespec* %4 to { i64, i64 }*
  %30 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %29, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @timespec_sub(i32 %28, i64 %31, i64 %33)
  store i32 %34, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @timekeeper, i32 0, i32 2), align 8
  %35 = load %struct.timespec*, %struct.timespec** %3, align 8
  %36 = bitcast %struct.timespec* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.timespec* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @timekeeper, i32 0, i32 1) to i8*), i8* align 8 %36, i64 16, i1 false)
  %37 = call i32 @timekeeping_update(i32 1)
  %38 = load i64, i64* %5, align 8
  %39 = call i32 @write_sequnlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @timekeeper, i32 0, i32 0), i64 %38)
  %40 = call i32 (...) @clock_was_set()
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %12, %9
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @timespec_valid_strict(%struct.timespec*) #1

declare dso_local i32 @write_seqlock_irqsave(i32*, i64) #1

declare dso_local i32 @timekeeping_forward_now(...) #1

declare dso_local i32 @timespec_sub(i32, i64, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @timekeeping_update(i32) #1

declare dso_local i32 @write_sequnlock_irqrestore(i32*, i64) #1

declare dso_local i32 @clock_was_set(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
