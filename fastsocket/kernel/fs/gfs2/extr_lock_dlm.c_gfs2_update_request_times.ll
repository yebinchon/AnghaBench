; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_lock_dlm.c_gfs2_update_request_times.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_lock_dlm.c_gfs2_update_request_times.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_glock = type { i32, %struct.TYPE_3__*, i32, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.gfs2_pcpu_lkstats = type { i32* }

@GFS2_LKS_SIRT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfs2_glock*)* @gfs2_update_request_times to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfs2_update_request_times(%struct.gfs2_glock* %0) #0 {
  %2 = alloca %struct.gfs2_glock*, align 8
  %3 = alloca %struct.gfs2_pcpu_lkstats*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gfs2_glock* %0, %struct.gfs2_glock** %2, align 8
  %7 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %8 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = call i32 (...) @preempt_disable()
  %12 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %13 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %5, align 4
  %15 = call i32 (...) @ktime_get_real()
  %16 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %17 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 8
  %18 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %19 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @ktime_sub(i32 %20, i32 %21)
  %23 = call i32 @ktime_to_ns(i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %25 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.gfs2_pcpu_lkstats* @this_cpu_ptr(i32 %28)
  store %struct.gfs2_pcpu_lkstats* %29, %struct.gfs2_pcpu_lkstats** %3, align 8
  %30 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %31 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %30, i32 0, i32 0
  %32 = load i32, i32* @GFS2_LKS_SIRT, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @gfs2_update_stats(i32* %31, i32 %32, i32 %33)
  %35 = load %struct.gfs2_pcpu_lkstats*, %struct.gfs2_pcpu_lkstats** %3, align 8
  %36 = getelementptr inbounds %struct.gfs2_pcpu_lkstats, %struct.gfs2_pcpu_lkstats* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* @GFS2_LKS_SIRT, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @gfs2_update_stats(i32* %40, i32 %41, i32 %42)
  %44 = call i32 (...) @preempt_enable()
  ret void
}

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @ktime_get_real(...) #1

declare dso_local i32 @ktime_to_ns(i32) #1

declare dso_local i32 @ktime_sub(i32, i32) #1

declare dso_local %struct.gfs2_pcpu_lkstats* @this_cpu_ptr(i32) #1

declare dso_local i32 @gfs2_update_stats(i32*, i32, i32) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
