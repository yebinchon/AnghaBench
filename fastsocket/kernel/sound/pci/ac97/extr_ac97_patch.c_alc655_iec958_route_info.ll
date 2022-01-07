; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_patch.c_alc655_iec958_route_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_patch.c_alc655_iec958_route_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_info = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.snd_ac97 = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@alc655_iec958_route_info.texts_655 = internal global [3 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [4 x i8] c"PCM\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Analog In\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"IEC958 In\00", align 1
@alc655_iec958_route_info.texts_658 = internal global [4 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0)], align 16
@.str.3 = private unnamed_addr constant [11 x i8] c"Analog1 In\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"Analog2 In\00", align 1
@SNDRV_CTL_ELEM_TYPE_ENUMERATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_info*)* @alc655_iec958_route_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alc655_iec958_route_info(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_info* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_info*, align 8
  %5 = alloca %struct.snd_ac97*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_info* %1, %struct.snd_ctl_elem_info** %4, align 8
  %6 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %7 = call %struct.snd_ac97* @snd_kcontrol_chip(%struct.snd_kcontrol* %6)
  store %struct.snd_ac97* %7, %struct.snd_ac97** %5, align 8
  %8 = load i32, i32* @SNDRV_CTL_ELEM_TYPE_ENUMERATED, align 4
  %9 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %10 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %9, i32 0, i32 2
  store i32 %8, i32* %10, align 4
  %11 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %12 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %11, i32 0, i32 0
  store i32 1, i32* %12, align 4
  %13 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %14 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 4, i32 3
  %20 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %21 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  store i32 %19, i32* %23, align 4
  %24 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %25 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %30 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp sge i32 %28, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %2
  %36 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %37 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %40, 1
  %42 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %43 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  store i32 %41, i32* %45, align 4
  br label %46

46:                                               ; preds = %35, %2
  %47 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %48 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %53 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %46
  %58 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %59 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [4 x i8*], [4 x i8*]* @alc655_iec958_route_info.texts_658, i64 0, i64 %63
  %65 = load i8*, i8** %64, align 8
  br label %75

66:                                               ; preds = %46
  %67 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %68 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [3 x i8*], [3 x i8*]* @alc655_iec958_route_info.texts_655, i64 0, i64 %72
  %74 = load i8*, i8** %73, align 8
  br label %75

75:                                               ; preds = %66, %57
  %76 = phi i8* [ %65, %57 ], [ %74, %66 ]
  %77 = call i32 @strcpy(i32 %51, i8* %76)
  ret i32 0
}

declare dso_local %struct.snd_ac97* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
