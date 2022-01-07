; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_conexant.c_cxt5066_update_speaker.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_conexant.c_cxt5066_update_speaker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.conexant_spec* }
%struct.conexant_spec = type { i32, i64, i32, i64, i64 }

@.str = private unnamed_addr constant [53 x i8] c"CXT5066: update speaker, hp_present=%d, cur_eapd=%d\0A\00", align 1
@PIN_HP = common dso_local global i32 0, align 4
@PIN_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @cxt5066_update_speaker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxt5066_update_speaker(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.conexant_spec*, align 8
  %4 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %5 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %6 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %5, i32 0, i32 0
  %7 = load %struct.conexant_spec*, %struct.conexant_spec** %6, align 8
  store %struct.conexant_spec* %7, %struct.conexant_spec** %3, align 8
  %8 = load %struct.conexant_spec*, %struct.conexant_spec** %3, align 8
  %9 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.conexant_spec*, %struct.conexant_spec** %3, align 8
  %12 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @snd_printdd(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %10, i64 %13)
  %15 = load %struct.conexant_spec*, %struct.conexant_spec** %3, align 8
  %16 = call i64 @hp_port_a_present(%struct.conexant_spec* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = load %struct.conexant_spec*, %struct.conexant_spec** %3, align 8
  %20 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* @PIN_HP, align 4
  br label %26

25:                                               ; preds = %18, %1
  br label %26

26:                                               ; preds = %25, %23
  %27 = phi i32 [ %24, %23 ], [ 0, %25 ]
  store i32 %27, i32* %4, align 4
  %28 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @snd_hda_set_pin_ctl(%struct.hda_codec* %28, i32 25, i32 %29)
  %31 = load %struct.conexant_spec*, %struct.conexant_spec** %3, align 8
  %32 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %26
  %36 = load %struct.conexant_spec*, %struct.conexant_spec** %3, align 8
  %37 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  br label %40

39:                                               ; preds = %26
  br label %40

40:                                               ; preds = %39, %35
  %41 = phi i32 [ %38, %35 ], [ 0, %39 ]
  store i32 %41, i32* %4, align 4
  %42 = load %struct.conexant_spec*, %struct.conexant_spec** %3, align 8
  %43 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %40
  %47 = load %struct.conexant_spec*, %struct.conexant_spec** %3, align 8
  %48 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46, %40
  %52 = load %struct.conexant_spec*, %struct.conexant_spec** %3, align 8
  %53 = call i64 @hp_port_a_present(%struct.conexant_spec* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %55, %51
  br label %63

57:                                               ; preds = %46
  %58 = load %struct.conexant_spec*, %struct.conexant_spec** %3, align 8
  %59 = call i32 @hp_port_d_present(%struct.conexant_spec* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %57
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %61, %57
  br label %63

63:                                               ; preds = %62, %56
  %64 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @snd_hda_set_pin_ctl(%struct.hda_codec* %64, i32 28, i32 %65)
  %67 = load %struct.conexant_spec*, %struct.conexant_spec** %3, align 8
  %68 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %78, label %71

71:                                               ; preds = %63
  %72 = load %struct.conexant_spec*, %struct.conexant_spec** %3, align 8
  %73 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = load i32, i32* @PIN_OUT, align 4
  br label %79

78:                                               ; preds = %71, %63
  br label %79

79:                                               ; preds = %78, %76
  %80 = phi i32 [ %77, %76 ], [ 0, %78 ]
  store i32 %80, i32* %4, align 4
  %81 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %82 = load i32, i32* %4, align 4
  %83 = call i32 @snd_hda_set_pin_ctl(%struct.hda_codec* %81, i32 31, i32 %82)
  ret void
}

declare dso_local i32 @snd_printdd(i8*, i32, i64) #1

declare dso_local i64 @hp_port_a_present(%struct.conexant_spec*) #1

declare dso_local i32 @snd_hda_set_pin_ctl(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @hp_port_d_present(%struct.conexant_spec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
