; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_posix-clock.c_pc_timer_gettime.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_posix-clock.c_pc_timer_gettime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.k_itimer = type { i32 }
%struct.itimerspec = type { i32 }
%struct.posix_clock_desc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*, %struct.k_itimer*, %struct.itimerspec*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.k_itimer*, %struct.itimerspec*)* @pc_timer_gettime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pc_timer_gettime(%struct.k_itimer* %0, %struct.itimerspec* %1) #0 {
  %3 = alloca %struct.k_itimer*, align 8
  %4 = alloca %struct.itimerspec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.posix_clock_desc, align 8
  store %struct.k_itimer* %0, %struct.k_itimer** %3, align 8
  store %struct.itimerspec* %1, %struct.itimerspec** %4, align 8
  %7 = load %struct.k_itimer*, %struct.k_itimer** %3, align 8
  %8 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @get_clock_desc(i32 %10, %struct.posix_clock_desc* %6)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %34

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.posix_clock_desc, %struct.posix_clock_desc* %6, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32 (%struct.TYPE_4__*, %struct.k_itimer*, %struct.itimerspec*)*, i32 (%struct.TYPE_4__*, %struct.k_itimer*, %struct.itimerspec*)** %18, align 8
  %20 = icmp ne i32 (%struct.TYPE_4__*, %struct.k_itimer*, %struct.itimerspec*)* %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.posix_clock_desc, %struct.posix_clock_desc* %6, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32 (%struct.TYPE_4__*, %struct.k_itimer*, %struct.itimerspec*)*, i32 (%struct.TYPE_4__*, %struct.k_itimer*, %struct.itimerspec*)** %25, align 8
  %27 = getelementptr inbounds %struct.posix_clock_desc, %struct.posix_clock_desc* %6, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = load %struct.k_itimer*, %struct.k_itimer** %3, align 8
  %30 = load %struct.itimerspec*, %struct.itimerspec** %4, align 8
  %31 = call i32 %26(%struct.TYPE_4__* %28, %struct.k_itimer* %29, %struct.itimerspec* %30)
  br label %32

32:                                               ; preds = %21, %14
  %33 = call i32 @put_clock_desc(%struct.posix_clock_desc* %6)
  br label %34

34:                                               ; preds = %32, %13
  ret void
}

declare dso_local i64 @get_clock_desc(i32, %struct.posix_clock_desc*) #1

declare dso_local i32 @put_clock_desc(%struct.posix_clock_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
