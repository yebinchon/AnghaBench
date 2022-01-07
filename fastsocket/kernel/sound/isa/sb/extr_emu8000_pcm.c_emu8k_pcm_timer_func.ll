; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_emu8000_pcm.c_emu8k_pcm_timer_func.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_emu8000_pcm.c_emu8k_pcm_timer_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu8k_pcm = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @emu8k_pcm_timer_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emu8k_pcm_timer_func(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.snd_emu8k_pcm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to %struct.snd_emu8k_pcm*
  store %struct.snd_emu8k_pcm* %7, %struct.snd_emu8k_pcm** %3, align 8
  %8 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %3, align 8
  %9 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %8, i32 0, i32 4
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %3, align 8
  %12 = call i32 @emu8k_get_curpos(%struct.snd_emu8k_pcm* %11, i32 0)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %3, align 8
  %15 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %3, align 8
  %21 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %19, %22
  %24 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %3, align 8
  %25 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sub nsw i32 %23, %26
  store i32 %27, i32* %5, align 4
  br label %34

28:                                               ; preds = %1
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %3, align 8
  %31 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sub nsw i32 %29, %32
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %28, %18
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %3, align 8
  %37 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, %35
  store i32 %39, i32* %37, align 8
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %3, align 8
  %42 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load i64, i64* @jiffies, align 8
  %44 = add nsw i64 %43, 1
  %45 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %3, align 8
  %46 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %45, i32 0, i32 6
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i64 %44, i64* %47, align 8
  %48 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %3, align 8
  %49 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %48, i32 0, i32 6
  %50 = call i32 @add_timer(%struct.TYPE_2__* %49)
  %51 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %3, align 8
  %52 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %3, align 8
  %55 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = icmp sge i32 %53, %56
  br i1 %57, label %58, label %73

58:                                               ; preds = %34
  %59 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %3, align 8
  %60 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %3, align 8
  %63 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = srem i32 %64, %61
  store i32 %65, i32* %63, align 8
  %66 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %3, align 8
  %67 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %66, i32 0, i32 4
  %68 = call i32 @spin_unlock(i32* %67)
  %69 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %3, align 8
  %70 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @snd_pcm_period_elapsed(i32 %71)
  br label %77

73:                                               ; preds = %34
  %74 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %3, align 8
  %75 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %74, i32 0, i32 4
  %76 = call i32 @spin_unlock(i32* %75)
  br label %77

77:                                               ; preds = %73, %58
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @emu8k_get_curpos(%struct.snd_emu8k_pcm*, i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_2__*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @snd_pcm_period_elapsed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
