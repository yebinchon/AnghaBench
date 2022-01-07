; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_via.c_patch_vt1708S.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_via.c_patch_vt1708S.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i8*, i8*, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.via_spec = type { i32, i32, i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@VT1708BCE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"VT1708BCE\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"VT1705\00", align 1
@vt1708S_init_verbs = common dso_local global i32 0, align 4
@via_patch_ops = common dso_local global i32 0, align 4
@set_widgets_power_state_vt1708B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @patch_vt1708S to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_vt1708S(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.via_spec*, align 8
  %5 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %6 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %7 = call %struct.via_spec* @via_new_spec(%struct.hda_codec* %6)
  store %struct.via_spec* %7, %struct.via_spec** %4, align 8
  %8 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %9 = icmp eq %struct.via_spec* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %102

13:                                               ; preds = %1
  %14 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %15 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i32 22, i32* %16, align 8
  %17 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %18 = call i32 @override_mic_boost(%struct.hda_codec* %17, i32 26, i32 0, i32 3, i32 40)
  %19 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %20 = call i32 @override_mic_boost(%struct.hda_codec* %19, i32 30, i32 0, i32 3, i32 40)
  %21 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %22 = call i64 @get_codec_type(%struct.hda_codec* %21)
  %23 = load i64, i64* @VT1708BCE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %48

25:                                               ; preds = %13
  %26 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %27 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @kfree(i8* %28)
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i8* @kstrdup(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %33 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  %34 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %35 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %34, i32 0, i32 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %42 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %45 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @snprintf(i32 %40, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %43, i8* %46)
  br label %48

48:                                               ; preds = %25, %13
  %49 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %50 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = icmp eq i32 %51, 285623191
  br i1 %52, label %53, label %76

53:                                               ; preds = %48
  %54 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %55 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @kfree(i8* %56)
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = call i8* @kstrdup(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  %60 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %61 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %60, i32 0, i32 0
  store i8* %59, i8** %61, align 8
  %62 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %63 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %62, i32 0, i32 4
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %70 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %73 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @snprintf(i32 %68, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %71, i8* %74)
  br label %76

76:                                               ; preds = %53, %48
  %77 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %78 = call i32 @via_parse_auto_config(%struct.hda_codec* %77)
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %83 = call i32 @via_free(%struct.hda_codec* %82)
  %84 = load i32, i32* %5, align 4
  store i32 %84, i32* %2, align 4
  br label %102

85:                                               ; preds = %76
  %86 = load i32, i32* @vt1708S_init_verbs, align 4
  %87 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %88 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %91 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 4
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds i32, i32* %89, i64 %94
  store i32 %86, i32* %95, align 4
  %96 = load i32, i32* @via_patch_ops, align 4
  %97 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %98 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* @set_widgets_power_state_vt1708B, align 4
  %100 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %101 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  store i32 0, i32* %2, align 4
  br label %102

102:                                              ; preds = %85, %81, %10
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local %struct.via_spec* @via_new_spec(%struct.hda_codec*) #1

declare dso_local i32 @override_mic_boost(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i64 @get_codec_type(%struct.hda_codec*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i8* @kstrdup(i8*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i8*) #1

declare dso_local i32 @via_parse_auto_config(%struct.hda_codec*) #1

declare dso_local i32 @via_free(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
