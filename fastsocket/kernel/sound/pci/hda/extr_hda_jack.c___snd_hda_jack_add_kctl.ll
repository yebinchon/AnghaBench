; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_jack.c___snd_hda_jack_add_kctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_jack.c___snd_hda_jack_add_kctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.hda_jack_tbl = type { i32, i32, %struct.TYPE_5__*, %struct.snd_kcontrol* }
%struct.TYPE_5__ = type { i32, %struct.hda_jack_tbl* }
%struct.snd_kcontrol = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@hda_free_jack_priv = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i32, i8*, i32, i32)* @__snd_hda_jack_add_kctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__snd_hda_jack_add_kctl(%struct.hda_codec* %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hda_codec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.hda_jack_tbl*, align 8
  %13 = alloca %struct.snd_kcontrol*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call %struct.hda_jack_tbl* @snd_hda_jack_tbl_new(%struct.hda_codec* %16, i32 %17)
  store %struct.hda_jack_tbl* %18, %struct.hda_jack_tbl** %12, align 8
  %19 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %12, align 8
  %20 = icmp ne %struct.hda_jack_tbl* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %69

22:                                               ; preds = %5
  %23 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %12, align 8
  %24 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %23, i32 0, i32 3
  %25 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %24, align 8
  %26 = icmp ne %struct.snd_kcontrol* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 0, i32* %6, align 4
  br label %69

28:                                               ; preds = %22
  %29 = load i8*, i8** %9, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %32 = call %struct.snd_kcontrol* @snd_kctl_jack_new(i8* %29, i32 %30, %struct.hda_codec* %31)
  store %struct.snd_kcontrol* %32, %struct.snd_kcontrol** %13, align 8
  %33 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %13, align 8
  %34 = icmp ne %struct.snd_kcontrol* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %28
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %69

38:                                               ; preds = %28
  %39 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %13, align 8
  %42 = call i32 @snd_hda_ctl_add(%struct.hda_codec* %39, i32 %40, %struct.snd_kcontrol* %41)
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %14, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* %14, align 4
  store i32 %46, i32* %6, align 4
  br label %69

47:                                               ; preds = %38
  %48 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %13, align 8
  %49 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %12, align 8
  %50 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %49, i32 0, i32 3
  store %struct.snd_kcontrol* %48, %struct.snd_kcontrol** %50, align 8
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %12, align 8
  %57 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @snd_hda_jack_detect(%struct.hda_codec* %58, i32 %59)
  store i32 %60, i32* %15, align 4
  %61 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %62 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %13, align 8
  %67 = load i32, i32* %15, align 4
  %68 = call i32 @snd_kctl_jack_report(i32 %65, %struct.snd_kcontrol* %66, i32 %67)
  store i32 0, i32* %6, align 4
  br label %69

69:                                               ; preds = %47, %45, %35, %27, %21
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local %struct.hda_jack_tbl* @snd_hda_jack_tbl_new(%struct.hda_codec*, i32) #1

declare dso_local %struct.snd_kcontrol* @snd_kctl_jack_new(i8*, i32, %struct.hda_codec*) #1

declare dso_local i32 @snd_hda_ctl_add(%struct.hda_codec*, i32, %struct.snd_kcontrol*) #1

declare dso_local i32 @snd_hda_jack_detect(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_kctl_jack_report(i32, %struct.snd_kcontrol*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
