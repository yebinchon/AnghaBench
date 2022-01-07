; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/extr_soc-dapm.c_dapm_connect_mux.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/extr_soc-dapm.c_dapm_connect_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_codec = type { i32 }
%struct.snd_soc_dapm_widget = type { i32, i32 }
%struct.snd_soc_dapm_path = type { i8*, i32, i32, i32 }
%struct.snd_kcontrol_new = type { i64 }
%struct.soc_enum = type { i32, i64* }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_codec*, %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_path*, i8*, %struct.snd_kcontrol_new*)* @dapm_connect_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dapm_connect_mux(%struct.snd_soc_codec* %0, %struct.snd_soc_dapm_widget* %1, %struct.snd_soc_dapm_widget* %2, %struct.snd_soc_dapm_path* %3, i8* %4, %struct.snd_kcontrol_new* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_codec*, align 8
  %9 = alloca %struct.snd_soc_dapm_widget*, align 8
  %10 = alloca %struct.snd_soc_dapm_widget*, align 8
  %11 = alloca %struct.snd_soc_dapm_path*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.snd_kcontrol_new*, align 8
  %14 = alloca %struct.soc_enum*, align 8
  %15 = alloca i32, align 4
  store %struct.snd_soc_codec* %0, %struct.snd_soc_codec** %8, align 8
  store %struct.snd_soc_dapm_widget* %1, %struct.snd_soc_dapm_widget** %9, align 8
  store %struct.snd_soc_dapm_widget* %2, %struct.snd_soc_dapm_widget** %10, align 8
  store %struct.snd_soc_dapm_path* %3, %struct.snd_soc_dapm_path** %11, align 8
  store i8* %4, i8** %12, align 8
  store %struct.snd_kcontrol_new* %5, %struct.snd_kcontrol_new** %13, align 8
  %16 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %13, align 8
  %17 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.soc_enum*
  store %struct.soc_enum* %19, %struct.soc_enum** %14, align 8
  store i32 0, i32* %15, align 4
  br label %20

20:                                               ; preds = %67, %6
  %21 = load i32, i32* %15, align 4
  %22 = load %struct.soc_enum*, %struct.soc_enum** %14, align 8
  %23 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %70

26:                                               ; preds = %20
  %27 = load i8*, i8** %12, align 8
  %28 = load %struct.soc_enum*, %struct.soc_enum** %14, align 8
  %29 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %28, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = load i32, i32* %15, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @strcmp(i8* %27, i64 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %66, label %37

37:                                               ; preds = %26
  %38 = load %struct.snd_soc_dapm_path*, %struct.snd_soc_dapm_path** %11, align 8
  %39 = getelementptr inbounds %struct.snd_soc_dapm_path, %struct.snd_soc_dapm_path* %38, i32 0, i32 3
  %40 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %41 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %40, i32 0, i32 0
  %42 = call i32 @list_add(i32* %39, i32* %41)
  %43 = load %struct.snd_soc_dapm_path*, %struct.snd_soc_dapm_path** %11, align 8
  %44 = getelementptr inbounds %struct.snd_soc_dapm_path, %struct.snd_soc_dapm_path* %43, i32 0, i32 2
  %45 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %10, align 8
  %46 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %45, i32 0, i32 1
  %47 = call i32 @list_add(i32* %44, i32* %46)
  %48 = load %struct.snd_soc_dapm_path*, %struct.snd_soc_dapm_path** %11, align 8
  %49 = getelementptr inbounds %struct.snd_soc_dapm_path, %struct.snd_soc_dapm_path* %48, i32 0, i32 1
  %50 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %9, align 8
  %51 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %50, i32 0, i32 0
  %52 = call i32 @list_add(i32* %49, i32* %51)
  %53 = load %struct.soc_enum*, %struct.soc_enum** %14, align 8
  %54 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %53, i32 0, i32 1
  %55 = load i64*, i64** %54, align 8
  %56 = load i32, i32* %15, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to i8*
  %61 = load %struct.snd_soc_dapm_path*, %struct.snd_soc_dapm_path** %11, align 8
  %62 = getelementptr inbounds %struct.snd_soc_dapm_path, %struct.snd_soc_dapm_path* %61, i32 0, i32 0
  store i8* %60, i8** %62, align 8
  %63 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %10, align 8
  %64 = load %struct.snd_soc_dapm_path*, %struct.snd_soc_dapm_path** %11, align 8
  %65 = call i32 @dapm_set_path_status(%struct.snd_soc_dapm_widget* %63, %struct.snd_soc_dapm_path* %64, i32 0)
  store i32 0, i32* %7, align 4
  br label %73

66:                                               ; preds = %26
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %15, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %15, align 4
  br label %20

70:                                               ; preds = %20
  %71 = load i32, i32* @ENODEV, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %7, align 4
  br label %73

73:                                               ; preds = %70, %37
  %74 = load i32, i32* %7, align 4
  ret i32 %74
}

declare dso_local i32 @strcmp(i8*, i64) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @dapm_set_path_status(%struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_path*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
