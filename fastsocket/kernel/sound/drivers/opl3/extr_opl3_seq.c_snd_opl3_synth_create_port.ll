; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/opl3/extr_opl3_seq.c_snd_opl3_synth_create_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/opl3/extr_opl3_seq.c_snd_opl3_synth_create_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_opl3 = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32, %struct.snd_opl3* }
%struct.snd_seq_port_callback = type { %struct.snd_opl3*, i32, i32, i32, i32, i32 }

@OPL3_HW_OPL3 = common dso_local global i32 0, align 4
@MAX_OPL2_VOICES = common dso_local global i32 0, align 4
@MAX_OPL3_VOICES = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@snd_opl3_synth_use = common dso_local global i32 0, align 4
@snd_opl3_synth_unuse = common dso_local global i32 0, align 4
@snd_opl3_synth_event_input = common dso_local global i32 0, align 4
@snd_opl3_synth_free_port = common dso_local global i32 0, align 4
@OPL3_HW_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"OPL%i FM Port\00", align 1
@SNDRV_SEQ_PORT_CAP_WRITE = common dso_local global i32 0, align 4
@SNDRV_SEQ_PORT_CAP_SUBS_WRITE = common dso_local global i32 0, align 4
@SNDRV_SEQ_PORT_TYPE_MIDI_GENERIC = common dso_local global i32 0, align 4
@SNDRV_SEQ_PORT_TYPE_MIDI_GM = common dso_local global i32 0, align 4
@SNDRV_SEQ_PORT_TYPE_DIRECT_SAMPLE = common dso_local global i32 0, align 4
@SNDRV_SEQ_PORT_TYPE_HARDWARE = common dso_local global i32 0, align 4
@SNDRV_SEQ_PORT_TYPE_SYNTHESIZER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_opl3*)* @snd_opl3_synth_create_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_opl3_synth_create_port(%struct.snd_opl3* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_opl3*, align 8
  %4 = alloca %struct.snd_seq_port_callback, align 8
  %5 = alloca [32 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_opl3* %0, %struct.snd_opl3** %3, align 8
  %9 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %10 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @OPL3_HW_OPL3, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @MAX_OPL2_VOICES, align 4
  br label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @MAX_OPL3_VOICES, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  store i32 %19, i32* %6, align 4
  %20 = call %struct.TYPE_3__* @snd_midi_channel_alloc_set(i32 16)
  %21 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %22 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %21, i32 0, i32 1
  store %struct.TYPE_3__* %20, %struct.TYPE_3__** %22, align 8
  %23 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %24 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = icmp eq %struct.TYPE_3__* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %18
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %105

30:                                               ; preds = %18
  %31 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %32 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %33 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  store %struct.snd_opl3* %31, %struct.snd_opl3** %35, align 8
  %36 = call i32 @memset(%struct.snd_seq_port_callback* %4, i32 0, i32 32)
  %37 = load i32, i32* @THIS_MODULE, align 4
  %38 = getelementptr inbounds %struct.snd_seq_port_callback, %struct.snd_seq_port_callback* %4, i32 0, i32 5
  store i32 %37, i32* %38, align 8
  %39 = load i32, i32* @snd_opl3_synth_use, align 4
  %40 = getelementptr inbounds %struct.snd_seq_port_callback, %struct.snd_seq_port_callback* %4, i32 0, i32 4
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* @snd_opl3_synth_unuse, align 4
  %42 = getelementptr inbounds %struct.snd_seq_port_callback, %struct.snd_seq_port_callback* %4, i32 0, i32 3
  store i32 %41, i32* %42, align 8
  %43 = load i32, i32* @snd_opl3_synth_event_input, align 4
  %44 = getelementptr inbounds %struct.snd_seq_port_callback, %struct.snd_seq_port_callback* %4, i32 0, i32 2
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* @snd_opl3_synth_free_port, align 4
  %46 = getelementptr inbounds %struct.snd_seq_port_callback, %struct.snd_seq_port_callback* %4, i32 0, i32 1
  store i32 %45, i32* %46, align 8
  %47 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %48 = getelementptr inbounds %struct.snd_seq_port_callback, %struct.snd_seq_port_callback* %4, i32 0, i32 0
  store %struct.snd_opl3* %47, %struct.snd_opl3** %48, align 8
  %49 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %50 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @OPL3_HW_MASK, align 4
  %53 = and i32 %51, %52
  %54 = ashr i32 %53, 8
  store i32 %54, i32* %7, align 4
  %55 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @sprintf(i8* %55, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %59 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %62 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %61, i32 0, i32 1
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  store i32 %60, i32* %64, align 4
  %65 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %66 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @SNDRV_SEQ_PORT_CAP_WRITE, align 4
  %69 = load i32, i32* @SNDRV_SEQ_PORT_CAP_SUBS_WRITE, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @SNDRV_SEQ_PORT_TYPE_MIDI_GENERIC, align 4
  %72 = load i32, i32* @SNDRV_SEQ_PORT_TYPE_MIDI_GM, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @SNDRV_SEQ_PORT_TYPE_DIRECT_SAMPLE, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @SNDRV_SEQ_PORT_TYPE_HARDWARE, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @SNDRV_SEQ_PORT_TYPE_SYNTHESIZER, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* %6, align 4
  %81 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %82 = call i32 @snd_seq_event_port_attach(i32 %67, %struct.snd_seq_port_callback* %4, i32 %70, i32 %79, i32 16, i32 %80, i8* %81)
  %83 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %84 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %83, i32 0, i32 1
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  store i32 %82, i32* %86, align 8
  %87 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %88 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %87, i32 0, i32 1
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %104

93:                                               ; preds = %30
  %94 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %95 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %94, i32 0, i32 1
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  store i32 %98, i32* %8, align 4
  %99 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %100 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %99, i32 0, i32 1
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %100, align 8
  %102 = call i32 @snd_midi_channel_free_set(%struct.TYPE_3__* %101)
  %103 = load i32, i32* %8, align 4
  store i32 %103, i32* %2, align 4
  br label %105

104:                                              ; preds = %30
  store i32 0, i32* %2, align 4
  br label %105

105:                                              ; preds = %104, %93, %27
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local %struct.TYPE_3__* @snd_midi_channel_alloc_set(i32) #1

declare dso_local i32 @memset(%struct.snd_seq_port_callback*, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @snd_seq_event_port_attach(i32, %struct.snd_seq_port_callback*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @snd_midi_channel_free_set(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
