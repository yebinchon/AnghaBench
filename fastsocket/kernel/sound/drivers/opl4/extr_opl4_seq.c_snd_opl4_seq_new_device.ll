; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/opl4/extr_opl4_seq.c_snd_opl4_seq_new_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/opl4/extr_opl4_seq.c_snd_opl4_seq_new_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_device = type { i32 }
%struct.snd_opl4 = type { i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, %struct.snd_opl4* }
%struct.snd_seq_port_callback = type { %struct.snd_opl4*, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"OPL4 Wavetable\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@snd_opl4_seq_use = common dso_local global i32 0, align 4
@snd_opl4_seq_unuse = common dso_local global i32 0, align 4
@snd_opl4_seq_event_input = common dso_local global i32 0, align 4
@snd_opl4_seq_free_port = common dso_local global i32 0, align 4
@SNDRV_SEQ_PORT_CAP_WRITE = common dso_local global i32 0, align 4
@SNDRV_SEQ_PORT_CAP_SUBS_WRITE = common dso_local global i32 0, align 4
@SNDRV_SEQ_PORT_TYPE_MIDI_GENERIC = common dso_local global i32 0, align 4
@SNDRV_SEQ_PORT_TYPE_MIDI_GM = common dso_local global i32 0, align 4
@SNDRV_SEQ_PORT_TYPE_HARDWARE = common dso_local global i32 0, align 4
@SNDRV_SEQ_PORT_TYPE_SYNTHESIZER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"OPL4 Wavetable Port\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_seq_device*)* @snd_opl4_seq_new_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_opl4_seq_new_device(%struct.snd_seq_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_seq_device*, align 8
  %4 = alloca %struct.snd_opl4*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_seq_port_callback, align 8
  %7 = alloca i32, align 4
  store %struct.snd_seq_device* %0, %struct.snd_seq_device** %3, align 8
  %8 = load %struct.snd_seq_device*, %struct.snd_seq_device** %3, align 8
  %9 = call i64 @SNDRV_SEQ_DEVICE_ARGPTR(%struct.snd_seq_device* %8)
  %10 = inttoptr i64 %9 to %struct.snd_opl4**
  %11 = load %struct.snd_opl4*, %struct.snd_opl4** %10, align 8
  store %struct.snd_opl4* %11, %struct.snd_opl4** %4, align 8
  %12 = load %struct.snd_opl4*, %struct.snd_opl4** %4, align 8
  %13 = icmp ne %struct.snd_opl4* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %116

17:                                               ; preds = %1
  %18 = load %struct.snd_opl4*, %struct.snd_opl4** %4, align 8
  %19 = call i64 @snd_yrw801_detect(%struct.snd_opl4* %18)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %116

24:                                               ; preds = %17
  %25 = call %struct.TYPE_3__* @snd_midi_channel_alloc_set(i32 16)
  %26 = load %struct.snd_opl4*, %struct.snd_opl4** %4, align 8
  %27 = getelementptr inbounds %struct.snd_opl4, %struct.snd_opl4* %26, i32 0, i32 1
  store %struct.TYPE_3__* %25, %struct.TYPE_3__** %27, align 8
  %28 = load %struct.snd_opl4*, %struct.snd_opl4** %4, align 8
  %29 = getelementptr inbounds %struct.snd_opl4, %struct.snd_opl4* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = icmp ne %struct.TYPE_3__* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %24
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %116

35:                                               ; preds = %24
  %36 = load %struct.snd_opl4*, %struct.snd_opl4** %4, align 8
  %37 = load %struct.snd_opl4*, %struct.snd_opl4** %4, align 8
  %38 = getelementptr inbounds %struct.snd_opl4, %struct.snd_opl4* %37, i32 0, i32 1
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  store %struct.snd_opl4* %36, %struct.snd_opl4** %40, align 8
  %41 = load %struct.snd_opl4*, %struct.snd_opl4** %4, align 8
  %42 = getelementptr inbounds %struct.snd_opl4, %struct.snd_opl4* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.snd_opl4*, %struct.snd_opl4** %4, align 8
  %45 = getelementptr inbounds %struct.snd_opl4, %struct.snd_opl4* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @snd_seq_create_kernel_client(i32 %43, i32 %46, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %35
  %51 = load %struct.snd_opl4*, %struct.snd_opl4** %4, align 8
  %52 = getelementptr inbounds %struct.snd_opl4, %struct.snd_opl4* %51, i32 0, i32 1
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = call i32 @snd_midi_channel_free_set(%struct.TYPE_3__* %53)
  %55 = load i32, i32* %5, align 4
  store i32 %55, i32* %2, align 4
  br label %116

56:                                               ; preds = %35
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.snd_opl4*, %struct.snd_opl4** %4, align 8
  %59 = getelementptr inbounds %struct.snd_opl4, %struct.snd_opl4* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* %5, align 4
  %61 = load %struct.snd_opl4*, %struct.snd_opl4** %4, align 8
  %62 = getelementptr inbounds %struct.snd_opl4, %struct.snd_opl4* %61, i32 0, i32 1
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  store i32 %60, i32* %64, align 8
  %65 = call i32 @memset(%struct.snd_seq_port_callback* %6, i32 0, i32 32)
  %66 = load i32, i32* @THIS_MODULE, align 4
  %67 = getelementptr inbounds %struct.snd_seq_port_callback, %struct.snd_seq_port_callback* %6, i32 0, i32 5
  store i32 %66, i32* %67, align 8
  %68 = load i32, i32* @snd_opl4_seq_use, align 4
  %69 = getelementptr inbounds %struct.snd_seq_port_callback, %struct.snd_seq_port_callback* %6, i32 0, i32 4
  store i32 %68, i32* %69, align 4
  %70 = load i32, i32* @snd_opl4_seq_unuse, align 4
  %71 = getelementptr inbounds %struct.snd_seq_port_callback, %struct.snd_seq_port_callback* %6, i32 0, i32 3
  store i32 %70, i32* %71, align 8
  %72 = load i32, i32* @snd_opl4_seq_event_input, align 4
  %73 = getelementptr inbounds %struct.snd_seq_port_callback, %struct.snd_seq_port_callback* %6, i32 0, i32 2
  store i32 %72, i32* %73, align 4
  %74 = load i32, i32* @snd_opl4_seq_free_port, align 4
  %75 = getelementptr inbounds %struct.snd_seq_port_callback, %struct.snd_seq_port_callback* %6, i32 0, i32 1
  store i32 %74, i32* %75, align 8
  %76 = load %struct.snd_opl4*, %struct.snd_opl4** %4, align 8
  %77 = getelementptr inbounds %struct.snd_seq_port_callback, %struct.snd_seq_port_callback* %6, i32 0, i32 0
  store %struct.snd_opl4* %76, %struct.snd_opl4** %77, align 8
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* @SNDRV_SEQ_PORT_CAP_WRITE, align 4
  %80 = load i32, i32* @SNDRV_SEQ_PORT_CAP_SUBS_WRITE, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @SNDRV_SEQ_PORT_TYPE_MIDI_GENERIC, align 4
  %83 = load i32, i32* @SNDRV_SEQ_PORT_TYPE_MIDI_GM, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @SNDRV_SEQ_PORT_TYPE_HARDWARE, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @SNDRV_SEQ_PORT_TYPE_SYNTHESIZER, align 4
  %88 = or i32 %86, %87
  %89 = call i32 @snd_seq_event_port_attach(i32 %78, %struct.snd_seq_port_callback* %6, i32 %81, i32 %88, i32 16, i32 24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %90 = load %struct.snd_opl4*, %struct.snd_opl4** %4, align 8
  %91 = getelementptr inbounds %struct.snd_opl4, %struct.snd_opl4* %90, i32 0, i32 1
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  store i32 %89, i32* %93, align 4
  %94 = load %struct.snd_opl4*, %struct.snd_opl4** %4, align 8
  %95 = getelementptr inbounds %struct.snd_opl4, %struct.snd_opl4* %94, i32 0, i32 1
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %115

100:                                              ; preds = %56
  %101 = load %struct.snd_opl4*, %struct.snd_opl4** %4, align 8
  %102 = getelementptr inbounds %struct.snd_opl4, %struct.snd_opl4* %101, i32 0, i32 1
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %7, align 4
  %106 = load %struct.snd_opl4*, %struct.snd_opl4** %4, align 8
  %107 = getelementptr inbounds %struct.snd_opl4, %struct.snd_opl4* %106, i32 0, i32 1
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %107, align 8
  %109 = call i32 @snd_midi_channel_free_set(%struct.TYPE_3__* %108)
  %110 = load i32, i32* %5, align 4
  %111 = call i32 @snd_seq_delete_kernel_client(i32 %110)
  %112 = load %struct.snd_opl4*, %struct.snd_opl4** %4, align 8
  %113 = getelementptr inbounds %struct.snd_opl4, %struct.snd_opl4* %112, i32 0, i32 0
  store i32 -1, i32* %113, align 8
  %114 = load i32, i32* %7, align 4
  store i32 %114, i32* %2, align 4
  br label %116

115:                                              ; preds = %56
  store i32 0, i32* %2, align 4
  br label %116

116:                                              ; preds = %115, %100, %50, %32, %21, %14
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local i64 @SNDRV_SEQ_DEVICE_ARGPTR(%struct.snd_seq_device*) #1

declare dso_local i64 @snd_yrw801_detect(%struct.snd_opl4*) #1

declare dso_local %struct.TYPE_3__* @snd_midi_channel_alloc_set(i32) #1

declare dso_local i32 @snd_seq_create_kernel_client(i32, i32, i8*) #1

declare dso_local i32 @snd_midi_channel_free_set(%struct.TYPE_3__*) #1

declare dso_local i32 @memset(%struct.snd_seq_port_callback*, i32, i32) #1

declare dso_local i32 @snd_seq_event_port_attach(i32, %struct.snd_seq_port_callback*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @snd_seq_delete_kernel_client(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
