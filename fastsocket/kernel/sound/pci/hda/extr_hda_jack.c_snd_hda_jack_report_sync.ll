; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_jack.c_snd_hda_jack_report_sync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_jack.c_snd_hda_jack_report_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, %struct.hda_jack_tbl* }
%struct.hda_jack_tbl = type { i32, i64, i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_hda_jack_report_sync(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.hda_jack_tbl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %6 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %7 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %9 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %8, align 8
  store %struct.hda_jack_tbl* %9, %struct.hda_jack_tbl** %3, align 8
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %27, %1
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %13 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %11, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %10
  %18 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %3, align 8
  %19 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %24 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %3, align 8
  %25 = call i32 @jack_detect_update(%struct.hda_codec* %23, %struct.hda_jack_tbl* %24)
  br label %26

26:                                               ; preds = %22, %17
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %4, align 4
  %30 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %3, align 8
  %31 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %30, i32 1
  store %struct.hda_jack_tbl* %31, %struct.hda_jack_tbl** %3, align 8
  br label %10

32:                                               ; preds = %10
  %33 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %34 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %35, align 8
  store %struct.hda_jack_tbl* %36, %struct.hda_jack_tbl** %3, align 8
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %71, %32
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %40 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %38, %42
  br i1 %43, label %44, label %76

44:                                               ; preds = %37
  %45 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %3, align 8
  %46 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %70

49:                                               ; preds = %44
  %50 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %3, align 8
  %51 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  br label %71

55:                                               ; preds = %49
  %56 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %3, align 8
  %57 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @get_jack_plug_state(i32 %58)
  store i32 %59, i32* %5, align 4
  %60 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %61 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %3, align 8
  %66 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @snd_kctl_jack_report(i32 %64, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %55, %44
  br label %71

71:                                               ; preds = %70, %54
  %72 = load i32, i32* %4, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %4, align 4
  %74 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %3, align 8
  %75 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %74, i32 1
  store %struct.hda_jack_tbl* %75, %struct.hda_jack_tbl** %3, align 8
  br label %37

76:                                               ; preds = %37
  ret void
}

declare dso_local i32 @jack_detect_update(%struct.hda_codec*, %struct.hda_jack_tbl*) #1

declare dso_local i32 @get_jack_plug_state(i32) #1

declare dso_local i32 @snd_kctl_jack_report(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
