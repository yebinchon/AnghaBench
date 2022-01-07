; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_echoaudio_dsp.c_get_audio_meters.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_echoaudio_dsp.c_get_audio_meters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64*, i64* }

@E3G_MAX_OUTPUTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.echoaudio*, i64*)* @get_audio_meters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_audio_meters(%struct.echoaudio* %0, i64* %1) #0 {
  %3 = alloca %struct.echoaudio*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.echoaudio* %0, %struct.echoaudio** %3, align 8
  store i64* %1, i64** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %42, %2
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %11 = call i32 @num_busses_out(%struct.echoaudio* %10)
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %47

13:                                               ; preds = %8
  %14 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %15 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = load i64*, i64** %4, align 8
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %7, align 4
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds i64, i64* %23, i64 %26
  store i64 %22, i64* %27, align 8
  %28 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %29 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = load i64*, i64** %4, align 8
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %7, align 4
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i64, i64* %37, i64 %40
  store i64 %36, i64* %41, align 8
  br label %42

42:                                               ; preds = %13
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %8

47:                                               ; preds = %8
  br label %48

48:                                               ; preds = %56, %47
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %49, 32
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = load i64*, i64** %4, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  store i64 0, i64* %55, align 8
  br label %56

56:                                               ; preds = %51
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %48

59:                                               ; preds = %48
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %94, %59
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %63 = call i32 @num_busses_in(%struct.echoaudio* %62)
  %64 = icmp slt i32 %61, %63
  br i1 %64, label %65, label %99

65:                                               ; preds = %60
  %66 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %67 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i64*, i64** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = load i64*, i64** %4, align 8
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %7, align 4
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i64, i64* %75, i64 %78
  store i64 %74, i64* %79, align 8
  %80 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %81 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i64*, i64** %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = load i64*, i64** %4, align 8
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %7, align 4
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i64, i64* %89, i64 %92
  store i64 %88, i64* %93, align 8
  br label %94

94:                                               ; preds = %65
  %95 = load i32, i32* %5, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %5, align 4
  %97 = load i32, i32* %6, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %6, align 4
  br label %60

99:                                               ; preds = %60
  br label %100

100:                                              ; preds = %108, %99
  %101 = load i32, i32* %7, align 4
  %102 = icmp slt i32 %101, 64
  br i1 %102, label %103, label %111

103:                                              ; preds = %100
  %104 = load i64*, i64** %4, align 8
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i64, i64* %104, i64 %106
  store i64 0, i64* %107, align 8
  br label %108

108:                                              ; preds = %103
  %109 = load i32, i32* %7, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %7, align 4
  br label %100

111:                                              ; preds = %100
  br label %112

112:                                              ; preds = %120, %111
  %113 = load i32, i32* %7, align 4
  %114 = icmp slt i32 %113, 96
  br i1 %114, label %115, label %123

115:                                              ; preds = %112
  %116 = load i64*, i64** %4, align 8
  %117 = load i32, i32* %7, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i64, i64* %116, i64 %118
  store i64 0, i64* %119, align 8
  br label %120

120:                                              ; preds = %115
  %121 = load i32, i32* %7, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %7, align 4
  br label %112

123:                                              ; preds = %112
  ret void
}

declare dso_local i32 @num_busses_out(%struct.echoaudio*) #1

declare dso_local i32 @num_busses_in(%struct.echoaudio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
