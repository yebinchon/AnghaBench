; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_u_audio.c_gaudio_open_snd_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_u_audio.c_gaudio_open_snd_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gaudio = type { %struct.gaudio_snd_dev, %struct.gaudio_snd_dev, %struct.gaudio_snd_dev }
%struct.gaudio_snd_dev = type { %struct.gaudio*, i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.snd_pcm_file* }
%struct.snd_pcm_file = type { i32* }

@ENODEV = common dso_local global i32 0, align 4
@fn_cntl = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"unable to open sound control device file: %s\0A\00", align 1
@fn_play = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"No such PCM playback device: %s\0A\00", align 1
@fn_cap = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"No such PCM capture device: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gaudio*)* @gaudio_open_snd_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gaudio_open_snd_dev(%struct.gaudio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gaudio*, align 8
  %4 = alloca %struct.snd_pcm_file*, align 8
  %5 = alloca %struct.gaudio_snd_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.gaudio* %0, %struct.gaudio** %3, align 8
  %7 = load %struct.gaudio*, %struct.gaudio** %3, align 8
  %8 = icmp ne %struct.gaudio* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %112

12:                                               ; preds = %1
  %13 = load %struct.gaudio*, %struct.gaudio** %3, align 8
  %14 = getelementptr inbounds %struct.gaudio, %struct.gaudio* %13, i32 0, i32 2
  store %struct.gaudio_snd_dev* %14, %struct.gaudio_snd_dev** %5, align 8
  %15 = load i32, i32* @fn_cntl, align 4
  %16 = load i32, i32* @O_RDWR, align 4
  %17 = call i8* @filp_open(i32 %15, i32 %16, i32 0)
  %18 = bitcast i8* %17 to %struct.TYPE_3__*
  %19 = load %struct.gaudio_snd_dev*, %struct.gaudio_snd_dev** %5, align 8
  %20 = getelementptr inbounds %struct.gaudio_snd_dev, %struct.gaudio_snd_dev* %19, i32 0, i32 2
  store %struct.TYPE_3__* %18, %struct.TYPE_3__** %20, align 8
  %21 = load %struct.gaudio_snd_dev*, %struct.gaudio_snd_dev** %5, align 8
  %22 = getelementptr inbounds %struct.gaudio_snd_dev, %struct.gaudio_snd_dev* %21, i32 0, i32 2
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = call i64 @IS_ERR(%struct.TYPE_3__* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %12
  %27 = load %struct.gaudio_snd_dev*, %struct.gaudio_snd_dev** %5, align 8
  %28 = getelementptr inbounds %struct.gaudio_snd_dev, %struct.gaudio_snd_dev* %27, i32 0, i32 2
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = call i32 @PTR_ERR(%struct.TYPE_3__* %29)
  store i32 %30, i32* %6, align 4
  %31 = load %struct.gaudio*, %struct.gaudio** %3, align 8
  %32 = load i32, i32* @fn_cntl, align 4
  %33 = call i32 @ERROR(%struct.gaudio* %31, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load %struct.gaudio_snd_dev*, %struct.gaudio_snd_dev** %5, align 8
  %35 = getelementptr inbounds %struct.gaudio_snd_dev, %struct.gaudio_snd_dev* %34, i32 0, i32 2
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %35, align 8
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %2, align 4
  br label %112

37:                                               ; preds = %12
  %38 = load %struct.gaudio*, %struct.gaudio** %3, align 8
  %39 = load %struct.gaudio_snd_dev*, %struct.gaudio_snd_dev** %5, align 8
  %40 = getelementptr inbounds %struct.gaudio_snd_dev, %struct.gaudio_snd_dev* %39, i32 0, i32 0
  store %struct.gaudio* %38, %struct.gaudio** %40, align 8
  %41 = load %struct.gaudio*, %struct.gaudio** %3, align 8
  %42 = getelementptr inbounds %struct.gaudio, %struct.gaudio* %41, i32 0, i32 1
  store %struct.gaudio_snd_dev* %42, %struct.gaudio_snd_dev** %5, align 8
  %43 = load i32, i32* @fn_play, align 4
  %44 = load i32, i32* @O_WRONLY, align 4
  %45 = call i8* @filp_open(i32 %43, i32 %44, i32 0)
  %46 = bitcast i8* %45 to %struct.TYPE_3__*
  %47 = load %struct.gaudio_snd_dev*, %struct.gaudio_snd_dev** %5, align 8
  %48 = getelementptr inbounds %struct.gaudio_snd_dev, %struct.gaudio_snd_dev* %47, i32 0, i32 2
  store %struct.TYPE_3__* %46, %struct.TYPE_3__** %48, align 8
  %49 = load %struct.gaudio_snd_dev*, %struct.gaudio_snd_dev** %5, align 8
  %50 = getelementptr inbounds %struct.gaudio_snd_dev, %struct.gaudio_snd_dev* %49, i32 0, i32 2
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = call i64 @IS_ERR(%struct.TYPE_3__* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %37
  %55 = load %struct.gaudio*, %struct.gaudio** %3, align 8
  %56 = load i32, i32* @fn_play, align 4
  %57 = call i32 @ERROR(%struct.gaudio* %55, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load %struct.gaudio_snd_dev*, %struct.gaudio_snd_dev** %5, align 8
  %59 = getelementptr inbounds %struct.gaudio_snd_dev, %struct.gaudio_snd_dev* %58, i32 0, i32 2
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %59, align 8
  br label %60

60:                                               ; preds = %54, %37
  %61 = load %struct.gaudio_snd_dev*, %struct.gaudio_snd_dev** %5, align 8
  %62 = getelementptr inbounds %struct.gaudio_snd_dev, %struct.gaudio_snd_dev* %61, i32 0, i32 2
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load %struct.snd_pcm_file*, %struct.snd_pcm_file** %64, align 8
  store %struct.snd_pcm_file* %65, %struct.snd_pcm_file** %4, align 8
  %66 = load %struct.snd_pcm_file*, %struct.snd_pcm_file** %4, align 8
  %67 = getelementptr inbounds %struct.snd_pcm_file, %struct.snd_pcm_file* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.gaudio_snd_dev*, %struct.gaudio_snd_dev** %5, align 8
  %70 = getelementptr inbounds %struct.gaudio_snd_dev, %struct.gaudio_snd_dev* %69, i32 0, i32 1
  store i32* %68, i32** %70, align 8
  %71 = load %struct.gaudio*, %struct.gaudio** %3, align 8
  %72 = load %struct.gaudio_snd_dev*, %struct.gaudio_snd_dev** %5, align 8
  %73 = getelementptr inbounds %struct.gaudio_snd_dev, %struct.gaudio_snd_dev* %72, i32 0, i32 0
  store %struct.gaudio* %71, %struct.gaudio** %73, align 8
  %74 = load %struct.gaudio_snd_dev*, %struct.gaudio_snd_dev** %5, align 8
  %75 = call i32 @playback_default_hw_params(%struct.gaudio_snd_dev* %74)
  %76 = load %struct.gaudio*, %struct.gaudio** %3, align 8
  %77 = getelementptr inbounds %struct.gaudio, %struct.gaudio* %76, i32 0, i32 0
  store %struct.gaudio_snd_dev* %77, %struct.gaudio_snd_dev** %5, align 8
  %78 = load i32, i32* @fn_cap, align 4
  %79 = load i32, i32* @O_RDONLY, align 4
  %80 = call i8* @filp_open(i32 %78, i32 %79, i32 0)
  %81 = bitcast i8* %80 to %struct.TYPE_3__*
  %82 = load %struct.gaudio_snd_dev*, %struct.gaudio_snd_dev** %5, align 8
  %83 = getelementptr inbounds %struct.gaudio_snd_dev, %struct.gaudio_snd_dev* %82, i32 0, i32 2
  store %struct.TYPE_3__* %81, %struct.TYPE_3__** %83, align 8
  %84 = load %struct.gaudio_snd_dev*, %struct.gaudio_snd_dev** %5, align 8
  %85 = getelementptr inbounds %struct.gaudio_snd_dev, %struct.gaudio_snd_dev* %84, i32 0, i32 2
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = call i64 @IS_ERR(%struct.TYPE_3__* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %60
  %90 = load %struct.gaudio*, %struct.gaudio** %3, align 8
  %91 = load i32, i32* @fn_cap, align 4
  %92 = call i32 @ERROR(%struct.gaudio* %90, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %91)
  %93 = load %struct.gaudio_snd_dev*, %struct.gaudio_snd_dev** %5, align 8
  %94 = getelementptr inbounds %struct.gaudio_snd_dev, %struct.gaudio_snd_dev* %93, i32 0, i32 1
  store i32* null, i32** %94, align 8
  %95 = load %struct.gaudio_snd_dev*, %struct.gaudio_snd_dev** %5, align 8
  %96 = getelementptr inbounds %struct.gaudio_snd_dev, %struct.gaudio_snd_dev* %95, i32 0, i32 0
  store %struct.gaudio* null, %struct.gaudio** %96, align 8
  br label %111

97:                                               ; preds = %60
  %98 = load %struct.gaudio_snd_dev*, %struct.gaudio_snd_dev** %5, align 8
  %99 = getelementptr inbounds %struct.gaudio_snd_dev, %struct.gaudio_snd_dev* %98, i32 0, i32 2
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load %struct.snd_pcm_file*, %struct.snd_pcm_file** %101, align 8
  store %struct.snd_pcm_file* %102, %struct.snd_pcm_file** %4, align 8
  %103 = load %struct.snd_pcm_file*, %struct.snd_pcm_file** %4, align 8
  %104 = getelementptr inbounds %struct.snd_pcm_file, %struct.snd_pcm_file* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load %struct.gaudio_snd_dev*, %struct.gaudio_snd_dev** %5, align 8
  %107 = getelementptr inbounds %struct.gaudio_snd_dev, %struct.gaudio_snd_dev* %106, i32 0, i32 1
  store i32* %105, i32** %107, align 8
  %108 = load %struct.gaudio*, %struct.gaudio** %3, align 8
  %109 = load %struct.gaudio_snd_dev*, %struct.gaudio_snd_dev** %5, align 8
  %110 = getelementptr inbounds %struct.gaudio_snd_dev, %struct.gaudio_snd_dev* %109, i32 0, i32 0
  store %struct.gaudio* %108, %struct.gaudio** %110, align 8
  br label %111

111:                                              ; preds = %97, %89
  store i32 0, i32* %2, align 4
  br label %112

112:                                              ; preds = %111, %26, %9
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i8* @filp_open(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_3__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_3__*) #1

declare dso_local i32 @ERROR(%struct.gaudio*, i8*, i32) #1

declare dso_local i32 @playback_default_hw_params(%struct.gaudio_snd_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
