; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_posix-cpu-timers.c_sample_to_timespec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_posix-cpu-timers.c_sample_to_timespec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32 }
%union.cpu_time_count = type { i32 }

@CPUCLOCK_SCHED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.timespec*)* @sample_to_timespec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sample_to_timespec(i32 %0, i32 %1, %struct.timespec* %2) #0 {
  %4 = alloca %union.cpu_time_count, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.timespec*, align 8
  %7 = alloca %struct.timespec, align 4
  %8 = getelementptr inbounds %union.cpu_time_count, %union.cpu_time_count* %4, i32 0, i32 0
  store i32 %1, i32* %8, align 4
  store i32 %0, i32* %5, align 4
  store %struct.timespec* %2, %struct.timespec** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i64 @CPUCLOCK_WHICH(i32 %9)
  %11 = load i64, i64* @CPUCLOCK_SCHED, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %3
  %14 = load %struct.timespec*, %struct.timespec** %6, align 8
  %15 = bitcast %union.cpu_time_count* %4 to i32*
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ns_to_timespec(i32 %16)
  %18 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = bitcast %struct.timespec* %14 to i8*
  %20 = bitcast %struct.timespec* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 %20, i64 4, i1 false)
  br label %26

21:                                               ; preds = %3
  %22 = bitcast %union.cpu_time_count* %4 to i32*
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.timespec*, %struct.timespec** %6, align 8
  %25 = call i32 @cputime_to_timespec(i32 %23, %struct.timespec* %24)
  br label %26

26:                                               ; preds = %21, %13
  ret void
}

declare dso_local i64 @CPUCLOCK_WHICH(i32) #1

declare dso_local i32 @ns_to_timespec(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cputime_to_timespec(i32, %struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
