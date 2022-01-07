; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/extr_aloop.c_loopback_timer_function.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/extr_aloop.c_loopback_timer_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loopback_pcm = type { %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @loopback_timer_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @loopback_timer_function(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.loopback_pcm*, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.loopback_pcm*
  store %struct.loopback_pcm* %6, %struct.loopback_pcm** %3, align 8
  %7 = load %struct.loopback_pcm*, %struct.loopback_pcm** %3, align 8
  %8 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @loopback_pos_update(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.loopback_pcm*, %struct.loopback_pcm** %3, align 8
  %13 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = shl i32 1, %16
  %18 = and i32 %11, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %1
  %21 = load %struct.loopback_pcm*, %struct.loopback_pcm** %3, align 8
  %22 = call i32 @loopback_timer_start(%struct.loopback_pcm* %21)
  %23 = load %struct.loopback_pcm*, %struct.loopback_pcm** %3, align 8
  %24 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %20
  %28 = load %struct.loopback_pcm*, %struct.loopback_pcm** %3, align 8
  %29 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = load %struct.loopback_pcm*, %struct.loopback_pcm** %3, align 8
  %31 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = call i32 @snd_pcm_period_elapsed(%struct.TYPE_2__* %32)
  br label %34

34:                                               ; preds = %27, %20
  br label %35

35:                                               ; preds = %34, %1
  ret void
}

declare dso_local i32 @loopback_pos_update(i32) #1

declare dso_local i32 @loopback_timer_start(%struct.loopback_pcm*) #1

declare dso_local i32 @snd_pcm_period_elapsed(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
