; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_hwdep.c_snd_hda_create_hwdep.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_hwdep.c_snd_hda_create_hwdep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, i32, i32, i32, i32, %struct.snd_hwdep*, %struct.TYPE_3__* }
%struct.snd_hwdep = type { i8*, i32, %struct.TYPE_4__, i32, %struct.hda_codec*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"HDA Codec %d\00", align 1
@SNDRV_HWDEP_IFACE_HDA = common dso_local global i32 0, align 4
@hwdep_free = common dso_local global i32 0, align 4
@hda_hwdep_open = common dso_local global i32 0, align 4
@hda_hwdep_ioctl = common dso_local global i32 0, align 4
@hda_hwdep_ioctl_compat = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hda_create_hwdep(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca [16 x i8], align 16
  %5 = alloca %struct.snd_hwdep*, align 8
  %6 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %7 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %8 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %9 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @sprintf(i8* %7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %13 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %12, i32 0, i32 6
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %18 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %19 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @snd_hwdep_new(i32 %16, i8* %17, i32 %20, %struct.snd_hwdep** %5)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %2, align 4
  br label %68

26:                                               ; preds = %1
  %27 = load %struct.snd_hwdep*, %struct.snd_hwdep** %5, align 8
  %28 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %29 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %28, i32 0, i32 5
  store %struct.snd_hwdep* %27, %struct.snd_hwdep** %29, align 8
  %30 = load %struct.snd_hwdep*, %struct.snd_hwdep** %5, align 8
  %31 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %34 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @sprintf(i8* %32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @SNDRV_HWDEP_IFACE_HDA, align 4
  %38 = load %struct.snd_hwdep*, %struct.snd_hwdep** %5, align 8
  %39 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 8
  %40 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %41 = load %struct.snd_hwdep*, %struct.snd_hwdep** %5, align 8
  %42 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %41, i32 0, i32 4
  store %struct.hda_codec* %40, %struct.hda_codec** %42, align 8
  %43 = load i32, i32* @hwdep_free, align 4
  %44 = load %struct.snd_hwdep*, %struct.snd_hwdep** %5, align 8
  %45 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 8
  %46 = load %struct.snd_hwdep*, %struct.snd_hwdep** %5, align 8
  %47 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %46, i32 0, i32 1
  store i32 1, i32* %47, align 8
  %48 = load i32, i32* @hda_hwdep_open, align 4
  %49 = load %struct.snd_hwdep*, %struct.snd_hwdep** %5, align 8
  %50 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  store i32 %48, i32* %51, align 4
  %52 = load i32, i32* @hda_hwdep_ioctl, align 4
  %53 = load %struct.snd_hwdep*, %struct.snd_hwdep** %5, align 8
  %54 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  store i32 %52, i32* %55, align 4
  %56 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %57 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %56, i32 0, i32 4
  %58 = call i32 @mutex_init(i32* %57)
  %59 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %60 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %59, i32 0, i32 3
  %61 = call i32 @snd_array_init(i32* %60, i32 4, i32 32)
  %62 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %63 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %62, i32 0, i32 2
  %64 = call i32 @snd_array_init(i32* %63, i32 4, i32 32)
  %65 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %66 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %65, i32 0, i32 1
  %67 = call i32 @snd_array_init(i32* %66, i32 4, i32 16)
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %26, %24
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @snd_hwdep_new(i32, i8*, i32, %struct.snd_hwdep**) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @snd_array_init(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
