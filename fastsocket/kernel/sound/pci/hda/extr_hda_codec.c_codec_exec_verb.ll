; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_codec_exec_verb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_codec_exec_verb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, %struct.hda_bus* }
%struct.hda_bus = type { i32, i64, %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i32 (%struct.hda_bus*, i32)*, i32 (%struct.hda_bus*, i32)*, i32 (%struct.hda_bus*)* }

@HDA_RW_NO_RESPONSE_FALLBACK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"hda_codec: resetting BUS due to fatal communication error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i32, i32, i32*)* @codec_exec_verb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @codec_exec_verb(%struct.hda_codec* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hda_codec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.hda_bus*, align 8
  %11 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %13 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %12, i32 0, i32 1
  %14 = load %struct.hda_bus*, %struct.hda_bus** %13, align 8
  store %struct.hda_bus* %14, %struct.hda_bus** %10, align 8
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %136

18:                                               ; preds = %4
  %19 = load i32*, i32** %9, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32*, i32** %9, align 8
  store i32 -1, i32* %22, align 4
  br label %23

23:                                               ; preds = %21, %18
  br label %24

24:                                               ; preds = %123, %23
  %25 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %26 = call i32 @snd_hda_power_up(%struct.hda_codec* %25)
  %27 = load %struct.hda_bus*, %struct.hda_bus** %10, align 8
  %28 = getelementptr inbounds %struct.hda_bus, %struct.hda_bus* %27, i32 0, i32 4
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @HDA_RW_NO_RESPONSE_FALLBACK, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %24
  %35 = load %struct.hda_bus*, %struct.hda_bus** %10, align 8
  %36 = getelementptr inbounds %struct.hda_bus, %struct.hda_bus* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  br label %37

37:                                               ; preds = %34, %24
  br label %38

38:                                               ; preds = %54, %37
  %39 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @trace_hda_send_cmd(%struct.hda_codec* %39, i32 %40)
  %42 = load %struct.hda_bus*, %struct.hda_bus** %10, align 8
  %43 = getelementptr inbounds %struct.hda_bus, %struct.hda_bus* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32 (%struct.hda_bus*, i32)*, i32 (%struct.hda_bus*, i32)** %44, align 8
  %46 = load %struct.hda_bus*, %struct.hda_bus** %10, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 %45(%struct.hda_bus* %46, i32 %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @EAGAIN, align 4
  %51 = sub nsw i32 0, %50
  %52 = icmp ne i32 %49, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %38
  br label %64

54:                                               ; preds = %38
  %55 = load %struct.hda_bus*, %struct.hda_bus** %10, align 8
  %56 = getelementptr inbounds %struct.hda_bus, %struct.hda_bus* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32 (%struct.hda_bus*, i32)*, i32 (%struct.hda_bus*, i32)** %57, align 8
  %59 = load %struct.hda_bus*, %struct.hda_bus** %10, align 8
  %60 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %61 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 %58(%struct.hda_bus* %59, i32 %62)
  br label %38

64:                                               ; preds = %53
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %85, label %67

67:                                               ; preds = %64
  %68 = load i32*, i32** %9, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %85

70:                                               ; preds = %67
  %71 = load %struct.hda_bus*, %struct.hda_bus** %10, align 8
  %72 = getelementptr inbounds %struct.hda_bus, %struct.hda_bus* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i32 (%struct.hda_bus*, i32)*, i32 (%struct.hda_bus*, i32)** %73, align 8
  %75 = load %struct.hda_bus*, %struct.hda_bus** %10, align 8
  %76 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %77 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 %74(%struct.hda_bus* %75, i32 %78)
  %80 = load i32*, i32** %9, align 8
  store i32 %79, i32* %80, align 4
  %81 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %82 = load i32*, i32** %9, align 8
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @trace_hda_get_response(%struct.hda_codec* %81, i32 %83)
  br label %85

85:                                               ; preds = %70, %67, %64
  %86 = load %struct.hda_bus*, %struct.hda_bus** %10, align 8
  %87 = getelementptr inbounds %struct.hda_bus, %struct.hda_bus* %86, i32 0, i32 0
  store i32 0, i32* %87, align 8
  %88 = load %struct.hda_bus*, %struct.hda_bus** %10, align 8
  %89 = getelementptr inbounds %struct.hda_bus, %struct.hda_bus* %88, i32 0, i32 4
  %90 = call i32 @mutex_unlock(i32* %89)
  %91 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %92 = call i32 @snd_hda_power_down(%struct.hda_codec* %91)
  %93 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %94 = call i64 @codec_in_pm(%struct.hda_codec* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %124, label %96

96:                                               ; preds = %85
  %97 = load i32*, i32** %9, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %124

99:                                               ; preds = %96
  %100 = load i32*, i32** %9, align 8
  %101 = load i32, i32* %100, align 4
  %102 = icmp eq i32 %101, -1
  br i1 %102, label %103, label %124

103:                                              ; preds = %99
  %104 = load %struct.hda_bus*, %struct.hda_bus** %10, align 8
  %105 = getelementptr inbounds %struct.hda_bus, %struct.hda_bus* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %124

108:                                              ; preds = %103
  %109 = load %struct.hda_bus*, %struct.hda_bus** %10, align 8
  %110 = getelementptr inbounds %struct.hda_bus, %struct.hda_bus* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %108
  %114 = call i32 @snd_printd(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %115 = load %struct.hda_bus*, %struct.hda_bus** %10, align 8
  %116 = call i32 @trace_hda_bus_reset(%struct.hda_bus* %115)
  %117 = load %struct.hda_bus*, %struct.hda_bus** %10, align 8
  %118 = getelementptr inbounds %struct.hda_bus, %struct.hda_bus* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 2
  %120 = load i32 (%struct.hda_bus*)*, i32 (%struct.hda_bus*)** %119, align 8
  %121 = load %struct.hda_bus*, %struct.hda_bus** %10, align 8
  %122 = call i32 %120(%struct.hda_bus* %121)
  br label %123

123:                                              ; preds = %113, %108
  br label %24

124:                                              ; preds = %103, %99, %96, %85
  %125 = load i32, i32* %11, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %124
  %128 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %129 = call i64 @codec_in_pm(%struct.hda_codec* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %127, %124
  %132 = load %struct.hda_bus*, %struct.hda_bus** %10, align 8
  %133 = getelementptr inbounds %struct.hda_bus, %struct.hda_bus* %132, i32 0, i32 1
  store i64 0, i64* %133, align 8
  br label %134

134:                                              ; preds = %131, %127
  %135 = load i32, i32* %11, align 4
  store i32 %135, i32* %5, align 4
  br label %136

136:                                              ; preds = %134, %17
  %137 = load i32, i32* %5, align 4
  ret i32 %137
}

declare dso_local i32 @snd_hda_power_up(%struct.hda_codec*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @trace_hda_send_cmd(%struct.hda_codec*, i32) #1

declare dso_local i32 @trace_hda_get_response(%struct.hda_codec*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @snd_hda_power_down(%struct.hda_codec*) #1

declare dso_local i64 @codec_in_pm(%struct.hda_codec*) #1

declare dso_local i32 @snd_printd(i8*) #1

declare dso_local i32 @trace_hda_bus_reset(%struct.hda_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
