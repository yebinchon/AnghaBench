; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_auto_parser.c_snd_hda_pick_fixup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_auto_parser.c_snd_hda_pick_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, i32, i8*, %struct.hda_fixup*, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.hda_model_fixup = type { i8*, i32 }
%struct.snd_pci_quirk = type { i32, i8*, i32, i32, i32 }
%struct.hda_fixup = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"nofixup\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_hda_pick_fixup(%struct.hda_codec* %0, %struct.hda_model_fixup* %1, %struct.snd_pci_quirk* %2, %struct.hda_fixup* %3) #0 {
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca %struct.hda_model_fixup*, align 8
  %7 = alloca %struct.snd_pci_quirk*, align 8
  %8 = alloca %struct.hda_fixup*, align 8
  %9 = alloca %struct.snd_pci_quirk*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %5, align 8
  store %struct.hda_model_fixup* %1, %struct.hda_model_fixup** %6, align 8
  store %struct.snd_pci_quirk* %2, %struct.snd_pci_quirk** %7, align 8
  store %struct.hda_fixup* %3, %struct.hda_fixup** %8, align 8
  store i32 -1, i32* %10, align 4
  store i8* null, i8** %11, align 8
  %14 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %15 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %14, i32 0, i32 5
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %4
  %19 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %20 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %19, i32 0, i32 5
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @strcmp(i64 %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %18
  %25 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %26 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %25, i32 0, i32 3
  store %struct.hda_fixup* null, %struct.hda_fixup** %26, align 8
  %27 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %28 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %27, i32 0, i32 0
  store i32 -1, i32* %28, align 8
  br label %141

29:                                               ; preds = %18, %4
  %30 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %31 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %30, i32 0, i32 5
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %63

34:                                               ; preds = %29
  %35 = load %struct.hda_model_fixup*, %struct.hda_model_fixup** %6, align 8
  %36 = icmp ne %struct.hda_model_fixup* %35, null
  br i1 %36, label %37, label %63

37:                                               ; preds = %34
  br label %38

38:                                               ; preds = %59, %37
  %39 = load %struct.hda_model_fixup*, %struct.hda_model_fixup** %6, align 8
  %40 = getelementptr inbounds %struct.hda_model_fixup, %struct.hda_model_fixup* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %62

43:                                               ; preds = %38
  %44 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %45 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %44, i32 0, i32 5
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.hda_model_fixup*, %struct.hda_model_fixup** %6, align 8
  %48 = getelementptr inbounds %struct.hda_model_fixup, %struct.hda_model_fixup* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @strcmp(i64 %46, i8* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %43
  %53 = load %struct.hda_model_fixup*, %struct.hda_model_fixup** %6, align 8
  %54 = getelementptr inbounds %struct.hda_model_fixup, %struct.hda_model_fixup* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %10, align 4
  %56 = load %struct.hda_model_fixup*, %struct.hda_model_fixup** %6, align 8
  %57 = getelementptr inbounds %struct.hda_model_fixup, %struct.hda_model_fixup* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  store i8* %58, i8** %11, align 8
  br label %62

59:                                               ; preds = %43
  %60 = load %struct.hda_model_fixup*, %struct.hda_model_fixup** %6, align 8
  %61 = getelementptr inbounds %struct.hda_model_fixup, %struct.hda_model_fixup* %60, i32 1
  store %struct.hda_model_fixup* %61, %struct.hda_model_fixup** %6, align 8
  br label %38

62:                                               ; preds = %52, %38
  br label %63

63:                                               ; preds = %62, %34, %29
  %64 = load i32, i32* %10, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %84

66:                                               ; preds = %63
  %67 = load %struct.snd_pci_quirk*, %struct.snd_pci_quirk** %7, align 8
  %68 = icmp ne %struct.snd_pci_quirk* %67, null
  br i1 %68, label %69, label %84

69:                                               ; preds = %66
  %70 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %71 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %70, i32 0, i32 4
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.snd_pci_quirk*, %struct.snd_pci_quirk** %7, align 8
  %76 = call %struct.snd_pci_quirk* @snd_pci_quirk_lookup(i32 %74, %struct.snd_pci_quirk* %75)
  store %struct.snd_pci_quirk* %76, %struct.snd_pci_quirk** %9, align 8
  %77 = load %struct.snd_pci_quirk*, %struct.snd_pci_quirk** %9, align 8
  %78 = icmp ne %struct.snd_pci_quirk* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %69
  %80 = load %struct.snd_pci_quirk*, %struct.snd_pci_quirk** %9, align 8
  %81 = getelementptr inbounds %struct.snd_pci_quirk, %struct.snd_pci_quirk* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  store i32 %82, i32* %10, align 4
  br label %83

83:                                               ; preds = %79, %69
  br label %84

84:                                               ; preds = %83, %66, %63
  %85 = load i32, i32* %10, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %128

87:                                               ; preds = %84
  %88 = load %struct.snd_pci_quirk*, %struct.snd_pci_quirk** %7, align 8
  %89 = icmp ne %struct.snd_pci_quirk* %88, null
  br i1 %89, label %90, label %128

90:                                               ; preds = %87
  %91 = load %struct.snd_pci_quirk*, %struct.snd_pci_quirk** %7, align 8
  store %struct.snd_pci_quirk* %91, %struct.snd_pci_quirk** %9, align 8
  br label %92

92:                                               ; preds = %124, %90
  %93 = load %struct.snd_pci_quirk*, %struct.snd_pci_quirk** %9, align 8
  %94 = getelementptr inbounds %struct.snd_pci_quirk, %struct.snd_pci_quirk* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %127

97:                                               ; preds = %92
  %98 = load %struct.snd_pci_quirk*, %struct.snd_pci_quirk** %9, align 8
  %99 = getelementptr inbounds %struct.snd_pci_quirk, %struct.snd_pci_quirk* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.snd_pci_quirk*, %struct.snd_pci_quirk** %9, align 8
  %102 = getelementptr inbounds %struct.snd_pci_quirk, %struct.snd_pci_quirk* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = shl i32 %103, 16
  %105 = or i32 %100, %104
  store i32 %105, i32* %12, align 4
  %106 = load %struct.snd_pci_quirk*, %struct.snd_pci_quirk** %9, align 8
  %107 = getelementptr inbounds %struct.snd_pci_quirk, %struct.snd_pci_quirk* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = or i32 -65536, %108
  store i32 %109, i32* %13, align 4
  %110 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %111 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %13, align 4
  %114 = and i32 %112, %113
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* %13, align 4
  %117 = and i32 %115, %116
  %118 = icmp eq i32 %114, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %97
  %120 = load %struct.snd_pci_quirk*, %struct.snd_pci_quirk** %9, align 8
  %121 = getelementptr inbounds %struct.snd_pci_quirk, %struct.snd_pci_quirk* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  store i32 %122, i32* %10, align 4
  br label %127

123:                                              ; preds = %97
  br label %124

124:                                              ; preds = %123
  %125 = load %struct.snd_pci_quirk*, %struct.snd_pci_quirk** %9, align 8
  %126 = getelementptr inbounds %struct.snd_pci_quirk, %struct.snd_pci_quirk* %125, i32 1
  store %struct.snd_pci_quirk* %126, %struct.snd_pci_quirk** %9, align 8
  br label %92

127:                                              ; preds = %119, %92
  br label %128

128:                                              ; preds = %127, %87, %84
  %129 = load i32, i32* %10, align 4
  %130 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %131 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 8
  %132 = load i32, i32* %10, align 4
  %133 = icmp sge i32 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %128
  %135 = load %struct.hda_fixup*, %struct.hda_fixup** %8, align 8
  %136 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %137 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %136, i32 0, i32 3
  store %struct.hda_fixup* %135, %struct.hda_fixup** %137, align 8
  %138 = load i8*, i8** %11, align 8
  %139 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %140 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %139, i32 0, i32 2
  store i8* %138, i8** %140, align 8
  br label %141

141:                                              ; preds = %24, %134, %128
  ret void
}

declare dso_local i32 @strcmp(i64, i8*) #1

declare dso_local %struct.snd_pci_quirk* @snd_pci_quirk_lookup(i32, %struct.snd_pci_quirk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
