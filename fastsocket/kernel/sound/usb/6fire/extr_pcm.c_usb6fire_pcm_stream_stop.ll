; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/6fire/extr_pcm.c_usb6fire_pcm_stream_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/6fire/extr_pcm.c_usb6fire_pcm_stream_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcm_runtime = type { i64, %struct.TYPE_4__*, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.control_runtime* }
%struct.control_runtime = type { i32, i32 (%struct.control_runtime*)* }

@STREAM_DISABLED = common dso_local global i64 0, align 8
@PCM_N_URBS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcm_runtime*)* @usb6fire_pcm_stream_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb6fire_pcm_stream_stop(%struct.pcm_runtime* %0) #0 {
  %2 = alloca %struct.pcm_runtime*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.control_runtime*, align 8
  store %struct.pcm_runtime* %0, %struct.pcm_runtime** %2, align 8
  %5 = load %struct.pcm_runtime*, %struct.pcm_runtime** %2, align 8
  %6 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %5, i32 0, i32 3
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load %struct.control_runtime*, %struct.control_runtime** %8, align 8
  store %struct.control_runtime* %9, %struct.control_runtime** %4, align 8
  %10 = load %struct.pcm_runtime*, %struct.pcm_runtime** %2, align 8
  %11 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @STREAM_DISABLED, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %51

15:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %37, %15
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @PCM_N_URBS, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %40

20:                                               ; preds = %16
  %21 = load %struct.pcm_runtime*, %struct.pcm_runtime** %2, align 8
  %22 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %21, i32 0, i32 2
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = call i32 @usb_kill_urb(i32* %27)
  %29 = load %struct.pcm_runtime*, %struct.pcm_runtime** %2, align 8
  %30 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = call i32 @usb_kill_urb(i32* %35)
  br label %37

37:                                               ; preds = %20
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %3, align 4
  br label %16

40:                                               ; preds = %16
  %41 = load %struct.control_runtime*, %struct.control_runtime** %4, align 8
  %42 = getelementptr inbounds %struct.control_runtime, %struct.control_runtime* %41, i32 0, i32 0
  store i32 0, i32* %42, align 8
  %43 = load %struct.control_runtime*, %struct.control_runtime** %4, align 8
  %44 = getelementptr inbounds %struct.control_runtime, %struct.control_runtime* %43, i32 0, i32 1
  %45 = load i32 (%struct.control_runtime*)*, i32 (%struct.control_runtime*)** %44, align 8
  %46 = load %struct.control_runtime*, %struct.control_runtime** %4, align 8
  %47 = call i32 %45(%struct.control_runtime* %46)
  %48 = load i64, i64* @STREAM_DISABLED, align 8
  %49 = load %struct.pcm_runtime*, %struct.pcm_runtime** %2, align 8
  %50 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  br label %51

51:                                               ; preds = %40, %1
  ret void
}

declare dso_local i32 @usb_kill_urb(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
