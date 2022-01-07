; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_timer.c_snd_timer_resolution.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_timer.c_snd_timer_resolution.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_timer_instance = type { %struct.snd_timer* }
%struct.snd_timer = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 (%struct.snd_timer*)*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @snd_timer_resolution(%struct.snd_timer_instance* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.snd_timer_instance*, align 8
  %4 = alloca %struct.snd_timer*, align 8
  store %struct.snd_timer_instance* %0, %struct.snd_timer_instance** %3, align 8
  %5 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %3, align 8
  %6 = icmp eq %struct.snd_timer_instance* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i64 0, i64* %2, align 8
  br label %32

8:                                                ; preds = %1
  %9 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %3, align 8
  %10 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %9, i32 0, i32 0
  %11 = load %struct.snd_timer*, %struct.snd_timer** %10, align 8
  store %struct.snd_timer* %11, %struct.snd_timer** %4, align 8
  %12 = icmp ne %struct.snd_timer* %11, null
  br i1 %12, label %13, label %31

13:                                               ; preds = %8
  %14 = load %struct.snd_timer*, %struct.snd_timer** %4, align 8
  %15 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64 (%struct.snd_timer*)*, i64 (%struct.snd_timer*)** %16, align 8
  %18 = icmp ne i64 (%struct.snd_timer*)* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %13
  %20 = load %struct.snd_timer*, %struct.snd_timer** %4, align 8
  %21 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64 (%struct.snd_timer*)*, i64 (%struct.snd_timer*)** %22, align 8
  %24 = load %struct.snd_timer*, %struct.snd_timer** %4, align 8
  %25 = call i64 %23(%struct.snd_timer* %24)
  store i64 %25, i64* %2, align 8
  br label %32

26:                                               ; preds = %13
  %27 = load %struct.snd_timer*, %struct.snd_timer** %4, align 8
  %28 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %2, align 8
  br label %32

31:                                               ; preds = %8
  store i64 0, i64* %2, align 8
  br label %32

32:                                               ; preds = %31, %26, %19, %7
  %33 = load i64, i64* %2, align 8
  ret i64 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
