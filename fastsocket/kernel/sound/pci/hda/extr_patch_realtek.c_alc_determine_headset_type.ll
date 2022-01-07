; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_realtek.c_alc_determine_headset_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_realtek.c_alc_determine_headset_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, %struct.alc_spec* }
%struct.alc_spec = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"Headset jack detected iPhone-style headset: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@ALC_HEADSET_TYPE_CTIA = common dso_local global i32 0, align 4
@ALC_HEADSET_TYPE_OMTP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @alc_determine_headset_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc_determine_headset_type(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.alc_spec*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %7 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %6, i32 0, i32 1
  %8 = load %struct.alc_spec*, %struct.alc_spec** %7, align 8
  store %struct.alc_spec* %8, %struct.alc_spec** %5, align 8
  %9 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %10 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %48 [
    i32 283902595, label %12
    i32 283902610, label %22
    i32 283903592, label %32
  ]

12:                                               ; preds = %1
  %13 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %14 = call i32 @alc_write_coef_idx(%struct.hda_codec* %13, i32 69, i32 53289)
  %15 = call i32 @msleep(i32 300)
  %16 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %17 = call i32 @alc_read_coef_idx(%struct.hda_codec* %16, i32 70)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = and i32 %18, 112
  %20 = icmp eq i32 %19, 112
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %4, align 4
  br label %48

22:                                               ; preds = %1
  %23 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %24 = call i32 @alc_write_coef_idx(%struct.hda_codec* %23, i32 107, i32 54313)
  %25 = call i32 @msleep(i32 300)
  %26 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %27 = call i32 @alc_read_coef_idx(%struct.hda_codec* %26, i32 108)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = and i32 %28, 28
  %30 = icmp eq i32 %29, 28
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %4, align 4
  br label %48

32:                                               ; preds = %1
  %33 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %34 = call i32 @alc_write_coef_idx(%struct.hda_codec* %33, i32 17, i32 1)
  %35 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %36 = call i32 @alc_write_coef_idx(%struct.hda_codec* %35, i32 183, i32 32811)
  %37 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %38 = call i32 @alc_write_coef_idx(%struct.hda_codec* %37, i32 21, i32 3424)
  %39 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %40 = call i32 @alc_write_coef_idx(%struct.hda_codec* %39, i32 195, i32 3072)
  %41 = call i32 @msleep(i32 300)
  %42 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %43 = call i32 @alc_read_coef_idx(%struct.hda_codec* %42, i32 190)
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* %3, align 4
  %45 = and i32 %44, 7170
  %46 = icmp eq i32 %45, 7170
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %1, %32, %22, %12
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %53 = call i32 @snd_printdd(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* %52)
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = load i32, i32* @ALC_HEADSET_TYPE_CTIA, align 4
  br label %60

58:                                               ; preds = %48
  %59 = load i32, i32* @ALC_HEADSET_TYPE_OMTP, align 4
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i32 [ %57, %56 ], [ %59, %58 ]
  %62 = load %struct.alc_spec*, %struct.alc_spec** %5, align 8
  %63 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  ret void
}

declare dso_local i32 @alc_write_coef_idx(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @alc_read_coef_idx(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_printdd(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
