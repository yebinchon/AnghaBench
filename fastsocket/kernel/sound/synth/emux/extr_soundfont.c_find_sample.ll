; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/synth/emux/extr_soundfont.c_find_sample.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/synth/emux/extr_soundfont.c_find_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sf_sample = type { %struct.TYPE_2__, %struct.snd_sf_sample* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_soundfont = type { %struct.snd_sf_sample* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.snd_sf_sample* (%struct.snd_soundfont*, i32)* @find_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.snd_sf_sample* @find_sample(%struct.snd_soundfont* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_sf_sample*, align 8
  %4 = alloca %struct.snd_soundfont*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_sf_sample*, align 8
  store %struct.snd_soundfont* %0, %struct.snd_soundfont** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.snd_soundfont*, %struct.snd_soundfont** %4, align 8
  %8 = icmp eq %struct.snd_soundfont* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store %struct.snd_sf_sample* null, %struct.snd_sf_sample** %3, align 8
  br label %32

10:                                               ; preds = %2
  %11 = load %struct.snd_soundfont*, %struct.snd_soundfont** %4, align 8
  %12 = getelementptr inbounds %struct.snd_soundfont, %struct.snd_soundfont* %11, i32 0, i32 0
  %13 = load %struct.snd_sf_sample*, %struct.snd_sf_sample** %12, align 8
  store %struct.snd_sf_sample* %13, %struct.snd_sf_sample** %6, align 8
  br label %14

14:                                               ; preds = %27, %10
  %15 = load %struct.snd_sf_sample*, %struct.snd_sf_sample** %6, align 8
  %16 = icmp ne %struct.snd_sf_sample* %15, null
  br i1 %16, label %17, label %31

17:                                               ; preds = %14
  %18 = load %struct.snd_sf_sample*, %struct.snd_sf_sample** %6, align 8
  %19 = getelementptr inbounds %struct.snd_sf_sample, %struct.snd_sf_sample* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load %struct.snd_sf_sample*, %struct.snd_sf_sample** %6, align 8
  store %struct.snd_sf_sample* %25, %struct.snd_sf_sample** %3, align 8
  br label %32

26:                                               ; preds = %17
  br label %27

27:                                               ; preds = %26
  %28 = load %struct.snd_sf_sample*, %struct.snd_sf_sample** %6, align 8
  %29 = getelementptr inbounds %struct.snd_sf_sample, %struct.snd_sf_sample* %28, i32 0, i32 1
  %30 = load %struct.snd_sf_sample*, %struct.snd_sf_sample** %29, align 8
  store %struct.snd_sf_sample* %30, %struct.snd_sf_sample** %6, align 8
  br label %14

31:                                               ; preds = %14
  store %struct.snd_sf_sample* null, %struct.snd_sf_sample** %3, align 8
  br label %32

32:                                               ; preds = %31, %24, %9
  %33 = load %struct.snd_sf_sample*, %struct.snd_sf_sample** %3, align 8
  ret %struct.snd_sf_sample* %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
