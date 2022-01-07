; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_ice1724.c_snd_vt1724_pcm_pointer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_ice1724.c_snd_vt1724_pcm_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, %struct.vt1724_pcm_reg* }
%struct.vt1724_pcm_reg = type { i64, i64, i64 }
%struct.snd_ice1712 = type { i64 }

@DMA_CONTROL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"ice1724: invalid ptr %d (size=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.snd_pcm_substream*)* @snd_vt1724_pcm_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @snd_vt1724_pcm_pointer(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_ice1712*, align 8
  %5 = alloca %struct.vt1724_pcm_reg*, align 8
  %6 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %8 = call %struct.snd_ice1712* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.snd_ice1712* %8, %struct.snd_ice1712** %4, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 2
  %13 = load %struct.vt1724_pcm_reg*, %struct.vt1724_pcm_reg** %12, align 8
  store %struct.vt1724_pcm_reg* %13, %struct.vt1724_pcm_reg** %5, align 8
  %14 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %15 = load i32, i32* @DMA_CONTROL, align 4
  %16 = call i64 @ICEMT1724(%struct.snd_ice1712* %14, i32 %15)
  %17 = call i64 @inl(i64 %16)
  %18 = load %struct.vt1724_pcm_reg*, %struct.vt1724_pcm_reg** %5, align 8
  %19 = getelementptr inbounds %struct.vt1724_pcm_reg, %struct.vt1724_pcm_reg* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = and i64 %17, %20
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %73

24:                                               ; preds = %1
  %25 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %26 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.vt1724_pcm_reg*, %struct.vt1724_pcm_reg** %5, align 8
  %29 = getelementptr inbounds %struct.vt1724_pcm_reg, %struct.vt1724_pcm_reg* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %27, %30
  %32 = call i64 @inw(i64 %31)
  store i64 %32, i64* %6, align 8
  %33 = load i64, i64* %6, align 8
  %34 = add i64 %33, 1
  %35 = shl i64 %34, 2
  store i64 %35, i64* %6, align 8
  %36 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %37 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i64, i64* %6, align 8
  %40 = call i64 @bytes_to_frames(%struct.TYPE_2__* %38, i64 %39)
  store i64 %40, i64* %6, align 8
  %41 = load i64, i64* %6, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %24
  br label %71

44:                                               ; preds = %24
  %45 = load i64, i64* %6, align 8
  %46 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %47 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ule i64 %45, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %44
  %53 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %54 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %6, align 8
  %59 = sub i64 %57, %58
  store i64 %59, i64* %6, align 8
  br label %70

60:                                               ; preds = %44
  %61 = load i64, i64* %6, align 8
  %62 = trunc i64 %61 to i32
  %63 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %64 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = call i32 @snd_printd(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %68)
  store i64 0, i64* %6, align 8
  br label %70

70:                                               ; preds = %60, %52
  br label %71

71:                                               ; preds = %70, %43
  %72 = load i64, i64* %6, align 8
  store i64 %72, i64* %2, align 8
  br label %73

73:                                               ; preds = %71, %23
  %74 = load i64, i64* %2, align 8
  ret i64 %74
}

declare dso_local %struct.snd_ice1712* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i64 @inl(i64) #1

declare dso_local i64 @ICEMT1724(%struct.snd_ice1712*, i32) #1

declare dso_local i64 @inw(i64) #1

declare dso_local i64 @bytes_to_frames(%struct.TYPE_2__*, i64) #1

declare dso_local i32 @snd_printd(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
