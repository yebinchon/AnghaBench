; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_snd_hda_enum_helper_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_snd_hda_enum_helper_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_info = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@snd_hda_enum_helper_info.texts_default = internal constant [2 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [9 x i8] c"Disabled\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Enabled\00", align 1
@SNDRV_CTL_ELEM_TYPE_ENUMERATED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hda_enum_helper_info(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_info* %1, i32 %2, i8** %3) #0 {
  %5 = alloca %struct.snd_kcontrol*, align 8
  %6 = alloca %struct.snd_ctl_elem_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %5, align 8
  store %struct.snd_ctl_elem_info* %1, %struct.snd_ctl_elem_info** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8** %3, i8*** %8, align 8
  %9 = load i8**, i8*** %8, align 8
  %10 = icmp ne i8** %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11, %4
  store i32 2, i32* %7, align 4
  store i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @snd_hda_enum_helper_info.texts_default, i64 0, i64 0), i8*** %8, align 8
  br label %15

15:                                               ; preds = %14, %11
  %16 = load i32, i32* @SNDRV_CTL_ELEM_TYPE_ENUMERATED, align 4
  %17 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %6, align 8
  %18 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  %19 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %6, align 8
  %20 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %19, i32 0, i32 0
  store i32 1, i32* %20, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %6, align 8
  %23 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i32 %21, i32* %25, align 4
  %26 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %6, align 8
  %27 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %6, align 8
  %32 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp sge i32 %30, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %15
  %38 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %6, align 8
  %39 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %42, 1
  %44 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %6, align 8
  %45 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  store i32 %43, i32* %47, align 4
  br label %48

48:                                               ; preds = %37, %15
  %49 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %6, align 8
  %50 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i8**, i8*** %8, align 8
  %55 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %6, align 8
  %56 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8*, i8** %54, i64 %60
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @strcpy(i32 %53, i8* %62)
  ret i32 0
}

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
