; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_conexant.c_cxt5066_automic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_conexant.c_cxt5066_automic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.conexant_spec* }
%struct.conexant_spec = type { i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @cxt5066_automic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxt5066_automic(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.conexant_spec*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %4 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %5 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %4, i32 0, i32 0
  %6 = load %struct.conexant_spec*, %struct.conexant_spec** %5, align 8
  store %struct.conexant_spec* %6, %struct.conexant_spec** %3, align 8
  %7 = load %struct.conexant_spec*, %struct.conexant_spec** %3, align 8
  %8 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %7, i32 0, i32 4
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %13 = call i32 @cxt5066_vostro_automic(%struct.hda_codec* %12)
  br label %50

14:                                               ; preds = %1
  %15 = load %struct.conexant_spec*, %struct.conexant_spec** %3, align 8
  %16 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %21 = call i32 @cxt5066_ideapad_automic(%struct.hda_codec* %20)
  br label %49

22:                                               ; preds = %14
  %23 = load %struct.conexant_spec*, %struct.conexant_spec** %3, align 8
  %24 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %29 = call i32 @cxt5066_thinkpad_automic(%struct.hda_codec* %28)
  br label %48

30:                                               ; preds = %22
  %31 = load %struct.conexant_spec*, %struct.conexant_spec** %3, align 8
  %32 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %37 = call i32 @cxt5066_hp_laptop_automic(%struct.hda_codec* %36)
  br label %47

38:                                               ; preds = %30
  %39 = load %struct.conexant_spec*, %struct.conexant_spec** %3, align 8
  %40 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %45 = call i32 @cxt5066_asus_automic(%struct.hda_codec* %44)
  br label %46

46:                                               ; preds = %43, %38
  br label %47

47:                                               ; preds = %46, %35
  br label %48

48:                                               ; preds = %47, %27
  br label %49

49:                                               ; preds = %48, %19
  br label %50

50:                                               ; preds = %49, %11
  ret void
}

declare dso_local i32 @cxt5066_vostro_automic(%struct.hda_codec*) #1

declare dso_local i32 @cxt5066_ideapad_automic(%struct.hda_codec*) #1

declare dso_local i32 @cxt5066_thinkpad_automic(%struct.hda_codec*) #1

declare dso_local i32 @cxt5066_hp_laptop_automic(%struct.hda_codec*) #1

declare dso_local i32 @cxt5066_asus_automic(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
