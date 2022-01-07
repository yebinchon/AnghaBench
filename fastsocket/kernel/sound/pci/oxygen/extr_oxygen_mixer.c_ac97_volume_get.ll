; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_oxygen_mixer.c_ac97_volume_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_oxygen_mixer.c_ac97_volume_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32, %struct.oxygen* }
%struct.oxygen = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @ac97_volume_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ac97_volume_get(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.oxygen*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %11 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %10, i32 0, i32 1
  %12 = load %struct.oxygen*, %struct.oxygen** %11, align 8
  store %struct.oxygen* %12, %struct.oxygen** %5, align 8
  %13 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %14 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = ashr i32 %15, 24
  %17 = and i32 %16, 1
  store i32 %17, i32* %6, align 4
  %18 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %19 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = ashr i32 %20, 16
  %22 = and i32 %21, 1
  store i32 %22, i32* %7, align 4
  %23 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %24 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, 255
  store i32 %26, i32* %8, align 4
  %27 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %28 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %27, i32 0, i32 0
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @oxygen_read_ac97(%struct.oxygen* %30, i32 %31, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %35 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %34, i32 0, i32 0
  %36 = call i32 @mutex_unlock(i32* %35)
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %2
  %40 = load i32, i32* %9, align 4
  %41 = and i32 %40, 31
  %42 = sub nsw i32 31, %41
  %43 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %44 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  store i32 %42, i32* %48, align 4
  br label %69

49:                                               ; preds = %2
  %50 = load i32, i32* %9, align 4
  %51 = ashr i32 %50, 8
  %52 = and i32 %51, 31
  %53 = sub nsw i32 31, %52
  %54 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %55 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  store i32 %53, i32* %59, align 4
  %60 = load i32, i32* %9, align 4
  %61 = and i32 %60, 31
  %62 = sub nsw i32 31, %61
  %63 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %64 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  store i32 %62, i32* %68, align 4
  br label %69

69:                                               ; preds = %49, %39
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @oxygen_read_ac97(%struct.oxygen*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
