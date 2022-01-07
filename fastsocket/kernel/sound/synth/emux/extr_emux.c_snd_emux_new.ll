; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/synth/emux/extr_emux.c_snd_emux_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/synth/emux/extr_emux.c_snd_emux_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emux = type { i32, i64, %struct.TYPE_2__, i64, i64, i32*, i32, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@snd_emux_timer_callback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_emux_new(%struct.snd_emux** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_emux**, align 8
  %4 = alloca %struct.snd_emux*, align 8
  store %struct.snd_emux** %0, %struct.snd_emux*** %3, align 8
  %5 = load %struct.snd_emux**, %struct.snd_emux*** %3, align 8
  store %struct.snd_emux* null, %struct.snd_emux** %5, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.snd_emux* @kzalloc(i32 64, i32 %6)
  store %struct.snd_emux* %7, %struct.snd_emux** %4, align 8
  %8 = load %struct.snd_emux*, %struct.snd_emux** %4, align 8
  %9 = icmp eq %struct.snd_emux* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %42

13:                                               ; preds = %1
  %14 = load %struct.snd_emux*, %struct.snd_emux** %4, align 8
  %15 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %14, i32 0, i32 7
  %16 = call i32 @spin_lock_init(i32* %15)
  %17 = load %struct.snd_emux*, %struct.snd_emux** %4, align 8
  %18 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %17, i32 0, i32 6
  %19 = call i32 @mutex_init(i32* %18)
  %20 = load %struct.snd_emux*, %struct.snd_emux** %4, align 8
  %21 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %20, i32 0, i32 0
  store i32 -1, i32* %21, align 8
  %22 = load %struct.snd_emux*, %struct.snd_emux** %4, align 8
  %23 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %22, i32 0, i32 4
  store i64 0, i64* %23, align 8
  %24 = load %struct.snd_emux*, %struct.snd_emux** %4, align 8
  %25 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %24, i32 0, i32 3
  store i64 0, i64* %25, align 8
  %26 = load %struct.snd_emux*, %struct.snd_emux** %4, align 8
  %27 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %26, i32 0, i32 2
  %28 = call i32 @init_timer(%struct.TYPE_2__* %27)
  %29 = load i32, i32* @snd_emux_timer_callback, align 4
  %30 = load %struct.snd_emux*, %struct.snd_emux** %4, align 8
  %31 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  store i32 %29, i32* %32, align 8
  %33 = load %struct.snd_emux*, %struct.snd_emux** %4, align 8
  %34 = ptrtoint %struct.snd_emux* %33 to i64
  %35 = load %struct.snd_emux*, %struct.snd_emux** %4, align 8
  %36 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i64 %34, i64* %37, align 8
  %38 = load %struct.snd_emux*, %struct.snd_emux** %4, align 8
  %39 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  %40 = load %struct.snd_emux*, %struct.snd_emux** %4, align 8
  %41 = load %struct.snd_emux**, %struct.snd_emux*** %3, align 8
  store %struct.snd_emux* %40, %struct.snd_emux** %41, align 8
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %13, %10
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.snd_emux* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_timer(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
