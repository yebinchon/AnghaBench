; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_timekeeping.c_get_xtime_and_monotonic_and_sleep_offset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_timekeeping.c_get_xtime_and_monotonic_and_sleep_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.timespec, %struct.timespec, %struct.timespec, i32 }
%struct.timespec = type { i32 }

@timekeeper = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @get_xtime_and_monotonic_and_sleep_offset(%struct.timespec* %0, %struct.timespec* %1, %struct.timespec* %2) #0 {
  %4 = alloca %struct.timespec*, align 8
  %5 = alloca %struct.timespec*, align 8
  %6 = alloca %struct.timespec*, align 8
  %7 = alloca i64, align 8
  store %struct.timespec* %0, %struct.timespec** %4, align 8
  store %struct.timespec* %1, %struct.timespec** %5, align 8
  store %struct.timespec* %2, %struct.timespec** %6, align 8
  br label %8

8:                                                ; preds = %16, %3
  %9 = call i64 @read_seqbegin(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @timekeeper, i32 0, i32 3))
  store i64 %9, i64* %7, align 8
  %10 = load %struct.timespec*, %struct.timespec** %4, align 8
  %11 = bitcast %struct.timespec* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast (%struct.timespec* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @timekeeper, i32 0, i32 2) to i8*), i64 4, i1 false)
  %12 = load %struct.timespec*, %struct.timespec** %5, align 8
  %13 = bitcast %struct.timespec* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast (%struct.timespec* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @timekeeper, i32 0, i32 1) to i8*), i64 4, i1 false)
  %14 = load %struct.timespec*, %struct.timespec** %6, align 8
  %15 = bitcast %struct.timespec* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast (%struct.TYPE_2__* @timekeeper to i8*), i64 4, i1 false)
  br label %16

16:                                               ; preds = %8
  %17 = load i64, i64* %7, align 8
  %18 = call i64 @read_seqretry(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @timekeeper, i32 0, i32 3), i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %8, label %20

20:                                               ; preds = %16
  ret void
}

declare dso_local i64 @read_seqbegin(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @read_seqretry(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
