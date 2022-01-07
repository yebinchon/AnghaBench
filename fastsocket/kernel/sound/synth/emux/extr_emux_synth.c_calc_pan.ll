; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/synth/emux/extr_emux_synth.c_calc_pan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/synth/emux/extr_emux_synth.c_calc_pan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emux_voice = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__, %struct.snd_midi_channel* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64, i32 }
%struct.snd_midi_channel = type { i32* }

@MIDI_CTL_MSB_PAN = common dso_local global i64 0, align 8
@pan_volumes = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_emux_voice*)* @calc_pan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_pan(%struct.snd_emux_voice* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_emux_voice*, align 8
  %4 = alloca %struct.snd_midi_channel*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_emux_voice* %0, %struct.snd_emux_voice** %3, align 8
  %6 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %7 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %6, i32 0, i32 4
  %8 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %7, align 8
  store %struct.snd_midi_channel* %8, %struct.snd_midi_channel** %4, align 8
  %9 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %10 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %16 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = mul nsw i32 %19, 2
  %21 = sub nsw i32 255, %20
  store i32 %21, i32* %5, align 4
  br label %47

22:                                               ; preds = %1
  %23 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %4, align 8
  %24 = getelementptr inbounds %struct.snd_midi_channel, %struct.snd_midi_channel* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* @MIDI_CTL_MSB_PAN, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %28, 64
  store i32 %29, i32* %5, align 4
  %30 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %31 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp sge i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %22
  %36 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %37 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = sub nsw i32 %39, 64
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, %40
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %35, %22
  %44 = load i32, i32* %5, align 4
  %45 = mul nsw i32 %44, 2
  %46 = sub nsw i32 127, %45
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %43, %14
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @LIMITVALUE(i32 %48, i32 0, i32 255)
  %50 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %51 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %50, i32 0, i32 2
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %79

56:                                               ; preds = %47
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %59 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %57, %60
  br i1 %61, label %62, label %78

62:                                               ; preds = %56
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %65 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* %5, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %70 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %69, i32 0, i32 1
  store i32 255, i32* %70, align 4
  br label %77

71:                                               ; preds = %62
  %72 = load i32, i32* %5, align 4
  %73 = sub nsw i32 0, %72
  %74 = and i32 %73, 255
  %75 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %76 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  br label %77

77:                                               ; preds = %71, %68
  store i32 1, i32* %2, align 4
  br label %109

78:                                               ; preds = %56
  store i32 0, i32* %2, align 4
  br label %109

79:                                               ; preds = %47
  %80 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %81 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i8**, i8*** @pan_volumes, align 8
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8*, i8** %83, i64 %85
  %87 = load i8*, i8** %86, align 8
  %88 = ptrtoint i8* %87 to i32
  %89 = icmp ne i32 %82, %88
  br i1 %89, label %90, label %108

90:                                               ; preds = %79
  %91 = load i8**, i8*** @pan_volumes, align 8
  %92 = load i32, i32* %5, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8*, i8** %91, i64 %93
  %95 = load i8*, i8** %94, align 8
  %96 = ptrtoint i8* %95 to i32
  %97 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %98 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  %99 = load i8**, i8*** @pan_volumes, align 8
  %100 = load i32, i32* %5, align 4
  %101 = sub nsw i32 255, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8*, i8** %99, i64 %102
  %104 = load i8*, i8** %103, align 8
  %105 = ptrtoint i8* %104 to i32
  %106 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %107 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  store i32 1, i32* %2, align 4
  br label %109

108:                                              ; preds = %79
  store i32 0, i32* %2, align 4
  br label %109

109:                                              ; preds = %108, %90, %78, %77
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i32 @LIMITVALUE(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
