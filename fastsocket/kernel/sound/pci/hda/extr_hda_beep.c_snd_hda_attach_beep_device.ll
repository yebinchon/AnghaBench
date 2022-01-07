; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_beep.c_snd_hda_attach_beep_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_beep.c_snd_hda_attach_beep_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i64, i32, %struct.hda_beep*, %struct.TYPE_4__* }
%struct.hda_beep = type { i32, i64, i32, i32, i32, i32, %struct.hda_codec*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"beep\00", align 1
@HDA_BEEP_MODE_OFF = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"card%d/codec#%d/beep0\00", align 1
@AC_VERB_SET_DIGI_CONVERT_2 = common dso_local global i32 0, align 4
@snd_hda_do_register = common dso_local global i32 0, align 4
@snd_hda_do_unregister = common dso_local global i32 0, align 4
@snd_hda_generate_beep = common dso_local global i32 0, align 4
@HDA_BEEP_MODE_ON = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hda_attach_beep_device(%struct.hda_codec* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hda_beep*, align 8
  %7 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %9 = call i32 @snd_hda_get_bool_hint(%struct.hda_codec* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %90

12:                                               ; preds = %2
  %13 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %14 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @HDA_BEEP_MODE_OFF, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %90

19:                                               ; preds = %12
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.hda_beep* @kzalloc(i32 48, i32 %20)
  store %struct.hda_beep* %21, %struct.hda_beep** %6, align 8
  %22 = load %struct.hda_beep*, %struct.hda_beep** %6, align 8
  %23 = icmp eq %struct.hda_beep* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %90

27:                                               ; preds = %19
  %28 = load %struct.hda_beep*, %struct.hda_beep** %6, align 8
  %29 = getelementptr inbounds %struct.hda_beep, %struct.hda_beep* %28, i32 0, i32 7
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %32 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %31, i32 0, i32 3
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %39 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @snprintf(i32 %30, i32 4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %40)
  %42 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @AC_VERB_SET_DIGI_CONVERT_2, align 4
  %45 = call i32 @snd_hda_codec_write_cache(%struct.hda_codec* %42, i32 %43, i32 0, i32 %44, i32 1)
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.hda_beep*, %struct.hda_beep** %6, align 8
  %48 = getelementptr inbounds %struct.hda_beep, %struct.hda_beep* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %50 = load %struct.hda_beep*, %struct.hda_beep** %6, align 8
  %51 = getelementptr inbounds %struct.hda_beep, %struct.hda_beep* %50, i32 0, i32 6
  store %struct.hda_codec* %49, %struct.hda_codec** %51, align 8
  %52 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %53 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.hda_beep*, %struct.hda_beep** %6, align 8
  %56 = getelementptr inbounds %struct.hda_beep, %struct.hda_beep* %55, i32 0, i32 1
  store i64 %54, i64* %56, align 8
  %57 = load %struct.hda_beep*, %struct.hda_beep** %6, align 8
  %58 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %59 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %58, i32 0, i32 2
  store %struct.hda_beep* %57, %struct.hda_beep** %59, align 8
  %60 = load %struct.hda_beep*, %struct.hda_beep** %6, align 8
  %61 = getelementptr inbounds %struct.hda_beep, %struct.hda_beep* %60, i32 0, i32 5
  %62 = call i32 @INIT_WORK(i32* %61, i32* @snd_hda_do_register)
  %63 = load %struct.hda_beep*, %struct.hda_beep** %6, align 8
  %64 = getelementptr inbounds %struct.hda_beep, %struct.hda_beep* %63, i32 0, i32 4
  %65 = call i32 @INIT_DELAYED_WORK(i32* %64, i32* @snd_hda_do_unregister)
  %66 = load %struct.hda_beep*, %struct.hda_beep** %6, align 8
  %67 = getelementptr inbounds %struct.hda_beep, %struct.hda_beep* %66, i32 0, i32 3
  %68 = call i32 @INIT_WORK(i32* %67, i32* @snd_hda_generate_beep)
  %69 = load %struct.hda_beep*, %struct.hda_beep** %6, align 8
  %70 = getelementptr inbounds %struct.hda_beep, %struct.hda_beep* %69, i32 0, i32 2
  %71 = call i32 @mutex_init(i32* %70)
  %72 = load %struct.hda_beep*, %struct.hda_beep** %6, align 8
  %73 = getelementptr inbounds %struct.hda_beep, %struct.hda_beep* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @HDA_BEEP_MODE_ON, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %89

77:                                               ; preds = %27
  %78 = load %struct.hda_beep*, %struct.hda_beep** %6, align 8
  %79 = call i32 @snd_hda_do_attach(%struct.hda_beep* %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = load %struct.hda_beep*, %struct.hda_beep** %6, align 8
  %84 = call i32 @kfree(%struct.hda_beep* %83)
  %85 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %86 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %85, i32 0, i32 2
  store %struct.hda_beep* null, %struct.hda_beep** %86, align 8
  %87 = load i32, i32* %7, align 4
  store i32 %87, i32* %3, align 4
  br label %90

88:                                               ; preds = %77
  br label %89

89:                                               ; preds = %88, %27
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %89, %82, %24, %18, %11
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @snd_hda_get_bool_hint(%struct.hda_codec*, i8*) #1

declare dso_local %struct.hda_beep* @kzalloc(i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @snd_hda_codec_write_cache(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @snd_hda_do_attach(%struct.hda_beep*) #1

declare dso_local i32 @kfree(%struct.hda_beep*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
