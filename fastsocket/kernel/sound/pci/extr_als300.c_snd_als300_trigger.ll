; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_als300.c_snd_als300_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_als300.c_snd_als300_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_als300_substream_data* }
%struct.snd_als300_substream_data = type { i16, i32 }
%struct.snd_als300 = type { i32, i32 }

@TRANSFER_START = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"TRIGGER START\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"TRIGGER STOP\0A\00", align 1
@FIFO_PAUSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"TRIGGER PAUSE\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"TRIGGER RELEASE\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"TRIGGER INVALID\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @snd_als300_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_als300_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_als300*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_als300_substream_data*, align 8
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %11 = call %struct.snd_als300* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %10)
  store %struct.snd_als300* %11, %struct.snd_als300** %5, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.snd_als300_substream_data*, %struct.snd_als300_substream_data** %15, align 8
  store %struct.snd_als300_substream_data* %16, %struct.snd_als300_substream_data** %7, align 8
  %17 = load %struct.snd_als300_substream_data*, %struct.snd_als300_substream_data** %7, align 8
  %18 = getelementptr inbounds %struct.snd_als300_substream_data, %struct.snd_als300_substream_data* %17, i32 0, i32 0
  %19 = load i16, i16* %18, align 4
  store i16 %19, i16* %8, align 2
  %20 = call i32 (...) @snd_als300_dbgcallenter()
  %21 = load %struct.snd_als300*, %struct.snd_als300** %5, align 8
  %22 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %21, i32 0, i32 0
  %23 = call i32 @spin_lock(i32* %22)
  %24 = load i32, i32* %4, align 4
  switch i32 %24, label %89 [
    i32 130, label %25
    i32 131, label %25
    i32 129, label %42
    i32 128, label %42
    i32 133, label %58
    i32 132, label %73
  ]

25:                                               ; preds = %2, %2
  %26 = load %struct.snd_als300*, %struct.snd_als300** %5, align 8
  %27 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i16, i16* %8, align 2
  %30 = call i32 @snd_als300_gcr_read(i32 %28, i16 zeroext %29)
  store i32 %30, i32* %6, align 4
  %31 = load %struct.snd_als300_substream_data*, %struct.snd_als300_substream_data** %7, align 8
  %32 = getelementptr inbounds %struct.snd_als300_substream_data, %struct.snd_als300_substream_data* %31, i32 0, i32 1
  store i32 1, i32* %32, align 4
  %33 = load %struct.snd_als300*, %struct.snd_als300** %5, align 8
  %34 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i16, i16* %8, align 2
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @TRANSFER_START, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @snd_als300_gcr_write(i32 %35, i16 zeroext %36, i32 %39)
  %41 = call i32 @snd_als300_dbgplay(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %93

42:                                               ; preds = %2, %2
  %43 = load %struct.snd_als300*, %struct.snd_als300** %5, align 8
  %44 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i16, i16* %8, align 2
  %47 = call i32 @snd_als300_gcr_read(i32 %45, i16 zeroext %46)
  store i32 %47, i32* %6, align 4
  %48 = load %struct.snd_als300*, %struct.snd_als300** %5, align 8
  %49 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i16, i16* %8, align 2
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @TRANSFER_START, align 4
  %54 = xor i32 %53, -1
  %55 = and i32 %52, %54
  %56 = call i32 @snd_als300_gcr_write(i32 %50, i16 zeroext %51, i32 %55)
  %57 = call i32 @snd_als300_dbgplay(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %93

58:                                               ; preds = %2
  %59 = load %struct.snd_als300*, %struct.snd_als300** %5, align 8
  %60 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i16, i16* %8, align 2
  %63 = call i32 @snd_als300_gcr_read(i32 %61, i16 zeroext %62)
  store i32 %63, i32* %6, align 4
  %64 = load %struct.snd_als300*, %struct.snd_als300** %5, align 8
  %65 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i16, i16* %8, align 2
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @FIFO_PAUSE, align 4
  %70 = or i32 %68, %69
  %71 = call i32 @snd_als300_gcr_write(i32 %66, i16 zeroext %67, i32 %70)
  %72 = call i32 @snd_als300_dbgplay(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %93

73:                                               ; preds = %2
  %74 = load %struct.snd_als300*, %struct.snd_als300** %5, align 8
  %75 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i16, i16* %8, align 2
  %78 = call i32 @snd_als300_gcr_read(i32 %76, i16 zeroext %77)
  store i32 %78, i32* %6, align 4
  %79 = load %struct.snd_als300*, %struct.snd_als300** %5, align 8
  %80 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i16, i16* %8, align 2
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @FIFO_PAUSE, align 4
  %85 = xor i32 %84, -1
  %86 = and i32 %83, %85
  %87 = call i32 @snd_als300_gcr_write(i32 %81, i16 zeroext %82, i32 %86)
  %88 = call i32 @snd_als300_dbgplay(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %93

89:                                               ; preds = %2
  %90 = call i32 @snd_als300_dbgplay(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %9, align 4
  br label %93

93:                                               ; preds = %89, %73, %58, %42, %25
  %94 = load %struct.snd_als300*, %struct.snd_als300** %5, align 8
  %95 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %94, i32 0, i32 0
  %96 = call i32 @spin_unlock(i32* %95)
  %97 = call i32 (...) @snd_als300_dbgcallleave()
  %98 = load i32, i32* %9, align 4
  ret i32 %98
}

declare dso_local %struct.snd_als300* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_als300_dbgcallenter(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @snd_als300_gcr_read(i32, i16 zeroext) #1

declare dso_local i32 @snd_als300_gcr_write(i32, i16 zeroext, i32) #1

declare dso_local i32 @snd_als300_dbgplay(i8*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @snd_als300_dbgcallleave(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
