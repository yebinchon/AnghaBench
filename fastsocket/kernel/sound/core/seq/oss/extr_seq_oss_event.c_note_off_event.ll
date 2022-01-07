; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/oss/extr_seq_oss_event.c_note_off_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/oss/extr_seq_oss_event.c_note_off_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_oss_devinfo = type { %struct.seq_oss_synthinfo* }
%struct.seq_oss_synthinfo = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.snd_seq_event = type { i32 }

@SNDRV_SEQ_EVENT_NOTEON = common dso_local global i32 0, align 4
@SNDRV_SEQ_EVENT_NOTEOFF = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_oss_devinfo*, i32, i32, i32, i32, %struct.snd_seq_event*)* @note_off_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @note_off_event(%struct.seq_oss_devinfo* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.snd_seq_event* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.seq_oss_devinfo*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.snd_seq_event*, align 8
  %14 = alloca %struct.seq_oss_synthinfo*, align 8
  store %struct.seq_oss_devinfo* %0, %struct.seq_oss_devinfo** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.snd_seq_event* %5, %struct.snd_seq_event** %13, align 8
  %15 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %8, align 8
  %16 = getelementptr inbounds %struct.seq_oss_devinfo, %struct.seq_oss_devinfo* %15, i32 0, i32 0
  %17 = load %struct.seq_oss_synthinfo*, %struct.seq_oss_synthinfo** %16, align 8
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.seq_oss_synthinfo, %struct.seq_oss_synthinfo* %17, i64 %19
  store %struct.seq_oss_synthinfo* %20, %struct.seq_oss_synthinfo** %14, align 8
  %21 = load %struct.seq_oss_synthinfo*, %struct.seq_oss_synthinfo** %14, align 8
  %22 = getelementptr inbounds %struct.seq_oss_synthinfo, %struct.seq_oss_synthinfo* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %101 [
    i32 129, label %25
    i32 130, label %92
    i32 128, label %92
  ]

25:                                               ; preds = %6
  %26 = load %struct.seq_oss_synthinfo*, %struct.seq_oss_synthinfo** %14, align 8
  %27 = getelementptr inbounds %struct.seq_oss_synthinfo, %struct.seq_oss_synthinfo* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = icmp ne %struct.TYPE_4__* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = load i32, i32* %10, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.seq_oss_synthinfo*, %struct.seq_oss_synthinfo** %14, align 8
  %36 = getelementptr inbounds %struct.seq_oss_synthinfo, %struct.seq_oss_synthinfo* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp sge i32 %34, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %33, %30, %25
  %40 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %8, align 8
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @SNDRV_SEQ_EVENT_NOTEON, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load %struct.snd_seq_event*, %struct.snd_seq_event** %13, align 8
  %47 = call i32 @set_note_event(%struct.seq_oss_devinfo* %40, i32 %41, i32 %42, i32 %43, i32 %44, i32 %45, %struct.snd_seq_event* %46)
  store i32 %47, i32* %7, align 4
  br label %104

48:                                               ; preds = %33
  %49 = load %struct.seq_oss_synthinfo*, %struct.seq_oss_synthinfo** %14, align 8
  %50 = getelementptr inbounds %struct.seq_oss_synthinfo, %struct.seq_oss_synthinfo* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp sge i32 %56, 0
  br i1 %57, label %58, label %89

58:                                               ; preds = %48
  %59 = load %struct.seq_oss_synthinfo*, %struct.seq_oss_synthinfo** %14, align 8
  %60 = getelementptr inbounds %struct.seq_oss_synthinfo, %struct.seq_oss_synthinfo* %59, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %11, align 4
  %67 = load %struct.seq_oss_synthinfo*, %struct.seq_oss_synthinfo** %14, align 8
  %68 = getelementptr inbounds %struct.seq_oss_synthinfo, %struct.seq_oss_synthinfo* %67, i32 0, i32 1
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  store i32 0, i32* %73, align 4
  %74 = load %struct.seq_oss_synthinfo*, %struct.seq_oss_synthinfo** %14, align 8
  %75 = getelementptr inbounds %struct.seq_oss_synthinfo, %struct.seq_oss_synthinfo* %74, i32 0, i32 1
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  store i32 -1, i32* %80, align 4
  %81 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %8, align 8
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @SNDRV_SEQ_EVENT_NOTEOFF, align 4
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %12, align 4
  %87 = load %struct.snd_seq_event*, %struct.snd_seq_event** %13, align 8
  %88 = call i32 @set_note_event(%struct.seq_oss_devinfo* %81, i32 %82, i32 %83, i32 %84, i32 %85, i32 %86, %struct.snd_seq_event* %87)
  store i32 %88, i32* %7, align 4
  br label %104

89:                                               ; preds = %48
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %7, align 4
  br label %104

92:                                               ; preds = %6, %6
  %93 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %8, align 8
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* @SNDRV_SEQ_EVENT_NOTEOFF, align 4
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* %12, align 4
  %99 = load %struct.snd_seq_event*, %struct.snd_seq_event** %13, align 8
  %100 = call i32 @set_note_event(%struct.seq_oss_devinfo* %93, i32 %94, i32 %95, i32 %96, i32 %97, i32 %98, %struct.snd_seq_event* %99)
  store i32 %100, i32* %7, align 4
  br label %104

101:                                              ; preds = %6
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %7, align 4
  br label %104

104:                                              ; preds = %101, %92, %89, %58, %39
  %105 = load i32, i32* %7, align 4
  ret i32 %105
}

declare dso_local i32 @set_note_event(%struct.seq_oss_devinfo*, i32, i32, i32, i32, i32, %struct.snd_seq_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
