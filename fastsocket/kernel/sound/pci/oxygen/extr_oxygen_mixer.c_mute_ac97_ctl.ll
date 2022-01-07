; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_oxygen_mixer.c_mute_ac97_ctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_oxygen_mixer.c_mute_ac97_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { %struct.TYPE_4__**, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 (%struct.oxygen.0*, i32, i32)* }
%struct.oxygen.0 = type opaque

@SNDRV_CTL_EVENT_MASK_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oxygen*, i32)* @mute_ac97_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mute_ac97_ctl(%struct.oxygen* %0, i32 %1) #0 {
  %3 = alloca %struct.oxygen*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.oxygen* %0, %struct.oxygen** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %8 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %9, i64 %11
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = icmp ne %struct.TYPE_4__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %67

16:                                               ; preds = %2
  %17 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %18 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %19, i64 %21
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 255
  store i32 %26, i32* %5, align 4
  %27 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @oxygen_read_ac97(%struct.oxygen* %27, i32 0, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = and i32 %30, 32768
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %67, label %33

33:                                               ; preds = %16
  %34 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %6, align 4
  %37 = or i32 %36, 32768
  %38 = call i32 @oxygen_write_ac97(%struct.oxygen* %34, i32 0, i32 %35, i32 %37)
  %39 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %40 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32 (%struct.oxygen.0*, i32, i32)*, i32 (%struct.oxygen.0*, i32, i32)** %41, align 8
  %43 = icmp ne i32 (%struct.oxygen.0*, i32, i32)* %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %33
  %45 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %46 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32 (%struct.oxygen.0*, i32, i32)*, i32 (%struct.oxygen.0*, i32, i32)** %47, align 8
  %49 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %50 = bitcast %struct.oxygen* %49 to %struct.oxygen.0*
  %51 = load i32, i32* %5, align 4
  %52 = call i32 %48(%struct.oxygen.0* %50, i32 %51, i32 32768)
  br label %53

53:                                               ; preds = %44, %33
  %54 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %55 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %58 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %59 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %59, align 8
  %61 = load i32, i32* %4, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %60, i64 %62
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = call i32 @snd_ctl_notify(i32 %56, i32 %57, i32* %65)
  br label %67

67:                                               ; preds = %15, %53, %16
  ret void
}

declare dso_local i32 @oxygen_read_ac97(%struct.oxygen*, i32, i32) #1

declare dso_local i32 @oxygen_write_ac97(%struct.oxygen*, i32, i32, i32) #1

declare dso_local i32 @snd_ctl_notify(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
