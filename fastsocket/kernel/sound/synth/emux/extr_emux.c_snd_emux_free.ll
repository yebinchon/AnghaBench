; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/synth/emux/extr_emux.c_snd_emux_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/synth/emux/extr_emux.c_snd_emux_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emux = type { %struct.snd_emux*, %struct.snd_emux*, i64, i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_emux_free(%struct.snd_emux* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_emux*, align 8
  %4 = alloca i64, align 8
  store %struct.snd_emux* %0, %struct.snd_emux** %3, align 8
  %5 = load %struct.snd_emux*, %struct.snd_emux** %3, align 8
  %6 = icmp ne %struct.snd_emux* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %2, align 4
  br label %54

10:                                               ; preds = %1
  %11 = load %struct.snd_emux*, %struct.snd_emux** %3, align 8
  %12 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %11, i32 0, i32 3
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.snd_emux*, %struct.snd_emux** %3, align 8
  %16 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %15, i32 0, i32 5
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %10
  %20 = load %struct.snd_emux*, %struct.snd_emux** %3, align 8
  %21 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %20, i32 0, i32 4
  %22 = call i32 @del_timer(i32* %21)
  br label %23

23:                                               ; preds = %19, %10
  %24 = load %struct.snd_emux*, %struct.snd_emux** %3, align 8
  %25 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %24, i32 0, i32 3
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* %25, i64 %26)
  %28 = load %struct.snd_emux*, %struct.snd_emux** %3, align 8
  %29 = call i32 @snd_emux_delete_virmidi(%struct.snd_emux* %28)
  %30 = load %struct.snd_emux*, %struct.snd_emux** %3, align 8
  %31 = call i32 @snd_emux_detach_seq(%struct.snd_emux* %30)
  %32 = load %struct.snd_emux*, %struct.snd_emux** %3, align 8
  %33 = call i32 @snd_emux_delete_hwdep(%struct.snd_emux* %32)
  %34 = load %struct.snd_emux*, %struct.snd_emux** %3, align 8
  %35 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %23
  %39 = load %struct.snd_emux*, %struct.snd_emux** %3, align 8
  %40 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @snd_sf_free(i64 %41)
  br label %43

43:                                               ; preds = %38, %23
  %44 = load %struct.snd_emux*, %struct.snd_emux** %3, align 8
  %45 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %44, i32 0, i32 1
  %46 = load %struct.snd_emux*, %struct.snd_emux** %45, align 8
  %47 = call i32 @kfree(%struct.snd_emux* %46)
  %48 = load %struct.snd_emux*, %struct.snd_emux** %3, align 8
  %49 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %48, i32 0, i32 0
  %50 = load %struct.snd_emux*, %struct.snd_emux** %49, align 8
  %51 = call i32 @kfree(%struct.snd_emux* %50)
  %52 = load %struct.snd_emux*, %struct.snd_emux** %3, align 8
  %53 = call i32 @kfree(%struct.snd_emux* %52)
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %43, %7
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snd_emux_delete_virmidi(%struct.snd_emux*) #1

declare dso_local i32 @snd_emux_detach_seq(%struct.snd_emux*) #1

declare dso_local i32 @snd_emux_delete_hwdep(%struct.snd_emux*) #1

declare dso_local i32 @snd_sf_free(i64) #1

declare dso_local i32 @kfree(%struct.snd_emux*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
