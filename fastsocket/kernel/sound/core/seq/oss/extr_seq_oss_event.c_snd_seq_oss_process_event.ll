; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/oss/extr_seq_oss_event.c_snd_seq_oss_process_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/oss/extr_seq_oss_event.c_snd_seq_oss_process_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_oss_devinfo = type { i32, i32 }
%union.evrec = type { i32*, [8 x i8] }
%struct.snd_seq_event = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@SNDRV_SEQ_OSS_MODE_MUSIC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SNDRV_SEQ_OSS_FILE_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_seq_oss_process_event(%struct.seq_oss_devinfo* %0, %union.evrec* %1, %struct.snd_seq_event* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.seq_oss_devinfo*, align 8
  %6 = alloca %union.evrec*, align 8
  %7 = alloca %struct.snd_seq_event*, align 8
  store %struct.seq_oss_devinfo* %0, %struct.seq_oss_devinfo** %5, align 8
  store %union.evrec* %1, %union.evrec** %6, align 8
  store %struct.snd_seq_event* %2, %struct.snd_seq_event** %7, align 8
  %8 = load %union.evrec*, %union.evrec** %6, align 8
  %9 = bitcast %union.evrec* %8 to %struct.TYPE_4__*
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %133 [
    i32 130, label %12
    i32 135, label %17
    i32 136, label %22
    i32 132, label %27
    i32 134, label %32
    i32 133, label %37
    i32 129, label %49
    i32 131, label %98
    i32 128, label %112
  ]

12:                                               ; preds = %3
  %13 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %5, align 8
  %14 = load %union.evrec*, %union.evrec** %6, align 8
  %15 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %16 = call i32 @extended_event(%struct.seq_oss_devinfo* %13, %union.evrec* %14, %struct.snd_seq_event* %15)
  store i32 %16, i32* %4, align 4
  br label %150

17:                                               ; preds = %3
  %18 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %5, align 8
  %19 = load %union.evrec*, %union.evrec** %6, align 8
  %20 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %21 = call i32 @chn_voice_event(%struct.seq_oss_devinfo* %18, %union.evrec* %19, %struct.snd_seq_event* %20)
  store i32 %21, i32* %4, align 4
  br label %150

22:                                               ; preds = %3
  %23 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %5, align 8
  %24 = load %union.evrec*, %union.evrec** %6, align 8
  %25 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %26 = call i32 @chn_common_event(%struct.seq_oss_devinfo* %23, %union.evrec* %24, %struct.snd_seq_event* %25)
  store i32 %26, i32* %4, align 4
  br label %150

27:                                               ; preds = %3
  %28 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %5, align 8
  %29 = load %union.evrec*, %union.evrec** %6, align 8
  %30 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %31 = call i32 @timing_event(%struct.seq_oss_devinfo* %28, %union.evrec* %29, %struct.snd_seq_event* %30)
  store i32 %31, i32* %4, align 4
  br label %150

32:                                               ; preds = %3
  %33 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %5, align 8
  %34 = load %union.evrec*, %union.evrec** %6, align 8
  %35 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %36 = call i32 @local_event(%struct.seq_oss_devinfo* %33, %union.evrec* %34, %struct.snd_seq_event* %35)
  store i32 %36, i32* %4, align 4
  br label %150

37:                                               ; preds = %3
  %38 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %5, align 8
  %39 = load %union.evrec*, %union.evrec** %6, align 8
  %40 = bitcast %union.evrec* %39 to %struct.TYPE_3__*
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %union.evrec*, %union.evrec** %6, align 8
  %44 = bitcast %union.evrec* %43 to %struct.TYPE_3__*
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %48 = call i32 @snd_seq_oss_synth_sysex(%struct.seq_oss_devinfo* %38, i32 %42, i32 %46, %struct.snd_seq_event* %47)
  store i32 %48, i32* %4, align 4
  br label %150

49:                                               ; preds = %3
  %50 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %5, align 8
  %51 = getelementptr inbounds %struct.seq_oss_devinfo, %struct.seq_oss_devinfo* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @SNDRV_SEQ_OSS_MODE_MUSIC, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %150

58:                                               ; preds = %49
  %59 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %5, align 8
  %60 = getelementptr inbounds %struct.seq_oss_devinfo, %struct.seq_oss_devinfo* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @is_write_mode(i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %58
  br label %147

65:                                               ; preds = %58
  %66 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %5, align 8
  %67 = load %union.evrec*, %union.evrec** %6, align 8
  %68 = bitcast %union.evrec* %67 to %struct.TYPE_4__*
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @SNDRV_SEQ_OSS_FILE_WRITE, align 4
  %72 = call i32 @snd_seq_oss_midi_open(%struct.seq_oss_devinfo* %66, i32 %70, i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %65
  br label %147

75:                                               ; preds = %65
  %76 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %5, align 8
  %77 = load %union.evrec*, %union.evrec** %6, align 8
  %78 = bitcast %union.evrec* %77 to %struct.TYPE_4__*
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @snd_seq_oss_midi_filemode(%struct.seq_oss_devinfo* %76, i32 %80)
  %82 = load i32, i32* @SNDRV_SEQ_OSS_FILE_WRITE, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %97

85:                                               ; preds = %75
  %86 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %5, align 8
  %87 = load %union.evrec*, %union.evrec** %6, align 8
  %88 = bitcast %union.evrec* %87 to %struct.TYPE_4__*
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load %union.evrec*, %union.evrec** %6, align 8
  %92 = bitcast %union.evrec* %91 to %struct.TYPE_4__*
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %96 = call i32 @snd_seq_oss_midi_putc(%struct.seq_oss_devinfo* %86, i32 %90, i32 %94, %struct.snd_seq_event* %95)
  store i32 %96, i32* %4, align 4
  br label %150

97:                                               ; preds = %75
  br label %147

98:                                               ; preds = %3
  %99 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %5, align 8
  %100 = getelementptr inbounds %struct.seq_oss_devinfo, %struct.seq_oss_devinfo* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @SNDRV_SEQ_OSS_MODE_MUSIC, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %98
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %4, align 4
  br label %150

107:                                              ; preds = %98
  %108 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %5, align 8
  %109 = load %union.evrec*, %union.evrec** %6, align 8
  %110 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %111 = call i32 @set_echo_event(%struct.seq_oss_devinfo* %108, %union.evrec* %109, %struct.snd_seq_event* %110)
  store i32 %111, i32* %4, align 4
  br label %150

112:                                              ; preds = %3
  %113 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %5, align 8
  %114 = getelementptr inbounds %struct.seq_oss_devinfo, %struct.seq_oss_devinfo* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @SNDRV_SEQ_OSS_MODE_MUSIC, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %112
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %4, align 4
  br label %150

121:                                              ; preds = %112
  %122 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %5, align 8
  %123 = load %union.evrec*, %union.evrec** %6, align 8
  %124 = bitcast %union.evrec* %123 to i32**
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 1
  %127 = load i32, i32* %126, align 4
  %128 = load %union.evrec*, %union.evrec** %6, align 8
  %129 = bitcast %union.evrec* %128 to i32**
  %130 = load i32*, i32** %129, align 8
  %131 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %132 = call i32 @snd_seq_oss_synth_raw_event(%struct.seq_oss_devinfo* %122, i32 %127, i32* %130, %struct.snd_seq_event* %131)
  store i32 %132, i32* %4, align 4
  br label %150

133:                                              ; preds = %3
  %134 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %5, align 8
  %135 = getelementptr inbounds %struct.seq_oss_devinfo, %struct.seq_oss_devinfo* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @SNDRV_SEQ_OSS_MODE_MUSIC, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %133
  %140 = load i32, i32* @EINVAL, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %4, align 4
  br label %150

142:                                              ; preds = %133
  %143 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %5, align 8
  %144 = load %union.evrec*, %union.evrec** %6, align 8
  %145 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %146 = call i32 @old_event(%struct.seq_oss_devinfo* %143, %union.evrec* %144, %struct.snd_seq_event* %145)
  store i32 %146, i32* %4, align 4
  br label %150

147:                                              ; preds = %97, %74, %64
  %148 = load i32, i32* @EINVAL, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %4, align 4
  br label %150

150:                                              ; preds = %147, %142, %139, %121, %118, %107, %104, %85, %55, %37, %32, %27, %22, %17, %12
  %151 = load i32, i32* %4, align 4
  ret i32 %151
}

declare dso_local i32 @extended_event(%struct.seq_oss_devinfo*, %union.evrec*, %struct.snd_seq_event*) #1

declare dso_local i32 @chn_voice_event(%struct.seq_oss_devinfo*, %union.evrec*, %struct.snd_seq_event*) #1

declare dso_local i32 @chn_common_event(%struct.seq_oss_devinfo*, %union.evrec*, %struct.snd_seq_event*) #1

declare dso_local i32 @timing_event(%struct.seq_oss_devinfo*, %union.evrec*, %struct.snd_seq_event*) #1

declare dso_local i32 @local_event(%struct.seq_oss_devinfo*, %union.evrec*, %struct.snd_seq_event*) #1

declare dso_local i32 @snd_seq_oss_synth_sysex(%struct.seq_oss_devinfo*, i32, i32, %struct.snd_seq_event*) #1

declare dso_local i32 @is_write_mode(i32) #1

declare dso_local i32 @snd_seq_oss_midi_open(%struct.seq_oss_devinfo*, i32, i32) #1

declare dso_local i32 @snd_seq_oss_midi_filemode(%struct.seq_oss_devinfo*, i32) #1

declare dso_local i32 @snd_seq_oss_midi_putc(%struct.seq_oss_devinfo*, i32, i32, %struct.snd_seq_event*) #1

declare dso_local i32 @set_echo_event(%struct.seq_oss_devinfo*, %union.evrec*, %struct.snd_seq_event*) #1

declare dso_local i32 @snd_seq_oss_synth_raw_event(%struct.seq_oss_devinfo*, i32, i32*, %struct.snd_seq_event*) #1

declare dso_local i32 @old_event(%struct.seq_oss_devinfo*, %union.evrec*, %struct.snd_seq_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
