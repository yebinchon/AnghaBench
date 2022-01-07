; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sb_audio.c_sbpro_audio_prepare_for_output.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sb_audio.c_sbpro_audio_prepare_for_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_11__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_11__ = type { i64, i64, i32, i64, i32, i32, i64, i32 }

@audio_devs = common dso_local global %struct.TYPE_12__** null, align 8
@MDL_SBPRO = common dso_local global i64 0, align 8
@DSP_CMD_SPKON = common dso_local global i32 0, align 4
@MDL_JAZZ = common dso_local global i64 0, align 8
@MDL_SMW = common dso_local global i64 0, align 8
@AFMT_S16_LE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @sbpro_audio_prepare_for_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbpro_audio_prepare_for_output(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @audio_devs, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %11, i64 %13
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %7, align 8
  store i8 0, i8* %10, align 1
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sge i64 %20, 0
  br i1 %21, label %22, label %61

22:                                               ; preds = %3
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %25, %28
  br i1 %29, label %30, label %61

30:                                               ; preds = %22
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 16
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  br label %43

39:                                               ; preds = %30
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  br label %43

43:                                               ; preds = %39, %35
  %44 = phi i64 [ %38, %35 ], [ %42, %39 ]
  %45 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @audio_devs, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %45, i64 %47
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  store i64 %44, i64* %52, align 8
  %53 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @audio_devs, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %53, i64 %55
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  store i64 %44, i64* %60, align 8
  br label %61

61:                                               ; preds = %43, %22, %3
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @MDL_SBPRO, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %61
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = icmp eq i32 %71, 2
  %73 = zext i1 %72 to i32
  %74 = call i32 @sb_mixer_set_stereo(%struct.TYPE_11__* %68, i32 %73)
  br label %75

75:                                               ; preds = %67, %61
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 7
  %78 = load i64, i64* %8, align 8
  %79 = call i32 @spin_lock_irqsave(i32* %77, i64 %78)
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %81 = call i64 @sb_dsp_command(%struct.TYPE_11__* %80, i32 64)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %75
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @sb_dsp_command(%struct.TYPE_11__* %84, i32 %87)
  br label %89

89:                                               ; preds = %83, %75
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %91 = load i32, i32* @DSP_CMD_SPKON, align 4
  %92 = call i64 @sb_dsp_command(%struct.TYPE_11__* %90, i32 %91)
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @MDL_JAZZ, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %104, label %98

98:                                               ; preds = %89
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @MDL_SMW, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %133

104:                                              ; preds = %98, %89
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @AFMT_S16_LE, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %104
  store i8 4, i8* %10, align 1
  br label %111

111:                                              ; preds = %110, %104
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = icmp eq i32 %114, 1
  br i1 %115, label %116, label %122

116:                                              ; preds = %111
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %118 = load i8, i8* %10, align 1
  %119 = zext i8 %118 to i32
  %120 = or i32 160, %119
  %121 = call i64 @sb_dsp_command(%struct.TYPE_11__* %117, i32 %120)
  br label %128

122:                                              ; preds = %111
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %124 = load i8, i8* %10, align 1
  %125 = zext i8 %124 to i32
  %126 = or i32 168, %125
  %127 = call i64 @sb_dsp_command(%struct.TYPE_11__* %123, i32 %126)
  br label %128

128:                                              ; preds = %122, %116
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 7
  %131 = load i64, i64* %8, align 8
  %132 = call i32 @spin_unlock_irqrestore(i32* %130, i64 %131)
  br label %158

133:                                              ; preds = %98
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 7
  %136 = load i64, i64* %8, align 8
  %137 = call i32 @spin_unlock_irqrestore(i32* %135, i64 %136)
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %139 = call zeroext i8 @sb_getmixer(%struct.TYPE_11__* %138, i32 14)
  store i8 %139, i8* %9, align 1
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 8
  %143 = icmp eq i32 %142, 1
  br i1 %143, label %144, label %149

144:                                              ; preds = %133
  %145 = load i8, i8* %9, align 1
  %146 = zext i8 %145 to i32
  %147 = and i32 %146, -3
  %148 = trunc i32 %147 to i8
  store i8 %148, i8* %9, align 1
  br label %154

149:                                              ; preds = %133
  %150 = load i8, i8* %9, align 1
  %151 = zext i8 %150 to i32
  %152 = or i32 %151, 2
  %153 = trunc i32 %152 to i8
  store i8 %153, i8* %9, align 1
  br label %154

154:                                              ; preds = %149, %144
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %156 = load i8, i8* %9, align 1
  %157 = call i32 @sb_setmixer(%struct.TYPE_11__* %155, i32 14, i8 zeroext %156)
  br label %158

158:                                              ; preds = %154, %128
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 6
  store i64 0, i64* %160, align 8
  ret i32 0
}

declare dso_local i32 @sb_mixer_set_stereo(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @sb_dsp_command(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local zeroext i8 @sb_getmixer(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @sb_setmixer(%struct.TYPE_11__*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
