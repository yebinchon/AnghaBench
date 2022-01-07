; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_snd_hda_add_new_ctls.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_snd_hda_add_new_ctls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%struct.snd_kcontrol_new = type { i32, i64, i32 }
%struct.snd_kcontrol = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hda_add_new_ctls(%struct.hda_codec* %0, %struct.snd_kcontrol_new* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca %struct.snd_kcontrol_new*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_kcontrol*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store %struct.snd_kcontrol_new* %1, %struct.snd_kcontrol_new** %5, align 8
  br label %10

10:                                               ; preds = %90, %2
  %11 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %5, align 8
  %12 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %93

15:                                               ; preds = %10
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %16 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %5, align 8
  %17 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %90

21:                                               ; preds = %15
  br label %22

22:                                               ; preds = %88, %21
  %23 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %5, align 8
  %24 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %25 = call %struct.snd_kcontrol* @snd_ctl_new1(%struct.snd_kcontrol_new* %23, %struct.hda_codec* %24)
  store %struct.snd_kcontrol* %25, %struct.snd_kcontrol** %7, align 8
  %26 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %27 = icmp ne %struct.snd_kcontrol* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %94

31:                                               ; preds = %22
  %32 = load i32, i32* %8, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %37 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 4
  br label %39

39:                                               ; preds = %34, %31
  %40 = load i32, i32* %9, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %45 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  store i32 %43, i32* %46, align 4
  br label %47

47:                                               ; preds = %42, %39
  %48 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %49 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %50 = call i32 @snd_hda_ctl_add(%struct.hda_codec* %48, i32 0, %struct.snd_kcontrol* %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %47
  br label %89

54:                                               ; preds = %47
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %66, label %57

57:                                               ; preds = %54
  %58 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %59 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %64 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %8, align 4
  br label %88

66:                                               ; preds = %57, %54
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %85, label %69

69:                                               ; preds = %66
  %70 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %5, align 8
  %71 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %85, label %74

74:                                               ; preds = %69
  %75 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %76 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %5, align 8
  %77 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @find_empty_mixer_ctl_idx(%struct.hda_codec* %75, i64 %78, i32 0)
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp sle i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %74
  %83 = load i32, i32* %6, align 4
  store i32 %83, i32* %3, align 4
  br label %94

84:                                               ; preds = %74
  br label %87

85:                                               ; preds = %69, %66
  %86 = load i32, i32* %6, align 4
  store i32 %86, i32* %3, align 4
  br label %94

87:                                               ; preds = %84
  br label %88

88:                                               ; preds = %87, %62
  br label %22

89:                                               ; preds = %53
  br label %90

90:                                               ; preds = %89, %20
  %91 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %5, align 8
  %92 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %91, i32 1
  store %struct.snd_kcontrol_new* %92, %struct.snd_kcontrol_new** %5, align 8
  br label %10

93:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %93, %85, %82, %28
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local %struct.snd_kcontrol* @snd_ctl_new1(%struct.snd_kcontrol_new*, %struct.hda_codec*) #1

declare dso_local i32 @snd_hda_ctl_add(%struct.hda_codec*, i32, %struct.snd_kcontrol*) #1

declare dso_local i32 @find_empty_mixer_ctl_idx(%struct.hda_codec*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
