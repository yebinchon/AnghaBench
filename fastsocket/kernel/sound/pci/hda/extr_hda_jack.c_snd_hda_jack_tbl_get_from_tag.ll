; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_jack.c_snd_hda_jack_tbl_get_from_tag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_jack.c_snd_hda_jack_tbl_get_from_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_jack_tbl = type { i8 }
%struct.hda_codec = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.hda_jack_tbl* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hda_jack_tbl* @snd_hda_jack_tbl_get_from_tag(%struct.hda_codec* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.hda_jack_tbl*, align 8
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct.hda_jack_tbl*, align 8
  %7 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store i8 %1, i8* %5, align 1
  %8 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %9 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %10, align 8
  store %struct.hda_jack_tbl* %11, %struct.hda_jack_tbl** %6, align 8
  %12 = load i8, i8* %5, align 1
  %13 = icmp ne i8 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %6, align 8
  %16 = icmp ne %struct.hda_jack_tbl* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %14, %2
  store %struct.hda_jack_tbl* null, %struct.hda_jack_tbl** %3, align 8
  br label %43

18:                                               ; preds = %14
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %37, %18
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %22 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %20, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %19
  %27 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %6, align 8
  %28 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %27, i32 0, i32 0
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = load i8, i8* %5, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %6, align 8
  store %struct.hda_jack_tbl* %35, %struct.hda_jack_tbl** %3, align 8
  br label %43

36:                                               ; preds = %26
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %7, align 4
  %40 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %6, align 8
  %41 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %40, i32 1
  store %struct.hda_jack_tbl* %41, %struct.hda_jack_tbl** %6, align 8
  br label %19

42:                                               ; preds = %19
  store %struct.hda_jack_tbl* null, %struct.hda_jack_tbl** %3, align 8
  br label %43

43:                                               ; preds = %42, %34, %17
  %44 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %3, align 8
  ret %struct.hda_jack_tbl* %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
