; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_set_output_and_unmute.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_set_output_and_unmute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%struct.nid_path = type { i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, i32)* @set_output_and_unmute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_output_and_unmute(%struct.hda_codec* %0, i32 %1) #0 {
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nid_path*, align 8
  %6 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.nid_path* @snd_hda_get_path_from_idx(%struct.hda_codec* %7, i32 %8)
  store %struct.nid_path* %9, %struct.nid_path** %5, align 8
  %10 = load %struct.nid_path*, %struct.nid_path** %5, align 8
  %11 = icmp ne %struct.nid_path* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.nid_path*, %struct.nid_path** %5, align 8
  %14 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12, %2
  br label %48

18:                                               ; preds = %12
  %19 = load %struct.nid_path*, %struct.nid_path** %5, align 8
  %20 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.nid_path*, %struct.nid_path** %5, align 8
  %23 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %21, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %6, align 4
  %29 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @restore_pin_ctl(%struct.hda_codec* %29, i32 %30)
  %32 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %33 = load %struct.nid_path*, %struct.nid_path** %5, align 8
  %34 = load %struct.nid_path*, %struct.nid_path** %5, align 8
  %35 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %38 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @aamix_default(i32 %39)
  %41 = call i32 @snd_hda_activate_path(%struct.hda_codec* %32, %struct.nid_path* %33, i32 %36, i32 %40)
  %42 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.nid_path*, %struct.nid_path** %5, align 8
  %45 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @set_pin_eapd(%struct.hda_codec* %42, i32 %43, i32 %46)
  br label %48

48:                                               ; preds = %18, %17
  ret void
}

declare dso_local %struct.nid_path* @snd_hda_get_path_from_idx(%struct.hda_codec*, i32) #1

declare dso_local i32 @restore_pin_ctl(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_activate_path(%struct.hda_codec*, %struct.nid_path*, i32, i32) #1

declare dso_local i32 @aamix_default(i32) #1

declare dso_local i32 @set_pin_eapd(%struct.hda_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
