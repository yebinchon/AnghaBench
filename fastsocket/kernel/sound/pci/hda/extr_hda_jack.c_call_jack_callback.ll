; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_jack.c_call_jack_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_jack.c_call_jack_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%struct.hda_jack_tbl = type { i32 (%struct.hda_codec.0*, %struct.hda_jack_tbl*)*, i64 }
%struct.hda_codec.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, %struct.hda_jack_tbl*)* @call_jack_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @call_jack_callback(%struct.hda_codec* %0, %struct.hda_jack_tbl* %1) #0 {
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.hda_jack_tbl*, align 8
  %5 = alloca %struct.hda_jack_tbl*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  store %struct.hda_jack_tbl* %1, %struct.hda_jack_tbl** %4, align 8
  %6 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %4, align 8
  %7 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %6, i32 0, i32 0
  %8 = load i32 (%struct.hda_codec.0*, %struct.hda_jack_tbl*)*, i32 (%struct.hda_codec.0*, %struct.hda_jack_tbl*)** %7, align 8
  %9 = icmp ne i32 (%struct.hda_codec.0*, %struct.hda_jack_tbl*)* %8, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %4, align 8
  %12 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %11, i32 0, i32 0
  %13 = load i32 (%struct.hda_codec.0*, %struct.hda_jack_tbl*)*, i32 (%struct.hda_codec.0*, %struct.hda_jack_tbl*)** %12, align 8
  %14 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %15 = bitcast %struct.hda_codec* %14 to %struct.hda_codec.0*
  %16 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %4, align 8
  %17 = call i32 %13(%struct.hda_codec.0* %15, %struct.hda_jack_tbl* %16)
  br label %18

18:                                               ; preds = %10, %2
  %19 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %4, align 8
  %20 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %45

23:                                               ; preds = %18
  %24 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %25 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %4, align 8
  %26 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = call %struct.hda_jack_tbl* @snd_hda_jack_tbl_get(%struct.hda_codec* %24, i64 %27)
  store %struct.hda_jack_tbl* %28, %struct.hda_jack_tbl** %5, align 8
  %29 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %5, align 8
  %30 = icmp ne %struct.hda_jack_tbl* %29, null
  br i1 %30, label %31, label %44

31:                                               ; preds = %23
  %32 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %5, align 8
  %33 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %32, i32 0, i32 0
  %34 = load i32 (%struct.hda_codec.0*, %struct.hda_jack_tbl*)*, i32 (%struct.hda_codec.0*, %struct.hda_jack_tbl*)** %33, align 8
  %35 = icmp ne i32 (%struct.hda_codec.0*, %struct.hda_jack_tbl*)* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %5, align 8
  %38 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %37, i32 0, i32 0
  %39 = load i32 (%struct.hda_codec.0*, %struct.hda_jack_tbl*)*, i32 (%struct.hda_codec.0*, %struct.hda_jack_tbl*)** %38, align 8
  %40 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %41 = bitcast %struct.hda_codec* %40 to %struct.hda_codec.0*
  %42 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %5, align 8
  %43 = call i32 %39(%struct.hda_codec.0* %41, %struct.hda_jack_tbl* %42)
  br label %44

44:                                               ; preds = %36, %31, %23
  br label %45

45:                                               ; preds = %44, %18
  ret void
}

declare dso_local %struct.hda_jack_tbl* @snd_hda_jack_tbl_get(%struct.hda_codec*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
