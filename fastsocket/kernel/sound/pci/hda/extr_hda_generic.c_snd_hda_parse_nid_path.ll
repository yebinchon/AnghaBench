; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_snd_hda_parse_nid_path.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_snd_hda_parse_nid_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%struct.nid_path = type { i64, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hda_parse_nid_path(%struct.hda_codec* %0, i32 %1, i32 %2, i32 %3, %struct.nid_path* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hda_codec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nid_path*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.nid_path* %4, %struct.nid_path** %11, align 8
  %12 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* %10, align 4
  %16 = load %struct.nid_path*, %struct.nid_path** %11, align 8
  %17 = call i64 @__parse_nid_path(%struct.hda_codec* %12, i32 %13, i32 %14, i32 %15, %struct.nid_path* %16, i32 1)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %5
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.nid_path*, %struct.nid_path** %11, align 8
  %22 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.nid_path*, %struct.nid_path** %11, align 8
  %25 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  store i32 %20, i32* %27, align 4
  %28 = load %struct.nid_path*, %struct.nid_path** %11, align 8
  %29 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %29, align 8
  store i32 1, i32* %6, align 4
  br label %33

32:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %32, %19
  %34 = load i32, i32* %6, align 4
  ret i32 %34
}

declare dso_local i64 @__parse_nid_path(%struct.hda_codec*, i32, i32, i32, %struct.nid_path*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
