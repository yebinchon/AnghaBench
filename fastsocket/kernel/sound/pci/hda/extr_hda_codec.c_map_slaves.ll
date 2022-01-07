; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_map_slaves.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_map_slaves.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.hda_nid_item* }
%struct.hda_nid_item = type { %struct.snd_kcontrol* }
%struct.snd_kcontrol = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }

@SNDRV_CTL_ELEM_IFACE_MIXER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i8**, i8*, i32 (i8*, %struct.snd_kcontrol*)*, i8*)* @map_slaves to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_slaves(%struct.hda_codec* %0, i8** %1, i8* %2, i32 (i8*, %struct.snd_kcontrol*)* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hda_codec*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32 (i8*, %struct.snd_kcontrol*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.hda_nid_item*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.snd_kcontrol*, align 8
  %17 = alloca [4 x i8], align 1
  %18 = alloca i8*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 (i8*, %struct.snd_kcontrol*)* %3, i32 (i8*, %struct.snd_kcontrol*)** %10, align 8
  store i8* %4, i8** %11, align 8
  %19 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %20 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load %struct.hda_nid_item*, %struct.hda_nid_item** %21, align 8
  store %struct.hda_nid_item* %22, %struct.hda_nid_item** %12, align 8
  store i32 0, i32* %14, align 4
  br label %23

23:                                               ; preds = %93, %5
  %24 = load i32, i32* %14, align 4
  %25 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %26 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %24, %28
  br i1 %29, label %30, label %96

30:                                               ; preds = %23
  %31 = load %struct.hda_nid_item*, %struct.hda_nid_item** %12, align 8
  %32 = load i32, i32* %14, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.hda_nid_item, %struct.hda_nid_item* %31, i64 %33
  %35 = getelementptr inbounds %struct.hda_nid_item, %struct.hda_nid_item* %34, i32 0, i32 0
  %36 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %35, align 8
  store %struct.snd_kcontrol* %36, %struct.snd_kcontrol** %16, align 8
  %37 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %16, align 8
  %38 = icmp ne %struct.snd_kcontrol* %37, null
  br i1 %38, label %39, label %52

39:                                               ; preds = %30
  %40 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %16, align 8
  %41 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %39
  %46 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %16, align 8
  %47 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @SNDRV_CTL_ELEM_IFACE_MIXER, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %45, %39, %30
  br label %93

53:                                               ; preds = %45
  %54 = load i8**, i8*** %8, align 8
  store i8** %54, i8*** %13, align 8
  br label %55

55:                                               ; preds = %89, %53
  %56 = load i8**, i8*** %13, align 8
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %92

59:                                               ; preds = %55
  %60 = load i8**, i8*** %13, align 8
  %61 = load i8*, i8** %60, align 8
  store i8* %61, i8** %18, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = getelementptr inbounds [4 x i8], [4 x i8]* %17, i64 0, i64 0
  %66 = load i8*, i8** %18, align 8
  %67 = load i8*, i8** %9, align 8
  %68 = call i32 @snprintf(i8* %65, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %66, i8* %67)
  %69 = getelementptr inbounds [4 x i8], [4 x i8]* %17, i64 0, i64 0
  store i8* %69, i8** %18, align 8
  br label %70

70:                                               ; preds = %64, %59
  %71 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %16, align 8
  %72 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i8*, i8** %18, align 8
  %76 = call i32 @strcmp(i32 %74, i8* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %88, label %78

78:                                               ; preds = %70
  %79 = load i32 (i8*, %struct.snd_kcontrol*)*, i32 (i8*, %struct.snd_kcontrol*)** %10, align 8
  %80 = load i8*, i8** %11, align 8
  %81 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %16, align 8
  %82 = call i32 %79(i8* %80, %struct.snd_kcontrol* %81)
  store i32 %82, i32* %15, align 4
  %83 = load i32, i32* %15, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %78
  %86 = load i32, i32* %15, align 4
  store i32 %86, i32* %6, align 4
  br label %97

87:                                               ; preds = %78
  br label %92

88:                                               ; preds = %70
  br label %89

89:                                               ; preds = %88
  %90 = load i8**, i8*** %13, align 8
  %91 = getelementptr inbounds i8*, i8** %90, i32 1
  store i8** %91, i8*** %13, align 8
  br label %55

92:                                               ; preds = %87, %55
  br label %93

93:                                               ; preds = %92, %52
  %94 = load i32, i32* %14, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %14, align 4
  br label %23

96:                                               ; preds = %23
  store i32 0, i32* %6, align 4
  br label %97

97:                                               ; preds = %96, %85
  %98 = load i32, i32* %6, align 4
  ret i32 %98
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
