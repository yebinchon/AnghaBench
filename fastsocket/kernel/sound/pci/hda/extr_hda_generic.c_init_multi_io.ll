; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_init_multi_io.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_init_multi_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.nid_path = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @init_multi_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_multi_io(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.hda_gen_spec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.nid_path*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %7 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %8 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %7, i32 0, i32 0
  %9 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  store %struct.hda_gen_spec* %9, %struct.hda_gen_spec** %3, align 8
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %61, %1
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %13 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %64

16:                                               ; preds = %10
  %17 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %18 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %5, align 4
  %25 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call %struct.nid_path* @get_multiio_path(%struct.hda_codec* %25, i32 %26)
  store %struct.nid_path* %27, %struct.nid_path** %6, align 8
  %28 = load %struct.nid_path*, %struct.nid_path** %6, align 8
  %29 = icmp ne %struct.nid_path* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %16
  br label %61

31:                                               ; preds = %16
  %32 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %33 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %52, label %41

41:                                               ; preds = %31
  %42 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @snd_hda_codec_get_pin_target(%struct.hda_codec* %42, i32 %43)
  %45 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %46 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i32 %44, i32* %51, align 4
  br label %52

52:                                               ; preds = %41, %31
  %53 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %54 = load %struct.nid_path*, %struct.nid_path** %6, align 8
  %55 = load %struct.nid_path*, %struct.nid_path** %6, align 8
  %56 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %59 = call i32 @aamix_default(%struct.hda_gen_spec* %58)
  %60 = call i32 @snd_hda_activate_path(%struct.hda_codec* %53, %struct.nid_path* %54, i32 %57, i32 %59)
  br label %61

61:                                               ; preds = %52, %30
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %4, align 4
  br label %10

64:                                               ; preds = %10
  ret void
}

declare dso_local %struct.nid_path* @get_multiio_path(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_codec_get_pin_target(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_activate_path(%struct.hda_codec*, %struct.nid_path*, i32, i32) #1

declare dso_local i32 @aamix_default(%struct.hda_gen_spec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
