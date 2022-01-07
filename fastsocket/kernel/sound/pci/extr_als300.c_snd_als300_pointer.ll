; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_als300.c_snd_als300_pointer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_als300.c_snd_als300_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_als300_substream_data* }
%struct.snd_als300_substream_data = type { i64, i32 }
%struct.snd_als300 = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"Pointer (bytes): %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_als300_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_als300_pointer(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca i16, align 2
  %4 = alloca %struct.snd_als300*, align 8
  %5 = alloca %struct.snd_als300_substream_data*, align 8
  %6 = alloca i16, align 2
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %8 = call %struct.snd_als300* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.snd_als300* %8, %struct.snd_als300** %4, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.snd_als300_substream_data*, %struct.snd_als300_substream_data** %12, align 8
  store %struct.snd_als300_substream_data* %13, %struct.snd_als300_substream_data** %5, align 8
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %15 = call zeroext i16 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream* %14)
  store i16 %15, i16* %6, align 2
  %16 = call i32 (...) @snd_als300_dbgcallenter()
  %17 = load %struct.snd_als300*, %struct.snd_als300** %4, align 8
  %18 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %17, i32 0, i32 0
  %19 = call i32 @spin_lock(i32* %18)
  %20 = load %struct.snd_als300*, %struct.snd_als300** %4, align 8
  %21 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.snd_als300_substream_data*, %struct.snd_als300_substream_data** %5, align 8
  %24 = getelementptr inbounds %struct.snd_als300_substream_data, %struct.snd_als300_substream_data* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @snd_als300_gcr_read(i32 %22, i32 %25)
  %27 = trunc i64 %26 to i16
  %28 = zext i16 %27 to i32
  %29 = add nsw i32 %28, 4
  %30 = trunc i32 %29 to i16
  store i16 %30, i16* %3, align 2
  %31 = load %struct.snd_als300*, %struct.snd_als300** %4, align 8
  %32 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %31, i32 0, i32 0
  %33 = call i32 @spin_unlock(i32* %32)
  %34 = load i16, i16* %3, align 2
  %35 = zext i16 %34 to i32
  %36 = load i16, i16* %6, align 2
  %37 = zext i16 %36 to i32
  %38 = icmp sgt i32 %35, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %1
  store i16 0, i16* %3, align 2
  br label %47

40:                                               ; preds = %1
  %41 = load i16, i16* %6, align 2
  %42 = zext i16 %41 to i32
  %43 = load i16, i16* %3, align 2
  %44 = zext i16 %43 to i32
  %45 = sub nsw i32 %42, %44
  %46 = trunc i32 %45 to i16
  store i16 %46, i16* %3, align 2
  br label %47

47:                                               ; preds = %40, %39
  %48 = load %struct.snd_als300_substream_data*, %struct.snd_als300_substream_data** %5, align 8
  %49 = getelementptr inbounds %struct.snd_als300_substream_data, %struct.snd_als300_substream_data* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load i16, i16* %6, align 2
  %54 = zext i16 %53 to i32
  %55 = load i16, i16* %3, align 2
  %56 = zext i16 %55 to i32
  %57 = add nsw i32 %56, %54
  %58 = trunc i32 %57 to i16
  store i16 %58, i16* %3, align 2
  br label %59

59:                                               ; preds = %52, %47
  %60 = load i16, i16* %3, align 2
  %61 = call i32 @snd_als300_dbgplay(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i16 zeroext %60)
  %62 = call i32 (...) @snd_als300_dbgcallleave()
  %63 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %64 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i16, i16* %3, align 2
  %67 = call i32 @bytes_to_frames(%struct.TYPE_2__* %65, i16 zeroext %66)
  ret i32 %67
}

declare dso_local %struct.snd_als300* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local zeroext i16 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_als300_dbgcallenter(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @snd_als300_gcr_read(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @snd_als300_dbgplay(i8*, i16 zeroext) #1

declare dso_local i32 @snd_als300_dbgcallleave(...) #1

declare dso_local i32 @bytes_to_frames(%struct.TYPE_2__*, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
