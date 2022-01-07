; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_emu8000_synth.c_snd_emu8000_delete_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_emu8000_synth.c_snd_emu8000_delete_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_device = type { i32, %struct.snd_emu8000* }
%struct.snd_emu8000 = type { i32*, i32*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_seq_device*)* @snd_emu8000_delete_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_emu8000_delete_device(%struct.snd_seq_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_seq_device*, align 8
  %4 = alloca %struct.snd_emu8000*, align 8
  store %struct.snd_seq_device* %0, %struct.snd_seq_device** %3, align 8
  %5 = load %struct.snd_seq_device*, %struct.snd_seq_device** %3, align 8
  %6 = getelementptr inbounds %struct.snd_seq_device, %struct.snd_seq_device* %5, i32 0, i32 1
  %7 = load %struct.snd_emu8000*, %struct.snd_emu8000** %6, align 8
  %8 = icmp eq %struct.snd_emu8000* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %51

10:                                               ; preds = %1
  %11 = load %struct.snd_seq_device*, %struct.snd_seq_device** %3, align 8
  %12 = getelementptr inbounds %struct.snd_seq_device, %struct.snd_seq_device* %11, i32 0, i32 1
  %13 = load %struct.snd_emu8000*, %struct.snd_emu8000** %12, align 8
  store %struct.snd_emu8000* %13, %struct.snd_emu8000** %4, align 8
  %14 = load %struct.snd_emu8000*, %struct.snd_emu8000** %4, align 8
  %15 = getelementptr inbounds %struct.snd_emu8000, %struct.snd_emu8000* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %10
  %19 = load %struct.snd_seq_device*, %struct.snd_seq_device** %3, align 8
  %20 = getelementptr inbounds %struct.snd_seq_device, %struct.snd_seq_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.snd_emu8000*, %struct.snd_emu8000** %4, align 8
  %23 = getelementptr inbounds %struct.snd_emu8000, %struct.snd_emu8000* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @snd_device_free(i32 %21, i64 %24)
  br label %26

26:                                               ; preds = %18, %10
  %27 = load %struct.snd_emu8000*, %struct.snd_emu8000** %4, align 8
  %28 = getelementptr inbounds %struct.snd_emu8000, %struct.snd_emu8000* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.snd_emu8000*, %struct.snd_emu8000** %4, align 8
  %33 = getelementptr inbounds %struct.snd_emu8000, %struct.snd_emu8000* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @snd_emux_free(i32* %34)
  br label %36

36:                                               ; preds = %31, %26
  %37 = load %struct.snd_emu8000*, %struct.snd_emu8000** %4, align 8
  %38 = getelementptr inbounds %struct.snd_emu8000, %struct.snd_emu8000* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load %struct.snd_emu8000*, %struct.snd_emu8000** %4, align 8
  %43 = getelementptr inbounds %struct.snd_emu8000, %struct.snd_emu8000* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @snd_util_memhdr_free(i32* %44)
  br label %46

46:                                               ; preds = %41, %36
  %47 = load %struct.snd_emu8000*, %struct.snd_emu8000** %4, align 8
  %48 = getelementptr inbounds %struct.snd_emu8000, %struct.snd_emu8000* %47, i32 0, i32 1
  store i32* null, i32** %48, align 8
  %49 = load %struct.snd_emu8000*, %struct.snd_emu8000** %4, align 8
  %50 = getelementptr inbounds %struct.snd_emu8000, %struct.snd_emu8000* %49, i32 0, i32 0
  store i32* null, i32** %50, align 8
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %46, %9
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @snd_device_free(i32, i64) #1

declare dso_local i32 @snd_emux_free(i32*) #1

declare dso_local i32 @snd_util_memhdr_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
