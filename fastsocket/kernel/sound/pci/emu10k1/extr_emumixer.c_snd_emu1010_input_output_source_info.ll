; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emumixer.c_snd_emu1010_input_output_source_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emumixer.c_snd_emu1010_input_output_source_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_info = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.snd_emu10k1 = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@SNDRV_CTL_ELEM_TYPE_ENUMERATED = common dso_local global i32 0, align 4
@EMU_MODEL_EMU1616 = common dso_local global i64 0, align 8
@emu1616_src_texts = common dso_local global i8** null, align 8
@emu1010_src_texts = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_info*)* @snd_emu1010_input_output_source_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_emu1010_input_output_source_info(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_info* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_info*, align 8
  %5 = alloca %struct.snd_emu10k1*, align 8
  %6 = alloca i8**, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_info* %1, %struct.snd_ctl_elem_info** %4, align 8
  %7 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %8 = call %struct.snd_emu10k1* @snd_kcontrol_chip(%struct.snd_kcontrol* %7)
  store %struct.snd_emu10k1* %8, %struct.snd_emu10k1** %5, align 8
  %9 = load i32, i32* @SNDRV_CTL_ELEM_TYPE_ENUMERATED, align 4
  %10 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %11 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %10, i32 0, i32 2
  store i32 %9, i32* %11, align 4
  %12 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %13 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %12, i32 0, i32 0
  store i32 1, i32* %13, align 4
  %14 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %15 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @EMU_MODEL_EMU1616, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %23 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store i32 49, i32* %25, align 4
  %26 = load i8**, i8*** @emu1616_src_texts, align 8
  store i8** %26, i8*** %6, align 8
  br label %33

27:                                               ; preds = %2
  %28 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %29 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store i32 53, i32* %31, align 4
  %32 = load i8**, i8*** @emu1010_src_texts, align 8
  store i8** %32, i8*** %6, align 8
  br label %33

33:                                               ; preds = %27, %21
  %34 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %35 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %40 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp sge i32 %38, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %33
  %46 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %47 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = sub nsw i32 %50, 1
  %52 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %53 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  store i32 %51, i32* %55, align 4
  br label %56

56:                                               ; preds = %45, %33
  %57 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %58 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load i8**, i8*** %6, align 8
  %63 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %64 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8*, i8** %62, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @strcpy(i32 %61, i8* %70)
  ret i32 0
}

declare dso_local %struct.snd_emu10k1* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
