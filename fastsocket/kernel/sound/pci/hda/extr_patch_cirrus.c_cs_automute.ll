; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_cirrus.c_cs_automute.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_cirrus.c_cs_automute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.cs_spec* }
%struct.cs_spec = type { i64, i64, i64, %struct.TYPE_2__, i64, i64 }
%struct.TYPE_2__ = type { i32, i64 }

@AC_VERB_SET_GPIO_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @cs_automute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs_automute(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.cs_spec*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %4 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %5 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %4, i32 0, i32 0
  %6 = load %struct.cs_spec*, %struct.cs_spec** %5, align 8
  store %struct.cs_spec* %6, %struct.cs_spec** %3, align 8
  %7 = load %struct.cs_spec*, %struct.cs_spec** %3, align 8
  %8 = getelementptr inbounds %struct.cs_spec, %struct.cs_spec* %7, i32 0, i32 5
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.cs_spec*, %struct.cs_spec** %3, align 8
  %13 = getelementptr inbounds %struct.cs_spec, %struct.cs_spec* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br label %16

16:                                               ; preds = %11, %1
  %17 = phi i1 [ false, %1 ], [ %15, %11 ]
  %18 = xor i1 %17, true
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = load %struct.cs_spec*, %struct.cs_spec** %3, align 8
  %22 = getelementptr inbounds %struct.cs_spec, %struct.cs_spec* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 8
  %24 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %25 = call i32 @snd_hda_gen_update_outputs(%struct.hda_codec* %24)
  %26 = load %struct.cs_spec*, %struct.cs_spec** %3, align 8
  %27 = getelementptr inbounds %struct.cs_spec, %struct.cs_spec* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %54

30:                                               ; preds = %16
  %31 = load %struct.cs_spec*, %struct.cs_spec** %3, align 8
  %32 = getelementptr inbounds %struct.cs_spec, %struct.cs_spec* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load %struct.cs_spec*, %struct.cs_spec** %3, align 8
  %38 = getelementptr inbounds %struct.cs_spec, %struct.cs_spec* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  br label %44

40:                                               ; preds = %30
  %41 = load %struct.cs_spec*, %struct.cs_spec** %3, align 8
  %42 = getelementptr inbounds %struct.cs_spec, %struct.cs_spec* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  br label %44

44:                                               ; preds = %40, %36
  %45 = phi i64 [ %39, %36 ], [ %43, %40 ]
  %46 = load %struct.cs_spec*, %struct.cs_spec** %3, align 8
  %47 = getelementptr inbounds %struct.cs_spec, %struct.cs_spec* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %49 = load i32, i32* @AC_VERB_SET_GPIO_DATA, align 4
  %50 = load %struct.cs_spec*, %struct.cs_spec** %3, align 8
  %51 = getelementptr inbounds %struct.cs_spec, %struct.cs_spec* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @snd_hda_codec_write(%struct.hda_codec* %48, i32 1, i32 0, i32 %49, i64 %52)
  br label %54

54:                                               ; preds = %44, %16
  ret void
}

declare dso_local i32 @snd_hda_gen_update_outputs(%struct.hda_codec*) #1

declare dso_local i32 @snd_hda_codec_write(%struct.hda_codec*, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
