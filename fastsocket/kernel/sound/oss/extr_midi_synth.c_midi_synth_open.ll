; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_midi_synth.c_midi_synth_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_midi_synth.c_midi_synth_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 (i32, i32, i32, i32)*, %struct.midi_input_info }
%struct.midi_input_info = type { i32, i64, i64, i32, i64 }

@synth_devs = common dso_local global %struct.TYPE_3__** null, align 8
@num_midis = common dso_local global i32 0, align 4
@midi_devs = common dso_local global %struct.TYPE_4__** null, align 8
@ENXIO = common dso_local global i32 0, align 4
@midi2synth = common dso_local global i32* null, align 8
@sysex_state = common dso_local global i64* null, align 8
@prev_out_status = common dso_local global i64* null, align 8
@midi_synth_input = common dso_local global i32 0, align 4
@midi_synth_output = common dso_local global i32 0, align 4
@MST_INIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @midi_synth_open(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.midi_input_info*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @synth_devs, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %9, i64 %11
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @num_midis, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %29, label %22

22:                                               ; preds = %18
  %23 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @midi_devs, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %23, i64 %25
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = icmp eq %struct.TYPE_4__* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %22, %18, %2
  %30 = load i32, i32* @ENXIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %79

32:                                               ; preds = %22
  %33 = load i32, i32* %4, align 4
  %34 = load i32*, i32** @midi2synth, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  store i32 %33, i32* %37, align 4
  %38 = load i64*, i64** @sysex_state, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  store i64 0, i64* %41, align 8
  %42 = load i64*, i64** @prev_out_status, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  store i64 0, i64* %45, align 8
  %46 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @midi_devs, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %46, i64 %48
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @midi_synth_input, align 4
  %56 = load i32, i32* @midi_synth_output, align 4
  %57 = call i32 %52(i32 %53, i32 %54, i32 %55, i32 %56)
  store i32 %57, i32* %7, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %32
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %3, align 4
  br label %79

61:                                               ; preds = %32
  %62 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @midi_devs, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %62, i64 %64
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  store %struct.midi_input_info* %67, %struct.midi_input_info** %8, align 8
  %68 = load %struct.midi_input_info*, %struct.midi_input_info** %8, align 8
  %69 = getelementptr inbounds %struct.midi_input_info, %struct.midi_input_info* %68, i32 0, i32 4
  store i64 0, i64* %69, align 8
  %70 = load i32, i32* @MST_INIT, align 4
  %71 = load %struct.midi_input_info*, %struct.midi_input_info** %8, align 8
  %72 = getelementptr inbounds %struct.midi_input_info, %struct.midi_input_info* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 8
  %73 = load %struct.midi_input_info*, %struct.midi_input_info** %8, align 8
  %74 = getelementptr inbounds %struct.midi_input_info, %struct.midi_input_info* %73, i32 0, i32 2
  store i64 0, i64* %74, align 8
  %75 = load %struct.midi_input_info*, %struct.midi_input_info** %8, align 8
  %76 = getelementptr inbounds %struct.midi_input_info, %struct.midi_input_info* %75, i32 0, i32 1
  store i64 0, i64* %76, align 8
  %77 = load %struct.midi_input_info*, %struct.midi_input_info** %8, align 8
  %78 = getelementptr inbounds %struct.midi_input_info, %struct.midi_input_info* %77, i32 0, i32 0
  store i32 0, i32* %78, align 8
  store i32 1, i32* %3, align 4
  br label %79

79:                                               ; preds = %61, %59, %29
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
