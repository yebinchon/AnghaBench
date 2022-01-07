; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_hdmi.c_hdmi_add_cvt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_hdmi.c_hdmi_add_cvt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hdmi_spec* }
%struct.hdmi_spec = type { i64, i8**, i32 }
%struct.hdmi_spec_per_cvt = type { i32, i32, i32, i32, i32, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i8*)* @hdmi_add_cvt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_add_cvt(%struct.hda_codec* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hdmi_spec*, align 8
  %7 = alloca %struct.hdmi_spec_per_cvt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %11 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %10, i32 0, i32 0
  %12 = load %struct.hdmi_spec*, %struct.hdmi_spec** %11, align 8
  store %struct.hdmi_spec* %12, %struct.hdmi_spec** %6, align 8
  %13 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @get_wcaps(%struct.hda_codec* %13, i8* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @get_wcaps_channels(i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.hdmi_spec*, %struct.hdmi_spec** %6, align 8
  %19 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %18, i32 0, i32 2
  %20 = call %struct.hdmi_spec_per_cvt* @snd_array_new(i32* %19)
  store %struct.hdmi_spec_per_cvt* %20, %struct.hdmi_spec_per_cvt** %7, align 8
  %21 = load %struct.hdmi_spec_per_cvt*, %struct.hdmi_spec_per_cvt** %7, align 8
  %22 = icmp ne %struct.hdmi_spec_per_cvt* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %75

26:                                               ; preds = %2
  %27 = load i8*, i8** %5, align 8
  %28 = load %struct.hdmi_spec_per_cvt*, %struct.hdmi_spec_per_cvt** %7, align 8
  %29 = getelementptr inbounds %struct.hdmi_spec_per_cvt, %struct.hdmi_spec_per_cvt* %28, i32 0, i32 5
  store i8* %27, i8** %29, align 8
  %30 = load %struct.hdmi_spec_per_cvt*, %struct.hdmi_spec_per_cvt** %7, align 8
  %31 = getelementptr inbounds %struct.hdmi_spec_per_cvt, %struct.hdmi_spec_per_cvt* %30, i32 0, i32 0
  store i32 2, i32* %31, align 8
  %32 = load i32, i32* %8, align 4
  %33 = icmp ule i32 %32, 16
  br i1 %33, label %34, label %38

34:                                               ; preds = %26
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.hdmi_spec_per_cvt*, %struct.hdmi_spec_per_cvt** %7, align 8
  %37 = getelementptr inbounds %struct.hdmi_spec_per_cvt, %struct.hdmi_spec_per_cvt* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  br label %38

38:                                               ; preds = %34, %26
  %39 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = load %struct.hdmi_spec_per_cvt*, %struct.hdmi_spec_per_cvt** %7, align 8
  %42 = getelementptr inbounds %struct.hdmi_spec_per_cvt, %struct.hdmi_spec_per_cvt* %41, i32 0, i32 4
  %43 = load %struct.hdmi_spec_per_cvt*, %struct.hdmi_spec_per_cvt** %7, align 8
  %44 = getelementptr inbounds %struct.hdmi_spec_per_cvt, %struct.hdmi_spec_per_cvt* %43, i32 0, i32 3
  %45 = load %struct.hdmi_spec_per_cvt*, %struct.hdmi_spec_per_cvt** %7, align 8
  %46 = getelementptr inbounds %struct.hdmi_spec_per_cvt, %struct.hdmi_spec_per_cvt* %45, i32 0, i32 2
  %47 = call i32 @snd_hda_query_supported_pcm(%struct.hda_codec* %39, i8* %40, i32* %42, i32* %44, i32* %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %38
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %3, align 4
  br label %75

52:                                               ; preds = %38
  %53 = load %struct.hdmi_spec*, %struct.hdmi_spec** %6, align 8
  %54 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.hdmi_spec*, %struct.hdmi_spec** %6, align 8
  %57 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %56, i32 0, i32 1
  %58 = load i8**, i8*** %57, align 8
  %59 = call i64 @ARRAY_SIZE(i8** %58)
  %60 = icmp ult i64 %55, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %52
  %62 = load i8*, i8** %5, align 8
  %63 = load %struct.hdmi_spec*, %struct.hdmi_spec** %6, align 8
  %64 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %63, i32 0, i32 1
  %65 = load i8**, i8*** %64, align 8
  %66 = load %struct.hdmi_spec*, %struct.hdmi_spec** %6, align 8
  %67 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds i8*, i8** %65, i64 %68
  store i8* %62, i8** %69, align 8
  br label %70

70:                                               ; preds = %61, %52
  %71 = load %struct.hdmi_spec*, %struct.hdmi_spec** %6, align 8
  %72 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %72, align 8
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %70, %50, %23
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @get_wcaps(%struct.hda_codec*, i8*) #1

declare dso_local i32 @get_wcaps_channels(i32) #1

declare dso_local %struct.hdmi_spec_per_cvt* @snd_array_new(i32*) #1

declare dso_local i32 @snd_hda_query_supported_pcm(%struct.hda_codec*, i8*, i32*, i32*, i32*) #1

declare dso_local i64 @ARRAY_SIZE(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
