; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/rme9652/extr_hdspm.c_snd_hdspm_midi_output_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/rme9652/extr_hdspm.c_snd_hdspm_midi_output_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdspm_midi = type { i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdspm_midi*)* @snd_hdspm_midi_output_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_hdspm_midi_output_write(%struct.hdspm_midi* %0) #0 {
  %2 = alloca %struct.hdspm_midi*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [128 x i8], align 16
  store %struct.hdspm_midi* %0, %struct.hdspm_midi** %2, align 8
  %8 = load %struct.hdspm_midi*, %struct.hdspm_midi** %2, align 8
  %9 = getelementptr inbounds %struct.hdspm_midi, %struct.hdspm_midi* %8, i32 0, i32 0
  %10 = load i64, i64* %3, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.hdspm_midi*, %struct.hdspm_midi** %2, align 8
  %13 = getelementptr inbounds %struct.hdspm_midi, %struct.hdspm_midi* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %68

16:                                               ; preds = %1
  %17 = load %struct.hdspm_midi*, %struct.hdspm_midi** %2, align 8
  %18 = getelementptr inbounds %struct.hdspm_midi, %struct.hdspm_midi* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @snd_rawmidi_transmit_empty(i64 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %68, label %22

22:                                               ; preds = %16
  %23 = load %struct.hdspm_midi*, %struct.hdspm_midi** %2, align 8
  %24 = getelementptr inbounds %struct.hdspm_midi, %struct.hdspm_midi* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.hdspm_midi*, %struct.hdspm_midi** %2, align 8
  %27 = getelementptr inbounds %struct.hdspm_midi, %struct.hdspm_midi* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @snd_hdspm_midi_output_possible(i32 %25, i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %67

32:                                               ; preds = %22
  %33 = load i32, i32* %4, align 4
  %34 = icmp sgt i32 %33, 128
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 128, i32* %4, align 4
  br label %36

36:                                               ; preds = %35, %32
  %37 = load %struct.hdspm_midi*, %struct.hdspm_midi** %2, align 8
  %38 = getelementptr inbounds %struct.hdspm_midi, %struct.hdspm_midi* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @snd_rawmidi_transmit(i64 %39, i8* %40, i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %66

45:                                               ; preds = %36
  store i32 0, i32* %6, align 4
  br label %46

46:                                               ; preds = %62, %45
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %65

50:                                               ; preds = %46
  %51 = load %struct.hdspm_midi*, %struct.hdspm_midi** %2, align 8
  %52 = getelementptr inbounds %struct.hdspm_midi, %struct.hdspm_midi* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.hdspm_midi*, %struct.hdspm_midi** %2, align 8
  %55 = getelementptr inbounds %struct.hdspm_midi, %struct.hdspm_midi* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = call i32 @snd_hdspm_midi_write_byte(i32 %53, i32 %56, i8 zeroext %60)
  br label %62

62:                                               ; preds = %50
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %46

65:                                               ; preds = %46
  br label %66

66:                                               ; preds = %65, %36
  br label %67

67:                                               ; preds = %66, %22
  br label %68

68:                                               ; preds = %67, %16, %1
  %69 = load %struct.hdspm_midi*, %struct.hdspm_midi** %2, align 8
  %70 = getelementptr inbounds %struct.hdspm_midi, %struct.hdspm_midi* %69, i32 0, i32 0
  %71 = load i64, i64* %3, align 8
  %72 = call i32 @spin_unlock_irqrestore(i32* %70, i64 %71)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_rawmidi_transmit_empty(i64) #1

declare dso_local i32 @snd_hdspm_midi_output_possible(i32, i32) #1

declare dso_local i32 @snd_rawmidi_transmit(i64, i8*, i32) #1

declare dso_local i32 @snd_hdspm_midi_write_byte(i32, i32, i8 zeroext) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
