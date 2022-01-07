; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audio_in.c_audio_in_get_dsp_frames.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audio_in.c_audio_in_get_dsp_frames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_in = type { i64, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.audio_frame = type { i32 }

@FRAME_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.audio_in*)* @audio_in_get_dsp_frames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audio_in_get_dsp_frames(%struct.audio_in* %0) #0 {
  %2 = alloca %struct.audio_in*, align 8
  %3 = alloca %struct.audio_frame*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.audio_in* %0, %struct.audio_in** %2, align 8
  %6 = load %struct.audio_in*, %struct.audio_in** %2, align 8
  %7 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %4, align 8
  %9 = load %struct.audio_in*, %struct.audio_in** %2, align 8
  %10 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %9, i32 0, i32 6
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = load i64, i64* %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = getelementptr inbounds i8, i8* %16, i64 -4
  %18 = bitcast i8* %17 to %struct.audio_frame*
  store %struct.audio_frame* %18, %struct.audio_frame** %3, align 8
  %19 = load %struct.audio_in*, %struct.audio_in** %2, align 8
  %20 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %19, i32 0, i32 3
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.audio_frame*, %struct.audio_frame** %3, align 8
  %24 = getelementptr inbounds %struct.audio_frame, %struct.audio_frame* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.audio_in*, %struct.audio_in** %2, align 8
  %27 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %26, i32 0, i32 6
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i64, i64* %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 %25, i32* %31, align 8
  %32 = load %struct.audio_in*, %struct.audio_in** %2, align 8
  %33 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add i64 %34, 1
  %36 = load i32, i32* @FRAME_NUM, align 4
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = and i64 %35, %38
  %40 = load %struct.audio_in*, %struct.audio_in** %2, align 8
  %41 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load %struct.audio_in*, %struct.audio_in** %2, align 8
  %43 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.audio_in*, %struct.audio_in** %2, align 8
  %46 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = icmp eq i64 %44, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %1
  %51 = load %struct.audio_in*, %struct.audio_in** %2, align 8
  %52 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, 1
  %55 = load i32, i32* @FRAME_NUM, align 4
  %56 = sub nsw i32 %55, 1
  %57 = and i32 %54, %56
  %58 = load %struct.audio_in*, %struct.audio_in** %2, align 8
  %59 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 8
  br label %65

60:                                               ; preds = %1
  %61 = load %struct.audio_in*, %struct.audio_in** %2, align 8
  %62 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 8
  br label %65

65:                                               ; preds = %60, %50
  %66 = load %struct.audio_in*, %struct.audio_in** %2, align 8
  %67 = load %struct.audio_in*, %struct.audio_in** %2, align 8
  %68 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  %71 = call i32 @audio_dsp_read_buffer(%struct.audio_in* %66, i32 %69)
  %72 = load %struct.audio_in*, %struct.audio_in** %2, align 8
  %73 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %72, i32 0, i32 3
  %74 = load i64, i64* %5, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32* %73, i64 %74)
  %76 = load %struct.audio_in*, %struct.audio_in** %2, align 8
  %77 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %76, i32 0, i32 2
  %78 = call i32 @wake_up(i32* %77)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @audio_dsp_read_buffer(%struct.audio_in*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
