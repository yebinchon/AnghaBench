; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_mixer_oss.c_snd_mixer_oss_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_mixer_oss.c_snd_mixer_oss_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.snd_mixer_oss_file* }
%struct.snd_mixer_oss_file = type { i32*, %struct.snd_card* }
%struct.snd_card = type { i32 }
%struct.TYPE_2__ = type { i32* }

@SNDRV_OSS_DEVICE_TYPE_MIXER = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @snd_mixer_oss_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_mixer_oss_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.snd_card*, align 8
  %7 = alloca %struct.snd_mixer_oss_file*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call i32 @nonseekable_open(%struct.inode* %9, %struct.file* %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %3, align 4
  br label %81

16:                                               ; preds = %2
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = call i32 @iminor(%struct.inode* %17)
  %19 = load i32, i32* @SNDRV_OSS_DEVICE_TYPE_MIXER, align 4
  %20 = call %struct.snd_card* @snd_lookup_oss_minor_data(i32 %18, i32 %19)
  store %struct.snd_card* %20, %struct.snd_card** %6, align 8
  %21 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %22 = icmp eq %struct.snd_card* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %81

26:                                               ; preds = %16
  %27 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %28 = call %struct.TYPE_2__* @card_oss(%struct.snd_card* %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %81

35:                                               ; preds = %26
  %36 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %37 = load %struct.file*, %struct.file** %5, align 8
  %38 = call i32 @snd_card_file_add(%struct.snd_card* %36, %struct.file* %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %3, align 4
  br label %81

43:                                               ; preds = %35
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call %struct.snd_mixer_oss_file* @kzalloc(i32 16, i32 %44)
  store %struct.snd_mixer_oss_file* %45, %struct.snd_mixer_oss_file** %7, align 8
  %46 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %7, align 8
  %47 = icmp eq %struct.snd_mixer_oss_file* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %50 = load %struct.file*, %struct.file** %5, align 8
  %51 = call i32 @snd_card_file_remove(%struct.snd_card* %49, %struct.file* %50)
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %81

54:                                               ; preds = %43
  %55 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %56 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %7, align 8
  %57 = getelementptr inbounds %struct.snd_mixer_oss_file, %struct.snd_mixer_oss_file* %56, i32 0, i32 1
  store %struct.snd_card* %55, %struct.snd_card** %57, align 8
  %58 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %59 = call %struct.TYPE_2__* @card_oss(%struct.snd_card* %58)
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %7, align 8
  %63 = getelementptr inbounds %struct.snd_mixer_oss_file, %struct.snd_mixer_oss_file* %62, i32 0, i32 0
  store i32* %61, i32** %63, align 8
  %64 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %7, align 8
  %65 = load %struct.file*, %struct.file** %5, align 8
  %66 = getelementptr inbounds %struct.file, %struct.file* %65, i32 0, i32 0
  store %struct.snd_mixer_oss_file* %64, %struct.snd_mixer_oss_file** %66, align 8
  %67 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %68 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @try_module_get(i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %80, label %72

72:                                               ; preds = %54
  %73 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %7, align 8
  %74 = call i32 @kfree(%struct.snd_mixer_oss_file* %73)
  %75 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %76 = load %struct.file*, %struct.file** %5, align 8
  %77 = call i32 @snd_card_file_remove(%struct.snd_card* %75, %struct.file* %76)
  %78 = load i32, i32* @EFAULT, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %81

80:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %80, %72, %48, %41, %32, %23, %14
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @nonseekable_open(%struct.inode*, %struct.file*) #1

declare dso_local %struct.snd_card* @snd_lookup_oss_minor_data(i32, i32) #1

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local %struct.TYPE_2__* @card_oss(%struct.snd_card*) #1

declare dso_local i32 @snd_card_file_add(%struct.snd_card*, %struct.file*) #1

declare dso_local %struct.snd_mixer_oss_file* @kzalloc(i32, i32) #1

declare dso_local i32 @snd_card_file_remove(%struct.snd_card*, %struct.file*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @kfree(%struct.snd_mixer_oss_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
