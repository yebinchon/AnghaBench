; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/extr_mtpav.c_snd_mtpav_output_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/extr_mtpav.c_snd_mtpav_output_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mtpav* }
%struct.mtpav = type { i64, i32, %struct.mtpav_port* }
%struct.mtpav_port = type { i32 }

@MTPAV_MODE_OUTPUT_TRIGGERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_rawmidi_substream*, i32)* @snd_mtpav_output_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_mtpav_output_trigger(%struct.snd_rawmidi_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_rawmidi_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtpav*, align 8
  %6 = alloca %struct.mtpav_port*, align 8
  %7 = alloca i64, align 8
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %9 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.mtpav*, %struct.mtpav** %11, align 8
  store %struct.mtpav* %12, %struct.mtpav** %5, align 8
  %13 = load %struct.mtpav*, %struct.mtpav** %5, align 8
  %14 = getelementptr inbounds %struct.mtpav, %struct.mtpav* %13, i32 0, i32 2
  %15 = load %struct.mtpav_port*, %struct.mtpav_port** %14, align 8
  %16 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %17 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.mtpav_port, %struct.mtpav_port* %15, i64 %18
  store %struct.mtpav_port* %19, %struct.mtpav_port** %6, align 8
  %20 = load %struct.mtpav*, %struct.mtpav** %5, align 8
  %21 = getelementptr inbounds %struct.mtpav, %struct.mtpav* %20, i32 0, i32 1
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %49

26:                                               ; preds = %2
  %27 = load %struct.mtpav_port*, %struct.mtpav_port** %6, align 8
  %28 = getelementptr inbounds %struct.mtpav_port, %struct.mtpav_port* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @MTPAV_MODE_OUTPUT_TRIGGERED, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %48, label %33

33:                                               ; preds = %26
  %34 = load %struct.mtpav*, %struct.mtpav** %5, align 8
  %35 = getelementptr inbounds %struct.mtpav, %struct.mtpav* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %35, align 8
  %38 = icmp eq i64 %36, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load %struct.mtpav*, %struct.mtpav** %5, align 8
  %41 = call i32 @snd_mtpav_add_output_timer(%struct.mtpav* %40)
  br label %42

42:                                               ; preds = %39, %33
  %43 = load i32, i32* @MTPAV_MODE_OUTPUT_TRIGGERED, align 4
  %44 = load %struct.mtpav_port*, %struct.mtpav_port** %6, align 8
  %45 = getelementptr inbounds %struct.mtpav_port, %struct.mtpav_port* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %42, %26
  br label %65

49:                                               ; preds = %2
  %50 = load i32, i32* @MTPAV_MODE_OUTPUT_TRIGGERED, align 4
  %51 = xor i32 %50, -1
  %52 = load %struct.mtpav_port*, %struct.mtpav_port** %6, align 8
  %53 = getelementptr inbounds %struct.mtpav_port, %struct.mtpav_port* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = load %struct.mtpav*, %struct.mtpav** %5, align 8
  %57 = getelementptr inbounds %struct.mtpav, %struct.mtpav* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, -1
  store i64 %59, i64* %57, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %49
  %62 = load %struct.mtpav*, %struct.mtpav** %5, align 8
  %63 = call i32 @snd_mtpav_remove_output_timer(%struct.mtpav* %62)
  br label %64

64:                                               ; preds = %61, %49
  br label %65

65:                                               ; preds = %64, %48
  %66 = load %struct.mtpav*, %struct.mtpav** %5, align 8
  %67 = getelementptr inbounds %struct.mtpav, %struct.mtpav* %66, i32 0, i32 1
  %68 = load i64, i64* %7, align 8
  %69 = call i32 @spin_unlock_irqrestore(i32* %67, i64 %68)
  %70 = load i32, i32* %4, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %65
  %73 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %74 = call i32 @snd_mtpav_output_write(%struct.snd_rawmidi_substream* %73)
  br label %75

75:                                               ; preds = %72, %65
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_mtpav_add_output_timer(%struct.mtpav*) #1

declare dso_local i32 @snd_mtpav_remove_output_timer(%struct.mtpav*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snd_mtpav_output_write(%struct.snd_rawmidi_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
