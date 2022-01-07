; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_azt3328.c_snd_azf3328_put_mixer_enum.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_azt3328.c_snd_azf3328_put_mixer_enum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_azf3328 = type { i32 }
%struct.azf3328_mixer_reg = type { i64, i32, i32 }

@IDX_MIXER_REC_SELECT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"put_enum: %02x to %04x, oreg %04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_azf3328_put_mixer_enum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_azf3328_put_mixer_enum(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_azf3328*, align 8
  %7 = alloca %struct.azf3328_mixer_reg, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %11 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %12 = call %struct.snd_azf3328* @snd_kcontrol_chip(%struct.snd_kcontrol* %11)
  store %struct.snd_azf3328* %12, %struct.snd_azf3328** %6, align 8
  %13 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %14 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @snd_azf3328_mixer_reg_decode(%struct.azf3328_mixer_reg* %7, i32 %15)
  %17 = load %struct.snd_azf3328*, %struct.snd_azf3328** %6, align 8
  %18 = getelementptr inbounds %struct.azf3328_mixer_reg, %struct.azf3328_mixer_reg* %7, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @snd_azf3328_mixer_inw(%struct.snd_azf3328* %17, i64 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %10, align 4
  %22 = getelementptr inbounds %struct.azf3328_mixer_reg, %struct.azf3328_mixer_reg* %7, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @IDX_MIXER_REC_SELECT, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %71

26:                                               ; preds = %2
  %27 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %28 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.azf3328_mixer_reg, %struct.azf3328_mixer_reg* %7, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = sub i32 %35, 1
  %37 = icmp ugt i32 %33, %36
  br i1 %37, label %50, label %38

38:                                               ; preds = %26
  %39 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %40 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.azf3328_mixer_reg, %struct.azf3328_mixer_reg* %7, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = sub i32 %47, 1
  %49 = icmp ugt i32 %45, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %38, %26
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %124

53:                                               ; preds = %38
  %54 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %55 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = shl i32 %60, 8
  %62 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %63 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = shl i32 %68, 0
  %70 = or i32 %61, %69
  store i32 %70, i32* %10, align 4
  br label %108

71:                                               ; preds = %2
  %72 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %73 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.azf3328_mixer_reg, %struct.azf3328_mixer_reg* %7, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = sub i32 %80, 1
  %82 = icmp ugt i32 %78, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %71
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %124

86:                                               ; preds = %71
  %87 = getelementptr inbounds %struct.azf3328_mixer_reg, %struct.azf3328_mixer_reg* %7, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = sub i32 %88, 1
  %90 = getelementptr inbounds %struct.azf3328_mixer_reg, %struct.azf3328_mixer_reg* %7, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = shl i32 %89, %91
  %93 = xor i32 %92, -1
  %94 = load i32, i32* %10, align 4
  %95 = and i32 %94, %93
  store i32 %95, i32* %10, align 4
  %96 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %97 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds %struct.azf3328_mixer_reg, %struct.azf3328_mixer_reg* %7, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = shl i32 %102, %104
  %106 = load i32, i32* %10, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %10, align 4
  br label %108

108:                                              ; preds = %86, %53
  %109 = load %struct.snd_azf3328*, %struct.snd_azf3328** %6, align 8
  %110 = getelementptr inbounds %struct.azf3328_mixer_reg, %struct.azf3328_mixer_reg* %7, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i32, i32* %10, align 4
  %113 = call i32 @snd_azf3328_mixer_outw(%struct.snd_azf3328* %109, i64 %111, i32 %112)
  %114 = load i32, i32* %10, align 4
  store i32 %114, i32* %9, align 4
  %115 = getelementptr inbounds %struct.azf3328_mixer_reg, %struct.azf3328_mixer_reg* %7, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* %8, align 4
  %119 = call i32 @snd_azf3328_dbgmixer(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %116, i32 %117, i32 %118)
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* %8, align 4
  %122 = icmp ne i32 %120, %121
  %123 = zext i1 %122 to i32
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %108, %83, %50
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local %struct.snd_azf3328* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_azf3328_mixer_reg_decode(%struct.azf3328_mixer_reg*, i32) #1

declare dso_local i32 @snd_azf3328_mixer_inw(%struct.snd_azf3328*, i64) #1

declare dso_local i32 @snd_azf3328_mixer_outw(%struct.snd_azf3328*, i64, i32) #1

declare dso_local i32 @snd_azf3328_dbgmixer(i8*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
