; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/rme9652/extr_hdsp.c_snd_hdsp_create_midi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/rme9652/extr_hdsp.c_snd_hdsp_create_midi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i8* }
%struct.hdsp = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_5__*, i32, i64, i64, %struct.hdsp*, i32*, i32* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__*, i32 }

@.str = private unnamed_addr constant [11 x i8] c"%s MIDI %d\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"HDSP MIDI %d\00", align 1
@SNDRV_RAWMIDI_STREAM_OUTPUT = common dso_local global i32 0, align 4
@snd_hdsp_midi_output = common dso_local global i32 0, align 4
@SNDRV_RAWMIDI_STREAM_INPUT = common dso_local global i32 0, align 4
@snd_hdsp_midi_input = common dso_local global i32 0, align 4
@SNDRV_RAWMIDI_INFO_OUTPUT = common dso_local global i32 0, align 4
@SNDRV_RAWMIDI_INFO_INPUT = common dso_local global i32 0, align 4
@SNDRV_RAWMIDI_INFO_DUPLEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_card*, %struct.hdsp*, i32)* @snd_hdsp_create_midi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_hdsp_create_midi(%struct.snd_card* %0, %struct.hdsp* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_card*, align 8
  %6 = alloca %struct.hdsp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [32 x i8], align 16
  store %struct.snd_card* %0, %struct.snd_card** %5, align 8
  store %struct.hdsp* %1, %struct.hdsp** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %11 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i32 %9, i32* %16, align 8
  %17 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %18 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %23, align 8
  %24 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %25 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 7
  store i32* null, i32** %30, align 8
  %31 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %32 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 6
  store i32* null, i32** %37, align 8
  %38 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %39 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %40 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 5
  store %struct.hdsp* %38, %struct.hdsp** %45, align 8
  %46 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %47 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 4
  store i64 0, i64* %52, align 8
  %53 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %54 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 3
  store i64 0, i64* %59, align 8
  %60 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %61 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = call i32 @spin_lock_init(i32* %66)
  %68 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %69 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %70 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  %74 = call i32 (i8*, i8*, ...) @sprintf(i8* %68, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %71, i32 %73)
  %75 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %76 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %79 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = call i64 @snd_rawmidi_new(%struct.snd_card* %75, i8* %76, i32 %77, i32 1, i32 1, %struct.TYPE_5__** %84)
  %86 = icmp slt i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %155

88:                                               ; preds = %3
  %89 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %90 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %89, i32 0, i32 0
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = sext i32 %98 to i64
  %100 = inttoptr i64 %99 to i8*
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, 1
  %103 = call i32 (i8*, i8*, ...) @sprintf(i8* %100, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %102)
  %104 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %105 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %104, i32 0, i32 0
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = load i32, i32* %7, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i64 %108
  %110 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %111 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %110, i32 0, i32 0
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = load i32, i32* %7, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 1
  store %struct.TYPE_4__* %109, %struct.TYPE_4__** %118, align 8
  %119 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %120 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %119, i32 0, i32 0
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = load i32, i32* %7, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %125, align 8
  %127 = load i32, i32* @SNDRV_RAWMIDI_STREAM_OUTPUT, align 4
  %128 = call i32 @snd_rawmidi_set_ops(%struct.TYPE_5__* %126, i32 %127, i32* @snd_hdsp_midi_output)
  %129 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %130 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %129, i32 0, i32 0
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = load i32, i32* %7, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %135, align 8
  %137 = load i32, i32* @SNDRV_RAWMIDI_STREAM_INPUT, align 4
  %138 = call i32 @snd_rawmidi_set_ops(%struct.TYPE_5__* %136, i32 %137, i32* @snd_hdsp_midi_input)
  %139 = load i32, i32* @SNDRV_RAWMIDI_INFO_OUTPUT, align 4
  %140 = load i32, i32* @SNDRV_RAWMIDI_INFO_INPUT, align 4
  %141 = or i32 %139, %140
  %142 = load i32, i32* @SNDRV_RAWMIDI_INFO_DUPLEX, align 4
  %143 = or i32 %141, %142
  %144 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %145 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %144, i32 0, i32 0
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %145, align 8
  %147 = load i32, i32* %7, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = or i32 %153, %143
  store i32 %154, i32* %152, align 8
  store i32 0, i32* %4, align 4
  br label %155

155:                                              ; preds = %88, %87
  %156 = load i32, i32* %4, align 4
  ret i32 %156
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i64 @snd_rawmidi_new(%struct.snd_card*, i8*, i32, i32, i32, %struct.TYPE_5__**) #1

declare dso_local i32 @snd_rawmidi_set_ops(%struct.TYPE_5__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
