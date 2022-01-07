; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/i2c/extr_cs8427.c_snd_cs8427_iec958_build.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/i2c/extr_cs8427.c_snd_cs8427_iec958_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_i2c_device = type { %struct.TYPE_7__*, %struct.cs8427* }
%struct.TYPE_7__ = type { i32 }
%struct.cs8427 = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { %struct.snd_kcontrol*, %struct.snd_pcm_substream* }
%struct.snd_kcontrol = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@snd_cs8427_iec958_controls = common dso_local global i32* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PLAYBACK = common dso_local global i32 0, align 4
@PCM_STREAM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_cs8427_iec958_build(%struct.snd_i2c_device* %0, %struct.snd_pcm_substream* %1, %struct.snd_pcm_substream* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_i2c_device*, align 8
  %6 = alloca %struct.snd_pcm_substream*, align 8
  %7 = alloca %struct.snd_pcm_substream*, align 8
  %8 = alloca %struct.cs8427*, align 8
  %9 = alloca %struct.snd_kcontrol*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_i2c_device* %0, %struct.snd_i2c_device** %5, align 8
  store %struct.snd_pcm_substream* %1, %struct.snd_pcm_substream** %6, align 8
  store %struct.snd_pcm_substream* %2, %struct.snd_pcm_substream** %7, align 8
  %12 = load %struct.snd_i2c_device*, %struct.snd_i2c_device** %5, align 8
  %13 = getelementptr inbounds %struct.snd_i2c_device, %struct.snd_i2c_device* %12, i32 0, i32 1
  %14 = load %struct.cs8427*, %struct.cs8427** %13, align 8
  store %struct.cs8427* %14, %struct.cs8427** %8, align 8
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %16 = icmp ne %struct.snd_pcm_substream* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %19 = icmp ne %struct.snd_pcm_substream* %18, null
  %20 = xor i1 %19, true
  br label %21

21:                                               ; preds = %17, %3
  %22 = phi i1 [ true, %3 ], [ %20, %17 ]
  %23 = zext i1 %22 to i32
  %24 = call i64 @snd_BUG_ON(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %114

29:                                               ; preds = %21
  store i32 0, i32* %10, align 4
  br label %30

30:                                               ; preds = %89, %29
  %31 = load i32, i32* %10, align 4
  %32 = load i32*, i32** @snd_cs8427_iec958_controls, align 8
  %33 = call i32 @ARRAY_SIZE(i32* %32)
  %34 = icmp ult i32 %31, %33
  br i1 %34, label %35, label %92

35:                                               ; preds = %30
  %36 = load i32*, i32** @snd_cs8427_iec958_controls, align 8
  %37 = load i32, i32* %10, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load %struct.snd_i2c_device*, %struct.snd_i2c_device** %5, align 8
  %41 = call %struct.snd_kcontrol* @snd_ctl_new1(i32* %39, %struct.snd_i2c_device* %40)
  store %struct.snd_kcontrol* %41, %struct.snd_kcontrol** %9, align 8
  %42 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %9, align 8
  %43 = icmp eq %struct.snd_kcontrol* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %35
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %114

47:                                               ; preds = %35
  %48 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %49 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %48, i32 0, i32 1
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %9, align 8
  %54 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 2
  store i32 %52, i32* %55, align 4
  %56 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %57 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %9, align 8
  %60 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  store i32 %58, i32* %61, align 4
  %62 = load %struct.snd_i2c_device*, %struct.snd_i2c_device** %5, align 8
  %63 = getelementptr inbounds %struct.snd_i2c_device, %struct.snd_i2c_device* %62, i32 0, i32 0
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %9, align 8
  %68 = call i32 @snd_ctl_add(i32 %66, %struct.snd_kcontrol* %67)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %47
  %72 = load i32, i32* %11, align 4
  store i32 %72, i32* %4, align 4
  br label %114

73:                                               ; preds = %47
  %74 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %9, align 8
  %75 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @PLAYBACK, align 4
  %79 = load i32, i32* @PCM_STREAM, align 4
  %80 = call i32 @SNDRV_CTL_NAME_IEC958(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %78, i32 %79)
  %81 = call i32 @strcmp(i32 %77, i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %73
  %84 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %9, align 8
  %85 = load %struct.cs8427*, %struct.cs8427** %8, align 8
  %86 = getelementptr inbounds %struct.cs8427, %struct.cs8427* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  store %struct.snd_kcontrol* %84, %struct.snd_kcontrol** %87, align 8
  br label %88

88:                                               ; preds = %83, %73
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %10, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %10, align 4
  br label %30

92:                                               ; preds = %30
  %93 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %94 = load %struct.cs8427*, %struct.cs8427** %8, align 8
  %95 = getelementptr inbounds %struct.cs8427, %struct.cs8427* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 1
  store %struct.snd_pcm_substream* %93, %struct.snd_pcm_substream** %96, align 8
  %97 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %98 = load %struct.cs8427*, %struct.cs8427** %8, align 8
  %99 = getelementptr inbounds %struct.cs8427, %struct.cs8427* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  store %struct.snd_pcm_substream* %97, %struct.snd_pcm_substream** %100, align 8
  %101 = load %struct.cs8427*, %struct.cs8427** %8, align 8
  %102 = getelementptr inbounds %struct.cs8427, %struct.cs8427* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %103, align 8
  %105 = icmp ne %struct.snd_kcontrol* %104, null
  %106 = xor i1 %105, true
  %107 = zext i1 %106 to i32
  %108 = call i64 @snd_BUG_ON(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %92
  %111 = load i32, i32* @EIO, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %4, align 4
  br label %114

113:                                              ; preds = %92
  store i32 0, i32* %4, align 4
  br label %114

114:                                              ; preds = %113, %110, %71, %44, %26
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local %struct.snd_kcontrol* @snd_ctl_new1(i32*, %struct.snd_i2c_device*) #1

declare dso_local i32 @snd_ctl_add(i32, %struct.snd_kcontrol*) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @SNDRV_CTL_NAME_IEC958(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
