; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_azt3328.c_snd_azf3328_put_mixer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_azt3328.c_snd_azf3328_put_mixer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_azf3328 = type { i32 }
%struct.azf3328_mixer_reg = type { i32, i32, i32, i32, i64, i64 }

@SET_CHAN_LEFT = common dso_local global i32 0, align 4
@SET_CHAN_RIGHT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [80 x i8] c"put: %02x to %02lx|%02lx, oreg %04x; shift %02d|%02d -> nreg %04x; after: %04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_azf3328_put_mixer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_azf3328_put_mixer(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_azf3328*, align 8
  %6 = alloca %struct.azf3328_mixer_reg, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %11 = call %struct.snd_azf3328* @snd_kcontrol_chip(%struct.snd_kcontrol* %10)
  store %struct.snd_azf3328* %11, %struct.snd_azf3328** %5, align 8
  %12 = call i32 (...) @snd_azf3328_dbgcallenter()
  %13 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %14 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @snd_azf3328_mixer_reg_decode(%struct.azf3328_mixer_reg* %6, i32 %15)
  %17 = load %struct.snd_azf3328*, %struct.snd_azf3328** %5, align 8
  %18 = getelementptr inbounds %struct.azf3328_mixer_reg, %struct.azf3328_mixer_reg* %6, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @snd_azf3328_mixer_inw(%struct.snd_azf3328* %17, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %22 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.azf3328_mixer_reg, %struct.azf3328_mixer_reg* %6, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = and i32 %27, %29
  store i32 %30, i32* %9, align 4
  %31 = getelementptr inbounds %struct.azf3328_mixer_reg, %struct.azf3328_mixer_reg* %6, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %2
  %35 = getelementptr inbounds %struct.azf3328_mixer_reg, %struct.azf3328_mixer_reg* %6, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sub nsw i32 %36, %37
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %34, %2
  %40 = load i32, i32* %7, align 4
  %41 = getelementptr inbounds %struct.azf3328_mixer_reg, %struct.azf3328_mixer_reg* %6, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = getelementptr inbounds %struct.azf3328_mixer_reg, %struct.azf3328_mixer_reg* %6, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = shl i32 %42, %44
  %46 = xor i32 %45, -1
  %47 = and i32 %40, %46
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %9, align 4
  %49 = getelementptr inbounds %struct.azf3328_mixer_reg, %struct.azf3328_mixer_reg* %6, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = shl i32 %48, %50
  %52 = load i32, i32* %8, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %8, align 4
  %54 = getelementptr inbounds %struct.azf3328_mixer_reg, %struct.azf3328_mixer_reg* %6, i32 0, i32 5
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %91

57:                                               ; preds = %39
  %58 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %59 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.azf3328_mixer_reg, %struct.azf3328_mixer_reg* %6, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = and i32 %64, %66
  store i32 %67, i32* %9, align 4
  %68 = getelementptr inbounds %struct.azf3328_mixer_reg, %struct.azf3328_mixer_reg* %6, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %57
  %72 = getelementptr inbounds %struct.azf3328_mixer_reg, %struct.azf3328_mixer_reg* %6, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sub nsw i32 %73, %74
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %71, %57
  %77 = getelementptr inbounds %struct.azf3328_mixer_reg, %struct.azf3328_mixer_reg* %6, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = getelementptr inbounds %struct.azf3328_mixer_reg, %struct.azf3328_mixer_reg* %6, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = shl i32 %78, %80
  %82 = xor i32 %81, -1
  %83 = load i32, i32* %8, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %9, align 4
  %86 = getelementptr inbounds %struct.azf3328_mixer_reg, %struct.azf3328_mixer_reg* %6, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = shl i32 %85, %87
  %89 = load i32, i32* %8, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %8, align 4
  br label %91

91:                                               ; preds = %76, %39
  %92 = getelementptr inbounds %struct.azf3328_mixer_reg, %struct.azf3328_mixer_reg* %6, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp sge i32 %93, 7
  br i1 %94, label %95, label %107

95:                                               ; preds = %91
  %96 = load %struct.snd_azf3328*, %struct.snd_azf3328** %5, align 8
  %97 = getelementptr inbounds %struct.azf3328_mixer_reg, %struct.azf3328_mixer_reg* %6, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %8, align 4
  %100 = ashr i32 %99, 8
  %101 = load i32, i32* %8, align 4
  %102 = and i32 %101, 255
  %103 = load i32, i32* @SET_CHAN_LEFT, align 4
  %104 = load i32, i32* @SET_CHAN_RIGHT, align 4
  %105 = or i32 %103, %104
  %106 = call i32 @snd_azf3328_mixer_write_volume_gradually(%struct.snd_azf3328* %96, i32 %98, i32 %100, i32 %102, i32 %105, i32 0)
  br label %113

107:                                              ; preds = %91
  %108 = load %struct.snd_azf3328*, %struct.snd_azf3328** %5, align 8
  %109 = getelementptr inbounds %struct.azf3328_mixer_reg, %struct.azf3328_mixer_reg* %6, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @snd_azf3328_mixer_outw(%struct.snd_azf3328* %108, i32 %110, i32 %111)
  br label %113

113:                                              ; preds = %107, %95
  %114 = getelementptr inbounds %struct.azf3328_mixer_reg, %struct.azf3328_mixer_reg* %6, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %117 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %124 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %7, align 4
  %131 = getelementptr inbounds %struct.azf3328_mixer_reg, %struct.azf3328_mixer_reg* %6, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = getelementptr inbounds %struct.azf3328_mixer_reg, %struct.azf3328_mixer_reg* %6, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* %8, align 4
  %136 = load %struct.snd_azf3328*, %struct.snd_azf3328** %5, align 8
  %137 = getelementptr inbounds %struct.azf3328_mixer_reg, %struct.azf3328_mixer_reg* %6, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @snd_azf3328_mixer_inw(%struct.snd_azf3328* %136, i32 %138)
  %140 = call i32 @snd_azf3328_dbgmixer(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), i32 %115, i32 %122, i32 %129, i32 %130, i32 %132, i32 %134, i32 %135, i32 %139)
  %141 = call i32 (...) @snd_azf3328_dbgcallleave()
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* %7, align 4
  %144 = icmp ne i32 %142, %143
  %145 = zext i1 %144 to i32
  ret i32 %145
}

declare dso_local %struct.snd_azf3328* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_azf3328_dbgcallenter(...) #1

declare dso_local i32 @snd_azf3328_mixer_reg_decode(%struct.azf3328_mixer_reg*, i32) #1

declare dso_local i32 @snd_azf3328_mixer_inw(%struct.snd_azf3328*, i32) #1

declare dso_local i32 @snd_azf3328_mixer_write_volume_gradually(%struct.snd_azf3328*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @snd_azf3328_mixer_outw(%struct.snd_azf3328*, i32, i32) #1

declare dso_local i32 @snd_azf3328_dbgmixer(i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @snd_azf3328_dbgcallleave(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
