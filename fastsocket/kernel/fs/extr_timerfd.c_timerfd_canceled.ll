; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_timerfd.c_timerfd_canceled.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_timerfd.c_timerfd_canceled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timerfd_ctx = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@KTIME_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.timerfd_ctx*)* @timerfd_canceled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @timerfd_canceled(%struct.timerfd_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.timerfd_ctx*, align 8
  %4 = alloca %struct.TYPE_2__, align 8
  store %struct.timerfd_ctx* %0, %struct.timerfd_ctx** %3, align 8
  %5 = load %struct.timerfd_ctx*, %struct.timerfd_ctx** %3, align 8
  %6 = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load %struct.timerfd_ctx*, %struct.timerfd_ctx** %3, align 8
  %11 = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @KTIME_MAX, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %9, %1
  store i32 0, i32* %2, align 4
  br label %24

17:                                               ; preds = %9
  %18 = load %struct.timerfd_ctx*, %struct.timerfd_ctx** %3, align 8
  %19 = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %18, i32 0, i32 0
  %20 = call i64 (...) @ktime_get_monotonic_offset()
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  store i64 %20, i64* %21, align 8
  %22 = bitcast %struct.TYPE_2__* %19 to i8*
  %23 = bitcast %struct.TYPE_2__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 %23, i64 8, i1 false)
  store i32 1, i32* %2, align 4
  br label %24

24:                                               ; preds = %17, %16
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i64 @ktime_get_monotonic_offset(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
