; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_timer.c_snd_timer_s_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_timer.c_snd_timer_s_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_timer = type { i32, i64 }
%struct.snd_timer_system_private = type { i32, i64, i32 }

@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_timer*)* @snd_timer_s_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_timer_s_stop(%struct.snd_timer* %0) #0 {
  %2 = alloca %struct.snd_timer*, align 8
  %3 = alloca %struct.snd_timer_system_private*, align 8
  %4 = alloca i64, align 8
  store %struct.snd_timer* %0, %struct.snd_timer** %2, align 8
  %5 = load %struct.snd_timer*, %struct.snd_timer** %2, align 8
  %6 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.snd_timer_system_private*
  store %struct.snd_timer_system_private* %8, %struct.snd_timer_system_private** %3, align 8
  %9 = load %struct.snd_timer_system_private*, %struct.snd_timer_system_private** %3, align 8
  %10 = getelementptr inbounds %struct.snd_timer_system_private, %struct.snd_timer_system_private* %9, i32 0, i32 2
  %11 = call i32 @del_timer(i32* %10)
  %12 = load i64, i64* @jiffies, align 8
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* %4, align 8
  %14 = load %struct.snd_timer_system_private*, %struct.snd_timer_system_private** %3, align 8
  %15 = getelementptr inbounds %struct.snd_timer_system_private, %struct.snd_timer_system_private* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @time_before(i64 %13, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %1
  %20 = load %struct.snd_timer_system_private*, %struct.snd_timer_system_private** %3, align 8
  %21 = getelementptr inbounds %struct.snd_timer_system_private, %struct.snd_timer_system_private* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = load i64, i64* %4, align 8
  %25 = sub i64 %23, %24
  %26 = trunc i64 %25 to i32
  %27 = load %struct.snd_timer*, %struct.snd_timer** %2, align 8
  %28 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  br label %32

29:                                               ; preds = %1
  %30 = load %struct.snd_timer*, %struct.snd_timer** %2, align 8
  %31 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  br label %32

32:                                               ; preds = %29, %19
  %33 = load %struct.snd_timer_system_private*, %struct.snd_timer_system_private** %3, align 8
  %34 = getelementptr inbounds %struct.snd_timer_system_private, %struct.snd_timer_system_private* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  ret i32 0
}

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i64 @time_before(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
