; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_azt3328.c_snd_azf3328_get_mixer_enum.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_azt3328.c_snd_azf3328_get_mixer_enum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i16* }
%struct.snd_azf3328 = type { i32 }
%struct.azf3328_mixer_reg = type { i64, i32, i16 }

@IDX_MIXER_REC_SELECT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [57 x i8] c"get_enum: %02x is %04x -> %d|%d (shift %02d, enum_c %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_azf3328_get_mixer_enum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_azf3328_get_mixer_enum(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_azf3328*, align 8
  %6 = alloca %struct.azf3328_mixer_reg, align 8
  %7 = alloca i16, align 2
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %8 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %9 = call %struct.snd_azf3328* @snd_kcontrol_chip(%struct.snd_kcontrol* %8)
  store %struct.snd_azf3328* %9, %struct.snd_azf3328** %5, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %11 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @snd_azf3328_mixer_reg_decode(%struct.azf3328_mixer_reg* %6, i32 %12)
  %14 = load %struct.snd_azf3328*, %struct.snd_azf3328** %5, align 8
  %15 = getelementptr inbounds %struct.azf3328_mixer_reg, %struct.azf3328_mixer_reg* %6, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call zeroext i16 @snd_azf3328_mixer_inw(%struct.snd_azf3328* %14, i64 %16)
  store i16 %17, i16* %7, align 2
  %18 = getelementptr inbounds %struct.azf3328_mixer_reg, %struct.azf3328_mixer_reg* %6, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @IDX_MIXER_REC_SELECT, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %51

22:                                               ; preds = %2
  %23 = load i16, i16* %7, align 2
  %24 = zext i16 %23 to i32
  %25 = ashr i32 %24, 8
  %26 = getelementptr inbounds %struct.azf3328_mixer_reg, %struct.azf3328_mixer_reg* %6, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = sub nsw i32 %27, 1
  %29 = and i32 %25, %28
  %30 = trunc i32 %29 to i16
  %31 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %32 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i16*, i16** %34, align 8
  %36 = getelementptr inbounds i16, i16* %35, i64 0
  store i16 %30, i16* %36, align 2
  %37 = load i16, i16* %7, align 2
  %38 = zext i16 %37 to i32
  %39 = ashr i32 %38, 0
  %40 = getelementptr inbounds %struct.azf3328_mixer_reg, %struct.azf3328_mixer_reg* %6, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = sub nsw i32 %41, 1
  %43 = and i32 %39, %42
  %44 = trunc i32 %43 to i16
  %45 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %46 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i16*, i16** %48, align 8
  %50 = getelementptr inbounds i16, i16* %49, i64 1
  store i16 %44, i16* %50, align 2
  br label %69

51:                                               ; preds = %2
  %52 = load i16, i16* %7, align 2
  %53 = zext i16 %52 to i32
  %54 = getelementptr inbounds %struct.azf3328_mixer_reg, %struct.azf3328_mixer_reg* %6, i32 0, i32 2
  %55 = load i16, i16* %54, align 4
  %56 = zext i16 %55 to i32
  %57 = ashr i32 %53, %56
  %58 = getelementptr inbounds %struct.azf3328_mixer_reg, %struct.azf3328_mixer_reg* %6, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = sub nsw i32 %59, 1
  %61 = and i32 %57, %60
  %62 = trunc i32 %61 to i16
  %63 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %64 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i16*, i16** %66, align 8
  %68 = getelementptr inbounds i16, i16* %67, i64 0
  store i16 %62, i16* %68, align 2
  br label %69

69:                                               ; preds = %51, %22
  %70 = getelementptr inbounds %struct.azf3328_mixer_reg, %struct.azf3328_mixer_reg* %6, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i16, i16* %7, align 2
  %73 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %74 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i16*, i16** %76, align 8
  %78 = getelementptr inbounds i16, i16* %77, i64 0
  %79 = load i16, i16* %78, align 2
  %80 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %81 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i16*, i16** %83, align 8
  %85 = getelementptr inbounds i16, i16* %84, i64 1
  %86 = load i16, i16* %85, align 2
  %87 = getelementptr inbounds %struct.azf3328_mixer_reg, %struct.azf3328_mixer_reg* %6, i32 0, i32 2
  %88 = load i16, i16* %87, align 4
  %89 = getelementptr inbounds %struct.azf3328_mixer_reg, %struct.azf3328_mixer_reg* %6, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @snd_azf3328_dbgmixer(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i64 %71, i16 zeroext %72, i16 zeroext %79, i16 zeroext %86, i16 zeroext %88, i32 %90)
  ret i32 0
}

declare dso_local %struct.snd_azf3328* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_azf3328_mixer_reg_decode(%struct.azf3328_mixer_reg*, i32) #1

declare dso_local zeroext i16 @snd_azf3328_mixer_inw(%struct.snd_azf3328*, i64) #1

declare dso_local i32 @snd_azf3328_dbgmixer(i8*, i64, i16 zeroext, i16 zeroext, i16 zeroext, i16 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
