; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_timekeeping.c_ktime_get_ts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_timekeeping.c_ktime_get_ts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.timespec, %struct.timespec, i32 }
%struct.timespec = type { i64, i64 }

@timekeeping_suspended = common dso_local global i32 0, align 4
@timekeeper = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ktime_get_ts(%struct.timespec* %0) #0 {
  %2 = alloca %struct.timespec*, align 8
  %3 = alloca %struct.timespec, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.timespec* %0, %struct.timespec** %2, align 8
  %6 = load i32, i32* @timekeeping_suspended, align 4
  %7 = call i32 @WARN_ON(i32 %6)
  br label %8

8:                                                ; preds = %17, %1
  %9 = call i32 @read_seqbegin(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @timekeeper, i32 0, i32 2))
  store i32 %9, i32* %4, align 4
  %10 = load %struct.timespec*, %struct.timespec** %2, align 8
  %11 = bitcast %struct.timespec* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 bitcast (%struct.timespec* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @timekeeper, i32 0, i32 1) to i8*), i64 16, i1 false)
  %12 = bitcast %struct.timespec* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.TYPE_2__* @timekeeper to i8*), i64 16, i1 false)
  %13 = call i64 (...) @timekeeping_get_ns()
  store i64 %13, i64* %5, align 8
  %14 = call i64 (...) @arch_gettimeoffset()
  %15 = load i64, i64* %5, align 8
  %16 = add nsw i64 %15, %14
  store i64 %16, i64* %5, align 8
  br label %17

17:                                               ; preds = %8
  %18 = load i32, i32* %4, align 4
  %19 = call i64 @read_seqretry(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @timekeeper, i32 0, i32 2), i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %8, label %21

21:                                               ; preds = %17
  %22 = load %struct.timespec*, %struct.timespec** %2, align 8
  %23 = load %struct.timespec*, %struct.timespec** %2, align 8
  %24 = getelementptr inbounds %struct.timespec, %struct.timespec* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %25, %27
  %29 = load %struct.timespec*, %struct.timespec** %2, align 8
  %30 = getelementptr inbounds %struct.timespec, %struct.timespec* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %31, %33
  %35 = load i64, i64* %5, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @set_normalized_timespec(%struct.timespec* %22, i64 %28, i64 %36)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @read_seqbegin(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @timekeeping_get_ns(...) #1

declare dso_local i64 @arch_gettimeoffset(...) #1

declare dso_local i64 @read_seqretry(i32*, i32) #1

declare dso_local i32 @set_normalized_timespec(%struct.timespec*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
