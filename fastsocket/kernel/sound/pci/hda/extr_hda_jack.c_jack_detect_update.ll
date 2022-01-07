; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_jack.c_jack_detect_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_jack.c_jack_detect_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%struct.hda_jack_tbl = type { i32, i64, i32, i64, i32, i64 }

@AC_PINSENSE_PRESENCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, %struct.hda_jack_tbl*)* @jack_detect_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jack_detect_update(%struct.hda_codec* %0, %struct.hda_jack_tbl* %1) #0 {
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.hda_jack_tbl*, align 8
  %5 = alloca %struct.hda_jack_tbl*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  store %struct.hda_jack_tbl* %1, %struct.hda_jack_tbl** %4, align 8
  %6 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %4, align 8
  %7 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %68

11:                                               ; preds = %2
  %12 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %4, align 8
  %13 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %12, i32 0, i32 5
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load i32, i32* @AC_PINSENSE_PRESENCE, align 4
  %18 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %4, align 8
  %19 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  br label %28

20:                                               ; preds = %11
  %21 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %22 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %4, align 8
  %23 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @read_pin_sense(%struct.hda_codec* %21, i32 %24)
  %26 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %4, align 8
  %27 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  br label %28

28:                                               ; preds = %20, %16
  %29 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %4, align 8
  %30 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %28
  %34 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %35 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %4, align 8
  %36 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @snd_hda_jack_detect(%struct.hda_codec* %34, i64 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %33
  %41 = load i32, i32* @AC_PINSENSE_PRESENCE, align 4
  %42 = xor i32 %41, -1
  %43 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %4, align 8
  %44 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 8
  br label %47

47:                                               ; preds = %40, %33, %28
  %48 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %4, align 8
  %49 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %48, i32 0, i32 0
  store i32 0, i32* %49, align 8
  %50 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %4, align 8
  %51 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %47
  %55 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %56 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %4, align 8
  %57 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = call %struct.hda_jack_tbl* @snd_hda_jack_tbl_get(%struct.hda_codec* %55, i64 %58)
  store %struct.hda_jack_tbl* %59, %struct.hda_jack_tbl** %5, align 8
  %60 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %5, align 8
  %61 = icmp ne %struct.hda_jack_tbl* %60, null
  br i1 %61, label %62, label %67

62:                                               ; preds = %54
  %63 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %5, align 8
  %64 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %63, i32 0, i32 0
  store i32 1, i32* %64, align 8
  %65 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %66 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %5, align 8
  call void @jack_detect_update(%struct.hda_codec* %65, %struct.hda_jack_tbl* %66)
  br label %67

67:                                               ; preds = %62, %54
  br label %68

68:                                               ; preds = %10, %67, %47
  ret void
}

declare dso_local i32 @read_pin_sense(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_jack_detect(%struct.hda_codec*, i64) #1

declare dso_local %struct.hda_jack_tbl* @snd_hda_jack_tbl_get(%struct.hda_codec*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
