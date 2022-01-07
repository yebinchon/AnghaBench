; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_mixer.c_get_term_name.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_mixer.c_get_term_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iterm_name_combo = type { i32, i8* }
%struct.mixer_build = type { i32 }
%struct.usb_audio_term = type { i32, i32, i64 }

@.str = private unnamed_addr constant [9 x i8] c"Selector\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Process Unit\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Ext Unit\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Mixer\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Unit %d\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"PCM\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"Mic\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"Headset\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"Phone\00", align 1
@iterm_names = common dso_local global %struct.iterm_name_combo* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mixer_build*, %struct.usb_audio_term*, i8*, i32, i32)* @get_term_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_term_name(%struct.mixer_build* %0, %struct.usb_audio_term* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mixer_build*, align 8
  %8 = alloca %struct.usb_audio_term*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.iterm_name_combo*, align 8
  store %struct.mixer_build* %0, %struct.mixer_build** %7, align 8
  store %struct.usb_audio_term* %1, %struct.usb_audio_term** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load %struct.usb_audio_term*, %struct.usb_audio_term** %8, align 8
  %14 = getelementptr inbounds %struct.usb_audio_term, %struct.usb_audio_term* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %5
  %18 = load %struct.mixer_build*, %struct.mixer_build** %7, align 8
  %19 = load %struct.usb_audio_term*, %struct.usb_audio_term** %8, align 8
  %20 = getelementptr inbounds %struct.usb_audio_term, %struct.usb_audio_term* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @snd_usb_copy_string_desc(%struct.mixer_build* %18, i64 %21, i8* %22, i32 %23)
  store i32 %24, i32* %6, align 4
  br label %105

25:                                               ; preds = %5
  %26 = load %struct.usb_audio_term*, %struct.usb_audio_term** %8, align 8
  %27 = getelementptr inbounds %struct.usb_audio_term, %struct.usb_audio_term* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = ashr i32 %28, 16
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %58

31:                                               ; preds = %25
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 0, i32* %6, align 4
  br label %105

35:                                               ; preds = %31
  %36 = load %struct.usb_audio_term*, %struct.usb_audio_term** %8, align 8
  %37 = getelementptr inbounds %struct.usb_audio_term, %struct.usb_audio_term* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = ashr i32 %38, 16
  switch i32 %39, label %52 [
    i32 128, label %40
    i32 130, label %43
    i32 131, label %46
    i32 129, label %49
  ]

40:                                               ; preds = %35
  %41 = load i8*, i8** %9, align 8
  %42 = call i32 @strcpy(i8* %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 8, i32* %6, align 4
  br label %105

43:                                               ; preds = %35
  %44 = load i8*, i8** %9, align 8
  %45 = call i32 @strcpy(i8* %44, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 12, i32* %6, align 4
  br label %105

46:                                               ; preds = %35
  %47 = load i8*, i8** %9, align 8
  %48 = call i32 @strcpy(i8* %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i32 8, i32* %6, align 4
  br label %105

49:                                               ; preds = %35
  %50 = load i8*, i8** %9, align 8
  %51 = call i32 @strcpy(i8* %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i32 5, i32* %6, align 4
  br label %105

52:                                               ; preds = %35
  %53 = load i8*, i8** %9, align 8
  %54 = load %struct.usb_audio_term*, %struct.usb_audio_term** %8, align 8
  %55 = getelementptr inbounds %struct.usb_audio_term, %struct.usb_audio_term* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @sprintf(i8* %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %56)
  store i32 %57, i32* %6, align 4
  br label %105

58:                                               ; preds = %25
  %59 = load %struct.usb_audio_term*, %struct.usb_audio_term** %8, align 8
  %60 = getelementptr inbounds %struct.usb_audio_term, %struct.usb_audio_term* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = and i32 %61, 65280
  switch i32 %62, label %75 [
    i32 256, label %63
    i32 512, label %66
    i32 1024, label %69
    i32 1280, label %72
  ]

63:                                               ; preds = %58
  %64 = load i8*, i8** %9, align 8
  %65 = call i32 @strcpy(i8* %64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  store i32 3, i32* %6, align 4
  br label %105

66:                                               ; preds = %58
  %67 = load i8*, i8** %9, align 8
  %68 = call i32 @strcpy(i8* %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  store i32 3, i32* %6, align 4
  br label %105

69:                                               ; preds = %58
  %70 = load i8*, i8** %9, align 8
  %71 = call i32 @strcpy(i8* %70, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  store i32 7, i32* %6, align 4
  br label %105

72:                                               ; preds = %58
  %73 = load i8*, i8** %9, align 8
  %74 = call i32 @strcpy(i8* %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  store i32 5, i32* %6, align 4
  br label %105

75:                                               ; preds = %58
  %76 = load %struct.iterm_name_combo*, %struct.iterm_name_combo** @iterm_names, align 8
  store %struct.iterm_name_combo* %76, %struct.iterm_name_combo** %12, align 8
  br label %77

77:                                               ; preds = %101, %75
  %78 = load %struct.iterm_name_combo*, %struct.iterm_name_combo** %12, align 8
  %79 = getelementptr inbounds %struct.iterm_name_combo, %struct.iterm_name_combo* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %104

82:                                               ; preds = %77
  %83 = load %struct.iterm_name_combo*, %struct.iterm_name_combo** %12, align 8
  %84 = getelementptr inbounds %struct.iterm_name_combo, %struct.iterm_name_combo* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.usb_audio_term*, %struct.usb_audio_term** %8, align 8
  %87 = getelementptr inbounds %struct.usb_audio_term, %struct.usb_audio_term* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp eq i32 %85, %88
  br i1 %89, label %90, label %100

90:                                               ; preds = %82
  %91 = load i8*, i8** %9, align 8
  %92 = load %struct.iterm_name_combo*, %struct.iterm_name_combo** %12, align 8
  %93 = getelementptr inbounds %struct.iterm_name_combo, %struct.iterm_name_combo* %92, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 @strcpy(i8* %91, i8* %94)
  %96 = load %struct.iterm_name_combo*, %struct.iterm_name_combo** %12, align 8
  %97 = getelementptr inbounds %struct.iterm_name_combo, %struct.iterm_name_combo* %96, i32 0, i32 1
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @strlen(i8* %98)
  store i32 %99, i32* %6, align 4
  br label %105

100:                                              ; preds = %82
  br label %101

101:                                              ; preds = %100
  %102 = load %struct.iterm_name_combo*, %struct.iterm_name_combo** %12, align 8
  %103 = getelementptr inbounds %struct.iterm_name_combo, %struct.iterm_name_combo* %102, i32 1
  store %struct.iterm_name_combo* %103, %struct.iterm_name_combo** %12, align 8
  br label %77

104:                                              ; preds = %77
  store i32 0, i32* %6, align 4
  br label %105

105:                                              ; preds = %104, %90, %72, %69, %66, %63, %52, %49, %46, %43, %40, %34, %17
  %106 = load i32, i32* %6, align 4
  ret i32 %106
}

declare dso_local i32 @snd_usb_copy_string_desc(%struct.mixer_build*, i64, i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
