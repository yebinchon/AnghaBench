; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_sigmatel.c_hp_bnb2011_with_dock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_sigmatel.c_hp_bnb2011_with_dock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @hp_bnb2011_with_dock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hp_bnb2011_with_dock(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %4 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %5 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 287143429
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %10 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 287143633
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %20

14:                                               ; preds = %8, %1
  %15 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %16 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %19 [
    i32 272373272, label %18
    i32 272373273, label %18
    i32 272373274, label %18
    i32 272373275, label %18
    i32 272373276, label %18
    i32 272373277, label %18
    i32 272373278, label %18
    i32 272373279, label %18
    i32 272373290, label %18
    i32 272373291, label %18
    i32 272373296, label %18
    i32 272373297, label %18
    i32 272373299, label %18
    i32 272373300, label %18
    i32 272373301, label %18
    i32 272381319, label %18
    i32 272381320, label %18
    i32 272381321, label %18
    i32 272381322, label %18
    i32 272381543, label %18
    i32 272381544, label %18
    i32 272381545, label %18
  ]

18:                                               ; preds = %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14
  store i32 1, i32* %2, align 4
  br label %20

19:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %19, %18, %13
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
