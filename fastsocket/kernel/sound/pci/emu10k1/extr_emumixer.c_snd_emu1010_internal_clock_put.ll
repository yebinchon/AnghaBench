; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emumixer.c_snd_emu1010_internal_clock_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emumixer.c_snd_emu1010_internal_clock_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.snd_emu10k1 = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EMU_HANA_UNMUTE = common dso_local global i32 0, align 4
@EMU_MUTE = common dso_local global i32 0, align 4
@EMU_HANA_DEFCLOCK = common dso_local global i32 0, align 4
@EMU_HANA_DEFCLOCK_44_1K = common dso_local global i32 0, align 4
@EMU_HANA_WCLOCK = common dso_local global i32 0, align 4
@EMU_HANA_WCLOCK_INT_44_1K = common dso_local global i32 0, align 4
@EMU_HANA_WCLOCK_1X = common dso_local global i32 0, align 4
@EMU_HANA_DOCK_LEDS_2 = common dso_local global i32 0, align 4
@EMU_HANA_DOCK_LEDS_2_44K = common dso_local global i32 0, align 4
@EMU_HANA_DOCK_LEDS_2_LOCK = common dso_local global i32 0, align 4
@EMU_UNMUTE = common dso_local global i32 0, align 4
@EMU_HANA_DEFCLOCK_48K = common dso_local global i32 0, align 4
@EMU_HANA_WCLOCK_INT_48K = common dso_local global i32 0, align 4
@EMU_HANA_DOCK_LEDS_2_48K = common dso_local global i32 0, align 4
@EMU_HANA_WCLOCK_HANA_SPDIF_IN = common dso_local global i32 0, align 4
@EMU_HANA_DOCK_LEDS_2_EXT = common dso_local global i32 0, align 4
@EMU_HANA_WCLOCK_HANA_ADAT_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_emu1010_internal_clock_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_emu1010_internal_clock_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_emu10k1*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %9 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %10 = call %struct.snd_emu10k1* @snd_kcontrol_chip(%struct.snd_kcontrol* %9)
  store %struct.snd_emu10k1* %10, %struct.snd_emu10k1** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %12 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp uge i32 %18, 4
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %146

23:                                               ; preds = %2
  %24 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %25 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %27, %28
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %144

33:                                               ; preds = %23
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %36 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* %7, align 4
  switch i32 %38, label %143 [
    i32 0, label %39
    i32 1, label %65
    i32 2, label %91
    i32 3, label %117
  ]

39:                                               ; preds = %33
  %40 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %41 = load i32, i32* @EMU_HANA_UNMUTE, align 4
  %42 = load i32, i32* @EMU_MUTE, align 4
  %43 = call i32 @snd_emu1010_fpga_write(%struct.snd_emu10k1* %40, i32 %41, i32 %42)
  %44 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %45 = load i32, i32* @EMU_HANA_DEFCLOCK, align 4
  %46 = load i32, i32* @EMU_HANA_DEFCLOCK_44_1K, align 4
  %47 = call i32 @snd_emu1010_fpga_write(%struct.snd_emu10k1* %44, i32 %45, i32 %46)
  %48 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %49 = load i32, i32* @EMU_HANA_WCLOCK, align 4
  %50 = load i32, i32* @EMU_HANA_WCLOCK_INT_44_1K, align 4
  %51 = load i32, i32* @EMU_HANA_WCLOCK_1X, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @snd_emu1010_fpga_write(%struct.snd_emu10k1* %48, i32 %49, i32 %52)
  %54 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %55 = load i32, i32* @EMU_HANA_DOCK_LEDS_2, align 4
  %56 = load i32, i32* @EMU_HANA_DOCK_LEDS_2_44K, align 4
  %57 = load i32, i32* @EMU_HANA_DOCK_LEDS_2_LOCK, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @snd_emu1010_fpga_write(%struct.snd_emu10k1* %54, i32 %55, i32 %58)
  %60 = call i32 @msleep(i32 10)
  %61 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %62 = load i32, i32* @EMU_HANA_UNMUTE, align 4
  %63 = load i32, i32* @EMU_UNMUTE, align 4
  %64 = call i32 @snd_emu1010_fpga_write(%struct.snd_emu10k1* %61, i32 %62, i32 %63)
  br label %143

65:                                               ; preds = %33
  %66 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %67 = load i32, i32* @EMU_HANA_UNMUTE, align 4
  %68 = load i32, i32* @EMU_MUTE, align 4
  %69 = call i32 @snd_emu1010_fpga_write(%struct.snd_emu10k1* %66, i32 %67, i32 %68)
  %70 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %71 = load i32, i32* @EMU_HANA_DEFCLOCK, align 4
  %72 = load i32, i32* @EMU_HANA_DEFCLOCK_48K, align 4
  %73 = call i32 @snd_emu1010_fpga_write(%struct.snd_emu10k1* %70, i32 %71, i32 %72)
  %74 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %75 = load i32, i32* @EMU_HANA_WCLOCK, align 4
  %76 = load i32, i32* @EMU_HANA_WCLOCK_INT_48K, align 4
  %77 = load i32, i32* @EMU_HANA_WCLOCK_1X, align 4
  %78 = or i32 %76, %77
  %79 = call i32 @snd_emu1010_fpga_write(%struct.snd_emu10k1* %74, i32 %75, i32 %78)
  %80 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %81 = load i32, i32* @EMU_HANA_DOCK_LEDS_2, align 4
  %82 = load i32, i32* @EMU_HANA_DOCK_LEDS_2_48K, align 4
  %83 = load i32, i32* @EMU_HANA_DOCK_LEDS_2_LOCK, align 4
  %84 = or i32 %82, %83
  %85 = call i32 @snd_emu1010_fpga_write(%struct.snd_emu10k1* %80, i32 %81, i32 %84)
  %86 = call i32 @msleep(i32 10)
  %87 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %88 = load i32, i32* @EMU_HANA_UNMUTE, align 4
  %89 = load i32, i32* @EMU_UNMUTE, align 4
  %90 = call i32 @snd_emu1010_fpga_write(%struct.snd_emu10k1* %87, i32 %88, i32 %89)
  br label %143

