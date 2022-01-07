; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/extr_es18xx.c_snd_es18xx_info_mux.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/extr_es18xx.c_snd_es18xx_info_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_info = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.snd_es18xx = type { i32 }

@snd_es18xx_info_mux.texts4Source = internal global [4 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [4 x i8] c"Mic\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"CD\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Line\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Master\00", align 1
@snd_es18xx_info_mux.texts5Source = internal global [5 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0)], align 16
@.str.4 = private unnamed_addr constant [4 x i8] c"Mix\00", align 1
@snd_es18xx_info_mux.texts8Source = internal global [8 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str.5 = private unnamed_addr constant [11 x i8] c"Mic Master\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"AOUT\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"Mic1\00", align 1
@SNDRV_CTL_ELEM_TYPE_ENUMERATED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_info*)* @snd_es18xx_info_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_es18xx_info_mux(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_info*, align 8
  %6 = alloca %struct.snd_es18xx*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_info* %1, %struct.snd_ctl_elem_info** %5, align 8
  %7 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %8 = call %struct.snd_es18xx* @snd_kcontrol_chip(%struct.snd_kcontrol* %7)
  store %struct.snd_es18xx* %8, %struct.snd_es18xx** %6, align 8
  %9 = load i32, i32* @SNDRV_CTL_ELEM_TYPE_ENUMERATED, align 4
  %10 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %5, align 8
  %11 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %10, i32 0, i32 2
  store i32 %9, i32* %11, align 4
  %12 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %5, align 8
  %13 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %12, i32 0, i32 0
  store i32 1, i32* %13, align 4
  %14 = load %struct.snd_es18xx*, %struct.snd_es18xx** %6, align 8
  %15 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %110 [
    i32 6248, label %17
    i32 6264, label %17
    i32 6279, label %48
    i32 6280, label %48
    i32 6249, label %79
    i32 6265, label %79
  ]

17:                                               ; preds = %2, %2
  %18 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %5, align 8
  %19 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i32 4, i32* %21, align 4
  %22 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %5, align 8
  %23 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp sgt i32 %26, 3
  br i1 %27, label %28, label %33

28:                                               ; preds = %17
  %29 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %5, align 8
  %30 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  store i32 3, i32* %32, align 4
  br label %33

33:                                               ; preds = %28, %17
  %34 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %5, align 8
  %35 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %5, align 8
  %40 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [4 x i8*], [4 x i8*]* @snd_es18xx_info_mux.texts4Source, i64 0, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @strcpy(i32 %38, i8* %46)
  br label %113

48:                                               ; preds = %2, %2
  %49 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %5, align 8
  %50 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store i32 5, i32* %52, align 4
  %53 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %5, align 8
  %54 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp sgt i32 %57, 4
  br i1 %58, label %59, label %64

59:                                               ; preds = %48
  %60 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %5, align 8
  %61 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  store i32 4, i32* %63, align 4
  br label %64

64:                                               ; preds = %59, %48
  %65 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %5, align 8
  %66 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %5, align 8
  %71 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [5 x i8*], [5 x i8*]* @snd_es18xx_info_mux.texts5Source, i64 0, i64 %75
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @strcpy(i32 %69, i8* %77)
  br label %113

79:                                               ; preds = %2, %2
  %80 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %5, align 8
  %81 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  store i32 8, i32* %83, align 4
  %84 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %5, align 8
  %85 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp sgt i32 %88, 7
  br i1 %89, label %90, label %95

90:                                               ; preds = %79
  %91 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %5, align 8
  %92 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  store i32 7, i32* %94, align 4
  br label %95

95:                                               ; preds = %90, %79
  %96 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %5, align 8
  %97 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %5, align 8
  %102 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [8 x i8*], [8 x i8*]* @snd_es18xx_info_mux.texts8Source, i64 0, i64 %106
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 @strcpy(i32 %100, i8* %108)
  br label %113

110:                                              ; preds = %2
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %3, align 4
  br label %114

113:                                              ; preds = %95, %64, %33
  store i32 0, i32* %3, align 4
  br label %114

114:                                              ; preds = %113, %110
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local %struct.snd_es18xx* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
