; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_rawmidi.c_snd_rawmidi_runtime_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_rawmidi.c_snd_rawmidi_runtime_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { i64, %struct.snd_rawmidi_runtime* }
%struct.snd_rawmidi_runtime = type { i32, i64, i64, i64, i32*, i64, i32*, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SNDRV_RAWMIDI_STREAM_INPUT = common dso_local global i64 0, align 8
@snd_rawmidi_input_event_tasklet = common dso_local global i32 0, align 4
@snd_rawmidi_output_trigger_tasklet = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_rawmidi_substream*)* @snd_rawmidi_runtime_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_rawmidi_runtime_create(%struct.snd_rawmidi_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_rawmidi_substream*, align 8
  %4 = alloca %struct.snd_rawmidi_runtime*, align 8
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.snd_rawmidi_runtime* @kzalloc(i32 72, i32 %5)
  store %struct.snd_rawmidi_runtime* %6, %struct.snd_rawmidi_runtime** %4, align 8
  %7 = icmp eq %struct.snd_rawmidi_runtime* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %81

11:                                               ; preds = %1
  %12 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %4, align 8
  %13 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %12, i32 0, i32 9
  %14 = call i32 @spin_lock_init(i32* %13)
  %15 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %4, align 8
  %16 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %15, i32 0, i32 8
  %17 = call i32 @init_waitqueue_head(i32* %16)
  %18 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %19 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SNDRV_RAWMIDI_STREAM_INPUT, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %11
  %24 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %4, align 8
  %25 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %24, i32 0, i32 7
  %26 = load i32, i32* @snd_rawmidi_input_event_tasklet, align 4
  %27 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %28 = ptrtoint %struct.snd_rawmidi_substream* %27 to i64
  %29 = call i32 @tasklet_init(i32* %25, i32 %26, i64 %28)
  br label %37

30:                                               ; preds = %11
  %31 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %4, align 8
  %32 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %31, i32 0, i32 7
  %33 = load i32, i32* @snd_rawmidi_output_trigger_tasklet, align 4
  %34 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %35 = ptrtoint %struct.snd_rawmidi_substream* %34 to i64
  %36 = call i32 @tasklet_init(i32* %32, i32 %33, i64 %35)
  br label %37

37:                                               ; preds = %30, %23
  %38 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %4, align 8
  %39 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %38, i32 0, i32 6
  store i32* null, i32** %39, align 8
  %40 = load i64, i64* @PAGE_SIZE, align 8
  %41 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %4, align 8
  %42 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %41, i32 0, i32 3
  store i64 %40, i64* %42, align 8
  %43 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %4, align 8
  %44 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  %45 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %46 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @SNDRV_RAWMIDI_STREAM_INPUT, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %37
  %51 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %4, align 8
  %52 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %51, i32 0, i32 5
  store i64 0, i64* %52, align 8
  br label %59

53:                                               ; preds = %37
  %54 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %4, align 8
  %55 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %4, align 8
  %58 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %57, i32 0, i32 5
  store i64 %56, i64* %58, align 8
  br label %59

59:                                               ; preds = %53, %50
  %60 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %4, align 8
  %61 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call i32* @kmalloc(i64 %62, i32 %63)
  %65 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %4, align 8
  %66 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %65, i32 0, i32 4
  store i32* %64, i32** %66, align 8
  %67 = icmp eq i32* %64, null
  br i1 %67, label %68, label %73

68:                                               ; preds = %59
  %69 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %4, align 8
  %70 = call i32 @kfree(%struct.snd_rawmidi_runtime* %69)
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %2, align 4
  br label %81

73:                                               ; preds = %59
  %74 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %4, align 8
  %75 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %74, i32 0, i32 1
  store i64 0, i64* %75, align 8
  %76 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %4, align 8
  %77 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %76, i32 0, i32 2
  store i64 0, i64* %77, align 8
  %78 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %4, align 8
  %79 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %80 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %79, i32 0, i32 1
  store %struct.snd_rawmidi_runtime* %78, %struct.snd_rawmidi_runtime** %80, align 8
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %73, %68, %8
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local %struct.snd_rawmidi_runtime* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32* @kmalloc(i64, i32) #1

declare dso_local i32 @kfree(%struct.snd_rawmidi_runtime*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
