; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_get_hda_cvt_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_get_hda_cvt_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_cvt_setup = type { i64 }
%struct.hda_codec = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hda_cvt_setup* (%struct.hda_codec*, i64)* @get_hda_cvt_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hda_cvt_setup* @get_hda_cvt_setup(%struct.hda_codec* %0, i64 %1) #0 {
  %3 = alloca %struct.hda_cvt_setup*, align 8
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.hda_cvt_setup*, align 8
  %7 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %28, %2
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %11 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %9, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %8
  %16 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %17 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %16, i32 0, i32 0
  %18 = load i32, i32* %7, align 4
  %19 = call %struct.hda_cvt_setup* @snd_array_elem(%struct.TYPE_3__* %17, i32 %18)
  store %struct.hda_cvt_setup* %19, %struct.hda_cvt_setup** %6, align 8
  %20 = load %struct.hda_cvt_setup*, %struct.hda_cvt_setup** %6, align 8
  %21 = getelementptr inbounds %struct.hda_cvt_setup, %struct.hda_cvt_setup* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %5, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %15
  %26 = load %struct.hda_cvt_setup*, %struct.hda_cvt_setup** %6, align 8
  store %struct.hda_cvt_setup* %26, %struct.hda_cvt_setup** %3, align 8
  br label %43

27:                                               ; preds = %15
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %7, align 4
  br label %8

31:                                               ; preds = %8
  %32 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %33 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %32, i32 0, i32 0
  %34 = call %struct.hda_cvt_setup* @snd_array_new(%struct.TYPE_3__* %33)
  store %struct.hda_cvt_setup* %34, %struct.hda_cvt_setup** %6, align 8
  %35 = load %struct.hda_cvt_setup*, %struct.hda_cvt_setup** %6, align 8
  %36 = icmp ne %struct.hda_cvt_setup* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load i64, i64* %5, align 8
  %39 = load %struct.hda_cvt_setup*, %struct.hda_cvt_setup** %6, align 8
  %40 = getelementptr inbounds %struct.hda_cvt_setup, %struct.hda_cvt_setup* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  br label %41

41:                                               ; preds = %37, %31
  %42 = load %struct.hda_cvt_setup*, %struct.hda_cvt_setup** %6, align 8
  store %struct.hda_cvt_setup* %42, %struct.hda_cvt_setup** %3, align 8
  br label %43

43:                                               ; preds = %41, %25
  %44 = load %struct.hda_cvt_setup*, %struct.hda_cvt_setup** %3, align 8
  ret %struct.hda_cvt_setup* %44
}

declare dso_local %struct.hda_cvt_setup* @snd_array_elem(%struct.TYPE_3__*, i32) #1

declare dso_local %struct.hda_cvt_setup* @snd_array_new(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
