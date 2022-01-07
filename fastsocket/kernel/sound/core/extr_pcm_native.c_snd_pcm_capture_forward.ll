; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_pcm_native.c_snd_pcm_capture_forward.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_pcm_native.c_snd_pcm_capture_forward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@EPIPE = common dso_local global i64 0, align 8
@ESTRPIPE = common dso_local global i64 0, align 8
@EBADFD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.snd_pcm_substream*, i64)* @snd_pcm_capture_forward to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @snd_pcm_capture_forward(%struct.snd_pcm_substream* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 0
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  store %struct.snd_pcm_runtime* %12, %struct.snd_pcm_runtime** %6, align 8
  %13 = load i64, i64* %5, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %82

16:                                               ; preds = %2
  %17 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %18 = call i32 @snd_pcm_stream_lock_irq(%struct.snd_pcm_substream* %17)
  %19 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %20 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %19, i32 0, i32 2
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %37 [
    i32 131, label %24
    i32 133, label %24
    i32 132, label %24
    i32 130, label %25
    i32 128, label %31
    i32 129, label %34
  ]

24:                                               ; preds = %16, %16, %16
  br label %40

25:                                               ; preds = %16
  %26 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %27 = call i32 @snd_pcm_update_hw_ptr(%struct.snd_pcm_substream* %26)
  %28 = icmp sge i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %40

30:                                               ; preds = %25
  br label %31

31:                                               ; preds = %16, %30
  %32 = load i64, i64* @EPIPE, align 8
  %33 = sub nsw i64 0, %32
  store i64 %33, i64* %8, align 8
  br label %78

34:                                               ; preds = %16
  %35 = load i64, i64* @ESTRPIPE, align 8
  %36 = sub nsw i64 0, %35
  store i64 %36, i64* %8, align 8
  br label %78

37:                                               ; preds = %16
  %38 = load i64, i64* @EBADFD, align 8
  %39 = sub nsw i64 0, %38
  store i64 %39, i64* %8, align 8
  br label %78

40:                                               ; preds = %29, %24
  %41 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %42 = call i64 @snd_pcm_capture_avail(%struct.snd_pcm_runtime* %41)
  store i64 %42, i64* %9, align 8
  %43 = load i64, i64* %9, align 8
  %44 = icmp sle i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i64 0, i64* %8, align 8
  br label %78

46:                                               ; preds = %40
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* %9, align 8
  %49 = icmp sgt i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i64, i64* %9, align 8
  store i64 %51, i64* %5, align 8
  br label %52

52:                                               ; preds = %50, %46
  %53 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %54 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %53, i32 0, i32 1
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %5, align 8
  %59 = add nsw i64 %57, %58
  store i64 %59, i64* %7, align 8
  %60 = load i64, i64* %7, align 8
  %61 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %62 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp sge i64 %60, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %52
  %66 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %67 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %7, align 8
  %70 = sub nsw i64 %69, %68
  store i64 %70, i64* %7, align 8
  br label %71

71:                                               ; preds = %65, %52
  %72 = load i64, i64* %7, align 8
  %73 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %74 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %73, i32 0, i32 1
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  store i64 %72, i64* %76, align 8
  %77 = load i64, i64* %5, align 8
  store i64 %77, i64* %8, align 8
  br label %78

78:                                               ; preds = %71, %45, %37, %34, %31
  %79 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %80 = call i32 @snd_pcm_stream_unlock_irq(%struct.snd_pcm_substream* %79)
  %81 = load i64, i64* %8, align 8
  store i64 %81, i64* %3, align 8
  br label %82

82:                                               ; preds = %78, %15
  %83 = load i64, i64* %3, align 8
  ret i64 %83
}

declare dso_local i32 @snd_pcm_stream_lock_irq(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_update_hw_ptr(%struct.snd_pcm_substream*) #1

declare dso_local i64 @snd_pcm_capture_avail(%struct.snd_pcm_runtime*) #1

declare dso_local i32 @snd_pcm_stream_unlock_irq(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
