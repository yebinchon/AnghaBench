; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_virmidi.c_snd_virmidi_dev_attach_seq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_virmidi.c_snd_virmidi_dev_attach_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_virmidi_dev = type { i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.snd_seq_port_callback = type { i32, i32, i32, i32, i32, %struct.snd_virmidi_dev*, i32 }
%struct.snd_seq_port_info = type { i32, i32, i32, %struct.TYPE_5__, %struct.snd_seq_port_callback*, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%s %d-%d\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"VirMIDI %d-%d\00", align 1
@SNDRV_SEQ_PORT_CAP_WRITE = common dso_local global i32 0, align 4
@SNDRV_SEQ_PORT_CAP_SYNC_WRITE = common dso_local global i32 0, align 4
@SNDRV_SEQ_PORT_CAP_SUBS_WRITE = common dso_local global i32 0, align 4
@SNDRV_SEQ_PORT_CAP_READ = common dso_local global i32 0, align 4
@SNDRV_SEQ_PORT_CAP_SYNC_READ = common dso_local global i32 0, align 4
@SNDRV_SEQ_PORT_CAP_SUBS_READ = common dso_local global i32 0, align 4
@SNDRV_SEQ_PORT_CAP_DUPLEX = common dso_local global i32 0, align 4
@SNDRV_SEQ_PORT_TYPE_MIDI_GENERIC = common dso_local global i32 0, align 4
@SNDRV_SEQ_PORT_TYPE_SOFTWARE = common dso_local global i32 0, align 4
@SNDRV_SEQ_PORT_TYPE_PORT = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@snd_virmidi_subscribe = common dso_local global i32 0, align 4
@snd_virmidi_unsubscribe = common dso_local global i32 0, align 4
@snd_virmidi_use = common dso_local global i32 0, align 4
@snd_virmidi_unuse = common dso_local global i32 0, align 4
@snd_virmidi_event_input = common dso_local global i32 0, align 4
@SNDRV_SEQ_IOCTL_CREATE_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_virmidi_dev*)* @snd_virmidi_dev_attach_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_virmidi_dev_attach_seq(%struct.snd_virmidi_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_virmidi_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_seq_port_callback, align 8
  %6 = alloca %struct.snd_seq_port_info*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_virmidi_dev* %0, %struct.snd_virmidi_dev** %3, align 8
  %8 = load %struct.snd_virmidi_dev*, %struct.snd_virmidi_dev** %3, align 8
  %9 = getelementptr inbounds %struct.snd_virmidi_dev, %struct.snd_virmidi_dev* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %137

13:                                               ; preds = %1
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.snd_seq_port_info* @kzalloc(i32 40, i32 %14)
  store %struct.snd_seq_port_info* %15, %struct.snd_seq_port_info** %6, align 8
  %16 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %6, align 8
  %17 = icmp ne %struct.snd_seq_port_info* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %7, align 4
  br label %133

21:                                               ; preds = %13
  %22 = load %struct.snd_virmidi_dev*, %struct.snd_virmidi_dev** %3, align 8
  %23 = getelementptr inbounds %struct.snd_virmidi_dev, %struct.snd_virmidi_dev* %22, i32 0, i32 3
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = load %struct.snd_virmidi_dev*, %struct.snd_virmidi_dev** %3, align 8
  %26 = getelementptr inbounds %struct.snd_virmidi_dev, %struct.snd_virmidi_dev* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.snd_virmidi_dev*, %struct.snd_virmidi_dev** %3, align 8
  %29 = getelementptr inbounds %struct.snd_virmidi_dev, %struct.snd_virmidi_dev* %28, i32 0, i32 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.snd_virmidi_dev*, %struct.snd_virmidi_dev** %3, align 8
  %34 = getelementptr inbounds %struct.snd_virmidi_dev, %struct.snd_virmidi_dev* %33, i32 0, i32 3
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.snd_virmidi_dev*, %struct.snd_virmidi_dev** %3, align 8
  %39 = getelementptr inbounds %struct.snd_virmidi_dev, %struct.snd_virmidi_dev* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @snd_seq_create_kernel_client(%struct.TYPE_6__* %24, i32 %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %37, i32 %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %21
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* %7, align 4
  br label %133

46:                                               ; preds = %21
  %47 = load i32, i32* %4, align 4
  %48 = load %struct.snd_virmidi_dev*, %struct.snd_virmidi_dev** %3, align 8
  %49 = getelementptr inbounds %struct.snd_virmidi_dev, %struct.snd_virmidi_dev* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* %4, align 4
  %51 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %6, align 8
  %52 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 4
  %54 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %6, align 8
  %55 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.snd_virmidi_dev*, %struct.snd_virmidi_dev** %3, align 8
  %58 = getelementptr inbounds %struct.snd_virmidi_dev, %struct.snd_virmidi_dev* %57, i32 0, i32 3
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.snd_virmidi_dev*, %struct.snd_virmidi_dev** %3, align 8
  %63 = getelementptr inbounds %struct.snd_virmidi_dev, %struct.snd_virmidi_dev* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @sprintf(i32 %56, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %61, i32 %64)
  %66 = load i32, i32* @SNDRV_SEQ_PORT_CAP_WRITE, align 4
  %67 = load i32, i32* @SNDRV_SEQ_PORT_CAP_SYNC_WRITE, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @SNDRV_SEQ_PORT_CAP_SUBS_WRITE, align 4
  %70 = or i32 %68, %69
  %71 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %6, align 8
  %72 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 8
  %75 = load i32, i32* @SNDRV_SEQ_PORT_CAP_READ, align 4
  %76 = load i32, i32* @SNDRV_SEQ_PORT_CAP_SYNC_READ, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @SNDRV_SEQ_PORT_CAP_SUBS_READ, align 4
  %79 = or i32 %77, %78
  %80 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %6, align 8
  %81 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 8
  %84 = load i32, i32* @SNDRV_SEQ_PORT_CAP_DUPLEX, align 4
  %85 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %6, align 8
  %86 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 8
  %89 = load i32, i32* @SNDRV_SEQ_PORT_TYPE_MIDI_GENERIC, align 4
  %90 = load i32, i32* @SNDRV_SEQ_PORT_TYPE_SOFTWARE, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @SNDRV_SEQ_PORT_TYPE_PORT, align 4
  %93 = or i32 %91, %92
  %94 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %6, align 8
  %95 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  %96 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %6, align 8
  %97 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %96, i32 0, i32 2
  store i32 16, i32* %97, align 8
  %98 = call i32 @memset(%struct.snd_seq_port_callback* %5, i32 0, i32 40)
  %99 = load i32, i32* @THIS_MODULE, align 4
  %100 = getelementptr inbounds %struct.snd_seq_port_callback, %struct.snd_seq_port_callback* %5, i32 0, i32 6
  store i32 %99, i32* %100, align 8
  %101 = load %struct.snd_virmidi_dev*, %struct.snd_virmidi_dev** %3, align 8
  %102 = getelementptr inbounds %struct.snd_seq_port_callback, %struct.snd_seq_port_callback* %5, i32 0, i32 5
  store %struct.snd_virmidi_dev* %101, %struct.snd_virmidi_dev** %102, align 8
  %103 = load i32, i32* @snd_virmidi_subscribe, align 4
  %104 = getelementptr inbounds %struct.snd_seq_port_callback, %struct.snd_seq_port_callback* %5, i32 0, i32 4
  store i32 %103, i32* %104, align 8
  %105 = load i32, i32* @snd_virmidi_unsubscribe, align 4
  %106 = getelementptr inbounds %struct.snd_seq_port_callback, %struct.snd_seq_port_callback* %5, i32 0, i32 3
  store i32 %105, i32* %106, align 4
  %107 = load i32, i32* @snd_virmidi_use, align 4
  %108 = getelementptr inbounds %struct.snd_seq_port_callback, %struct.snd_seq_port_callback* %5, i32 0, i32 2
  store i32 %107, i32* %108, align 8
  %109 = load i32, i32* @snd_virmidi_unuse, align 4
  %110 = getelementptr inbounds %struct.snd_seq_port_callback, %struct.snd_seq_port_callback* %5, i32 0, i32 1
  store i32 %109, i32* %110, align 4
  %111 = load i32, i32* @snd_virmidi_event_input, align 4
  %112 = getelementptr inbounds %struct.snd_seq_port_callback, %struct.snd_seq_port_callback* %5, i32 0, i32 0
  store i32 %111, i32* %112, align 8
  %113 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %6, align 8
  %114 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %113, i32 0, i32 4
  store %struct.snd_seq_port_callback* %5, %struct.snd_seq_port_callback** %114, align 8
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* @SNDRV_SEQ_IOCTL_CREATE_PORT, align 4
  %117 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %6, align 8
  %118 = call i32 @snd_seq_kernel_client_ctl(i32 %115, i32 %116, %struct.snd_seq_port_info* %117)
  store i32 %118, i32* %7, align 4
  %119 = load i32, i32* %7, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %46
  %122 = load i32, i32* %4, align 4
  %123 = call i32 @snd_seq_delete_kernel_client(i32 %122)
  %124 = load %struct.snd_virmidi_dev*, %struct.snd_virmidi_dev** %3, align 8
  %125 = getelementptr inbounds %struct.snd_virmidi_dev, %struct.snd_virmidi_dev* %124, i32 0, i32 0
  store i32 -1, i32* %125, align 8
  br label %133

126:                                              ; preds = %46
  %127 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %6, align 8
  %128 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.snd_virmidi_dev*, %struct.snd_virmidi_dev** %3, align 8
  %132 = getelementptr inbounds %struct.snd_virmidi_dev, %struct.snd_virmidi_dev* %131, i32 0, i32 2
  store i32 %130, i32* %132, align 8
  store i32 0, i32* %7, align 4
  br label %133

133:                                              ; preds = %126, %121, %44, %18
  %134 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %6, align 8
  %135 = call i32 @kfree(%struct.snd_seq_port_info* %134)
  %136 = load i32, i32* %7, align 4
  store i32 %136, i32* %2, align 4
  br label %137

137:                                              ; preds = %133, %12
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

declare dso_local %struct.snd_seq_port_info* @kzalloc(i32, i32) #1

declare dso_local i32 @snd_seq_create_kernel_client(%struct.TYPE_6__*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @sprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @memset(%struct.snd_seq_port_callback*, i32, i32) #1

declare dso_local i32 @snd_seq_kernel_client_ctl(i32, i32, %struct.snd_seq_port_info*) #1

declare dso_local i32 @snd_seq_delete_kernel_client(i32) #1

declare dso_local i32 @kfree(%struct.snd_seq_port_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