91:                                               ; preds = %33
  %92 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %93 = load i32, i32* @EMU_HANA_UNMUTE, align 4
  %94 = load i32, i32* @EMU_MUTE, align 4
  %95 = call i32 @snd_emu1010_fpga_write(%struct.snd_emu10k1* %92, i32 %93, i32 %94)
  %96 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %97 = load i32, i32* @EMU_HANA_DEFCLOCK, align 4
  %98 = load i32, i32* @EMU_HANA_DEFCLOCK_48K, align 4
  %99 = call i32 @snd_emu1010_fpga_write(%struct.snd_emu10k1* %96, i32 %97, i32 %98)
  %100 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %101 = load i32, i32* @EMU_HANA_WCLOCK, align 4
  %102 = load i32, i32* @EMU_HANA_WCLOCK_HANA_SPDIF_IN, align 4
  %103 = load i32, i32* @EMU_HANA_WCLOCK_1X, align 4
  %104 = or i32 %102, %103
  %105 = call i32 @snd_emu1010_fpga_write(%struct.snd_emu10k1* %100, i32 %101, i32 %104)
  %106 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %107 = load i32, i32* @EMU_HANA_DOCK_LEDS_2, align 4
  %108 = load i32, i32* @EMU_HANA_DOCK_LEDS_2_EXT, align 4
  %109 = load i32, i32* @EMU_HANA_DOCK_LEDS_2_LOCK, align 4
  %110 = or i32 %108, %109
  %111 = call i32 @snd_emu1010_fpga_write(%struct.snd_emu10k1* %106, i32 %107, i32 %110)
  %112 = call i32 @msleep(i32 10)
  %113 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %114 = load i32, i32* @EMU_HANA_UNMUTE, align 4
  %115 = load i32, i32* @EMU_UNMUTE, align 4
  %116 = call i32 @snd_emu1010_fpga_write(%struct.snd_emu10k1* %113, i32 %114, i32 %115)
  br label %143

117:                                              ; preds = %33
  %118 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %119 = load i32, i32* @EMU_HANA_UNMUTE, align 4
  %120 = load i32, i32* @EMU_MUTE, align 4
  %121 = call i32 @snd_emu1010_fpga_write(%struct.snd_emu10k1* %118, i32 %119, i32 %120)
  %122 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %123 = load i32, i32* @EMU_HANA_DEFCLOCK, align 4
  %124 = load i32, i32* @EMU_HANA_DEFCLOCK_48K, align 4
  %125 = call i32 @snd_emu1010_fpga_write(%struct.snd_emu10k1* %122, i32 %123, i32 %124)
  %126 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %127 = load i32, i32* @EMU_HANA_WCLOCK, align 4
  %128 = load i32, i32* @EMU_HANA_WCLOCK_HANA_ADAT_IN, align 4
  %129 = load i32, i32* @EMU_HANA_WCLOCK_1X, align 4
  %130 = or i32 %128, %129
  %131 = call i32 @snd_emu1010_fpga_write(%struct.snd_emu10k1* %126, i32 %127, i32 %130)
  %132 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %133 = load i32, i32* @EMU_HANA_DOCK_LEDS_2, align 4
  %134 = load i32, i32* @EMU_HANA_DOCK_LEDS_2_EXT, align 4
  %135 = load i32, i32* @EMU_HANA_DOCK_LEDS_2_LOCK, align 4
  %136 = or i32 %134, %135
  %137 = call i32 @snd_emu1010_fpga_write(%struct.snd_emu10k1* %132, i32 %133, i32 %136)
  %138 = call i32 @msleep(i32 10)
  %139 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %140 = load i32, i32* @EMU_HANA_UNMUTE, align 4
  %141 = load i32, i32* @EMU_UNMUTE, align 4
  %142 = call i32 @snd_emu1010_fpga_write(%struct.snd_emu10k1* %139, i32 %140, i32 %141)
  br label %143

143:                                              ; preds = %33, %117, %91, %65, %39
  br label %144

144:                                              ; preds = %143, %23
  %145 = load i32, i32* %8, align 4
  store i32 %145, i32* %3, align 4
  br label %146

146:                                              ; preds = %144, %20
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local %struct.snd_emu10k1* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_emu1010_fpga_write(%struct.snd_emu10k1*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
