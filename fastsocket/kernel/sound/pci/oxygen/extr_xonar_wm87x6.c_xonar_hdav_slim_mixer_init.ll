; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_xonar_wm87x6.c_xonar_hdav_slim_mixer_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_xonar_wm87x6.c_xonar_hdav_slim_mixer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { i32 }
%struct.snd_kcontrol = type { i32 }

@hdav_slim_controls = common dso_local global i32* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.oxygen*)* @xonar_hdav_slim_mixer_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xonar_hdav_slim_mixer_init(%struct.oxygen* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.oxygen*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_kcontrol*, align 8
  %6 = alloca i32, align 4
  store %struct.oxygen* %0, %struct.oxygen** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %35, %1
  %8 = load i32, i32* %4, align 4
  %9 = load i32*, i32** @hdav_slim_controls, align 8
  %10 = call i32 @ARRAY_SIZE(i32* %9)
  %11 = icmp ult i32 %8, %10
  br i1 %11, label %12, label %38

12:                                               ; preds = %7
  %13 = load i32*, i32** @hdav_slim_controls, align 8
  %14 = load i32, i32* %4, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %18 = call %struct.snd_kcontrol* @snd_ctl_new1(i32* %16, %struct.oxygen* %17)
  store %struct.snd_kcontrol* %18, %struct.snd_kcontrol** %5, align 8
  %19 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %20 = icmp ne %struct.snd_kcontrol* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %12
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %41

24:                                               ; preds = %12
  %25 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %26 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %29 = call i32 @snd_ctl_add(i32 %27, %struct.snd_kcontrol* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %2, align 4
  br label %41

34:                                               ; preds = %24
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %4, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %7

38:                                               ; preds = %7
  %39 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %40 = call i32 @add_lc_controls(%struct.oxygen* %39)
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %38, %32, %21
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local %struct.snd_kcontrol* @snd_ctl_new1(i32*, %struct.oxygen*) #1

declare dso_local i32 @snd_ctl_add(i32, %struct.snd_kcontrol*) #1

declare dso_local i32 @add_lc_controls(%struct.oxygen*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
