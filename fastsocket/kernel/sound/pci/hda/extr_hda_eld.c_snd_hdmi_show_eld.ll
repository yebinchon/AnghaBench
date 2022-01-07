; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_eld.c_snd_hdmi_show_eld.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_eld.c_snd_hdmi_show_eld.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parsed_hdmi_eld = type { i64, i32, i64, i64, i32 }

@SND_PR_VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"HDMI: detected monitor %s at connection type %s\0A\00", align 1
@eld_connection_type_names = common dso_local global i32* null, align 8
@SND_PRINT_CHANNEL_ALLOCATION_ADVISED_BUFSIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"HDMI: available speakers:%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_hdmi_show_eld(%struct.parsed_hdmi_eld* %0) #0 {
  %2 = alloca %struct.parsed_hdmi_eld*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.parsed_hdmi_eld* %0, %struct.parsed_hdmi_eld** %2, align 8
  %6 = load i32, i32* @SND_PR_VERBOSE, align 4
  %7 = load %struct.parsed_hdmi_eld*, %struct.parsed_hdmi_eld** %2, align 8
  %8 = getelementptr inbounds %struct.parsed_hdmi_eld, %struct.parsed_hdmi_eld* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  %10 = sext i32 %9 to i64
  %11 = inttoptr i64 %10 to i8*
  %12 = load i32*, i32** @eld_connection_type_names, align 8
  %13 = load %struct.parsed_hdmi_eld*, %struct.parsed_hdmi_eld** %2, align 8
  %14 = getelementptr inbounds %struct.parsed_hdmi_eld, %struct.parsed_hdmi_eld* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds i32, i32* %12, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = call i32 (i32, i8*, i8*, ...) @_snd_printd(i32 %6, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8* %11, i32 %17)
  %19 = load %struct.parsed_hdmi_eld*, %struct.parsed_hdmi_eld** %2, align 8
  %20 = getelementptr inbounds %struct.parsed_hdmi_eld, %struct.parsed_hdmi_eld* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %1
  %24 = load i32, i32* @SND_PRINT_CHANNEL_ALLOCATION_ADVISED_BUFSIZE, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %4, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %5, align 8
  %28 = load %struct.parsed_hdmi_eld*, %struct.parsed_hdmi_eld** %2, align 8
  %29 = getelementptr inbounds %struct.parsed_hdmi_eld, %struct.parsed_hdmi_eld* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %25 to i32
  %32 = call i32 @snd_print_channel_allocation(i64 %30, i8* %27, i32 %31)
  %33 = load i32, i32* @SND_PR_VERBOSE, align 4
  %34 = call i32 (i32, i8*, i8*, ...) @_snd_printd(i32 %33, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  %35 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %35)
  br label %36

36:                                               ; preds = %23, %1
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %51, %36
  %38 = load i32, i32* %3, align 4
  %39 = load %struct.parsed_hdmi_eld*, %struct.parsed_hdmi_eld** %2, align 8
  %40 = getelementptr inbounds %struct.parsed_hdmi_eld, %struct.parsed_hdmi_eld* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %37
  %44 = load %struct.parsed_hdmi_eld*, %struct.parsed_hdmi_eld** %2, align 8
  %45 = getelementptr inbounds %struct.parsed_hdmi_eld, %struct.parsed_hdmi_eld* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %46, %48
  %50 = call i32 @hdmi_show_short_audio_desc(i64 %49)
  br label %51

51:                                               ; preds = %43
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %3, align 4
  br label %37

54:                                               ; preds = %37
  ret void
}

declare dso_local i32 @_snd_printd(i32, i8*, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snd_print_channel_allocation(i64, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @hdmi_show_short_audio_desc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
