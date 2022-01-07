; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_posix-timers.c_common_timer_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_posix-timers.c_common_timer_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.k_itimer = type { i32, i32, %struct.TYPE_8__, i32, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_10__, %struct.hrtimer }
%struct.TYPE_10__ = type { i64 }
%struct.hrtimer = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32 (...)* }
%struct.itimerspec = type { %struct.TYPE_11__, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }

@TIMER_RETRY = common dso_local global i32 0, align 4
@REQUEUE_PENDING = common dso_local global i32 0, align 4
@TIMER_ABSTIME = common dso_local global i32 0, align 4
@HRTIMER_MODE_ABS = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL = common dso_local global i32 0, align 4
@posix_timer_fn = common dso_local global i32 0, align 4
@SIGEV_THREAD_ID = common dso_local global i32 0, align 4
@SIGEV_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.k_itimer*, i32, %struct.itimerspec*, %struct.itimerspec*)* @common_timer_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @common_timer_set(%struct.k_itimer* %0, i32 %1, %struct.itimerspec* %2, %struct.itimerspec* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.k_itimer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.itimerspec*, align 8
  %9 = alloca %struct.itimerspec*, align 8
  %10 = alloca %struct.hrtimer*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_10__, align 8
  %13 = alloca %struct.TYPE_10__, align 8
  store %struct.k_itimer* %0, %struct.k_itimer** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.itimerspec* %2, %struct.itimerspec** %8, align 8
  store %struct.itimerspec* %3, %struct.itimerspec** %9, align 8
  %14 = load %struct.k_itimer*, %struct.k_itimer** %6, align 8
  %15 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  store %struct.hrtimer* %17, %struct.hrtimer** %10, align 8
  %18 = load %struct.itimerspec*, %struct.itimerspec** %9, align 8
  %19 = icmp ne %struct.itimerspec* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load %struct.k_itimer*, %struct.k_itimer** %6, align 8
  %22 = load %struct.itimerspec*, %struct.itimerspec** %9, align 8
  %23 = call i32 @common_timer_get(%struct.k_itimer* %21, %struct.itimerspec* %22)
  br label %24

24:                                               ; preds = %20, %4
  %25 = load %struct.k_itimer*, %struct.k_itimer** %6, align 8
  %26 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  %30 = load %struct.hrtimer*, %struct.hrtimer** %10, align 8
  %31 = call i64 @hrtimer_try_to_cancel(%struct.hrtimer* %30)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i32, i32* @TIMER_RETRY, align 4
  store i32 %34, i32* %5, align 4
  br label %133

35:                                               ; preds = %24
  %36 = load %struct.k_itimer*, %struct.k_itimer** %6, align 8
  %37 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, 2
  %40 = load i32, i32* @REQUEUE_PENDING, align 4
  %41 = xor i32 %40, -1
  %42 = and i32 %39, %41
  %43 = load %struct.k_itimer*, %struct.k_itimer** %6, align 8
  %44 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.k_itimer*, %struct.k_itimer** %6, align 8
  %46 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %45, i32 0, i32 4
  store i64 0, i64* %46, align 8
  %47 = load %struct.itimerspec*, %struct.itimerspec** %8, align 8
  %48 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %35
  %53 = load %struct.itimerspec*, %struct.itimerspec** %8, align 8
  %54 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %52
  store i32 0, i32* %5, align 4
  br label %133

59:                                               ; preds = %52, %35
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @TIMER_ABSTIME, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i32, i32* @HRTIMER_MODE_ABS, align 4
  br label %68

66:                                               ; preds = %59
  %67 = load i32, i32* @HRTIMER_MODE_REL, align 4
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi i32 [ %65, %64 ], [ %67, %66 ]
  store i32 %69, i32* %11, align 4
  %70 = load %struct.k_itimer*, %struct.k_itimer** %6, align 8
  %71 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load %struct.k_itimer*, %struct.k_itimer** %6, align 8
  %75 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @hrtimer_init(%struct.hrtimer* %73, i32 %76, i32 %77)
  %79 = load i32, i32* @posix_timer_fn, align 4
  %80 = load %struct.k_itimer*, %struct.k_itimer** %6, align 8
  %81 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %83, i32 0, i32 1
  store i32 %79, i32* %84, align 8
  %85 = load %struct.hrtimer*, %struct.hrtimer** %10, align 8
  %86 = load %struct.itimerspec*, %struct.itimerspec** %8, align 8
  %87 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %86, i32 0, i32 1
  %88 = bitcast %struct.TYPE_11__* %87 to i64*
  %89 = load i64, i64* %88, align 4
  %90 = call i64 @timespec_to_ktime(i64 %89)
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  store i64 %90, i64* %91, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @hrtimer_set_expires(%struct.hrtimer* %85, i64 %93)
  %95 = load %struct.k_itimer*, %struct.k_itimer** %6, align 8
  %96 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load %struct.itimerspec*, %struct.itimerspec** %8, align 8
  %100 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %99, i32 0, i32 0
  %101 = bitcast %struct.TYPE_11__* %100 to i64*
  %102 = load i64, i64* %101, align 4
  %103 = call i64 @timespec_to_ktime(i64 %102)
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  store i64 %103, i64* %104, align 8
  %105 = bitcast %struct.TYPE_10__* %98 to i8*
  %106 = bitcast %struct.TYPE_10__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %105, i8* align 8 %106, i64 8, i1 false)
  %107 = load %struct.k_itimer*, %struct.k_itimer** %6, align 8
  %108 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @SIGEV_THREAD_ID, align 4
  %111 = xor i32 %110, -1
  %112 = and i32 %109, %111
  %113 = load i32, i32* @SIGEV_NONE, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %129

115:                                              ; preds = %68
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %128

119:                                              ; preds = %115
  %120 = load %struct.hrtimer*, %struct.hrtimer** %10, align 8
  %121 = load %struct.hrtimer*, %struct.hrtimer** %10, align 8
  %122 = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %121, i32 0, i32 0
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  %125 = load i32 (...)*, i32 (...)** %124, align 8
  %126 = call i32 (...) %125()
  %127 = call i32 @hrtimer_add_expires(%struct.hrtimer* %120, i32 %126)
  br label %128

128:                                              ; preds = %119, %115
  store i32 0, i32* %5, align 4
  br label %133

129:                                              ; preds = %68
  %130 = load %struct.hrtimer*, %struct.hrtimer** %10, align 8
  %131 = load i32, i32* %11, align 4
  %132 = call i32 @hrtimer_start_expires(%struct.hrtimer* %130, i32 %131)
  store i32 0, i32* %5, align 4
  br label %133

133:                                              ; preds = %129, %128, %58, %33
  %134 = load i32, i32* %5, align 4
  ret i32 %134
}

declare dso_local i32 @common_timer_get(%struct.k_itimer*, %struct.itimerspec*) #1

declare dso_local i64 @hrtimer_try_to_cancel(%struct.hrtimer*) #1

declare dso_local i32 @hrtimer_init(%struct.hrtimer*, i32, i32) #1

declare dso_local i32 @hrtimer_set_expires(%struct.hrtimer*, i64) #1

declare dso_local i64 @timespec_to_ktime(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @hrtimer_add_expires(%struct.hrtimer*, i32) #1

declare dso_local i32 @hrtimer_start_expires(%struct.hrtimer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
