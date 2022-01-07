; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/pcxhr/extr_pcxhr_mixer.c_pcxhr_clock_type_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/pcxhr/extr_pcxhr_mixer.c_pcxhr_clock_type_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_info = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.pcxhr_mgr = type { i64, i64, i64 }

@pcxhr_clock_type_info.textsPCXHR = internal global [7 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [9 x i8] c"Internal\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"WordClock\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"AES Sync\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"AES 1\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"AES 2\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"AES 3\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"AES 4\00", align 1
@pcxhr_clock_type_info.textsHR22 = internal global [3 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0)], align 16
@HR22_CLOCK_TYPE_MAX = common dso_local global i32 0, align 4
@PCXHR_CLOCK_TYPE_MAX = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_TYPE_ENUMERATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_info*)* @pcxhr_clock_type_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcxhr_clock_type_info(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_info* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_info*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.pcxhr_mgr*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_info* %1, %struct.snd_ctl_elem_info** %4, align 8
  %8 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %9 = call %struct.pcxhr_mgr* @snd_kcontrol_chip(%struct.snd_kcontrol* %8)
  store %struct.pcxhr_mgr* %9, %struct.pcxhr_mgr** %6, align 8
  store i32 2, i32* %7, align 4
  %10 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %11 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %2
  %15 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %16 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %19, %17
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %7, align 4
  %22 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %23 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %14
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %26, %14
  br label %30

30:                                               ; preds = %29, %2
  %31 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %32 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  store i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @pcxhr_clock_type_info.textsHR22, i64 0, i64 0), i8*** %5, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @HR22_CLOCK_TYPE_MAX, align 4
  %38 = add nsw i32 %37, 1
  %39 = icmp sgt i32 %36, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @snd_BUG_ON(i32 %40)
  br label %49

42:                                               ; preds = %30
  store i8** getelementptr inbounds ([7 x i8*], [7 x i8*]* @pcxhr_clock_type_info.textsPCXHR, i64 0, i64 0), i8*** %5, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @PCXHR_CLOCK_TYPE_MAX, align 4
  %45 = add nsw i32 %44, 1
  %46 = icmp sgt i32 %43, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @snd_BUG_ON(i32 %47)
  br label %49

49:                                               ; preds = %42, %35
  %50 = load i32, i32* @SNDRV_CTL_ELEM_TYPE_ENUMERATED, align 4
  %51 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %52 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  %53 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %54 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %53, i32 0, i32 0
  store i32 1, i32* %54, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %57 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  store i32 %55, i32* %59, align 4
  %60 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %61 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp sge i32 %64, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %49
  %68 = load i32, i32* %7, align 4
  %69 = sub nsw i32 %68, 1
  %70 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %71 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  store i32 %69, i32* %73, align 4
  br label %74

74:                                               ; preds = %67, %49
  %75 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %76 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load i8**, i8*** %5, align 8
  %81 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %82 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8*, i8** %80, i64 %86
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @strcpy(i32 %79, i8* %88)
  ret i32 0
}

declare dso_local %struct.pcxhr_mgr* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_BUG_ON(i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
